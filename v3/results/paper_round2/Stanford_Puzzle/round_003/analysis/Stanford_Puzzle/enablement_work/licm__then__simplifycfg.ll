; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_002\output.ll'
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
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
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

38:                                               ; preds = %35, %47
  %39 = phi i32 [ %48, %47 ], [ 0, %35 ]
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i32 [ 0, %38 ], [ 1, %40 ]
  %42 = shl nuw nsw i32 %41, 3
  %43 = or disjoint i32 %39, %42
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %44
  store i32 1, ptr %45, align 4
  %46 = icmp samesign ult i32 %41, 1
  br i1 %46, label %40, label %47, !llvm.loop !19

47:                                               ; preds = %40
  %48 = add nuw nsw i32 %39, 1
  %49 = icmp samesign ult i32 %48, 4
  br i1 %49, label %38, label %50, !llvm.loop !20

50:                                               ; preds = %47
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %51

51:                                               ; preds = %61, %50
  %52 = phi i32 [ 0, %50 ], [ 1, %61 ]
  br label %53

53:                                               ; preds = %53, %51
  %54 = phi i32 [ 0, %51 ], [ %59, %53 ]
  %55 = shl nuw nsw i32 %54, 6
  %56 = or disjoint i32 %52, %55
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %57
  store i32 1, ptr %58, align 4
  %59 = add nuw nsw i32 %54, 1
  %60 = icmp samesign ult i32 %59, 4
  br i1 %60, label %53, label %61, !llvm.loop !21

61:                                               ; preds = %53
  %62 = icmp samesign ult i32 %52, 1
  br i1 %62, label %51, label %63, !llvm.loop !22

63:                                               ; preds = %61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %64

64:                                               ; preds = %75, %63
  %65 = phi i32 [ 0, %63 ], [ %76, %75 ]
  %66 = shl nuw nsw i32 %65, 3
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i32 [ 0, %64 ], [ %73, %67 ]
  %69 = shl nuw nsw i32 %68, 6
  %70 = or disjoint i32 %69, %66
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %71
  store i32 1, ptr %72, align 4
  %73 = add nuw nsw i32 %68, 1
  %74 = icmp samesign ult i32 %73, 2
  br i1 %74, label %67, label %75, !llvm.loop !23

75:                                               ; preds = %67
  %76 = add nuw nsw i32 %65, 1
  %77 = icmp samesign ult i32 %76, 4
  br i1 %77, label %64, label %78, !llvm.loop !24

78:                                               ; preds = %75
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %79

79:                                               ; preds = %89, %78
  %80 = phi i32 [ 0, %78 ], [ 1, %89 ]
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i32 [ 0, %79 ], [ %87, %81 ]
  %83 = shl nuw nsw i32 %82, 3
  %84 = or disjoint i32 %80, %83
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %85
  store i32 1, ptr %86, align 4
  %87 = add nuw nsw i32 %82, 1
  %88 = icmp samesign ult i32 %87, 4
  br i1 %88, label %81, label %89, !llvm.loop !25

89:                                               ; preds = %81
  %90 = icmp samesign ult i32 %80, 1
  br i1 %90, label %79, label %91, !llvm.loop !26

91:                                               ; preds = %89
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %92

92:                                               ; preds = %102, %91
  %93 = phi i32 [ 0, %91 ], [ %103, %102 ]
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i32 [ 0, %92 ], [ %100, %94 ]
  %96 = shl nuw nsw i32 %95, 6
  %97 = or disjoint i32 %93, %96
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %98
  store i32 1, ptr %99, align 4
  %100 = add nuw nsw i32 %95, 1
  %101 = icmp samesign ult i32 %100, 2
  br i1 %101, label %94, label %102, !llvm.loop !27

102:                                              ; preds = %94
  %103 = add nuw nsw i32 %93, 1
  %104 = icmp samesign ult i32 %103, 4
  br i1 %104, label %92, label %105, !llvm.loop !28

105:                                              ; preds = %102
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %106

106:                                              ; preds = %117, %105
  %107 = phi i32 [ 0, %105 ], [ 1, %117 ]
  %108 = shl nuw nsw i32 %107, 3
  br label %109

109:                                              ; preds = %109, %106
  %110 = phi i32 [ 0, %106 ], [ %115, %109 ]
  %111 = shl nuw nsw i32 %110, 6
  %112 = or disjoint i32 %111, %108
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %113
  store i32 1, ptr %114, align 4
  %115 = add nuw nsw i32 %110, 1
  %116 = icmp samesign ult i32 %115, 4
  br i1 %116, label %109, label %117, !llvm.loop !29

