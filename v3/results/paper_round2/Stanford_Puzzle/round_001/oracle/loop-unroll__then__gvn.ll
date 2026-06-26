; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_000\output.ll'
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

3:                                                ; preds = %17, %2
  %4 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %17, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %10
  br label %20

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %5
  %18 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !7

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ 1, %19 ], [ 0, %15 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %14, label %10

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
  br label %23

23:                                               ; preds = %31, %16
  %24 = phi i32 [ %32, %31 ], [ %1, %16 ]
  %25 = icmp slt i32 %24, 512
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not2 = icmp eq i32 %29, 0
  br i1 %.not2, label %30, label %31

30:                                               ; preds = %26
  br label %34

31:                                               ; preds = %26
  %32 = add nsw i32 %24, 1
  br label %23, !llvm.loop !10

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ 0, %33 ], [ %24, %30 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %14, label %10

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

4:                                                ; preds = %24, %1
  %5 = phi i32 [ %25, %24 ], [ 0, %1 ]
  %6 = icmp samesign ult i32 %5, 13
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %24, label %14

14:                                               ; preds = %7
  %15 = call i32 @Fit(i32 noundef %5, i32 noundef %0)
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %23, label %16

16:                                               ; preds = %14
  %17 = call i32 @Place(i32 noundef %5, i32 noundef %0)
  %18 = call i32 @Trial(i32 noundef %17)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %19, label %21

19:                                               ; preds = %16
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19, %16
  br label %27

22:                                               ; preds = %19
  call void @Remove(i32 noundef %5, i32 noundef %0)
  br label %23

23:                                               ; preds = %22, %14
  br label %24

24:                                               ; preds = %23, %7
  %25 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !12

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ 0, %26 ], [ 1, %21 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i32 [ 0, %0 ], [ %13, %10 ]
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  %5 = add nuw nsw i32 %2, 1
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %6
  store i32 1, ptr %7, align 4
  %8 = add nuw nsw i32 %2, 2
  %9 = icmp samesign ult i32 %8, 512
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  %13 = add nuw nsw i32 %2, 3
  br label %1, !llvm.loop !13

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %122, %14
  %16 = phi i32 [ %123, %122 ], [ 1, %14 ]
  %17 = icmp samesign ult i32 %16, 6
  br i1 %17, label %18, label %124

18:                                               ; preds = %15
  %19 = or disjoint i32 %16, 72
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  %22 = or disjoint i32 %16, 136
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  %25 = or disjoint i32 %16, 200
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %26
  store i32 0, ptr %27, align 4
  %28 = or disjoint i32 %16, 264
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  %31 = or disjoint i32 %16, 328
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %32
  store i32 0, ptr %33, align 4
  br i1 false, label %..loopexit_crit_edge, label %40

..loopexit_crit_edge:                             ; preds = %18
  br label %.loopexit

.loopexitsplitsplitsplitsplit:                    ; preds = %88
  br label %.loopexitsplitsplitsplit

.loopexitsplitsplitsplit:                         ; preds = %.loopexitsplitsplitsplitsplit, %..loopexitsplitsplitsplit_crit_edge
  %.lcssa1.ph.ph.ph.ph = phi i32 [ poison, %..loopexitsplitsplitsplit_crit_edge ], [ 5, %.loopexitsplitsplitsplitsplit ]
  br label %.loopexitsplitsplit

.loopexitsplitsplit:                              ; preds = %.loopexitsplitsplitsplit, %..loopexitsplitsplit_crit_edge
  %.lcssa1.ph.ph.ph = phi i32 [ poison, %..loopexitsplitsplit_crit_edge ], [ %.lcssa1.ph.ph.ph.ph, %.loopexitsplitsplitsplit ]
  br label %.loopexitsplit

.loopexitsplit:                                   ; preds = %.loopexitsplitsplit, %..loopexitsplit_crit_edge
  %.lcssa1.ph.ph = phi i32 [ poison, %..loopexitsplit_crit_edge ], [ %.lcssa1.ph.ph.ph, %.loopexitsplitsplit ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitsplit, %..loopexit_crit_edge
  %.lcssa2.ph = phi i32 [ poison, %..loopexit_crit_edge ], [ %16, %.loopexitsplit ]
  %.lcssa1.ph = phi i32 [ poison, %..loopexit_crit_edge ], [ %.lcssa1.ph.ph, %.loopexitsplit ]
  br label %34

34:                                               ; preds = %.loopexit, %105
  %.lcssa2 = phi i32 [ %.lcssa4, %105 ], [ poison, %.loopexit ]
  %.lcssa1 = phi i32 [ 6, %105 ], [ poison, %.loopexit ]
  %35 = shl nuw nsw i32 %.lcssa1, 3
  %36 = or disjoint i32 384, %35
  %37 = or disjoint i32 %.lcssa2, %36
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %38
  store i32 0, ptr %39, align 4
  unreachable

40:                                               ; preds = %18
  %41 = or disjoint i32 %16, 80
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %42
  store i32 0, ptr %43, align 4
  %44 = or disjoint i32 %16, 144
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  %47 = or disjoint i32 %16, 208
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %48
  store i32 0, ptr %49, align 4
  %50 = or disjoint i32 %16, 272
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  %53 = or disjoint i32 %16, 336
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %54
  store i32 0, ptr %55, align 4
  br i1 false, label %..loopexitsplit_crit_edge, label %56

..loopexitsplit_crit_edge:                        ; preds = %40
  br label %.loopexitsplit

56:                                               ; preds = %40
  %57 = or disjoint i32 %16, 88
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %58
  store i32 0, ptr %59, align 4
  %60 = or disjoint i32 %16, 152
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  %63 = or disjoint i32 %16, 216
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %64
  store i32 0, ptr %65, align 4
  %66 = or disjoint i32 %16, 280
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  %69 = or disjoint i32 %16, 344
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %70
  store i32 0, ptr %71, align 4
  br i1 false, label %..loopexitsplitsplit_crit_edge, label %72

..loopexitsplitsplit_crit_edge:                   ; preds = %56
  br label %.loopexitsplitsplit

72:                                               ; preds = %56
  %73 = or disjoint i32 %16, 96
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %74
  store i32 0, ptr %75, align 4
  %76 = or disjoint i32 %16, 160
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %77
  store i32 0, ptr %78, align 4
  %79 = or disjoint i32 %16, 224
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %80
  store i32 0, ptr %81, align 4
  %82 = or disjoint i32 %16, 288
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %83
  store i32 0, ptr %84, align 4
  %85 = or disjoint i32 %16, 352
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %86
  store i32 0, ptr %87, align 4
  br i1 false, label %..loopexitsplitsplitsplit_crit_edge, label %88

..loopexitsplitsplitsplit_crit_edge:              ; preds = %72
  br label %.loopexitsplitsplitsplit

88:                                               ; preds = %72
  %89 = or disjoint i32 %16, 104
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %90
  store i32 0, ptr %91, align 4
  %92 = or disjoint i32 %16, 168
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %93
  store i32 0, ptr %94, align 4
  %95 = or disjoint i32 %16, 232
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %96
  store i32 0, ptr %97, align 4
  %98 = or disjoint i32 %16, 296
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %99
  store i32 0, ptr %100, align 4
  %101 = or disjoint i32 %16, 360
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %102
  store i32 0, ptr %103, align 4
  br i1 false, label %.loopexitsplitsplitsplitsplit, label %104

104:                                              ; preds = %88
  br i1 false, label %105, label %122

105:                                              ; preds = %104
  %.lcssa4 = phi i32 [ %16, %104 ]
  %106 = or disjoint i32 %.lcssa4, 112
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %107
  store i32 0, ptr %108, align 4
  %109 = or disjoint i32 %.lcssa4, 176
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %110
  store i32 0, ptr %111, align 4
  %112 = or disjoint i32 %.lcssa4, 240
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %113
  store i32 0, ptr %114, align 4
  %115 = or disjoint i32 %.lcssa4, 304
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %116
  store i32 0, ptr %117, align 4
  %118 = or disjoint i32 %.lcssa4, 368
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %119
  store i32 0, ptr %120, align 4
  br i1 false, label %34, label %121

121:                                              ; preds = %105
  unreachable

122:                                              ; preds = %104
  %123 = add nuw nsw i32 %16, 1
  br label %15, !llvm.loop !14

124:                                              ; preds = %15
  br label %125

125:                                              ; preds = %144, %124
  %126 = phi i32 [ %145, %144 ], [ 0, %124 ]
  %127 = icmp samesign ult i32 %126, 13
  br i1 %127, label %128, label %146

128:                                              ; preds = %125
  %129 = zext nneg i32 %126 to i64
  %130 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %129
  br label %131

131:                                              ; preds = %140, %128
  %132 = phi i32 [ 0, %128 ], [ %143, %140 ]
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds nuw [4 x i8], ptr %130, i64 %133
  store i32 0, ptr %134, align 4
  %135 = add nuw nsw i32 %132, 1
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds nuw [4 x i8], ptr %130, i64 %136
  store i32 0, ptr %137, align 4
  %138 = add nuw nsw i32 %132, 2
  %139 = icmp samesign ult i32 %138, 512
  br i1 %139, label %140, label %144

140:                                              ; preds = %131
  %141 = zext nneg i32 %138 to i64
  %142 = getelementptr inbounds nuw [4 x i8], ptr %130, i64 %141
  store i32 0, ptr %142, align 4
  %143 = add nuw nsw i32 %132, 3
  br label %131, !llvm.loop !15

144:                                              ; preds = %131
  %145 = add nuw nsw i32 %126, 1
  br label %125, !llvm.loop !16

146:                                              ; preds = %125
  store i32 1, ptr @p, align 4
  br i1 false, label %..loopexit9_crit_edge, label %152

..loopexit9_crit_edge:                            ; preds = %146
  br label %.loopexit9

.loopexit9:                                       ; preds = %..loopexit9_crit_edge58, %..loopexit9_crit_edge57, %..loopexit9_crit_edge55, %..loopexit9_crit_edge54, %..loopexit9_crit_edge52, %..loopexit9_crit_edge51, %..loopexit9_crit_edge50, %..loopexit9_crit_edge, %170, %169
  %.lcssa6.ph = phi i32 [ poison, %..loopexit9_crit_edge50 ], [ poison, %..loopexit9_crit_edge ], [ poison, %..loopexit9_crit_edge51 ], [ poison, %..loopexit9_crit_edge52 ], [ poison, %..loopexit9_crit_edge54 ], [ poison, %..loopexit9_crit_edge55 ], [ poison, %..loopexit9_crit_edge57 ], [ poison, %..loopexit9_crit_edge58 ], [ 4, %169 ], [ 4, %170 ]
  %.lcssa5.ph = phi i32 [ poison, %..loopexit9_crit_edge50 ], [ poison, %..loopexit9_crit_edge ], [ poison, %..loopexit9_crit_edge51 ], [ poison, %..loopexit9_crit_edge52 ], [ poison, %..loopexit9_crit_edge54 ], [ poison, %..loopexit9_crit_edge55 ], [ poison, %..loopexit9_crit_edge57 ], [ poison, %..loopexit9_crit_edge58 ], [ 0, %169 ], [ 1, %170 ]
  br label %147

147:                                              ; preds = %.loopexit9, %154
  %.lcssa6 = phi i32 [ %.lcssa8, %154 ], [ %.lcssa6.ph, %.loopexit9 ]
  %.lcssa5 = phi i32 [ 2, %154 ], [ %.lcssa5.ph, %.loopexit9 ]
  %148 = shl nuw nsw i32 %.lcssa5, 3
  %149 = or disjoint i32 %.lcssa6, %148
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %150
  store i32 1, ptr %151, align 4
  unreachable

152:                                              ; preds = %146
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %..loopexit9_crit_edge50, label %153

..loopexit9_crit_edge50:                          ; preds = %152
  br label %.loopexit9

153:                                              ; preds = %152
  br i1 false, label %._crit_edge, label %159

._crit_edge:                                      ; preds = %153
  br label %154

154:                                              ; preds = %._crit_edge59, %._crit_edge56, %._crit_edge53, %._crit_edge, %171
  %.lcssa8 = phi i32 [ poison, %._crit_edge ], [ poison, %._crit_edge53 ], [ poison, %._crit_edge56 ], [ poison, %._crit_edge59 ], [ 4, %171 ]
  %155 = or disjoint i32 %.lcssa8, 16
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %156
  store i32 1, ptr %157, align 4
  br i1 false, label %147, label %158

158:                                              ; preds = %154
  unreachable

159:                                              ; preds = %153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %..loopexit9_crit_edge51, label %160

..loopexit9_crit_edge51:                          ; preds = %159
  br label %.loopexit9

160:                                              ; preds = %159
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %..loopexit9_crit_edge52, label %161

..loopexit9_crit_edge52:                          ; preds = %160
  br label %.loopexit9

161:                                              ; preds = %160
  br i1 false, label %._crit_edge53, label %162

._crit_edge53:                                    ; preds = %161
  br label %154

162:                                              ; preds = %161
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %..loopexit9_crit_edge54, label %163

..loopexit9_crit_edge54:                          ; preds = %162
  br label %.loopexit9

163:                                              ; preds = %162
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %..loopexit9_crit_edge55, label %164

..loopexit9_crit_edge55:                          ; preds = %163
  br label %.loopexit9

164:                                              ; preds = %163
  br i1 false, label %._crit_edge56, label %165

._crit_edge56:                                    ; preds = %164
  br label %154

165:                                              ; preds = %164
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %..loopexit9_crit_edge57, label %166

..loopexit9_crit_edge57:                          ; preds = %165
  br label %.loopexit9

166:                                              ; preds = %165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %..loopexit9_crit_edge58, label %167

..loopexit9_crit_edge58:                          ; preds = %166
  br label %.loopexit9

167:                                              ; preds = %166
  br i1 false, label %._crit_edge59, label %168

._crit_edge59:                                    ; preds = %167
  br label %154

168:                                              ; preds = %167
  br i1 false, label %169, label %173

169:                                              ; preds = %168
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit9, label %170

170:                                              ; preds = %169
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit9, label %171

171:                                              ; preds = %170
  br i1 false, label %154, label %172

172:                                              ; preds = %171
  unreachable

173:                                              ; preds = %168
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %..loopexit13_crit_edge, label %178

..loopexit13_crit_edge:                           ; preds = %173
  br label %.loopexit13

.loopexit13:                                      ; preds = %..loopexit13_crit_edge61, %..loopexit13_crit_edge, %195
  %.lcssa10.ph = phi i32 [ poison, %..loopexit13_crit_edge ], [ poison, %..loopexit13_crit_edge61 ], [ 2, %195 ]
  br label %174

174:                                              ; preds = %.loopexit13, %179
  %.lcssa10 = phi i32 [ %.lcssa11, %179 ], [ %.lcssa10.ph, %.loopexit13 ]
  %175 = or disjoint i32 %.lcssa10, 256
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %176
  store i32 1, ptr %177, align 4
  unreachable

178:                                              ; preds = %173
  br i1 false, label %._crit_edge60, label %192

._crit_edge60:                                    ; preds = %178
  br label %179

179:                                              ; preds = %._crit_edge62, %._crit_edge60, %196
  %.lcssa11 = phi i32 [ poison, %._crit_edge60 ], [ poison, %._crit_edge62 ], [ 2, %196 ]
  %180 = zext nneg i32 %.lcssa11 to i64
  %181 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %180
  store i32 1, ptr %181, align 4
  %182 = or disjoint i32 %.lcssa11, 64
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %183
  store i32 1, ptr %184, align 4
  %185 = or disjoint i32 %.lcssa11, 128
  %186 = zext nneg i32 %185 to i64
  %187 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %186
  store i32 1, ptr %187, align 4
  %188 = or disjoint i32 %.lcssa11, 192
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %189
  store i32 1, ptr %190, align 4
  br i1 false, label %174, label %191

191:                                              ; preds = %179
  unreachable

192:                                              ; preds = %178
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %..loopexit13_crit_edge61, label %193

..loopexit13_crit_edge61:                         ; preds = %192
  br label %.loopexit13

193:                                              ; preds = %192
  br i1 false, label %._crit_edge62, label %194

._crit_edge62:                                    ; preds = %193
  br label %179

194:                                              ; preds = %193
  br i1 false, label %195, label %198

195:                                              ; preds = %194
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit13, label %196

196:                                              ; preds = %195
  br i1 false, label %179, label %197

197:                                              ; preds = %196
  unreachable

198:                                              ; preds = %194
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %..loopexit15_crit_edge, label %204

..loopexit15_crit_edge:                           ; preds = %198
  br label %.loopexit15

.loopexit15:                                      ; preds = %..loopexit15_crit_edge65, %..loopexit15_crit_edge64, %..loopexit15_crit_edge63, %..loopexit15_crit_edge, %214, %213, %212, %211
  %.lcssa14.ph = phi i32 [ poison, %..loopexit15_crit_edge65 ], [ poison, %..loopexit15_crit_edge64 ], [ poison, %..loopexit15_crit_edge63 ], [ poison, %..loopexit15_crit_edge ], [ 0, %211 ], [ 1, %212 ], [ 2, %213 ], [ 3, %214 ]
  br label %199

199:                                              ; preds = %.loopexit15, %208
  %.lcssa14 = phi i32 [ 4, %208 ], [ %.lcssa14.ph, %.loopexit15 ]
  %200 = shl nuw nsw i32 %.lcssa14, 3
  %201 = or disjoint i32 128, %200
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %202
  store i32 1, ptr %203, align 4
  unreachable

204:                                              ; preds = %198
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %..loopexit15_crit_edge63, label %205

..loopexit15_crit_edge63:                         ; preds = %204
  br label %.loopexit15

205:                                              ; preds = %204
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %..loopexit15_crit_edge64, label %206

..loopexit15_crit_edge64:                         ; preds = %205
  br label %.loopexit15

206:                                              ; preds = %205
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %..loopexit15_crit_edge65, label %207

..loopexit15_crit_edge65:                         ; preds = %206
  br label %.loopexit15

207:                                              ; preds = %206
  br i1 false, label %._crit_edge66, label %210

._crit_edge66:                                    ; preds = %207
  br label %208

208:                                              ; preds = %._crit_edge66, %215
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %199, label %209

209:                                              ; preds = %208
  unreachable

210:                                              ; preds = %207
  br i1 false, label %211, label %217

211:                                              ; preds = %210
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit15, label %212

212:                                              ; preds = %211
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit15, label %213

213:                                              ; preds = %212
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit15, label %214

214:                                              ; preds = %213
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit15, label %215

215:                                              ; preds = %214
  br i1 false, label %208, label %216

216:                                              ; preds = %215
  unreachable

217:                                              ; preds = %210
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %..loopexit20_crit_edge, label %223

..loopexit20_crit_edge:                           ; preds = %217
  br label %.loopexit20

.loopexit20:                                      ; preds = %..loopexit20_crit_edge74, %..loopexit20_crit_edge73, %..loopexit20_crit_edge72, %..loopexit20_crit_edge71, %..loopexit20_crit_edge69, %..loopexit20_crit_edge68, %..loopexit20_crit_edge67, %..loopexit20_crit_edge, %241, %240, %239, %238
  %.lcssa17.ph = phi i32 [ poison, %..loopexit20_crit_edge69 ], [ poison, %..loopexit20_crit_edge68 ], [ poison, %..loopexit20_crit_edge67 ], [ poison, %..loopexit20_crit_edge ], [ poison, %..loopexit20_crit_edge71 ], [ poison, %..loopexit20_crit_edge72 ], [ poison, %..loopexit20_crit_edge73 ], [ poison, %..loopexit20_crit_edge74 ], [ 2, %238 ], [ 2, %239 ], [ 2, %240 ], [ 2, %241 ]
  %.lcssa16.ph = phi i32 [ poison, %..loopexit20_crit_edge69 ], [ poison, %..loopexit20_crit_edge68 ], [ poison, %..loopexit20_crit_edge67 ], [ poison, %..loopexit20_crit_edge ], [ poison, %..loopexit20_crit_edge71 ], [ poison, %..loopexit20_crit_edge72 ], [ poison, %..loopexit20_crit_edge73 ], [ poison, %..loopexit20_crit_edge74 ], [ 0, %238 ], [ 1, %239 ], [ 2, %240 ], [ 3, %241 ]
  br label %218

218:                                              ; preds = %.loopexit20, %227
  %.lcssa17 = phi i32 [ %.lcssa19, %227 ], [ %.lcssa17.ph, %.loopexit20 ]
  %.lcssa16 = phi i32 [ 4, %227 ], [ %.lcssa16.ph, %.loopexit20 ]
  %219 = shl nuw nsw i32 %.lcssa16, 3
  %220 = or disjoint i32 %.lcssa17, %219
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %221
  store i32 1, ptr %222, align 4
  unreachable

223:                                              ; preds = %217
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %..loopexit20_crit_edge67, label %224

..loopexit20_crit_edge67:                         ; preds = %223
  br label %.loopexit20

224:                                              ; preds = %223
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %..loopexit20_crit_edge68, label %225

..loopexit20_crit_edge68:                         ; preds = %224
  br label %.loopexit20

225:                                              ; preds = %224
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %..loopexit20_crit_edge69, label %226

..loopexit20_crit_edge69:                         ; preds = %225
  br label %.loopexit20

226:                                              ; preds = %225
  br i1 false, label %._crit_edge70, label %232

._crit_edge70:                                    ; preds = %226
  br label %227

227:                                              ; preds = %._crit_edge75, %._crit_edge70, %242
  %.lcssa19 = phi i32 [ poison, %._crit_edge70 ], [ poison, %._crit_edge75 ], [ 2, %242 ]
  %228 = or disjoint i32 %.lcssa19, 32
  %229 = zext nneg i32 %228 to i64
  %230 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %229
  store i32 1, ptr %230, align 4
  br i1 false, label %218, label %231

231:                                              ; preds = %227
  unreachable

232:                                              ; preds = %226
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %..loopexit20_crit_edge71, label %233

..loopexit20_crit_edge71:                         ; preds = %232
  br label %.loopexit20

233:                                              ; preds = %232
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %..loopexit20_crit_edge72, label %234

..loopexit20_crit_edge72:                         ; preds = %233
  br label %.loopexit20

234:                                              ; preds = %233
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %..loopexit20_crit_edge73, label %235

..loopexit20_crit_edge73:                         ; preds = %234
  br label %.loopexit20

235:                                              ; preds = %234
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %..loopexit20_crit_edge74, label %236

..loopexit20_crit_edge74:                         ; preds = %235
  br label %.loopexit20

236:                                              ; preds = %235
  br i1 false, label %._crit_edge75, label %237

._crit_edge75:                                    ; preds = %236
  br label %227

237:                                              ; preds = %236
  br i1 false, label %238, label %244

238:                                              ; preds = %237
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit20, label %239

239:                                              ; preds = %238
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit20, label %240

240:                                              ; preds = %239
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit20, label %241

241:                                              ; preds = %240
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit20, label %242

242:                                              ; preds = %241
  br i1 false, label %227, label %243

243:                                              ; preds = %242
  unreachable

244:                                              ; preds = %237
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %..loopexit24_crit_edge, label %249

..loopexit24_crit_edge:                           ; preds = %244
  br label %.loopexit24

.loopexit24:                                      ; preds = %..loopexit24_crit_edge81, %..loopexit24_crit_edge79, %..loopexit24_crit_edge77, %..loopexit24_crit_edge, %264
  %.lcssa21.ph = phi i32 [ poison, %..loopexit24_crit_edge ], [ poison, %..loopexit24_crit_edge77 ], [ poison, %..loopexit24_crit_edge79 ], [ poison, %..loopexit24_crit_edge81 ], [ 4, %264 ]
  br label %245

245:                                              ; preds = %.loopexit24, %250
  %.lcssa21 = phi i32 [ %.lcssa22, %250 ], [ %.lcssa21.ph, %.loopexit24 ]
  %246 = or disjoint i32 %.lcssa21, 128
  %247 = zext nneg i32 %246 to i64
  %248 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %247
  store i32 1, ptr %248, align 4
  unreachable

249:                                              ; preds = %244
  br i1 false, label %._crit_edge76, label %257

._crit_edge76:                                    ; preds = %249
  br label %250

250:                                              ; preds = %._crit_edge82, %._crit_edge80, %._crit_edge78, %._crit_edge76, %265
  %.lcssa22 = phi i32 [ poison, %._crit_edge76 ], [ poison, %._crit_edge78 ], [ poison, %._crit_edge80 ], [ poison, %._crit_edge82 ], [ 4, %265 ]
  %251 = zext nneg i32 %.lcssa22 to i64
  %252 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %251
  store i32 1, ptr %252, align 4
  %253 = or disjoint i32 %.lcssa22, 64
  %254 = zext nneg i32 %253 to i64
  %255 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %254
  store i32 1, ptr %255, align 4
  br i1 false, label %245, label %256

256:                                              ; preds = %250
  unreachable

257:                                              ; preds = %249
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %..loopexit24_crit_edge77, label %258

..loopexit24_crit_edge77:                         ; preds = %257
  br label %.loopexit24

258:                                              ; preds = %257
  br i1 false, label %._crit_edge78, label %259

._crit_edge78:                                    ; preds = %258
  br label %250

259:                                              ; preds = %258
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %..loopexit24_crit_edge79, label %260

..loopexit24_crit_edge79:                         ; preds = %259
  br label %.loopexit24

260:                                              ; preds = %259
  br i1 false, label %._crit_edge80, label %261

._crit_edge80:                                    ; preds = %260
  br label %250

261:                                              ; preds = %260
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %..loopexit24_crit_edge81, label %262

..loopexit24_crit_edge81:                         ; preds = %261
  br label %.loopexit24

262:                                              ; preds = %261
  br i1 false, label %._crit_edge82, label %263

._crit_edge82:                                    ; preds = %262
  br label %250

263:                                              ; preds = %262
  br i1 false, label %264, label %267

264:                                              ; preds = %263
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit24, label %265

265:                                              ; preds = %264
  br i1 false, label %250, label %266

266:                                              ; preds = %265
  unreachable

267:                                              ; preds = %263
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %..loopexit26_crit_edge, label %273

..loopexit26_crit_edge:                           ; preds = %267
  br label %.loopexit26

.loopexit26:                                      ; preds = %..loopexit26_crit_edge83, %..loopexit26_crit_edge, %279, %278
  %.lcssa25.ph = phi i32 [ poison, %..loopexit26_crit_edge83 ], [ poison, %..loopexit26_crit_edge ], [ 0, %278 ], [ 1, %279 ]
  br label %268

268:                                              ; preds = %.loopexit26, %275
  %.lcssa25 = phi i32 [ 2, %275 ], [ %.lcssa25.ph, %.loopexit26 ]
  %269 = shl nuw nsw i32 %.lcssa25, 3
  %270 = or disjoint i32 256, %269
  %271 = zext nneg i32 %270 to i64
  %272 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %271
  store i32 1, ptr %272, align 4
  unreachable

273:                                              ; preds = %267
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %..loopexit26_crit_edge83, label %274

..loopexit26_crit_edge83:                         ; preds = %273
  br label %.loopexit26

274:                                              ; preds = %273
  br i1 false, label %._crit_edge84, label %277

._crit_edge84:                                    ; preds = %274
  br label %275

275:                                              ; preds = %._crit_edge84, %280
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10816), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11072), align 4
  br i1 false, label %268, label %276

