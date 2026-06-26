; ModuleID = 'results\paper_full\Stanford_Puzzle\round_003\output.ll'
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
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %2, %13, %8
  %15 = phi i32 [ 0, %8 ], [ 1, %13 ], [ 1, %2 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp sgt i32 0, %.pre
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
  %.not = icmp sgt i32 %13, %.pre
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

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
  %27 = icmp slt i32 %26, 512
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
  %.not1 = icmp sgt i32 0, %.pre
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
  %.not = icmp sgt i32 %13, %.pre
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

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
  %21 = icmp samesign ult i32 %20, 13
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
  %6 = icmp samesign ult i32 %5, 512
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
  %20 = icmp samesign ult i32 %19, 6
  br i1 %20, label %11, label %21, !llvm.loop !14

21:                                               ; preds = %11
  %22 = add nuw nsw i32 %10, 1
  %23 = icmp samesign ult i32 %22, 6
  br i1 %23, label %9, label %24, !llvm.loop !15

24:                                               ; preds = %21
  %25 = add nuw nsw i32 %8, 1
  %26 = icmp samesign ult i32 %25, 6
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
  %36 = icmp samesign ult i32 %35, 512
  br i1 %36, label %29, label %37, !llvm.loop !17

37:                                               ; preds = %29
  %38 = add nuw nsw i32 %28, 1
  %39 = icmp samesign ult i32 %38, 13
  br i1 %39, label %27, label %40, !llvm.loop !18

40:                                               ; preds = %37, %49
  %41 = phi i32 [ %50, %49 ], [ 0, %37 ]
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i32 [ 0, %40 ], [ 1, %42 ]
  %44 = shl nuw nsw i32 %43, 3
  %45 = or disjoint i32 %41, %44
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %46
  store i32 1, ptr %47, align 4
  %48 = icmp eq i32 %43, 0
  br i1 %48, label %42, label %49, !llvm.loop !19

49:                                               ; preds = %42
  %50 = add nuw nsw i32 %41, 1
  %51 = icmp samesign ult i32 %50, 4
  br i1 %51, label %40, label %52, !llvm.loop !20

52:                                               ; preds = %49
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %53

53:                                               ; preds = %63, %52
  %54 = phi i32 [ 0, %52 ], [ 1, %63 ]
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i32 [ 0, %53 ], [ %61, %55 ]
  %57 = shl nuw nsw i32 %56, 6
  %58 = or disjoint i32 %54, %57
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %59
  store i32 1, ptr %60, align 4
  %61 = add nuw nsw i32 %56, 1
  %62 = icmp samesign ult i32 %61, 4
  br i1 %62, label %55, label %63, !llvm.loop !21

63:                                               ; preds = %55
  %64 = icmp eq i32 %54, 0
  br i1 %64, label %53, label %65, !llvm.loop !22

65:                                               ; preds = %63
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %66

66:                                               ; preds = %77, %65
  %67 = phi i32 [ 0, %65 ], [ %78, %77 ]
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i32 [ 0, %66 ], [ %75, %68 ]
  %70 = shl nuw nsw i32 %69, 6
  %71 = shl nuw nsw i32 %67, 3
  %72 = or disjoint i32 %70, %71
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %73
  store i32 1, ptr %74, align 4
  %75 = add nuw nsw i32 %69, 1
  %76 = icmp samesign ult i32 %75, 2
  br i1 %76, label %68, label %77, !llvm.loop !23

77:                                               ; preds = %68
  %78 = add nuw nsw i32 %67, 1
  %79 = icmp samesign ult i32 %78, 4
  br i1 %79, label %66, label %80, !llvm.loop !24

80:                                               ; preds = %77
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %81

81:                                               ; preds = %91, %80
  %82 = phi i32 [ 0, %80 ], [ 1, %91 ]
  br label %83

83:                                               ; preds = %83, %81
  %84 = phi i32 [ 0, %81 ], [ %89, %83 ]
  %85 = shl nuw nsw i32 %84, 3
  %86 = or disjoint i32 %82, %85
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %87
  store i32 1, ptr %88, align 4
  %89 = add nuw nsw i32 %84, 1
  %90 = icmp samesign ult i32 %89, 4
  br i1 %90, label %83, label %91, !llvm.loop !25

91:                                               ; preds = %83
  %92 = icmp eq i32 %82, 0
  br i1 %92, label %81, label %93, !llvm.loop !26

93:                                               ; preds = %91
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
  %103 = icmp samesign ult i32 %102, 2
  br i1 %103, label %96, label %104, !llvm.loop !27

104:                                              ; preds = %96
  %105 = add nuw nsw i32 %95, 1
  %106 = icmp samesign ult i32 %105, 4
  br i1 %106, label %94, label %107, !llvm.loop !28

107:                                              ; preds = %104
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %108

108:                                              ; preds = %119, %107
  %109 = phi i32 [ 0, %107 ], [ 1, %119 ]
  br label %110

110:                                              ; preds = %110, %108
  %111 = phi i32 [ 0, %108 ], [ %117, %110 ]
  %112 = shl nuw nsw i32 %111, 6
  %113 = shl nuw nsw i32 %109, 3
  %114 = or disjoint i32 %112, %113
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %115
  store i32 1, ptr %116, align 4
  %117 = add nuw nsw i32 %111, 1
  %118 = icmp samesign ult i32 %117, 4
  br i1 %118, label %110, label %119, !llvm.loop !29

119:                                              ; preds = %110
  %120 = icmp eq i32 %109, 0
  br i1 %120, label %108, label %121, !llvm.loop !30

121:                                              ; preds = %119
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %122

122:                                              ; preds = %122, %121
  %123 = phi i32 [ 0, %121 ], [ %126, %122 ]
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %124
  store i32 1, ptr %125, align 4
  %126 = add nuw nsw i32 %123, 1
  %127 = icmp samesign ult i32 %126, 3
  br i1 %127, label %122, label %128, !llvm.loop !31

128:                                              ; preds = %122
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %129

129:                                              ; preds = %129, %128
  %130 = phi i32 [ 0, %128 ], [ %134, %129 ]
  %131 = shl nuw nsw i32 %130, 3
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %132
  store i32 1, ptr %133, align 4
  %134 = add nuw nsw i32 %130, 1
  %135 = icmp samesign ult i32 %134, 3
  br i1 %135, label %129, label %136, !llvm.loop !32

136:                                              ; preds = %129
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %137

137:                                              ; preds = %137, %136
  %138 = phi i32 [ 0, %136 ], [ %142, %137 ]
  %139 = shl nuw nsw i32 %138, 6
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %140
  store i32 1, ptr %141, align 4
  %142 = add nuw nsw i32 %138, 1
  %143 = icmp samesign ult i32 %142, 3
  br i1 %143, label %137, label %144, !llvm.loop !33

144:                                              ; preds = %137
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %145

145:                                              ; preds = %154, %144
  %146 = phi i32 [ 0, %144 ], [ 1, %154 ]
  br label %147

147:                                              ; preds = %147, %145
  %148 = phi i32 [ 0, %145 ], [ 1, %147 ]
  %149 = shl nuw nsw i32 %148, 3
  %150 = or disjoint i32 %146, %149
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %151
  store i32 1, ptr %152, align 4
  %153 = icmp eq i32 %148, 0
  br i1 %153, label %147, label %154, !llvm.loop !34

154:                                              ; preds = %147
  %155 = icmp eq i32 %146, 0
  br i1 %155, label %145, label %156, !llvm.loop !35

156:                                              ; preds = %154
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %157

157:                                              ; preds = %167, %156
  %158 = phi i32 [ 0, %156 ], [ 1, %167 ]
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi i32 [ 0, %157 ], [ %165, %159 ]
  %161 = shl nuw nsw i32 %160, 6
  %162 = or disjoint i32 %158, %161
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %163
  store i32 1, ptr %164, align 4
  %165 = add nuw nsw i32 %160, 1
  %166 = icmp samesign ult i32 %165, 2
  br i1 %166, label %159, label %167, !llvm.loop !36

167:                                              ; preds = %159
  %168 = icmp eq i32 %158, 0
  br i1 %168, label %157, label %169, !llvm.loop !37

169:                                              ; preds = %167
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %170

170:                                              ; preds = %181, %169
  %171 = phi i32 [ 0, %169 ], [ 1, %181 ]
  br label %172

172:                                              ; preds = %172, %170
  %173 = phi i32 [ 0, %170 ], [ %179, %172 ]
  %174 = shl nuw nsw i32 %173, 6
  %175 = shl nuw nsw i32 %171, 3
  %176 = or disjoint i32 %174, %175
  %177 = zext nneg i32 %176 to i64
  %178 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %177
  store i32 1, ptr %178, align 4
  %179 = add nuw nsw i32 %173, 1
  %180 = icmp samesign ult i32 %179, 2
  br i1 %180, label %172, label %181, !llvm.loop !38

181:                                              ; preds = %172
  %182 = icmp eq i32 %171, 0
  br i1 %182, label %170, label %183, !llvm.loop !39

183:                                              ; preds = %181
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %184

184:                                              ; preds = %200, %183
  %185 = phi i32 [ 0, %183 ], [ 1, %200 ]
  br label %186

186:                                              ; preds = %198, %184
  %187 = phi i32 [ 0, %184 ], [ 1, %198 ]
  br label %188

188:                                              ; preds = %188, %186
  %189 = phi i32 [ 0, %186 ], [ %196, %188 ]
  %190 = shl nuw nsw i32 %189, 6
  %191 = shl nuw nsw i32 %187, 3
  %192 = or disjoint i32 %190, %191
  %193 = or disjoint i32 %185, %192
  %194 = zext nneg i32 %193 to i64
  %195 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %194
  store i32 1, ptr %195, align 4
  %196 = add nuw nsw i32 %189, 1
  %197 = icmp samesign ult i32 %196, 2
  br i1 %197, label %188, label %198, !llvm.loop !40

198:                                              ; preds = %188
  %199 = icmp eq i32 %187, 0
  br i1 %199, label %186, label %200, !llvm.loop !41

200:                                              ; preds = %198
  %201 = icmp eq i32 %185, 0
  br i1 %201, label %184, label %202, !llvm.loop !42

202:                                              ; preds = %200
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %203 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %203, 0
  br i1 %.not, label %206, label %204

204:                                              ; preds = %202
  %205 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %205, ptr @n, align 4
  br label %207

206:                                              ; preds = %202
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %207

207:                                              ; preds = %206, %204
  %208 = phi i32 [ %.pre, %206 ], [ %205, %204 ]
  %209 = call i32 @Trial(i32 noundef %208)
  %.not1 = icmp eq i32 %209, 0
  br i1 %.not1, label %210, label %211

210:                                              ; preds = %207
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %214

211:                                              ; preds = %207
  %212 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %212, 2005
  br i1 %.not3, label %214, label %213

213:                                              ; preds = %211
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %214

214:                                              ; preds = %211, %213, %210
  %215 = load i32, ptr @n, align 4
  %216 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %215) #3
  %217 = load i32, ptr @kount, align 4
  %218 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %217) #3
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
  %4 = icmp samesign ult i32 %3, 100
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
