; ModuleID = 'results\paper_full\Stanford_Puzzle\round_001\output.ll'
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
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %14, %.lr.ph
  %5 = phi i32 [ 0, %.lr.ph ], [ %15, %14 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %14, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %14, label %._crit_edge

14:                                               ; preds = %9, %4
  %15 = add nuw nsw i32 %5, 1
  %.not = icmp sgt i32 %15, %.pre
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !7

._crit_edge:                                      ; preds = %2, %14, %9
  %16 = phi i32 [ 0, %9 ], [ 1, %14 ], [ 1, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp sgt i32 0, %.pre
  br i1 %.not4, label %._crit_edge, label %.lr.ph

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
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !9

._crit_edge:                                      ; preds = %13, %2
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %18, align 4
  %21 = icmp slt i32 %1, 512
  br i1 %21, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %._crit_edge, %26
  %22 = phi i32 [ %27, %26 ], [ %1, %._crit_edge ]
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  %25 = load i32, ptr %24, align 4
  %.not2 = icmp eq i32 %25, 0
  br i1 %.not2, label %._crit_edge7, label %26

26:                                               ; preds = %.lr.ph6
  %27 = add nsw i32 %22, 1
  %28 = icmp slt i32 %27, 512
  br i1 %28, label %.lr.ph6, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %._crit_edge, %26, %.lr.ph6
  %29 = phi i32 [ %22, %.lr.ph6 ], [ 0, %26 ], [ 0, %._crit_edge ]
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %._crit_edge, label %.lr.ph

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
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !11

._crit_edge:                                      ; preds = %13, %2
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
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

7:                                                ; preds = %1, %22
  %8 = phi i32 [ %23, %22 ], [ 1, %1 ]
  br label %9

9:                                                ; preds = %19, %7
  %10 = phi i32 [ 1, %7 ], [ %20, %19 ]
  %11 = shl nuw nsw i32 %10, 3
  %invariant.op = or disjoint i32 %11, %8
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i32 [ 1, %9 ], [ %17, %12 ]
  %14 = shl nuw nsw i32 %13, 6
  %.reass = or disjoint i32 %14, %invariant.op
  %15 = zext nneg i32 %.reass to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  %17 = add nuw nsw i32 %13, 1
  %18 = icmp samesign ult i32 %17, 6
  br i1 %18, label %12, label %19, !llvm.loop !14

19:                                               ; preds = %12
  %20 = add nuw nsw i32 %10, 1
  %21 = icmp samesign ult i32 %20, 6
  br i1 %21, label %9, label %22, !llvm.loop !15

22:                                               ; preds = %19
  %23 = add nuw nsw i32 %8, 1
  %24 = icmp samesign ult i32 %23, 6
  br i1 %24, label %7, label %25, !llvm.loop !16

25:                                               ; preds = %22, %35
  %26 = phi i32 [ %36, %35 ], [ 0, %22 ]
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %27
  br label %29

29:                                               ; preds = %29, %25
  %30 = phi i32 [ 0, %25 ], [ %33, %29 ]
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %31
  store i32 0, ptr %32, align 4
  %33 = add nuw nsw i32 %30, 1
  %34 = icmp samesign ult i32 %33, 512
  br i1 %34, label %29, label %35, !llvm.loop !17

35:                                               ; preds = %29
  %36 = add nuw nsw i32 %26, 1
  %37 = icmp samesign ult i32 %36, 13
  br i1 %37, label %25, label %38, !llvm.loop !18

38:                                               ; preds = %35, %48
  %39 = phi i32 [ %49, %48 ], [ 0, %35 ]
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i32 [ 0, %38 ], [ %46, %40 ]
  %42 = shl nuw nsw i32 %41, 3
  %43 = or disjoint i32 %39, %42
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %44
  store i32 1, ptr %45, align 4
  %46 = add nuw nsw i32 %41, 1
  %47 = icmp samesign ult i32 %46, 2
  br i1 %47, label %40, label %48, !llvm.loop !19

48:                                               ; preds = %40
  %49 = add nuw nsw i32 %39, 1
  %50 = icmp samesign ult i32 %49, 4
  br i1 %50, label %38, label %51, !llvm.loop !20

51:                                               ; preds = %48
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %52

52:                                               ; preds = %62, %51
  %53 = phi i32 [ 0, %51 ], [ %63, %62 ]
  br label %54

54:                                               ; preds = %54, %52
  %55 = phi i32 [ 0, %52 ], [ %60, %54 ]
  %56 = shl nuw nsw i32 %55, 6
  %57 = or disjoint i32 %53, %56
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %58
  store i32 1, ptr %59, align 4
  %60 = add nuw nsw i32 %55, 1
  %61 = icmp samesign ult i32 %60, 4
  br i1 %61, label %54, label %62, !llvm.loop !21

62:                                               ; preds = %54
  %63 = add nuw nsw i32 %53, 1
  %64 = icmp samesign ult i32 %63, 2
  br i1 %64, label %52, label %65, !llvm.loop !22

65:                                               ; preds = %62
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
  %76 = icmp samesign ult i32 %75, 2
  br i1 %76, label %69, label %77, !llvm.loop !23

77:                                               ; preds = %69
  %78 = add nuw nsw i32 %67, 1
  %79 = icmp samesign ult i32 %78, 4
  br i1 %79, label %66, label %80, !llvm.loop !24

80:                                               ; preds = %77
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %81

81:                                               ; preds = %91, %80
  %82 = phi i32 [ 0, %80 ], [ %92, %91 ]
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
  %92 = add nuw nsw i32 %82, 1
  %93 = icmp samesign ult i32 %92, 2
  br i1 %93, label %81, label %94, !llvm.loop !26

94:                                               ; preds = %91
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %95

95:                                               ; preds = %105, %94
  %96 = phi i32 [ 0, %94 ], [ %106, %105 ]
  br label %97

97:                                               ; preds = %97, %95
  %98 = phi i32 [ 0, %95 ], [ %103, %97 ]
  %99 = shl nuw nsw i32 %98, 6
  %100 = or disjoint i32 %96, %99
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %101
  store i32 1, ptr %102, align 4
  %103 = add nuw nsw i32 %98, 1
  %104 = icmp samesign ult i32 %103, 2
  br i1 %104, label %97, label %105, !llvm.loop !27

105:                                              ; preds = %97
  %106 = add nuw nsw i32 %96, 1
  %107 = icmp samesign ult i32 %106, 4
  br i1 %107, label %95, label %108, !llvm.loop !28

108:                                              ; preds = %105
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %109

109:                                              ; preds = %120, %108
  %110 = phi i32 [ 0, %108 ], [ %121, %120 ]
  %111 = shl nuw nsw i32 %110, 3
  br label %112

112:                                              ; preds = %112, %109
  %113 = phi i32 [ 0, %109 ], [ %118, %112 ]
  %114 = shl nuw nsw i32 %113, 6
  %115 = or disjoint i32 %114, %111
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %116
  store i32 1, ptr %117, align 4
  %118 = add nuw nsw i32 %113, 1
  %119 = icmp samesign ult i32 %118, 4
  br i1 %119, label %112, label %120, !llvm.loop !29

120:                                              ; preds = %112
  %121 = add nuw nsw i32 %110, 1
  %122 = icmp samesign ult i32 %121, 2
  br i1 %122, label %109, label %123, !llvm.loop !30

123:                                              ; preds = %120
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %124

124:                                              ; preds = %124, %123
  %125 = phi i32 [ 0, %123 ], [ %128, %124 ]
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %126
  store i32 1, ptr %127, align 4
  %128 = add nuw nsw i32 %125, 1
  %129 = icmp samesign ult i32 %128, 3
  br i1 %129, label %124, label %130, !llvm.loop !31

130:                                              ; preds = %124
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %131

131:                                              ; preds = %131, %130
  %132 = phi i32 [ 0, %130 ], [ %136, %131 ]
  %133 = shl nuw nsw i32 %132, 3
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %134
  store i32 1, ptr %135, align 4
  %136 = add nuw nsw i32 %132, 1
  %137 = icmp samesign ult i32 %136, 3
  br i1 %137, label %131, label %138, !llvm.loop !32

138:                                              ; preds = %131
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %139

139:                                              ; preds = %139, %138
  %140 = phi i32 [ 0, %138 ], [ %144, %139 ]
  %141 = shl nuw nsw i32 %140, 6
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %142
  store i32 1, ptr %143, align 4
  %144 = add nuw nsw i32 %140, 1
  %145 = icmp samesign ult i32 %144, 3
  br i1 %145, label %139, label %146, !llvm.loop !33

146:                                              ; preds = %139
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %147

147:                                              ; preds = %157, %146
  %148 = phi i32 [ 0, %146 ], [ %158, %157 ]
  br label %149

149:                                              ; preds = %149, %147
  %150 = phi i32 [ 0, %147 ], [ %155, %149 ]
  %151 = shl nuw nsw i32 %150, 3
  %152 = or disjoint i32 %148, %151
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %153
  store i32 1, ptr %154, align 4
  %155 = add nuw nsw i32 %150, 1
  %156 = icmp samesign ult i32 %155, 2
  br i1 %156, label %149, label %157, !llvm.loop !34

157:                                              ; preds = %149
  %158 = add nuw nsw i32 %148, 1
  %159 = icmp samesign ult i32 %158, 2
  br i1 %159, label %147, label %160, !llvm.loop !35

160:                                              ; preds = %157
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %161

161:                                              ; preds = %171, %160
  %162 = phi i32 [ 0, %160 ], [ %172, %171 ]
  br label %163

163:                                              ; preds = %163, %161
  %164 = phi i32 [ 0, %161 ], [ %169, %163 ]
  %165 = shl nuw nsw i32 %164, 6
  %166 = or disjoint i32 %162, %165
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %167
  store i32 1, ptr %168, align 4
  %169 = add nuw nsw i32 %164, 1
  %170 = icmp samesign ult i32 %169, 2
  br i1 %170, label %163, label %171, !llvm.loop !36

171:                                              ; preds = %163
  %172 = add nuw nsw i32 %162, 1
  %173 = icmp samesign ult i32 %172, 2
  br i1 %173, label %161, label %174, !llvm.loop !37

174:                                              ; preds = %171
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %175

175:                                              ; preds = %186, %174
  %176 = phi i32 [ 0, %174 ], [ %187, %186 ]
  %177 = shl nuw nsw i32 %176, 3
  br label %178

178:                                              ; preds = %178, %175
  %179 = phi i32 [ 0, %175 ], [ %184, %178 ]
  %180 = shl nuw nsw i32 %179, 6
  %181 = or disjoint i32 %180, %177
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %182
  store i32 1, ptr %183, align 4
  %184 = add nuw nsw i32 %179, 1
  %185 = icmp samesign ult i32 %184, 2
  br i1 %185, label %178, label %186, !llvm.loop !38

186:                                              ; preds = %178
  %187 = add nuw nsw i32 %176, 1
  %188 = icmp samesign ult i32 %187, 2
  br i1 %188, label %175, label %189, !llvm.loop !39

189:                                              ; preds = %186
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %190

190:                                              ; preds = %205, %189
  %191 = phi i32 [ 0, %189 ], [ %206, %205 ]
  br label %192

192:                                              ; preds = %202, %190
  %193 = phi i32 [ 0, %190 ], [ %203, %202 ]
  %194 = shl nuw nsw i32 %193, 3
  %invariant.op1 = or disjoint i32 %194, %191
  br label %195

195:                                              ; preds = %195, %192
  %196 = phi i32 [ 0, %192 ], [ %200, %195 ]
  %197 = shl nuw nsw i32 %196, 6
  %.reass2 = or disjoint i32 %197, %invariant.op1
  %198 = zext nneg i32 %.reass2 to i64
  %199 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %198
  store i32 1, ptr %199, align 4
  %200 = add nuw nsw i32 %196, 1
  %201 = icmp samesign ult i32 %200, 2
  br i1 %201, label %195, label %202, !llvm.loop !40

202:                                              ; preds = %195
  %203 = add nuw nsw i32 %193, 1
  %204 = icmp samesign ult i32 %203, 2
  br i1 %204, label %192, label %205, !llvm.loop !41

205:                                              ; preds = %202
  %206 = add nuw nsw i32 %191, 1
  %207 = icmp samesign ult i32 %206, 2
  br i1 %207, label %190, label %208, !llvm.loop !42

208:                                              ; preds = %205
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %209 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %209, 0
  br i1 %.not, label %212, label %210

210:                                              ; preds = %208
  %211 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %211, ptr @n, align 4
  br label %213

212:                                              ; preds = %208
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %213

213:                                              ; preds = %212, %210
  %214 = phi i32 [ %.pre, %212 ], [ %211, %210 ]
  %215 = call i32 @Trial(i32 noundef %214)
  %.not1 = icmp eq i32 %215, 0
  br i1 %.not1, label %216, label %217

216:                                              ; preds = %213
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %220

217:                                              ; preds = %213
  %218 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %218, 2005
  br i1 %.not3, label %220, label %219

219:                                              ; preds = %217
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %220

220:                                              ; preds = %217, %219, %216
  %221 = load i32, ptr @n, align 4
  %222 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %221) #3
  %223 = load i32, ptr @kount, align 4
  %224 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %223) #3
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
