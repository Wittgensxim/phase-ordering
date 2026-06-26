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
  br i1 %.not4, label %34, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %4 = add i32 %.pre, 1
  %xtraiter = and i32 %4, 1
  %5 = icmp ult i32 %.pre, 1
  br i1 %5, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %4, %xtraiter
  br label %6

6:                                                ; preds = %24, %.lr.ph.new
  %7 = phi i32 [ 0, %.lr.ph.new ], [ %25, %24 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %24 ]
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = add nuw nsw i32 %7, 1
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %17
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
  %25 = add nuw nsw i32 %7, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %6, !llvm.loop !9

._crit_edge.unr-lcssa:                            ; preds = %24
  %.unr = phi i32 [ %25, %24 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ 0, %.lr.ph ], [ %.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %26

26:                                               ; preds = %.epil.preheader
  %27 = zext nneg i32 %.epil.init to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not3.epil = icmp eq i32 %29, 0
  br i1 %.not3.epil, label %._crit_edge.epilog-lcssa, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %1, %.epil.init
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %32
  store i32 1, ptr %33, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %30, %26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %34

34:                                               ; preds = %._crit_edge, %2
  %35 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr %38, align 4
  %41 = icmp slt i32 %1, 512
  br i1 %41, label %.lr.ph6, label %51

.lr.ph6:                                          ; preds = %34
  br label %42

42:                                               ; preds = %48, %.lr.ph6
  %43 = phi i32 [ %1, %.lr.ph6 ], [ %49, %48 ]
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %44
  %46 = load i32, ptr %45, align 4
  %.not2 = icmp eq i32 %46, 0
  br i1 %.not2, label %47, label %48

47:                                               ; preds = %42
  %.lcssa = phi i32 [ %43, %42 ]
  br label %52

48:                                               ; preds = %42
  %49 = add nsw i32 %43, 1
  %50 = icmp slt i32 %49, 512
  br i1 %50, label %42, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %48
  br label %51

51:                                               ; preds = %._crit_edge7, %34
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32 [ 0, %51 ], [ %.lcssa, %47 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %34, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %4 = add i32 %.pre, 1
  %xtraiter = and i32 %4, 1
  %5 = icmp ult i32 %.pre, 1
  br i1 %5, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %4, %xtraiter
  br label %6

6:                                                ; preds = %24, %.lr.ph.new
  %7 = phi i32 [ 0, %.lr.ph.new ], [ %25, %24 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %24 ]
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = add nuw nsw i32 %7, 1
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %17
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
  %25 = add nuw nsw i32 %7, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %6, !llvm.loop !11

._crit_edge.unr-lcssa:                            ; preds = %24
  %.unr = phi i32 [ %25, %24 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ 0, %.lr.ph ], [ %.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod1 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %26

26:                                               ; preds = %.epil.preheader
  %27 = zext nneg i32 %.epil.init to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not2.epil = icmp eq i32 %29, 0
  br i1 %.not2.epil, label %._crit_edge.epilog-lcssa, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %1, %.epil.init
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %32
  store i32 0, ptr %33, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %30, %26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %34

34:                                               ; preds = %._crit_edge, %2
  %35 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %38, align 4
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

17:                                               ; preds = %64, %16
  %18 = phi i32 [ 1, %16 ], [ %75, %64 ]
  br label %19

19:                                               ; preds = %17
  %invariant.op = or disjoint i32 8, %18
  br label %20

20:                                               ; preds = %19
  %.reass = or disjoint i32 64, %invariant.op
  %21 = zext nneg i32 %.reass to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  %.reass.1 = or disjoint i32 128, %invariant.op
  %23 = zext nneg i32 %.reass.1 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  %.reass.2 = or disjoint i32 192, %invariant.op
  %25 = zext nneg i32 %.reass.2 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  %.reass.3 = or disjoint i32 256, %invariant.op
  %27 = zext nneg i32 %.reass.3 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  %.reass.4 = or disjoint i32 320, %invariant.op
  %29 = zext nneg i32 %.reass.4 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  %invariant.op.1 = or disjoint i32 16, %18
  br label %31

31:                                               ; preds = %20
  %.reass.13 = or disjoint i32 64, %invariant.op.1
  %32 = zext nneg i32 %.reass.13 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %32
  store i32 0, ptr %33, align 4
  %.reass.1.1 = or disjoint i32 128, %invariant.op.1
  %34 = zext nneg i32 %.reass.1.1 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %34
  store i32 0, ptr %35, align 4
  %.reass.2.1 = or disjoint i32 192, %invariant.op.1
  %36 = zext nneg i32 %.reass.2.1 to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %36
  store i32 0, ptr %37, align 4
  %.reass.3.1 = or disjoint i32 256, %invariant.op.1
  %38 = zext nneg i32 %.reass.3.1 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %38
  store i32 0, ptr %39, align 4
  %.reass.4.1 = or disjoint i32 320, %invariant.op.1
  %40 = zext nneg i32 %.reass.4.1 to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %40
  store i32 0, ptr %41, align 4
  %invariant.op.2 = or disjoint i32 24, %18
  br label %42

42:                                               ; preds = %31
  %.reass.24 = or disjoint i32 64, %invariant.op.2
  %43 = zext nneg i32 %.reass.24 to i64
  %44 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  %.reass.1.2 = or disjoint i32 128, %invariant.op.2
  %45 = zext nneg i32 %.reass.1.2 to i64
  %46 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  %.reass.2.2 = or disjoint i32 192, %invariant.op.2
  %47 = zext nneg i32 %.reass.2.2 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  %.reass.3.2 = or disjoint i32 256, %invariant.op.2
  %49 = zext nneg i32 %.reass.3.2 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  %.reass.4.2 = or disjoint i32 320, %invariant.op.2
  %51 = zext nneg i32 %.reass.4.2 to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  %invariant.op.3 = or disjoint i32 32, %18
  br label %53

53:                                               ; preds = %42
  %.reass.35 = or disjoint i32 64, %invariant.op.3
  %54 = zext nneg i32 %.reass.35 to i64
  %55 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %54
  store i32 0, ptr %55, align 4
  %.reass.1.3 = or disjoint i32 128, %invariant.op.3
  %56 = zext nneg i32 %.reass.1.3 to i64
  %57 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %56
  store i32 0, ptr %57, align 4
  %.reass.2.3 = or disjoint i32 192, %invariant.op.3
  %58 = zext nneg i32 %.reass.2.3 to i64
  %59 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %58
  store i32 0, ptr %59, align 4
  %.reass.3.3 = or disjoint i32 256, %invariant.op.3
  %60 = zext nneg i32 %.reass.3.3 to i64
  %61 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %60
  store i32 0, ptr %61, align 4
  %.reass.4.3 = or disjoint i32 320, %invariant.op.3
  %62 = zext nneg i32 %.reass.4.3 to i64
  %63 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %62
  store i32 0, ptr %63, align 4
  %invariant.op.4 = or disjoint i32 40, %18
  br label %64

64:                                               ; preds = %53
  %.reass.46 = or disjoint i32 64, %invariant.op.4
  %65 = zext nneg i32 %.reass.46 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  %.reass.1.4 = or disjoint i32 128, %invariant.op.4
  %67 = zext nneg i32 %.reass.1.4 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  %.reass.2.4 = or disjoint i32 192, %invariant.op.4
  %69 = zext nneg i32 %.reass.2.4 to i64
  %70 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  %.reass.3.4 = or disjoint i32 256, %invariant.op.4
  %71 = zext nneg i32 %.reass.3.4 to i64
  %72 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  %.reass.4.4 = or disjoint i32 320, %invariant.op.4
  %73 = zext nneg i32 %.reass.4.4 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %73
  store i32 0, ptr %74, align 4
  %75 = add nuw nsw i32 %18, 1
  %76 = icmp samesign ult i32 %75, 6
  br i1 %76, label %17, label %77, !llvm.loop !14

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %109, %77
  %79 = phi i32 [ 0, %77 ], [ %110, %109 ]
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %80
  br label %82

82:                                               ; preds = %82, %78
  %83 = phi i32 [ 0, %78 ], [ %107, %82 ]
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds nuw [4 x i8], ptr %81, i64 %84
  store i32 0, ptr %85, align 4
  %86 = add nuw nsw i32 %83, 1
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds nuw [4 x i8], ptr %81, i64 %87
  store i32 0, ptr %88, align 4
  %89 = add nuw nsw i32 %83, 2
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds nuw [4 x i8], ptr %81, i64 %90
  store i32 0, ptr %91, align 4
  %92 = add nuw nsw i32 %83, 3
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds nuw [4 x i8], ptr %81, i64 %93
  store i32 0, ptr %94, align 4
  %95 = add nuw nsw i32 %83, 4
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds nuw [4 x i8], ptr %81, i64 %96
  store i32 0, ptr %97, align 4
  %98 = add nuw nsw i32 %83, 5
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds nuw [4 x i8], ptr %81, i64 %99
  store i32 0, ptr %100, align 4
  %101 = add nuw nsw i32 %83, 6
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr %81, i64 %102
  store i32 0, ptr %103, align 4
  %104 = add nuw nsw i32 %83, 7
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds nuw [4 x i8], ptr %81, i64 %105
  store i32 0, ptr %106, align 4
  %107 = add nuw nsw i32 %83, 8
  %108 = icmp samesign ult i32 %107, 512
  br i1 %108, label %82, label %109, !llvm.loop !15

109:                                              ; preds = %82
  %110 = add nuw nsw i32 %79, 1
  %111 = icmp samesign ult i32 %110, 13
  br i1 %111, label %78, label %112, !llvm.loop !16

112:                                              ; preds = %109
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  store i32 1, ptr @p, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br label %115

115:                                              ; preds = %114
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br label %116

116:                                              ; preds = %115
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br label %117

117:                                              ; preds = %116
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br label %120

120:                                              ; preds = %119
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br label %123

123:                                              ; preds = %122
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br label %124

124:                                              ; preds = %123
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br label %125

125:                                              ; preds = %124
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br label %128

128:                                              ; preds = %127
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br label %131

131:                                              ; preds = %130
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br label %132

132:                                              ; preds = %131
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br label %133

133:                                              ; preds = %132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br label %136

136:                                              ; preds = %135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %137

137:                                              ; preds = %136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %138

138:                                              ; preds = %137
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %139

139:                                              ; preds = %138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br label %142

142:                                              ; preds = %141
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br label %145

145:                                              ; preds = %144
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %146

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %146
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br label %148

148:                                              ; preds = %147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br label %152

152:                                              ; preds = %151
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br label %155

155:                                              ; preds = %154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %156 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %156, 0
  br i1 %.not, label %159, label %157

157:                                              ; preds = %155
  %158 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %158, ptr @n, align 4
  br label %160

159:                                              ; preds = %155
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %160

160:                                              ; preds = %159, %157
  %161 = phi i32 [ %.pre, %159 ], [ %158, %157 ]
  %162 = call i32 @Trial(i32 noundef %161)
  %.not1 = icmp eq i32 %162, 0
  br i1 %.not1, label %163, label %164

163:                                              ; preds = %160
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %168

164:                                              ; preds = %160
  %165 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %165, 2005
  br i1 %.not3, label %167, label %166

166:                                              ; preds = %164
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %167

167:                                              ; preds = %166, %164
  br label %168

168:                                              ; preds = %167, %163
  %169 = load i32, ptr @n, align 4
  %170 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %169) #4
  %171 = load i32, ptr @kount, align 4
  %172 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %171) #4
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