276:                                              ; preds = %275
  unreachable

277:                                              ; preds = %274
  br i1 false, label %278, label %282

278:                                              ; preds = %277
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit26, label %279

279:                                              ; preds = %278
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit26, label %280

280:                                              ; preds = %279
  br i1 false, label %275, label %281

281:                                              ; preds = %280
  unreachable

282:                                              ; preds = %277
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %..loopexit30_crit_edge, label %285

..loopexit30_crit_edge:                           ; preds = %282
  br label %.loopexit30

.loopexit30:                                      ; preds = %..loopexit30_crit_edge88, %..loopexit30_crit_edge86, %..loopexit30_crit_edge, %295
  %.lcssa27.ph = phi i32 [ poison, %..loopexit30_crit_edge ], [ poison, %..loopexit30_crit_edge86 ], [ poison, %..loopexit30_crit_edge88 ], [ 3, %295 ]
  %.pre109 = zext nneg i32 %.lcssa27.ph to i64
  br label %283

283:                                              ; preds = %.loopexit30, %286
  %.pre-phi = phi i64 [ %.pre109, %.loopexit30 ], [ %287, %286 ]
  %.lcssa27 = phi i32 [ %.lcssa28, %286 ], [ %.lcssa27.ph, %.loopexit30 ]
  %284 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %.pre-phi
  store i32 1, ptr %284, align 4
  unreachable

