; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_003\output.ll'
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
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2, %13
  %3 = phi i32 [ %14, %13 ], [ 0, %2 ]
  %4 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %13, label %8

8:                                                ; preds = %.lr.ph
  %9 = add nsw i32 %1, %3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %._crit_edge

13:                                               ; preds = %8, %.lr.ph
  %14 = add nuw nsw i32 %3, 1
  %.not.not = icmp slt i32 %3, %.pre
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %2, %13, %8
  %15 = phi i32 [ 0, %8 ], [ 1, %13 ], [ 1, %2 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp slt i32 %.pre, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2, %12
  %3 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %4 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  %.not3 = icmp eq i32 %7, 0
  br i1 %.not3, label %12, label %8

8:                                                ; preds = %.lr.ph
  %9 = add nsw i32 %1, %3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 1, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %.lr.ph
  %13 = add nuw nsw i32 %3, 1
  %.not.not = icmp slt i32 %3, %.pre
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %12, %2
  %14 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr %17, align 4
  %20 = icmp slt i32 %1, 512
  br i1 %20, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %._crit_edge, %25
  %21 = phi i32 [ %26, %25 ], [ %1, %._crit_edge ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  %24 = load i32, ptr %23, align 4
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %._crit_edge7, label %25

25:                                               ; preds = %.lr.ph6
  %26 = add nsw i32 %21, 1
  %27 = icmp slt i32 %21, 511
  br i1 %27, label %.lr.ph6, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %._crit_edge, %25, %.lr.ph6
  %28 = phi i32 [ %21, %.lr.ph6 ], [ 0, %25 ], [ 0, %._crit_edge ]
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2, %12
  %3 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %4 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %5 = zext nneg i32 %3 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %12, label %8

8:                                                ; preds = %.lr.ph
  %9 = add nsw i32 %1, %3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %.lr.ph
  %13 = add nuw nsw i32 %3, 1
  %.not.not = icmp slt i32 %3, %.pre
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %12, %2
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

4:                                                ; preds = %19, %1
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
  %21 = icmp samesign ult i32 %5, 12
  br i1 %21, label %4, label %22, !llvm.loop !12

22:                                               ; preds = %19, %14
  %23 = phi i32 [ 1, %14 ], [ 0, %19 ]
  ret i32 %23
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

7:                                                ; preds = %1, %24
  %8 = phi i32 [ %25, %24 ], [ 1, %1 ]
  br label %9

9:                                                ; preds = %21, %7
  %10 = phi i32 [ 1, %7 ], [ %22, %21 ]
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 1, %9 ], [ %19, %11 ]
  %13 = shl nuw nsw i32 %12, 6
  %14 = shl nuw nsw i32 %10, 3
  %15 = or disjoint i32 %13, %14
  %16 = or disjoint i32 %8, %15
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  %19 = add nuw nsw i32 %12, 1
  %20 = icmp samesign ult i32 %12, 5
  br i1 %20, label %11, label %21, !llvm.loop !14

21:                                               ; preds = %11
  %22 = add nuw nsw i32 %10, 1
  %23 = icmp samesign ult i32 %10, 5
  br i1 %23, label %9, label %24, !llvm.loop !15

24:                                               ; preds = %21
  %25 = add nuw nsw i32 %8, 1
  %26 = icmp samesign ult i32 %8, 5
  br i1 %26, label %7, label %27, !llvm.loop !16

27:                                               ; preds = %24, %37
  %28 = phi i32 [ %38, %37 ], [ 0, %24 ]
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ 0, %27 ], [ %35, %29 ]
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %31
  %33 = zext nneg i32 %30 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %33
  store i32 0, ptr %34, align 4
  %35 = add nuw nsw i32 %30, 1
  %36 = icmp samesign ult i32 %30, 511
  br i1 %36, label %29, label %37, !llvm.loop !17

37:                                               ; preds = %29
  %38 = add nuw nsw i32 %28, 1
  %39 = icmp samesign ult i32 %28, 12
  br i1 %39, label %27, label %40, !llvm.loop !18

40:                                               ; preds = %37, %48
  %41 = phi i32 [ %49, %48 ], [ 0, %37 ]
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i1 [ true, %40 ], [ false, %42 ]
  %44 = phi i32 [ 0, %40 ], [ 8, %42 ]
  %45 = or disjoint i32 %41, %44
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %46
  store i32 1, ptr %47, align 4
  br i1 %43, label %42, label %48, !llvm.loop !19

48:                                               ; preds = %42
  %49 = add nuw nsw i32 %41, 1
  %50 = icmp samesign ult i32 %41, 3
  br i1 %50, label %40, label %51, !llvm.loop !20

51:                                               ; preds = %48
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %52

