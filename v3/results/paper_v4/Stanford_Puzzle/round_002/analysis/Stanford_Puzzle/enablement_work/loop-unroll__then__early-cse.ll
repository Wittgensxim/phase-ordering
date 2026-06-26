; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_001\output.ll'
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
  br i1 %.not1, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %16, %.lr.ph
  %4 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %16, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %1, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %9
  br label %19

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %3
  %17 = add nuw nsw i32 %4, 1
  %.not = icmp sgt i32 %17, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  br label %18

18:                                               ; preds = %._crit_edge, %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ 1, %18 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp sgt i32 0, %.pre
  br i1 %.not4, label %35, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = add i32 %.pre, 1
  %xtraiter = and i32 %3, 1
  %4 = icmp ult i32 %.pre, 1
  br i1 %4, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %3, %xtraiter
  br label %5

5:                                                ; preds = %24, %.lr.ph.new
  %6 = phi i32 [ 0, %.lr.ph.new ], [ %25, %24 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %24 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = zext nneg i32 %6 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %15, label %11

11:                                               ; preds = %5
  %12 = add nsw i32 %1, %6
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %5
  %16 = add nuw nsw i32 %6, 1
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %17
  %19 = load i32, ptr %18, align 4
  %.not3.1 = icmp eq i32 %19, 0
  br i1 %.not3.1, label %24, label %20

20:                                               ; preds = %15
  %21 = add nsw i32 %1, %16
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 1, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = add nuw nsw i32 %6, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %5, !llvm.loop !9

._crit_edge.unr-lcssa:                            ; preds = %24
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ 0, %.lr.ph ], [ %25, %._crit_edge.unr-lcssa ]
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %26

26:                                               ; preds = %.epil.preheader
  %27 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %28 = zext nneg i32 %.epil.init to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %28
  %30 = load i32, ptr %29, align 4
  %.not3.epil = icmp eq i32 %30, 0
  br i1 %.not3.epil, label %._crit_edge.epilog-lcssa, label %31

31:                                               ; preds = %26
  %32 = add nsw i32 %1, %.epil.init
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %33
  store i32 1, ptr %34, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %31, %26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %35

35:                                               ; preds = %._crit_edge, %2
  %36 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %37 = load i32, ptr %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, ptr %39, align 4
  %42 = icmp slt i32 %1, 512
  br i1 %42, label %.lr.ph6, label %52

.lr.ph6:                                          ; preds = %35
  br label %43

43:                                               ; preds = %49, %.lr.ph6
  %44 = phi i32 [ %1, %.lr.ph6 ], [ %50, %49 ]
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %45
  %47 = load i32, ptr %46, align 4
  %.not2 = icmp eq i32 %47, 0
  br i1 %.not2, label %48, label %49

48:                                               ; preds = %43
  br label %53

49:                                               ; preds = %43
  %50 = add nsw i32 %44, 1
  %51 = icmp slt i32 %50, 512
  br i1 %51, label %43, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %49
  br label %52

52:                                               ; preds = %._crit_edge7, %35
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ 0, %52 ], [ %44, %48 ]
  ret i32 %54
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %35, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = add i32 %.pre, 1
  %xtraiter = and i32 %3, 1
  %4 = icmp ult i32 %.pre, 1
  br i1 %4, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %3, %xtraiter
  br label %5

5:                                                ; preds = %24, %.lr.ph.new
  %6 = phi i32 [ 0, %.lr.ph.new ], [ %25, %24 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %24 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = zext nneg i32 %6 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %15, label %11

11:                                               ; preds = %5
  %12 = add nsw i32 %1, %6
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %5
  %16 = add nuw nsw i32 %6, 1
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %17
  %19 = load i32, ptr %18, align 4
  %.not2.1 = icmp eq i32 %19, 0
  br i1 %.not2.1, label %24, label %20

20:                                               ; preds = %15
  %21 = add nsw i32 %1, %16
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = add nuw nsw i32 %6, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %5, !llvm.loop !11

._crit_edge.unr-lcssa:                            ; preds = %24
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ 0, %.lr.ph ], [ %25, %._crit_edge.unr-lcssa ]
  %lcmp.mod1 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %26

26:                                               ; preds = %.epil.preheader
  %27 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %28 = zext nneg i32 %.epil.init to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %28
  %30 = load i32, ptr %29, align 4
  %.not2.epil = icmp eq i32 %30, 0
  br i1 %.not2.epil, label %._crit_edge.epilog-lcssa, label %31

31:                                               ; preds = %26
  %32 = add nsw i32 %1, %.epil.init
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %31, %26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %35

35:                                               ; preds = %._crit_edge, %2
  %36 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %37 = load i32, ptr %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
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
  %2 = phi i32 [ 0, %0 ], [ %14, %1 ]
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  %5 = add nuw nsw i32 %2, 1
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %6
  store i32 1, ptr %7, align 4
  %8 = add nuw nsw i32 %2, 2
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nuw nsw i32 %2, 3
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  %14 = add nuw nsw i32 %2, 4
  %15 = icmp samesign ult i32 %14, 512
  br i1 %15, label %1, label %16, !llvm.loop !13

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %84, %16
  %18 = phi i32 [ 1, %16 ], [ %100, %84 ]
  br label %19

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  %21 = or disjoint i32 %18, 72
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  %24 = or disjoint i32 %18, 136
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  %27 = or disjoint i32 %18, 200
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %28
  store i32 0, ptr %29, align 4
  %30 = or disjoint i32 %18, 264
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  %33 = or disjoint i32 %18, 328
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %34
  store i32 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %20
  %37 = or disjoint i32 %18, 80
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %38
  store i32 0, ptr %39, align 4
  %40 = or disjoint i32 %18, 144
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  %43 = or disjoint i32 %18, 208
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %44
  store i32 0, ptr %45, align 4
  %46 = or disjoint i32 %18, 272
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  %49 = or disjoint i32 %18, 336
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %50
  store i32 0, ptr %51, align 4
  br label %52