285:                                              ; preds = %282
  br i1 false, label %._crit_edge85, label %290

._crit_edge85:                                    ; preds = %285
  br label %286

286:                                              ; preds = %._crit_edge89, %._crit_edge87, %._crit_edge85, %296
  %.lcssa28 = phi i32 [ poison, %._crit_edge85 ], [ poison, %._crit_edge87 ], [ poison, %._crit_edge89 ], [ 3, %296 ]
  %287 = zext nneg i32 %.lcssa28 to i64
  %288 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %287
  store i32 1, ptr %288, align 4
  br i1 false, label %283, label %289

289:                                              ; preds = %286
  unreachable

290:                                              ; preds = %285
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %..loopexit30_crit_edge86, label %291

..loopexit30_crit_edge86:                         ; preds = %290
  br label %.loopexit30

291:                                              ; preds = %290
  br i1 false, label %._crit_edge87, label %292

._crit_edge87:                                    ; preds = %291
  br label %286

292:                                              ; preds = %291
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %..loopexit30_crit_edge88, label %293

..loopexit30_crit_edge88:                         ; preds = %292
  br label %.loopexit30

293:                                              ; preds = %292
  br i1 false, label %._crit_edge89, label %294

._crit_edge89:                                    ; preds = %293
  br label %286

294:                                              ; preds = %293
  br i1 false, label %295, label %298