117:                                              ; preds = %109
  %118 = icmp samesign ult i32 %107, 1
  br i1 %118, label %106, label %119, !llvm.loop !30

119:                                              ; preds = %117
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %120

120:                                              ; preds = %120, %119
  %121 = phi i32 [ 0, %119 ], [ %124, %120 ]
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %122
  store i32 1, ptr %123, align 4
  %124 = add nuw nsw i32 %121, 1
  %125 = icmp samesign ult i32 %124, 3
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
  %133 = icmp samesign ult i32 %132, 3
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
  %141 = icmp samesign ult i32 %140, 3
  br i1 %141, label %135, label %142, !llvm.loop !33

142:                                              ; preds = %135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %143

143:                                              ; preds = %152, %142
  %144 = phi i32 [ 0, %142 ], [ 1, %152 ]
  br label %145

145:                                              ; preds = %145, %143
  %146 = phi i32 [ 0, %143 ], [ 1, %145 ]
  %147 = shl nuw nsw i32 %146, 3
  %148 = or disjoint i32 %144, %147
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %149
  store i32 1, ptr %150, align 4
  %151 = icmp samesign ult i32 %146, 1
  br i1 %151, label %145, label %152, !llvm.loop !34

152:                                              ; preds = %145
  %153 = icmp samesign ult i32 %144, 1
  br i1 %153, label %143, label %154, !llvm.loop !35

154:                                              ; preds = %152
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %155

155:                                              ; preds = %165, %154
  %156 = phi i32 [ 0, %154 ], [ 1, %165 ]
  br label %157

157:                                              ; preds = %157, %155
  %158 = phi i32 [ 0, %155 ], [ %163, %157 ]
  %159 = shl nuw nsw i32 %158, 6
  %160 = or disjoint i32 %156, %159
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %161
  store i32 1, ptr %162, align 4
  %163 = add nuw nsw i32 %158, 1
  %164 = icmp samesign ult i32 %163, 2
  br i1 %164, label %157, label %165, !llvm.loop !36

165:                                              ; preds = %157
  %166 = icmp samesign ult i32 %156, 1
  br i1 %166, label %155, label %167, !llvm.loop !37

167:                                              ; preds = %165
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %168

168:                                              ; preds = %179, %167
  %169 = phi i32 [ 0, %167 ], [ 1, %179 ]
  %170 = shl nuw nsw i32 %169, 3
  br label %171

171:                                              ; preds = %171, %168
  %172 = phi i32 [ 0, %168 ], [ %177, %171 ]
  %173 = shl nuw nsw i32 %172, 6
  %174 = or disjoint i32 %173, %170
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %175
  store i32 1, ptr %176, align 4
  %177 = add nuw nsw i32 %172, 1
  %178 = icmp samesign ult i32 %177, 2
  br i1 %178, label %171, label %179, !llvm.loop !38

179:                                              ; preds = %171
  %180 = icmp samesign ult i32 %169, 1
  br i1 %180, label %168, label %181, !llvm.loop !39

181:                                              ; preds = %179
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %182

182:                                              ; preds = %196, %181
  %183 = phi i32 [ 0, %181 ], [ 1, %196 ]
  br label %184

184:                                              ; preds = %194, %182
  %185 = phi i32 [ 0, %182 ], [ 1, %194 ]
  %186 = shl nuw nsw i32 %185, 3
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
  %193 = icmp samesign ult i32 %192, 2
  br i1 %193, label %187, label %194, !llvm.loop !40

194:                                              ; preds = %187
  %195 = icmp samesign ult i32 %185, 1
  br i1 %195, label %184, label %196, !llvm.loop !41

196:                                              ; preds = %194
  %197 = icmp samesign ult i32 %183, 1
  br i1 %197, label %182, label %198, !llvm.loop !42

198:                                              ; preds = %196
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %199 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %199, 0
  br i1 %.not, label %202, label %200

200:                                              ; preds = %198
  %201 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %201, ptr @n, align 4
  br label %203

202:                                              ; preds = %198
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi i32 [ %.pre, %202 ], [ %201, %200 ]
  %205 = call i32 @Trial(i32 noundef %204)
  %.not1 = icmp eq i32 %205, 0
  br i1 %.not1, label %206, label %207

206:                                              ; preds = %203
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %210

207:                                              ; preds = %203
  %208 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %208, 2005
  br i1 %.not3, label %210, label %209

209:                                              ; preds = %207
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %210

210:                                              ; preds = %207, %209, %206
  %211 = load i32, ptr @n, align 4
  %212 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %211) #3
  %213 = load i32, ptr @kount, align 4
  %214 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %213) #3
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
