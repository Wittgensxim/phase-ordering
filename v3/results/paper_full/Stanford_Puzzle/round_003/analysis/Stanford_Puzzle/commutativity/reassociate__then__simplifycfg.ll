; ModuleID = 'results\paper_full\Stanford_Puzzle\round_002\output.ll'
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
  %9 = add nsw i32 %3, %1
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
  %9 = add nsw i32 %3, %1
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
  %9 = add nsw i32 %3, %1
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
  %15 = add nuw nsw i32 %13, %14
  %16 = add nuw nsw i32 %15, %8
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

40:                                               ; preds = %37, %50
  %41 = phi i32 [ %51, %50 ], [ 0, %37 ]
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i32 [ 0, %40 ], [ 1, %42 ]
  %44 = shl nuw nsw i32 %43, 3
  %45 = add nuw nsw i32 %44, %41
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %46
  store i32 1, ptr %47, align 4
  %48 = add nuw nsw i32 %43, 1
  %49 = icmp samesign ult i32 %48, 2
  br i1 %49, label %42, label %50, !llvm.loop !19

50:                                               ; preds = %42
  %51 = add nuw nsw i32 %41, 1
  %52 = icmp samesign ult i32 %51, 4
  br i1 %52, label %40, label %53, !llvm.loop !20

53:                                               ; preds = %50
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %54

54:                                               ; preds = %64, %53
  %55 = phi i32 [ 0, %53 ], [ 1, %64 ]
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i32 [ 0, %54 ], [ %62, %56 ]
  %58 = shl nuw nsw i32 %57, 6
  %59 = add nuw nsw i32 %58, %55
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %60
  store i32 1, ptr %61, align 4
  %62 = add nuw nsw i32 %57, 1
  %63 = icmp samesign ult i32 %62, 4
  br i1 %63, label %56, label %64, !llvm.loop !21

64:                                               ; preds = %56
  %65 = add nuw nsw i32 %55, 1
  %66 = icmp samesign ult i32 %65, 2
  br i1 %66, label %54, label %67, !llvm.loop !22

67:                                               ; preds = %64
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %68

68:                                               ; preds = %79, %67
  %69 = phi i32 [ 0, %67 ], [ %80, %79 ]
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i32 [ 0, %68 ], [ %77, %70 ]
  %72 = shl nuw nsw i32 %71, 6
  %73 = shl nuw nsw i32 %69, 3
  %74 = add nuw nsw i32 %72, %73
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %75
  store i32 1, ptr %76, align 4
  %77 = add nuw nsw i32 %71, 1
  %78 = icmp samesign ult i32 %77, 2
  br i1 %78, label %70, label %79, !llvm.loop !23

79:                                               ; preds = %70
  %80 = add nuw nsw i32 %69, 1
  %81 = icmp samesign ult i32 %80, 4
  br i1 %81, label %68, label %82, !llvm.loop !24

82:                                               ; preds = %79
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %83

83:                                               ; preds = %93, %82
  %84 = phi i32 [ 0, %82 ], [ 1, %93 ]
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi i32 [ 0, %83 ], [ %91, %85 ]
  %87 = shl nuw nsw i32 %86, 3
  %88 = add nuw nsw i32 %87, %84
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %89
  store i32 1, ptr %90, align 4
  %91 = add nuw nsw i32 %86, 1
  %92 = icmp samesign ult i32 %91, 4
  br i1 %92, label %85, label %93, !llvm.loop !25

93:                                               ; preds = %85
  %94 = add nuw nsw i32 %84, 1
  %95 = icmp samesign ult i32 %94, 2
  br i1 %95, label %83, label %96, !llvm.loop !26

96:                                               ; preds = %93
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %97

97:                                               ; preds = %107, %96
  %98 = phi i32 [ 0, %96 ], [ %108, %107 ]
  br label %99

99:                                               ; preds = %99, %97
  %100 = phi i32 [ 0, %97 ], [ %105, %99 ]
  %101 = shl nuw nsw i32 %100, 6
  %102 = add nuw nsw i32 %101, %98
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %103
  store i32 1, ptr %104, align 4
  %105 = add nuw nsw i32 %100, 1
  %106 = icmp samesign ult i32 %105, 2
  br i1 %106, label %99, label %107, !llvm.loop !27

107:                                              ; preds = %99
  %108 = add nuw nsw i32 %98, 1
  %109 = icmp samesign ult i32 %108, 4
  br i1 %109, label %97, label %110, !llvm.loop !28

110:                                              ; preds = %107
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %111

111:                                              ; preds = %122, %110
  %112 = phi i32 [ 0, %110 ], [ 1, %122 ]
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i32 [ 0, %111 ], [ %120, %113 ]
  %115 = shl nuw nsw i32 %114, 6
  %116 = shl nuw nsw i32 %112, 3
  %117 = add nuw nsw i32 %115, %116
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %118
  store i32 1, ptr %119, align 4
  %120 = add nuw nsw i32 %114, 1
  %121 = icmp samesign ult i32 %120, 4
  br i1 %121, label %113, label %122, !llvm.loop !29

122:                                              ; preds = %113
  %123 = add nuw nsw i32 %112, 1
  %124 = icmp samesign ult i32 %123, 2
  br i1 %124, label %111, label %125, !llvm.loop !30

125:                                              ; preds = %122
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %126

126:                                              ; preds = %126, %125
  %127 = phi i32 [ 0, %125 ], [ %130, %126 ]
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %128
  store i32 1, ptr %129, align 4
  %130 = add nuw nsw i32 %127, 1
  %131 = icmp samesign ult i32 %130, 3
  br i1 %131, label %126, label %132, !llvm.loop !31