295:                                              ; preds = %294
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit30, label %296

296:                                              ; preds = %295
  br i1 false, label %286, label %297

297:                                              ; preds = %296
  unreachable

298:                                              ; preds = %294
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %..loopexit32_crit_edge, label %303

..loopexit32_crit_edge:                           ; preds = %298
  br label %.loopexit32

.loopexit32:                                      ; preds = %..loopexit32_crit_edge91, %..loopexit32_crit_edge90, %..loopexit32_crit_edge, %311, %310, %309
  %.lcssa31.ph = phi i32 [ poison, %..loopexit32_crit_edge91 ], [ poison, %..loopexit32_crit_edge90 ], [ poison, %..loopexit32_crit_edge ], [ 0, %309 ], [ 1, %310 ], [ 2, %311 ]
  br label %299

299:                                              ; preds = %.loopexit32, %306
  %.lcssa31 = phi i32 [ 3, %306 ], [ %.lcssa31.ph, %.loopexit32 ]
  %300 = shl nuw nsw i32 %.lcssa31, 3
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %301
  store i32 1, ptr %302, align 4
  unreachable

303:                                              ; preds = %298
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %..loopexit32_crit_edge90, label %304

..loopexit32_crit_edge90:                         ; preds = %303
  br label %.loopexit32