52:                                               ; preds = %63, %51
  %53 = phi i1 [ true, %51 ], [ false, %63 ]
  %54 = phi i32 [ 0, %51 ], [ 1, %63 ]
  br label %55

55:                                               ; preds = %55, %52
  %56 = phi i32 [ 0, %52 ], [ %61, %55 ]
  %57 = shl nuw nsw i32 %56, 6
  %58 = or disjoint i32 %54, %57
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %59
  store i32 1, ptr %60, align 4
  %61 = add nuw nsw i32 %56, 1
  %62 = icmp samesign ult i32 %56, 3
  br i1 %62, label %55, label %63, !llvm.loop !21

63:                                               ; preds = %55
  br i1 %53, label %52, label %64, !llvm.loop !22

64:                                               ; preds = %63
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %65

65:                                               ; preds = %76, %64
  %66 = phi i32 [ 0, %64 ], [ %77, %76 ]
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi i32 [ 0, %65 ], [ %74, %67 ]
  %69 = shl nuw nsw i32 %68, 6
  %70 = shl nuw nsw i32 %66, 3
  %71 = or disjoint i32 %69, %70
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %72
  store i32 1, ptr %73, align 4
  %74 = add nuw nsw i32 %68, 1
  %75 = icmp eq i32 %68, 0
  br i1 %75, label %67, label %76, !llvm.loop !23

76:                                               ; preds = %67
  %77 = add nuw nsw i32 %66, 1
  %78 = icmp samesign ult i32 %66, 3
  br i1 %78, label %65, label %79, !llvm.loop !24

79:                                               ; preds = %76
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %80

80:                                               ; preds = %91, %79
  %81 = phi i1 [ true, %79 ], [ false, %91 ]
  %82 = phi i32 [ 0, %79 ], [ 1, %91 ]
  br label %83

83:                                               ; preds = %83, %80
  %84 = phi i32 [ 0, %80 ], [ %89, %83 ]
  %85 = shl nuw nsw i32 %84, 3
  %86 = or disjoint i32 %82, %85
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %87
  store i32 1, ptr %88, align 4
  %89 = add nuw nsw i32 %84, 1
  %90 = icmp samesign ult i32 %84, 3
  br i1 %90, label %83, label %91, !llvm.loop !25

91:                                               ; preds = %83
  br i1 %81, label %80, label %92, !llvm.loop !26

92:                                               ; preds = %91
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %93

93:                                               ; preds = %103, %92
  %94 = phi i32 [ 0, %92 ], [ %104, %103 ]
  br label %95

95:                                               ; preds = %95, %93
  %96 = phi i32 [ 0, %93 ], [ %101, %95 ]
  %97 = shl nuw nsw i32 %96, 6
  %98 = or disjoint i32 %94, %97
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %99
  store i32 1, ptr %100, align 4
  %101 = add nuw nsw i32 %96, 1
  %102 = icmp eq i32 %96, 0
  br i1 %102, label %95, label %103, !llvm.loop !27

103:                                              ; preds = %95
  %104 = add nuw nsw i32 %94, 1
  %105 = icmp samesign ult i32 %94, 3
  br i1 %105, label %93, label %106, !llvm.loop !28

106:                                              ; preds = %103
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %107

107:                                              ; preds = %118, %106
  %108 = phi i1 [ true, %106 ], [ false, %118 ]
  %109 = phi i32 [ 0, %106 ], [ 8, %118 ]
  br label %110

110:                                              ; preds = %110, %107
  %111 = phi i32 [ 0, %107 ], [ %116, %110 ]
  %112 = shl nuw nsw i32 %111, 6
  %113 = or disjoint i32 %112, %109
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %114
  store i32 1, ptr %115, align 4
  %116 = add nuw nsw i32 %111, 1
  %117 = icmp samesign ult i32 %111, 3
  br i1 %117, label %110, label %118, !llvm.loop !29

118:                                              ; preds = %110
  br i1 %108, label %107, label %119, !llvm.loop !30

119:                                              ; preds = %118
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %120

120:                                              ; preds = %120, %119
  %121 = phi i32 [ 0, %119 ], [ %124, %120 ]
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %122
  store i32 1, ptr %123, align 4
  %124 = add nuw nsw i32 %121, 1
  %125 = icmp samesign ult i32 %121, 2
  br i1 %125, label %120, label %126, !llvm.loop !31

126:                                              ; preds = %120
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %127

127:                                              ; preds = %127, %126
  %128 = phi i32 [ 0, %126 ], [ %132, %127 ]
  %129 = shl nuw nsw i32 %128, 3
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %130
  store i32 1, ptr %131, align 4
  %132 = add nuw nsw i32 %128, 1
  %133 = icmp samesign ult i32 %128, 2
  br i1 %133, label %127, label %134, !llvm.loop !32