132:                                              ; preds = %126
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %133

133:                                              ; preds = %133, %132
  %134 = phi i32 [ 0, %132 ], [ %138, %133 ]
  %135 = shl nuw nsw i32 %134, 3
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %136
  store i32 1, ptr %137, align 4
  %138 = add nuw nsw i32 %134, 1
  %139 = icmp samesign ult i32 %138, 3
  br i1 %139, label %133, label %140, !llvm.loop !32

140:                                              ; preds = %133
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %141

141:                                              ; preds = %141, %140
  %142 = phi i32 [ 0, %140 ], [ %146, %141 ]
  %143 = shl nuw nsw i32 %142, 6
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %144
  store i32 1, ptr %145, align 4
  %146 = add nuw nsw i32 %142, 1
  %147 = icmp samesign ult i32 %146, 3
  br i1 %147, label %141, label %148, !llvm.loop !33

148:                                              ; preds = %141
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %149

149:                                              ; preds = %159, %148
  %150 = phi i32 [ 0, %148 ], [ 1, %159 ]
  br label %151

151:                                              ; preds = %151, %149
  %152 = phi i32 [ 0, %149 ], [ 1, %151 ]
  %153 = shl nuw nsw i32 %152, 3
  %154 = add nuw nsw i32 %153, %150
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %155
  store i32 1, ptr %156, align 4
  %157 = add nuw nsw i32 %152, 1
  %158 = icmp samesign ult i32 %157, 2
  br i1 %158, label %151, label %159, !llvm.loop !34

159:                                              ; preds = %151
  %160 = add nuw nsw i32 %150, 1
  %161 = icmp samesign ult i32 %160, 2
  br i1 %161, label %149, label %162, !llvm.loop !35

162:                                              ; preds = %159
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %163

163:                                              ; preds = %173, %162
  %164 = phi i32 [ 0, %162 ], [ 1, %173 ]
  br label %165

165:                                              ; preds = %165, %163
  %166 = phi i32 [ 0, %163 ], [ %171, %165 ]
  %167 = shl nuw nsw i32 %166, 6
  %168 = add nuw nsw i32 %167, %164
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %169
  store i32 1, ptr %170, align 4
  %171 = add nuw nsw i32 %166, 1
  %172 = icmp samesign ult i32 %171, 2
  br i1 %172, label %165, label %173, !llvm.loop !36

173:                                              ; preds = %165
  %174 = add nuw nsw i32 %164, 1
  %175 = icmp samesign ult i32 %174, 2
  br i1 %175, label %163, label %176, !llvm.loop !37

176:                                              ; preds = %173
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %177

177:                                              ; preds = %188, %176
  %178 = phi i32 [ 0, %176 ], [ 1, %188 ]
  br label %179

179:                                              ; preds = %179, %177
  %180 = phi i32 [ 0, %177 ], [ %186, %179 ]
  %181 = shl nuw nsw i32 %180, 6
  %182 = shl nuw nsw i32 %178, 3
  %183 = add nuw nsw i32 %181, %182
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %184
  store i32 1, ptr %185, align 4
  %186 = add nuw nsw i32 %180, 1
  %187 = icmp samesign ult i32 %186, 2
  br i1 %187, label %179, label %188, !llvm.loop !38

188:                                              ; preds = %179
  %189 = add nuw nsw i32 %178, 1
  %190 = icmp samesign ult i32 %189, 2
  br i1 %190, label %177, label %191, !llvm.loop !39

191:                                              ; preds = %188
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %192

192:                                              ; preds = %209, %191
  %193 = phi i32 [ 0, %191 ], [ 1, %209 ]
  br label %194

194:                                              ; preds = %206, %192
  %195 = phi i32 [ 0, %192 ], [ 1, %206 ]
  br label %196

196:                                              ; preds = %196, %194
  %197 = phi i32 [ 0, %194 ], [ %204, %196 ]
  %198 = shl nuw nsw i32 %197, 6
  %199 = shl nuw nsw i32 %195, 3
  %200 = add nuw nsw i32 %198, %199
  %201 = add nuw nsw i32 %200, %193
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %202
  store i32 1, ptr %203, align 4
  %204 = add nuw nsw i32 %197, 1
  %205 = icmp samesign ult i32 %204, 2
  br i1 %205, label %196, label %206, !llvm.loop !40

206:                                              ; preds = %196
  %207 = add nuw nsw i32 %195, 1
  %208 = icmp samesign ult i32 %207, 2
  br i1 %208, label %194, label %209, !llvm.loop !41

209:                                              ; preds = %206
  %210 = add nuw nsw i32 %193, 1
  %211 = icmp samesign ult i32 %210, 2
  br i1 %211, label %192, label %212, !llvm.loop !42

212:                                              ; preds = %209
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %213 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %213, 0
  br i1 %.not, label %216, label %214

214:                                              ; preds = %212
  %215 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %215, ptr @n, align 4
  br label %217

216:                                              ; preds = %212
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %217

217:                                              ; preds = %216, %214
  %218 = phi i32 [ %.pre, %216 ], [ %215, %214 ]
  %219 = call i32 @Trial(i32 noundef %218)
  %.not1 = icmp eq i32 %219, 0
  br i1 %.not1, label %220, label %221

220:                                              ; preds = %217
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %224

221:                                              ; preds = %217
  %222 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %222, 2005
  br i1 %.not3, label %224, label %223

223:                                              ; preds = %221
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %224

224:                                              ; preds = %221, %223, %220
  %225 = load i32, ptr @n, align 4
  %226 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %225) #3
  %227 = load i32, ptr @kount, align 4
  %228 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %227) #3
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