304:                                              ; preds = %303
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %..loopexit32_crit_edge91, label %305

..loopexit32_crit_edge91:                         ; preds = %304
  br label %.loopexit32

305:                                              ; preds = %304
  br i1 false, label %._crit_edge92, label %308

._crit_edge92:                                    ; preds = %305
  br label %306

306:                                              ; preds = %._crit_edge92, %312
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %299, label %307

307:                                              ; preds = %306
  unreachable

308:                                              ; preds = %305
  br i1 false, label %309, label %314

309:                                              ; preds = %308
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit32, label %310

310:                                              ; preds = %309
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit32, label %311

311:                                              ; preds = %310
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit32, label %312

312:                                              ; preds = %311
  br i1 false, label %306, label %313

313:                                              ; preds = %312
  unreachable

314:                                              ; preds = %308
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %..loopexit33_crit_edge, label %316

..loopexit33_crit_edge:                           ; preds = %314
  br label %.loopexit33

.loopexit33:                                      ; preds = %..loopexit33_crit_edge, %320
  br label %315

315:                                              ; preds = %.loopexit33, %317
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

316:                                              ; preds = %314
  br i1 false, label %._crit_edge93, label %319

._crit_edge93:                                    ; preds = %316
  br label %317

317:                                              ; preds = %._crit_edge93, %321
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %315, label %318

