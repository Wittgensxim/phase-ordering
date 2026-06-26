; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_002\output.ll'
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
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %13
  %3 = phi i32 [ %14, %13 ], [ 0, %.lr.ph.preheader ]
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
  br i1 %.not3, label %13, label %._crit_edge.loopexit

13:                                               ; preds = %8, %.lr.ph
  %14 = add nuw nsw i32 %3, 1
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !7

._crit_edge.loopexit:                             ; preds = %8, %13
  %.ph = phi i32 [ 1, %13 ], [ 0, %8 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %15 = phi i32 [ 1, %2 ], [ %.ph, %._crit_edge.loopexit ]
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp sgt i32 0, %.pre
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %3 = add i32 %.pre, 1
  %xtraiter = and i32 %3, 1
  %4 = icmp ult i32 %.pre, 1
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = sub i32 %3, %xtraiter
  br label %.lr.ph

.lr.ph:                                           ; preds = %23, %.lr.ph.preheader.new
  %5 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %24, %23 ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %23 ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %.lr.ph.1, label %10

10:                                               ; preds = %.lr.ph
  %11 = add nsw i32 %1, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %10, %.lr.ph
  %14 = add nuw nsw i32 %5, 1
  %15 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %16 = zext nneg i32 %14 to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not3.1 = icmp eq i32 %18, 0
  br i1 %.not3.1, label %23, label %19

19:                                               ; preds = %.lr.ph.1
  %20 = add nsw i32 %1, %14
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %21
  store i32 1, ptr %22, align 4
  br label %23

23:                                               ; preds = %19, %.lr.ph.1
  %24 = add nuw nsw i32 %5, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit.unr-lcssa:                   ; preds = %23
  %.unr = phi i32 [ %24, %23 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.epil.preheader, label %._crit_edge.loopexit

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.unr, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil.preheader
  %25 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %26 = zext nneg i32 %.epil.init to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4
  %.not3.epil = icmp eq i32 %28, 0
  br i1 %.not3.epil, label %._crit_edge.loopexit.epilog-lcssa, label %29

29:                                               ; preds = %.lr.ph.epil
  %30 = add nsw i32 %1, %.epil.init
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %31
  store i32 1, ptr %32, align 4
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %29, %.lr.ph.epil
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge.loopexit.epilog-lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %33 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %36, align 4
  %39 = icmp slt i32 %1, 512
  br i1 %39, label %.lr.ph6.preheader, label %._crit_edge7

.lr.ph6.preheader:                                ; preds = %._crit_edge
  br label %.lr.ph6

.lr.ph6:                                          ; preds = %.lr.ph6.preheader, %44
  %40 = phi i32 [ %45, %44 ], [ %1, %.lr.ph6.preheader ]
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %41
  %43 = load i32, ptr %42, align 4
  %.not2 = icmp eq i32 %43, 0
  br i1 %.not2, label %._crit_edge7.loopexit, label %44

44:                                               ; preds = %.lr.ph6
  %45 = add nsw i32 %40, 1
  %46 = icmp slt i32 %45, 512
  br i1 %46, label %.lr.ph6, label %._crit_edge7.loopexit, !llvm.loop !10

._crit_edge7.loopexit:                            ; preds = %.lr.ph6, %44
  %.ph = phi i32 [ 0, %44 ], [ %40, %.lr.ph6 ]
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %._crit_edge
  %47 = phi i32 [ 0, %._crit_edge ], [ %.ph, %._crit_edge7.loopexit ]
  ret i32 %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %3 = add i32 %.pre, 1
  %xtraiter = and i32 %3, 1
  %4 = icmp ult i32 %.pre, 1
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = sub i32 %3, %xtraiter
  br label %.lr.ph

.lr.ph:                                           ; preds = %23, %.lr.ph.preheader.new
  %5 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %24, %23 ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %23 ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %.lr.ph.1, label %10

10:                                               ; preds = %.lr.ph
  %11 = add nsw i32 %1, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %10, %.lr.ph
  %14 = add nuw nsw i32 %5, 1
  %15 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %16 = zext nneg i32 %14 to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not2.1 = icmp eq i32 %18, 0
  br i1 %.not2.1, label %23, label %19

19:                                               ; preds = %.lr.ph.1
  %20 = add nsw i32 %1, %14
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %19, %.lr.ph.1
  %24 = add nuw nsw i32 %5, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit.unr-lcssa:                   ; preds = %23
  %.unr = phi i32 [ %24, %23 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.epil.preheader, label %._crit_edge.loopexit

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.unr, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil.preheader
  %25 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %26 = zext nneg i32 %.epil.init to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4
  %.not2.epil = icmp eq i32 %28, 0
  br i1 %.not2.epil, label %._crit_edge.loopexit.epilog-lcssa, label %29

29:                                               ; preds = %.lr.ph.epil
  %30 = add nsw i32 %1, %.epil.init
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %29, %.lr.ph.epil
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge.loopexit.epilog-lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %33 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4
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
  br i1 %15, label %1, label %.preheader2, !llvm.loop !13

.preheader2:                                      ; preds = %1
  br label %16

16:                                               ; preds = %.preheader2, %83
  %17 = phi i32 [ %99, %83 ], [ 1, %.preheader2 ]
  br label %18

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %18
  %20 = or disjoint i32 %17, 72
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  %23 = or disjoint i32 %17, 136
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  %26 = or disjoint i32 %17, 200
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  %29 = or disjoint i32 %17, 264
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %30
  store i32 0, ptr %31, align 4
  %32 = or disjoint i32 %17, 328
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %19
  %36 = or disjoint i32 %17, 80
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %37
  store i32 0, ptr %38, align 4
  %39 = or disjoint i32 %17, 144
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %40
  store i32 0, ptr %41, align 4
  %42 = or disjoint i32 %17, 208
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  %45 = or disjoint i32 %17, 272
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %46
  store i32 0, ptr %47, align 4
  %48 = or disjoint i32 %17, 336
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %35
  %52 = or disjoint i32 %17, 88
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  %55 = or disjoint i32 %17, 152
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %56
  store i32 0, ptr %57, align 4
  %58 = or disjoint i32 %17, 216
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  %61 = or disjoint i32 %17, 280
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %62
  store i32 0, ptr %63, align 4
  %64 = or disjoint i32 %17, 344
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br label %67

67:                                               ; preds = %51
  %68 = or disjoint i32 %17, 96
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  %71 = or disjoint i32 %17, 160
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %72
  store i32 0, ptr %73, align 4
  %74 = or disjoint i32 %17, 224
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %75
  store i32 0, ptr %76, align 4
  %77 = or disjoint i32 %17, 288
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %78
  store i32 0, ptr %79, align 4
  %80 = or disjoint i32 %17, 352
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %81
  store i32 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %67
  %84 = or disjoint i32 %17, 104
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %85
  store i32 0, ptr %86, align 4
  %87 = or disjoint i32 %17, 168
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %88
  store i32 0, ptr %89, align 4
  %90 = or disjoint i32 %17, 232
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %91
  store i32 0, ptr %92, align 4
  %93 = or disjoint i32 %17, 296
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %94
  store i32 0, ptr %95, align 4
  %96 = or disjoint i32 %17, 360
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %97
  store i32 0, ptr %98, align 4
  %99 = add nuw nsw i32 %17, 1
  %100 = icmp samesign ult i32 %99, 6
  br i1 %100, label %16, label %.preheader1, !llvm.loop !14

.preheader1:                                      ; preds = %83
  br label %101

101:                                              ; preds = %.preheader1, %126
  %102 = phi i32 [ %127, %126 ], [ 0, %.preheader1 ]
  br label %103

103:                                              ; preds = %103, %101
  %104 = phi i32 [ 0, %101 ], [ %124, %103 ]
  %105 = zext nneg i32 %102 to i64
  %106 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %105
  %107 = zext nneg i32 %104 to i64
  %108 = getelementptr inbounds nuw [4 x i8], ptr %106, i64 %107
  store i32 0, ptr %108, align 4
  %109 = add nuw nsw i32 %104, 1
  %110 = zext nneg i32 %102 to i64
  %111 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %110
  %112 = zext nneg i32 %109 to i64
  %113 = getelementptr inbounds nuw [4 x i8], ptr %111, i64 %112
  store i32 0, ptr %113, align 4
  %114 = add nuw nsw i32 %104, 2
  %115 = zext nneg i32 %102 to i64
  %116 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %115
  %117 = zext nneg i32 %114 to i64
  %118 = getelementptr inbounds nuw [4 x i8], ptr %116, i64 %117
  store i32 0, ptr %118, align 4
  %119 = add nuw nsw i32 %104, 3
  %120 = zext nneg i32 %102 to i64
  %121 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %120
  %122 = zext nneg i32 %119 to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr %121, i64 %122
  store i32 0, ptr %123, align 4
  %124 = add nuw nsw i32 %104, 4
  %125 = icmp samesign ult i32 %124, 512
  br i1 %125, label %103, label %126, !llvm.loop !15

126:                                              ; preds = %103
  %127 = add nuw nsw i32 %102, 1
  %128 = icmp samesign ult i32 %127, 13
  br i1 %128, label %101, label %.preheader, !llvm.loop !16

.preheader:                                       ; preds = %126
  br label %129

129:                                              ; preds = %.preheader
  br label %130

130:                                              ; preds = %129
  store i32 1, ptr @p, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br label %131

131:                                              ; preds = %130
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br label %132

132:                                              ; preds = %131
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br label %133

133:                                              ; preds = %132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br label %136

136:                                              ; preds = %135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br label %139

139:                                              ; preds = %138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br label %140

140:                                              ; preds = %139
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br label %141

141:                                              ; preds = %140
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br label %144

144:                                              ; preds = %143
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br label %147

147:                                              ; preds = %146
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br label %148

148:                                              ; preds = %147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br label %149

149:                                              ; preds = %148
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br label %152

152:                                              ; preds = %151
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %153

153:                                              ; preds = %152
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %154

154:                                              ; preds = %153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %155

155:                                              ; preds = %154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br label %158

158:                                              ; preds = %157
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br label %161

161:                                              ; preds = %160
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br label %164

164:                                              ; preds = %163
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br label %168

168:                                              ; preds = %167
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br label %171

171:                                              ; preds = %170
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %172 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %172, 0
  br i1 %.not, label %175, label %173

173:                                              ; preds = %171
  %174 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %174, ptr @n, align 4
  br label %176

175:                                              ; preds = %171
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %176

176:                                              ; preds = %175, %173
  %177 = phi i32 [ %.pre, %175 ], [ %174, %173 ]
  %178 = call i32 @Trial(i32 noundef %177)
  %.not1 = icmp eq i32 %178, 0
  br i1 %.not1, label %179, label %180

179:                                              ; preds = %176
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %183

180:                                              ; preds = %176
  %181 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %181, 2005
  br i1 %.not3, label %183, label %182

182:                                              ; preds = %180
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %183

183:                                              ; preds = %180, %182, %179
  %184 = load i32, ptr @n, align 4
  %185 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %184) #4
  %186 = load i32, ptr @kount, align 4
  %187 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %186) #4
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