134:                                              ; preds = %127
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %135

135:                                              ; preds = %135, %134
  %136 = phi i32 [ 0, %134 ], [ %140, %135 ]
  %137 = shl nuw nsw i32 %136, 6
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %138
  store i32 1, ptr %139, align 4
  %140 = add nuw nsw i32 %136, 1
  %141 = icmp samesign ult i32 %136, 2
  br i1 %141, label %135, label %142, !llvm.loop !33

142:                                              ; preds = %135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %143

143:                                              ; preds = %152, %142
  %144 = phi i1 [ true, %142 ], [ false, %152 ]
  %145 = phi i32 [ 0, %142 ], [ 1, %152 ]
  br label %146

146:                                              ; preds = %146, %143
  %147 = phi i1 [ true, %143 ], [ false, %146 ]
  %148 = phi i32 [ 0, %143 ], [ 8, %146 ]
  %149 = or disjoint i32 %145, %148
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %150
  store i32 1, ptr %151, align 4
  br i1 %147, label %146, label %152, !llvm.loop !34

152:                                              ; preds = %146
  br i1 %144, label %143, label %153, !llvm.loop !35

153:                                              ; preds = %152
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %154

154:                                              ; preds = %165, %153
  %155 = phi i1 [ true, %153 ], [ false, %165 ]
  %156 = phi i32 [ 0, %153 ], [ 1, %165 ]
  br label %157

157:                                              ; preds = %157, %154
  %158 = phi i32 [ 0, %154 ], [ %163, %157 ]
  %159 = shl nuw nsw i32 %158, 6
  %160 = or disjoint i32 %156, %159
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %161
  store i32 1, ptr %162, align 4
  %163 = add nuw nsw i32 %158, 1
  %164 = icmp eq i32 %158, 0
  br i1 %164, label %157, label %165, !llvm.loop !36

165:                                              ; preds = %157
  br i1 %155, label %154, label %166, !llvm.loop !37

166:                                              ; preds = %165
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %167

167:                                              ; preds = %178, %166
  %168 = phi i1 [ true, %166 ], [ false, %178 ]
  %169 = phi i32 [ 0, %166 ], [ 8, %178 ]
  br label %170

170:                                              ; preds = %170, %167
  %171 = phi i32 [ 0, %167 ], [ %176, %170 ]
  %172 = shl nuw nsw i32 %171, 6
  %173 = or disjoint i32 %172, %169
  %174 = zext nneg i32 %173 to i64
  %175 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %174
  store i32 1, ptr %175, align 4
  %176 = add nuw nsw i32 %171, 1
  %177 = icmp eq i32 %171, 0
  br i1 %177, label %170, label %178, !llvm.loop !38

178:                                              ; preds = %170
  br i1 %168, label %167, label %179, !llvm.loop !39

179:                                              ; preds = %178
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %180

180:                                              ; preds = %196, %179
  %181 = phi i1 [ true, %179 ], [ false, %196 ]
  %182 = phi i32 [ 0, %179 ], [ 1, %196 ]
  br label %183

183:                                              ; preds = %195, %180
  %184 = phi i1 [ true, %180 ], [ false, %195 ]
  %185 = phi i32 [ 0, %180 ], [ 8, %195 ]
  br label %186

186:                                              ; preds = %186, %183
  %187 = phi i32 [ 0, %183 ], [ %193, %186 ]
  %188 = shl nuw nsw i32 %187, 6
  %189 = or disjoint i32 %188, %185
  %190 = or disjoint i32 %182, %189
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %191
  store i32 1, ptr %192, align 4
  %193 = add nuw nsw i32 %187, 1
  %194 = icmp eq i32 %187, 0
  br i1 %194, label %186, label %195, !llvm.loop !40

195:                                              ; preds = %186
  br i1 %184, label %183, label %196, !llvm.loop !41

196:                                              ; preds = %195
  br i1 %181, label %180, label %197, !llvm.loop !42

197:                                              ; preds = %196
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %198 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %198, 0
  br i1 %.not, label %201, label %199

199:                                              ; preds = %197
  %200 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %200, ptr @n, align 4
  br label %202

201:                                              ; preds = %197
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %202

202:                                              ; preds = %201, %199
  %203 = phi i32 [ %.pre, %201 ], [ %200, %199 ]
  %204 = call i32 @Trial(i32 noundef %203)
  %.not1 = icmp eq i32 %204, 0
  br i1 %.not1, label %205, label %206

205:                                              ; preds = %202
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %209

206:                                              ; preds = %202
  %207 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %207, 2005
  br i1 %.not3, label %209, label %208

208:                                              ; preds = %206
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %209

209:                                              ; preds = %206, %208, %205
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