318:                                              ; preds = %317
  unreachable

319:                                              ; preds = %316
  br i1 false, label %320, label %323

320:                                              ; preds = %319
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit33, label %321

321:                                              ; preds = %320
  br i1 false, label %317, label %322

322:                                              ; preds = %321
  unreachable

323:                                              ; preds = %319
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %..loopexit38_crit_edge, label %329

..loopexit38_crit_edge:                           ; preds = %323
  br label %.loopexit38

.loopexit38:                                      ; preds = %..loopexit38_crit_edge97, %..loopexit38_crit_edge96, %..loopexit38_crit_edge94, %..loopexit38_crit_edge, %341, %340
  %.lcssa35.ph = phi i32 [ poison, %..loopexit38_crit_edge94 ], [ poison, %..loopexit38_crit_edge ], [ poison, %..loopexit38_crit_edge96 ], [ poison, %..loopexit38_crit_edge97 ], [ 2, %340 ], [ 2, %341 ]
  %.lcssa34.ph = phi i32 [ poison, %..loopexit38_crit_edge94 ], [ poison, %..loopexit38_crit_edge ], [ poison, %..loopexit38_crit_edge96 ], [ poison, %..loopexit38_crit_edge97 ], [ 0, %340 ], [ 1, %341 ]
  br label %324