52:                                               ; preds = %36
  %53 = or disjoint i32 %18, 88
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %54
  store i32 0, ptr %55, align 4
  %56 = or disjoint i32 %18, 152
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %57
  store i32 0, ptr %58, align 4
  %59 = or disjoint i32 %18, 216
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %60
  store i32 0, ptr %61, align 4
  %62 = or disjoint i32 %18, 280
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  %65 = or disjoint i32 %18, 344
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %66
  store i32 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %52
  %69 = or disjoint i32 %18, 96
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %70
  store i32 0, ptr %71, align 4
  %72 = or disjoint i32 %18, 160
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %73
  store i32 0, ptr %74, align 4
  %75 = or disjoint i32 %18, 224
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %76
  store i32 0, ptr %77, align 4
  %78 = or disjoint i32 %18, 288
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %79
  store i32 0, ptr %80, align 4
  %81 = or disjoint i32 %18, 352
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %82
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %68
  %85 = or disjoint i32 %18, 104
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %86
  store i32 0, ptr %87, align 4
  %88 = or disjoint i32 %18, 168
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %89
  store i32 0, ptr %90, align 4
  %91 = or disjoint i32 %18, 232
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %92
  store i32 0, ptr %93, align 4
  %94 = or disjoint i32 %18, 296
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %95
  store i32 0, ptr %96, align 4
  %97 = or disjoint i32 %18, 360
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %98
  store i32 0, ptr %99, align 4
  %100 = add nuw nsw i32 %18, 1
  %101 = icmp samesign ult i32 %100, 6
  br i1 %101, label %17, label %102, !llvm.loop !14

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %122, %102
  %104 = phi i32 [ 0, %102 ], [ %123, %122 ]
  br label %105

105:                                              ; preds = %105, %103
  %106 = phi i32 [ 0, %103 ], [ %120, %105 ]
  %107 = zext nneg i32 %104 to i64
  %108 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %107
  %109 = zext nneg i32 %106 to i64
  %110 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %109
  store i32 0, ptr %110, align 4
  %111 = add nuw nsw i32 %106, 1
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %112
  store i32 0, ptr %113, align 4
  %114 = add nuw nsw i32 %106, 2
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %115
  store i32 0, ptr %116, align 4
  %117 = add nuw nsw i32 %106, 3
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %118
  store i32 0, ptr %119, align 4
  %120 = add nuw nsw i32 %106, 4
  %121 = icmp samesign ult i32 %120, 512
  br i1 %121, label %105, label %122, !llvm.loop !15

122:                                              ; preds = %105
  %123 = add nuw nsw i32 %104, 1
  %124 = icmp samesign ult i32 %123, 13
  br i1 %124, label %103, label %125, !llvm.loop !16

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  store i32 1, ptr @p, align 4
  br label %129

129:                                              ; preds = %128
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br label %132

132:                                              ; preds = %131
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br label %135

135:                                              ; preds = %134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br label %138

138:                                              ; preds = %137
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br label %147

147:                                              ; preds = %146
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br label %148

148:                                              ; preds = %147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br label %149

149:                                              ; preds = %148
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br label %153

153:                                              ; preds = %152
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br label %154

154:                                              ; preds = %153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br label %155

155:                                              ; preds = %154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br label %158

158:                                              ; preds = %157
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br label %159

159:                                              ; preds = %158
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br label %160

160:                                              ; preds = %159
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br label %173

173:                                              ; preds = %172
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br label %184

184:                                              ; preds = %183
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br label %185

185:                                              ; preds = %184
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br label %192

192:                                              ; preds = %191
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br label %195

195:                                              ; preds = %194
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br label %204

204:                                              ; preds = %203
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br label %208

208:                                              ; preds = %207
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br label %211

211:                                              ; preds = %210
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %212 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %212, 0
  br i1 %.not, label %215, label %213

213:                                              ; preds = %211
  %214 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %214, ptr @n, align 4
  br label %216

215:                                              ; preds = %211
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %216

216:                                              ; preds = %215, %213
  %217 = phi i32 [ %.pre, %215 ], [ %214, %213 ]
  %218 = call i32 @Trial(i32 noundef %217)
  %.not1 = icmp eq i32 %218, 0
  br i1 %.not1, label %219, label %220

219:                                              ; preds = %216
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %224

220:                                              ; preds = %216
  %221 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %221, 2005
  br i1 %.not3, label %223, label %222

222:                                              ; preds = %220
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %223

223:                                              ; preds = %222, %220
  br label %224

224:                                              ; preds = %223, %219
  %225 = load i32, ptr @n, align 4
  %226 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %225) #4
  %227 = load i32, ptr @kount, align 4
  %228 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %227) #4
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
  br i1 %4, label %1, label %5, !llvm.loop !17

5:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
