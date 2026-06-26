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
  %.not = icmp sgt i32 %17, %.pre
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !7

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
  %.not4 = icmp sgt i32 0, %.pre
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
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !9

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
  %31 = icmp slt i32 %30, 512
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
  %.not1 = icmp sgt i32 0, %.pre
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
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !11

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
  %24 = icmp samesign ult i32 %23, 13
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
  %6 = icmp samesign ult i32 %5, 512
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
  %19 = icmp samesign ult i32 %18, 6
  br i1 %19, label %13, label %20, !llvm.loop !14

20:                                               ; preds = %13
  %21 = add nuw nsw i32 %11, 1
  %22 = icmp samesign ult i32 %21, 6
  br i1 %22, label %10, label %23, !llvm.loop !15

23:                                               ; preds = %20
  %24 = add nuw nsw i32 %9, 1
  %25 = icmp samesign ult i32 %24, 6
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
  %36 = icmp samesign ult i32 %35, 512
  br i1 %36, label %31, label %37, !llvm.loop !17

37:                                               ; preds = %31
  %38 = add nuw nsw i32 %28, 1
  %39 = icmp samesign ult i32 %38, 13
  br i1 %39, label %27, label %40, !llvm.loop !18

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %50, %40
  %42 = phi i32 [ 0, %40 ], [ %51, %50 ]
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i32 [ 0, %41 ], [ 1, %43 ]
  %45 = shl nuw nsw i32 %44, 3
  %46 = or disjoint i32 %42, %45
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %47
  store i32 1, ptr %48, align 4
  %49 = icmp eq i32 %44, 0
  br i1 %49, label %43, label %50, !llvm.loop !19

50:                                               ; preds = %43
  %51 = add nuw nsw i32 %42, 1
  %52 = icmp samesign ult i32 %51, 4
  br i1 %52, label %41, label %53, !llvm.loop !20

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
  %59 = or disjoint i32 %55, %58
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %60
  store i32 1, ptr %61, align 4
  %62 = add nuw nsw i32 %57, 1
  %63 = icmp samesign ult i32 %62, 4
  br i1 %63, label %56, label %64, !llvm.loop !21

64:                                               ; preds = %56
  %65 = icmp eq i32 %55, 0
  br i1 %65, label %54, label %66, !llvm.loop !22

66:                                               ; preds = %64
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %67

67:                                               ; preds = %78, %66
  %68 = phi i32 [ 0, %66 ], [ %79, %78 ]
  %69 = shl nuw nsw i32 %68, 3
  br label %70

70:                                               ; preds = %70, %67
  %71 = phi i32 [ 0, %67 ], [ %76, %70 ]
  %72 = shl nuw nsw i32 %71, 6
  %73 = or disjoint i32 %72, %69
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %74
  store i32 1, ptr %75, align 4
  %76 = add nuw nsw i32 %71, 1
  %77 = icmp samesign ult i32 %76, 2
  br i1 %77, label %70, label %78, !llvm.loop !23

78:                                               ; preds = %70
  %79 = add nuw nsw i32 %68, 1
  %80 = icmp samesign ult i32 %79, 4
  br i1 %80, label %67, label %81, !llvm.loop !24

81:                                               ; preds = %78
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %82

82:                                               ; preds = %92, %81
  %83 = phi i32 [ 0, %81 ], [ 1, %92 ]
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi i32 [ 0, %82 ], [ %90, %84 ]
  %86 = shl nuw nsw i32 %85, 3
  %87 = or disjoint i32 %83, %86
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %88
  store i32 1, ptr %89, align 4
  %90 = add nuw nsw i32 %85, 1
  %91 = icmp samesign ult i32 %90, 4
  br i1 %91, label %84, label %92, !llvm.loop !25

92:                                               ; preds = %84
  %93 = icmp eq i32 %83, 0
  br i1 %93, label %82, label %94, !llvm.loop !26

94:                                               ; preds = %92
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
  %110 = phi i32 [ 0, %108 ], [ 1, %120 ]
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
  %121 = icmp eq i32 %110, 0
  br i1 %121, label %109, label %122, !llvm.loop !30

122:                                              ; preds = %120
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %123

123:                                              ; preds = %123, %122
  %124 = phi i32 [ 0, %122 ], [ %127, %123 ]
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %125
  store i32 1, ptr %126, align 4
  %127 = add nuw nsw i32 %124, 1
  %128 = icmp samesign ult i32 %127, 3
  br i1 %128, label %123, label %129, !llvm.loop !31

129:                                              ; preds = %123
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %130

130:                                              ; preds = %130, %129
  %131 = phi i32 [ 0, %129 ], [ %135, %130 ]
  %132 = shl nuw nsw i32 %131, 3
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %133
  store i32 1, ptr %134, align 4
  %135 = add nuw nsw i32 %131, 1
  %136 = icmp samesign ult i32 %135, 3
  br i1 %136, label %130, label %137, !llvm.loop !32