324:                                              ; preds = %.loopexit38, %331
  %.lcssa35 = phi i32 [ %.lcssa37, %331 ], [ %.lcssa35.ph, %.loopexit38 ]
  %.lcssa34 = phi i32 [ 2, %331 ], [ %.lcssa34.ph, %.loopexit38 ]
  %325 = shl nuw nsw i32 %.lcssa34, 3
  %326 = or disjoint i32 %.lcssa35, %325
  %327 = zext nneg i32 %326 to i64
  %328 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %327
  store i32 1, ptr %328, align 4
  unreachable

329:                                              ; preds = %323
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %..loopexit38_crit_edge94, label %330

..loopexit38_crit_edge94:                         ; preds = %329
  br label %.loopexit38

330:                                              ; preds = %329
  br i1 false, label %._crit_edge95, label %336

._crit_edge95:                                    ; preds = %330
  br label %331

331:                                              ; preds = %._crit_edge98, %._crit_edge95, %342
  %.lcssa37 = phi i32 [ poison, %._crit_edge95 ], [ poison, %._crit_edge98 ], [ 2, %342 ]
  %332 = or disjoint i32 %.lcssa37, 16
  %333 = zext nneg i32 %332 to i64
  %334 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %333
  store i32 1, ptr %334, align 4
  br i1 false, label %324, label %335

335:                                              ; preds = %331
  unreachable

336:                                              ; preds = %330
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %..loopexit38_crit_edge96, label %337

..loopexit38_crit_edge96:                         ; preds = %336
  br label %.loopexit38

337:                                              ; preds = %336
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %..loopexit38_crit_edge97, label %338

..loopexit38_crit_edge97:                         ; preds = %337
  br label %.loopexit38

338:                                              ; preds = %337
  br i1 false, label %._crit_edge98, label %339

._crit_edge98:                                    ; preds = %338
  br label %331

339:                                              ; preds = %338
  br i1 false, label %340, label %344

340:                                              ; preds = %339
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit38, label %341

341:                                              ; preds = %340
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit38, label %342

342:                                              ; preds = %341
  br i1 false, label %331, label %343

343:                                              ; preds = %342
  unreachable

344:                                              ; preds = %339
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %..loopexit42_crit_edge, label %349

..loopexit42_crit_edge:                           ; preds = %344
  br label %.loopexit42

.loopexit42:                                      ; preds = %..loopexit42_crit_edge100, %..loopexit42_crit_edge, %360
  %.lcssa39.ph = phi i32 [ poison, %..loopexit42_crit_edge ], [ poison, %..loopexit42_crit_edge100 ], [ 2, %360 ]
  br label %345

345:                                              ; preds = %.loopexit42, %350
  %.lcssa39 = phi i32 [ %.lcssa40, %350 ], [ %.lcssa39.ph, %.loopexit42 ]
  %346 = or disjoint i32 %.lcssa39, 128
  %347 = zext nneg i32 %346 to i64
  %348 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %347
  store i32 1, ptr %348, align 4
  unreachable

349:                                              ; preds = %344
  br i1 false, label %._crit_edge99, label %357

._crit_edge99:                                    ; preds = %349
  br label %350

350:                                              ; preds = %._crit_edge101, %._crit_edge99, %361
  %.lcssa40 = phi i32 [ poison, %._crit_edge99 ], [ poison, %._crit_edge101 ], [ 2, %361 ]
  %351 = zext nneg i32 %.lcssa40 to i64
  %352 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %351
  store i32 1, ptr %352, align 4
  %353 = or disjoint i32 %.lcssa40, 64
  %354 = zext nneg i32 %353 to i64
  %355 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %354
  store i32 1, ptr %355, align 4
  br i1 false, label %345, label %356

356:                                              ; preds = %350
  unreachable

357:                                              ; preds = %349
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %..loopexit42_crit_edge100, label %358

..loopexit42_crit_edge100:                        ; preds = %357
  br label %.loopexit42

358:                                              ; preds = %357
  br i1 false, label %._crit_edge101, label %359

._crit_edge101:                                   ; preds = %358
  br label %350

359:                                              ; preds = %358
  br i1 false, label %360, label %363

360:                                              ; preds = %359
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit42, label %361

361:                                              ; preds = %360
  br i1 false, label %350, label %362

362:                                              ; preds = %361
  unreachable

363:                                              ; preds = %359
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %..loopexit44_crit_edge, label %369

..loopexit44_crit_edge:                           ; preds = %363
  br label %.loopexit44

.loopexit44:                                      ; preds = %..loopexit44_crit_edge102, %..loopexit44_crit_edge, %375, %374
  %.lcssa43.ph = phi i32 [ poison, %..loopexit44_crit_edge102 ], [ poison, %..loopexit44_crit_edge ], [ 0, %374 ], [ 1, %375 ]
  br label %364

