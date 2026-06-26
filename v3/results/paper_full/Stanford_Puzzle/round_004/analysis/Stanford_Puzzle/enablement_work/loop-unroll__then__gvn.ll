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
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp sgt i32 0, %.pre
  br i1 %.not4, label %34, label %.lr.ph

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
  %26 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %27 = zext nneg i32 %.epil.init to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not3.epil = icmp eq i32 %29, 0
  br i1 %.not3.epil, label %._crit_edge.epilog-lcssa, label %30

30:                                               ; preds = %.epil.preheader
  %31 = add nsw i32 %1, %.epil.init
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %32
  store i32 1, ptr %33, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %30, %.epil.preheader
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
  %53 = phi i32 [ 0, %51 ], [ %43, %47 ]
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
  %26 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %27 = zext nneg i32 %.epil.init to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not2.epil = icmp eq i32 %29, 0
  br i1 %.not2.epil, label %._crit_edge.epilog-lcssa, label %30

30:                                               ; preds = %.epil.preheader
  %31 = add nsw i32 %1, %.epil.init
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %32
  store i32 0, ptr %33, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %30, %.epil.preheader
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

17:                                               ; preds = %17, %16
  %18 = phi i32 [ 1, %16 ], [ %94, %17 ]
  %19 = or disjoint i32 %18, 72
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  %22 = or disjoint i32 %18, 136
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  %25 = or disjoint i32 %18, 200
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %26
  store i32 0, ptr %27, align 4
  %28 = or disjoint i32 %18, 264
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  %31 = or disjoint i32 %18, 328
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %32
  store i32 0, ptr %33, align 4
  %34 = or disjoint i32 %18, 80
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  %37 = or disjoint i32 %18, 144
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %38
  store i32 0, ptr %39, align 4
  %40 = or disjoint i32 %18, 208
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  %43 = or disjoint i32 %18, 272
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %44
  store i32 0, ptr %45, align 4
  %46 = or disjoint i32 %18, 336
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  %49 = or disjoint i32 %18, 88
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %50
  store i32 0, ptr %51, align 4
  %52 = or disjoint i32 %18, 152
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  %55 = or disjoint i32 %18, 216
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %56
  store i32 0, ptr %57, align 4
  %58 = or disjoint i32 %18, 280
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  %61 = or disjoint i32 %18, 344
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %62
  store i32 0, ptr %63, align 4
  %64 = or disjoint i32 %18, 96
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  %67 = or disjoint i32 %18, 160
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %68
  store i32 0, ptr %69, align 4
  %70 = or disjoint i32 %18, 224
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  %73 = or disjoint i32 %18, 288
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %74
  store i32 0, ptr %75, align 4
  %76 = or disjoint i32 %18, 352
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %77
  store i32 0, ptr %78, align 4
  %79 = or disjoint i32 %18, 104
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %80
  store i32 0, ptr %81, align 4
  %82 = or disjoint i32 %18, 168
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %83
  store i32 0, ptr %84, align 4
  %85 = or disjoint i32 %18, 232
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %86
  store i32 0, ptr %87, align 4
  %88 = or disjoint i32 %18, 296
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %89
  store i32 0, ptr %90, align 4
  %91 = or disjoint i32 %18, 360
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %92
  store i32 0, ptr %93, align 4
  %94 = add nuw nsw i32 %18, 1
  %95 = icmp samesign ult i32 %94, 6
  br i1 %95, label %17, label %96, !llvm.loop !14

96:                                               ; preds = %17
  br label %97

97:                                               ; preds = %116, %96
  %98 = phi i32 [ 0, %96 ], [ %117, %116 ]
  br label %99

99:                                               ; preds = %99, %97
  %100 = phi i32 [ 0, %97 ], [ %114, %99 ]
  %101 = zext nneg i32 %98 to i64
  %102 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %101
  %103 = zext nneg i32 %100 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr %102, i64 %103
  store i32 0, ptr %104, align 4
  %105 = add nuw nsw i32 %100, 1
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds nuw [4 x i8], ptr %102, i64 %106
  store i32 0, ptr %107, align 4
  %108 = add nuw nsw i32 %100, 2
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds nuw [4 x i8], ptr %102, i64 %109
  store i32 0, ptr %110, align 4
  %111 = add nuw nsw i32 %100, 3
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds nuw [4 x i8], ptr %102, i64 %112
  store i32 0, ptr %113, align 4
  %114 = add nuw nsw i32 %100, 4
  %115 = icmp samesign ult i32 %114, 512
  br i1 %115, label %99, label %116, !llvm.loop !15

116:                                              ; preds = %99
  %117 = add nuw nsw i32 %98, 1
  %118 = icmp samesign ult i32 %117, 13
  br i1 %118, label %97, label %119, !llvm.loop !16

119:                                              ; preds = %116
  store i32 1, ptr @p, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %120 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %120, 0
  br i1 %.not, label %123, label %121

121:                                              ; preds = %119
  %122 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %122, ptr @n, align 4
  br label %124

123:                                              ; preds = %119
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %.pre, %123 ], [ %122, %121 ]
  %126 = call i32 @Trial(i32 noundef %125)
  %.not1 = icmp eq i32 %126, 0
  br i1 %.not1, label %127, label %128

127:                                              ; preds = %124
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %132

128:                                              ; preds = %124
  %129 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %129, 2005
  br i1 %.not3, label %131, label %130

130:                                              ; preds = %128
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %131

131:                                              ; preds = %130, %128
  br label %132

132:                                              ; preds = %131, %127
  %133 = load i32, ptr @n, align 4
  %134 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %133) #4
  %135 = load i32, ptr @kount, align 4
  %136 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %135) #4
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