137:                                              ; preds = %130
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %138

138:                                              ; preds = %138, %137
  %139 = phi i32 [ 0, %137 ], [ %143, %138 ]
  %140 = shl nuw nsw i32 %139, 6
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %141
  store i32 1, ptr %142, align 4
  %143 = add nuw nsw i32 %139, 1
  %144 = icmp samesign ult i32 %143, 3
  br i1 %144, label %138, label %145, !llvm.loop !33

145:                                              ; preds = %138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %146

146:                                              ; preds = %155, %145
  %147 = phi i32 [ 0, %145 ], [ 1, %155 ]
  br label %148

148:                                              ; preds = %148, %146
  %149 = phi i32 [ 0, %146 ], [ 1, %148 ]
  %150 = shl nuw nsw i32 %149, 3
  %151 = or disjoint i32 %147, %150
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %152
  store i32 1, ptr %153, align 4
  %154 = icmp eq i32 %149, 0
  br i1 %154, label %148, label %155, !llvm.loop !34

155:                                              ; preds = %148
  %156 = icmp eq i32 %147, 0
  br i1 %156, label %146, label %157, !llvm.loop !35

157:                                              ; preds = %155
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %158

158:                                              ; preds = %168, %157
  %159 = phi i32 [ 0, %157 ], [ 1, %168 ]
  br label %160

160:                                              ; preds = %160, %158
  %161 = phi i32 [ 0, %158 ], [ %166, %160 ]
  %162 = shl nuw nsw i32 %161, 6
  %163 = or disjoint i32 %159, %162
  %164 = zext nneg i32 %163 to i64
  %165 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %164
  store i32 1, ptr %165, align 4
  %166 = add nuw nsw i32 %161, 1
  %167 = icmp samesign ult i32 %166, 2
  br i1 %167, label %160, label %168, !llvm.loop !36

168:                                              ; preds = %160
  %169 = icmp eq i32 %159, 0
  br i1 %169, label %158, label %170, !llvm.loop !37

170:                                              ; preds = %168
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %171

171:                                              ; preds = %182, %170
  %172 = phi i32 [ 0, %170 ], [ 1, %182 ]
  %173 = shl nuw nsw i32 %172, 3
  br label %174

174:                                              ; preds = %174, %171
  %175 = phi i32 [ 0, %171 ], [ %180, %174 ]
  %176 = shl nuw nsw i32 %175, 6
  %177 = or disjoint i32 %176, %173
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %178
  store i32 1, ptr %179, align 4
  %180 = add nuw nsw i32 %175, 1
  %181 = icmp samesign ult i32 %180, 2
  br i1 %181, label %174, label %182, !llvm.loop !38

182:                                              ; preds = %174
  %183 = icmp eq i32 %172, 0
  br i1 %183, label %171, label %184, !llvm.loop !39

184:                                              ; preds = %182
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %185

185:                                              ; preds = %199, %184
  %186 = phi i32 [ 0, %184 ], [ 1, %199 ]
  br label %187

187:                                              ; preds = %197, %185
  %188 = phi i32 [ 0, %185 ], [ 1, %197 ]
  %189 = shl nuw nsw i32 %188, 3
  %invariant.op1 = or disjoint i32 %189, %186
  br label %190

190:                                              ; preds = %190, %187
  %191 = phi i32 [ 0, %187 ], [ %195, %190 ]
  %192 = shl nuw nsw i32 %191, 6
  %.reass2 = or disjoint i32 %192, %invariant.op1
  %193 = zext nneg i32 %.reass2 to i64
  %194 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %193
  store i32 1, ptr %194, align 4
  %195 = add nuw nsw i32 %191, 1
  %196 = icmp samesign ult i32 %195, 2
  br i1 %196, label %190, label %197, !llvm.loop !40

197:                                              ; preds = %190
  %198 = icmp eq i32 %188, 0
  br i1 %198, label %187, label %199, !llvm.loop !41

199:                                              ; preds = %197
  %200 = icmp eq i32 %186, 0
  br i1 %200, label %185, label %201, !llvm.loop !42

201:                                              ; preds = %199
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %202 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %202, 0
  br i1 %.not, label %205, label %203

203:                                              ; preds = %201
  %204 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %204, ptr @n, align 4
  br label %206

205:                                              ; preds = %201
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %206

206:                                              ; preds = %205, %203
  %207 = phi i32 [ %.pre, %205 ], [ %204, %203 ]
  %208 = call i32 @Trial(i32 noundef %207)
  %.not1 = icmp eq i32 %208, 0
  br i1 %.not1, label %209, label %210

209:                                              ; preds = %206
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %214

210:                                              ; preds = %206
  %211 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %211, 2005
  br i1 %.not3, label %213, label %212

212:                                              ; preds = %210
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %213

213:                                              ; preds = %212, %210
  br label %214

214:                                              ; preds = %213, %209
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