364:                                              ; preds = %.loopexit44, %371
  %.lcssa43 = phi i32 [ 2, %371 ], [ %.lcssa43.ph, %.loopexit44 ]
  %365 = shl nuw nsw i32 %.lcssa43, 3
  %366 = or disjoint i32 128, %365
  %367 = zext nneg i32 %366 to i64
  %368 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %367
  store i32 1, ptr %368, align 4
  unreachable

369:                                              ; preds = %363
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %..loopexit44_crit_edge102, label %370

..loopexit44_crit_edge102:                        ; preds = %369
  br label %.loopexit44

370:                                              ; preds = %369
  br i1 false, label %._crit_edge103, label %373

._crit_edge103:                                   ; preds = %370
  br label %371

371:                                              ; preds = %._crit_edge103, %376
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %364, label %372

372:                                              ; preds = %371
  unreachable

373:                                              ; preds = %370
  br i1 false, label %374, label %378

374:                                              ; preds = %373
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit44, label %375

375:                                              ; preds = %374
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit44, label %376

376:                                              ; preds = %375
  br i1 false, label %371, label %377

377:                                              ; preds = %376
  unreachable

378:                                              ; preds = %373
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %..loopexit49_crit_edge, label %385

..loopexit49_crit_edge:                           ; preds = %378
  br label %.loopexit49

.loopexit49:                                      ; preds = %..loopexit49_crit_edge107, %..loopexit49_crit_edge106, %..loopexit49_crit_edge104, %..loopexit49_crit_edge, %400, %399
  %.lcssa46.ph = phi i32 [ poison, %..loopexit49_crit_edge104 ], [ poison, %..loopexit49_crit_edge ], [ poison, %..loopexit49_crit_edge106 ], [ poison, %..loopexit49_crit_edge107 ], [ 2, %399 ], [ 2, %400 ]
  %.lcssa45.ph = phi i32 [ poison, %..loopexit49_crit_edge104 ], [ poison, %..loopexit49_crit_edge ], [ poison, %..loopexit49_crit_edge106 ], [ poison, %..loopexit49_crit_edge107 ], [ 0, %399 ], [ 1, %400 ]
  br label %379

379:                                              ; preds = %.loopexit49, %387
  %.lcssa46 = phi i32 [ %.lcssa48, %387 ], [ %.lcssa46.ph, %.loopexit49 ]
  %.lcssa45 = phi i32 [ 2, %387 ], [ %.lcssa45.ph, %.loopexit49 ]
  %380 = shl nuw nsw i32 %.lcssa45, 3
  %381 = or disjoint i32 128, %380
  %382 = or disjoint i32 %.lcssa46, %381
  %383 = zext nneg i32 %382 to i64
  %384 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %383
  store i32 1, ptr %384, align 4
  unreachable

385:                                              ; preds = %378
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %..loopexit49_crit_edge104, label %386

..loopexit49_crit_edge104:                        ; preds = %385
  br label %.loopexit49

386:                                              ; preds = %385
  br i1 false, label %._crit_edge105, label %395

._crit_edge105:                                   ; preds = %386
  br label %387

387:                                              ; preds = %._crit_edge108, %._crit_edge105, %401
  %.lcssa48 = phi i32 [ poison, %._crit_edge105 ], [ poison, %._crit_edge108 ], [ 2, %401 ]
  %388 = or disjoint i32 %.lcssa48, 16
  %389 = zext nneg i32 %388 to i64
  %390 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %389
  store i32 1, ptr %390, align 4
  %391 = or disjoint i32 %.lcssa48, 80
  %392 = zext nneg i32 %391 to i64
  %393 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %392
  store i32 1, ptr %393, align 4
  br i1 false, label %379, label %394

394:                                              ; preds = %387
  unreachable

395:                                              ; preds = %386
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %..loopexit49_crit_edge106, label %396

..loopexit49_crit_edge106:                        ; preds = %395
  br label %.loopexit49

396:                                              ; preds = %395
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %..loopexit49_crit_edge107, label %397

..loopexit49_crit_edge107:                        ; preds = %396
  br label %.loopexit49

397:                                              ; preds = %396
  br i1 false, label %._crit_edge108, label %398

._crit_edge108:                                   ; preds = %397
  br label %387

398:                                              ; preds = %397
  br i1 false, label %399, label %403

399:                                              ; preds = %398
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit49, label %400

400:                                              ; preds = %399
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit49, label %401

401:                                              ; preds = %400
  br i1 false, label %387, label %402

402:                                              ; preds = %401
  unreachable

403:                                              ; preds = %398
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %404 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %404, 0
  br i1 %.not, label %407, label %405

405:                                              ; preds = %403
  %406 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %406, ptr @n, align 4
  br label %408

407:                                              ; preds = %403
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %408

408:                                              ; preds = %407, %405
  %409 = phi i32 [ %.pre, %407 ], [ %406, %405 ]
  %410 = call i32 @Trial(i32 noundef %409)
  %.not1 = icmp eq i32 %410, 0
  br i1 %.not1, label %411, label %412

411:                                              ; preds = %408
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %416

412:                                              ; preds = %408
  %413 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %413, 2005
  br i1 %.not3, label %415, label %414

414:                                              ; preds = %412
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %415

415:                                              ; preds = %414, %412
  br label %416

416:                                              ; preds = %415, %411
  %417 = load i32, ptr @n, align 4
  %418 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %417) #3
  %419 = load i32, ptr @kount, align 4
  %420 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %419) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Puzzle()
  %5 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !17

6:                                                ; preds = %1
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
