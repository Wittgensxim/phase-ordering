; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_005\output.ll'
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
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = zext nneg i32 %.pre to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %invariant.gep = getelementptr [4 x i8], ptr @puzzl, i64 %3
  br label %6

6:                                                ; preds = %11, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %11 ], [ 0, %.lr.ph ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %11, label %9

9:                                                ; preds = %6
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %10 = load i32, ptr %gep, align 4
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %11, label %._crit_edge.loopexit

11:                                               ; preds = %9, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.not = icmp samesign ult i64 %indvars.iv, %4
  br i1 %.not.not, label %6, label %._crit_edge.loopexit, !llvm.loop !7

._crit_edge.loopexit:                             ; preds = %9, %11
  %.ph = phi i32 [ 1, %11 ], [ 0, %9 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %12 = phi i32 [ 1, %2 ], [ %.ph, %._crit_edge.loopexit ]
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp slt i32 %.pre, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add nuw i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %invariant.gep = getelementptr [4 x i8], ptr @puzzl, i64 %3
  %6 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 1
  %7 = icmp ult i64 %6, 1
  br i1 %7, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %wide.trip.count, %xtraiter
  br label %8

8:                                                ; preds = %16, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %16 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %16 ]
  %9 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %8
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 1, ptr %gep, align 4
  br label %12

12:                                               ; preds = %11, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %14 = load i32, ptr %13, align 4
  %.not3.1 = icmp eq i32 %14, 0
  br i1 %.not3.1, label %16, label %15

15:                                               ; preds = %12
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i32 1, ptr %gep.1, align 4
  br label %16

16:                                               ; preds = %15, %12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %8, !llvm.loop !9

._crit_edge.loopexit.unr-lcssa:                   ; preds = %16
  %indvars.iv.unr = phi i64 [ %indvars.iv.next.1, %16 ]
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge.loopexit

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.unr, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %17

17:                                               ; preds = %.epil.preheader
  %18 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.epil.init
  %19 = load i32, ptr %18, align 4
  %.not3.epil = icmp eq i32 %19, 0
  br i1 %.not3.epil, label %._crit_edge.loopexit.epilog-lcssa, label %20

20:                                               ; preds = %17
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  store i32 1, ptr %gep.epil, align 4
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %20, %17
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge.loopexit.epilog-lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %21 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %24, align 4
  %27 = icmp slt i32 %1, 512
  br i1 %27, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %._crit_edge
  %28 = sext i32 %1 to i64
  br label %29

29:                                               ; preds = %34, %.lr.ph6
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %34 ], [ %28, %.lr.ph6 ]
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv3
  %31 = load i32, ptr %30, align 4
  %.not2 = icmp eq i32 %31, 0
  br i1 %.not2, label %32, label %34

32:                                               ; preds = %29
  %indvars.iv3.lcssa = phi i64 [ %indvars.iv3, %29 ]
  %33 = trunc nsw i64 %indvars.iv3.lcssa to i32
  br label %._crit_edge7

34:                                               ; preds = %29
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %35 = and i64 %indvars.iv.next4, 4294967295
  %exitcond6.not = icmp eq i64 %35, 512
  br i1 %exitcond6.not, label %._crit_edge7.loopexit, label %29, !llvm.loop !10

._crit_edge7.loopexit:                            ; preds = %34
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %._crit_edge, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %._crit_edge ], [ 0, %._crit_edge7.loopexit ]
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add nuw i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %invariant.gep = getelementptr [4 x i8], ptr @puzzl, i64 %3
  %6 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 1
  %7 = icmp ult i64 %6, 1
  br i1 %7, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %wide.trip.count, %xtraiter
  br label %8

8:                                                ; preds = %16, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %16 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %16 ]
  %9 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %12, label %11

11:                                               ; preds = %8
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 0, ptr %gep, align 4
  br label %12

12:                                               ; preds = %11, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %14 = load i32, ptr %13, align 4
  %.not2.1 = icmp eq i32 %14, 0
  br i1 %.not2.1, label %16, label %15

15:                                               ; preds = %12
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i32 0, ptr %gep.1, align 4
  br label %16

16:                                               ; preds = %15, %12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %8, !llvm.loop !11

._crit_edge.loopexit.unr-lcssa:                   ; preds = %16
  %indvars.iv.unr = phi i64 [ %indvars.iv.next.1, %16 ]
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge.loopexit

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.unr, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %17

17:                                               ; preds = %.epil.preheader
  %18 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.epil.init
  %19 = load i32, ptr %18, align 4
  %.not2.epil = icmp eq i32 %19, 0
  br i1 %.not2.epil, label %._crit_edge.loopexit.epilog-lcssa, label %20

20:                                               ; preds = %17
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  store i32 0, ptr %gep.epil, align 4
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %20, %17
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge.loopexit.epilog-lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %21 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %18, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %18 ], [ 0, %1 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %18, label %10

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  %12 = call i32 @Fit(i32 noundef %11, i32 noundef %0)
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %18, label %13

13:                                               ; preds = %10
  %14 = call i32 @Place(i32 noundef %11, i32 noundef %0)
  %15 = call i32 @Trial(i32 noundef %14)
  %.not2 = icmp ne i32 %15, 0
  %16 = icmp eq i32 %14, 0
  %or.cond = or i1 %.not2, %16
  br i1 %or.cond, label %19, label %17

17:                                               ; preds = %13
  call void @Remove(i32 noundef %11, i32 noundef %0)
  br label %18

18:                                               ; preds = %10, %17, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %19, label %4, !llvm.loop !12

19:                                               ; preds = %18, %13
  %20 = phi i32 [ 1, %13 ], [ 0, %18 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next.3, %1 ]
  %2 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv.next
  store i32 1, ptr %3, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %4 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv.next.1
  store i32 1, ptr %4, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv.next.2
  store i32 1, ptr %5, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 512
  br i1 %exitcond.not.3, label %.preheader2, label %1, !llvm.loop !13

.preheader2:                                      ; preds = %1
  br label %6

6:                                                ; preds = %.preheader2
  br label %7

7:                                                ; preds = %6
  br label %8

8:                                                ; preds = %7
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 292), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 548), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 804), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1060), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1316), align 4
  br label %9

9:                                                ; preds = %8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 324), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 580), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 836), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1092), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1348), align 4
  br label %10

10:                                               ; preds = %9
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 356), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 612), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 868), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1124), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1380), align 4
  br label %11

11:                                               ; preds = %10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 388), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 644), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 900), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1156), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1412), align 4
  br label %12

12:                                               ; preds = %11
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 420), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 676), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 932), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1188), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1444), align 4
  br label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 296), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 552), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 808), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1064), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1320), align 4
  br label %15

15:                                               ; preds = %14
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 328), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 584), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 840), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1096), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1352), align 4
  br label %16

16:                                               ; preds = %15
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 360), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 616), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 872), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1128), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1384), align 4
  br label %17

17:                                               ; preds = %16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 392), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 648), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 904), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1160), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1416), align 4
  br label %18

18:                                               ; preds = %17
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 424), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 680), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 936), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1192), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1448), align 4
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 300), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 556), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 812), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1068), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1324), align 4
  br label %21

21:                                               ; preds = %20
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 332), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 588), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 844), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1100), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1356), align 4
  br label %22

22:                                               ; preds = %21
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 364), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 620), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 876), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1132), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1388), align 4
  br label %23

23:                                               ; preds = %22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 396), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 652), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 908), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1164), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1420), align 4
  br label %24

24:                                               ; preds = %23
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 428), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 684), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 940), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1196), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1452), align 4
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 304), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 560), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 816), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1072), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1328), align 4
  br label %27

27:                                               ; preds = %26
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 336), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 592), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 848), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1104), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1360), align 4
  br label %28

28:                                               ; preds = %27
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 368), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 624), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 880), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1136), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1392), align 4
  br label %29

29:                                               ; preds = %28
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 400), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 656), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 912), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1168), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1424), align 4
  br label %30

30:                                               ; preds = %29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 432), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 688), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 944), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1200), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1456), align 4
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 308), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 564), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 820), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1076), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1332), align 4
  br label %33

33:                                               ; preds = %32
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 340), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 596), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 852), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1108), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1364), align 4
  br label %34

34:                                               ; preds = %33
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 372), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 628), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 884), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1140), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1396), align 4
  br label %35

35:                                               ; preds = %34
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 404), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 660), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 916), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1172), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1428), align 4
  br label %.preheader1

.preheader1:                                      ; preds = %35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 436), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 692), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 948), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1204), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @puzzl, i64 1460), align 4
  br label %36

36:                                               ; preds = %.preheader1, %47
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %47 ], [ 0, %.preheader1 ]
  %37 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  br label %38

38:                                               ; preds = %38, %36
  %indvars.iv14 = phi i64 [ 0, %36 ], [ %indvars.iv.next15.7, %38 ]
  %39 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv14
  store i32 0, ptr %39, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %40 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv.next15
  store i32 0, ptr %40, align 4
  %indvars.iv.next15.1 = add nuw nsw i64 %indvars.iv14, 2
  %41 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv.next15.1
  store i32 0, ptr %41, align 4
  %indvars.iv.next15.2 = add nuw nsw i64 %indvars.iv14, 3
  %42 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv.next15.2
  store i32 0, ptr %42, align 4
  %indvars.iv.next15.3 = add nuw nsw i64 %indvars.iv14, 4
  %43 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv.next15.3
  store i32 0, ptr %43, align 4
  %indvars.iv.next15.4 = add nuw nsw i64 %indvars.iv14, 5
  %44 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv.next15.4
  store i32 0, ptr %44, align 4
  %indvars.iv.next15.5 = add nuw nsw i64 %indvars.iv14, 6
  %45 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv.next15.5
  store i32 0, ptr %45, align 4
  %indvars.iv.next15.6 = add nuw nsw i64 %indvars.iv14, 7
  %46 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv.next15.6
  store i32 0, ptr %46, align 4
  %indvars.iv.next15.7 = add nuw nsw i64 %indvars.iv14, 8
  %exitcond17.not.7 = icmp eq i64 %indvars.iv.next15.7, 512
  br i1 %exitcond17.not.7, label %47, label %38, !llvm.loop !14

47:                                               ; preds = %38
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 13
  br i1 %exitcond21.not, label %.preheader, label %36, !llvm.loop !15

.preheader:                                       ; preds = %47
  br label %48

48:                                               ; preds = %.preheader
  br label %49

49:                                               ; preds = %48
  store i32 1, ptr @p, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br label %50

50:                                               ; preds = %49
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br label %51

51:                                               ; preds = %50
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br label %52

52:                                               ; preds = %51
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br label %55

55:                                               ; preds = %54
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br label %58

58:                                               ; preds = %57
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br label %59

59:                                               ; preds = %58
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br label %60

60:                                               ; preds = %59
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br label %63

63:                                               ; preds = %62
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br label %66

66:                                               ; preds = %65
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br label %67

67:                                               ; preds = %66
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br label %68

68:                                               ; preds = %67
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br label %71

71:                                               ; preds = %70
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %72

72:                                               ; preds = %71
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %73

73:                                               ; preds = %72
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %74

74:                                               ; preds = %73
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br label %77

77:                                               ; preds = %76
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br label %80

80:                                               ; preds = %79
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br label %83

83:                                               ; preds = %82
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br label %87

87:                                               ; preds = %86
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br label %90

90:                                               ; preds = %89
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %91 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %91, 0
  br i1 %.not, label %94, label %92

92:                                               ; preds = %90
  %93 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %93, ptr @n, align 4
  br label %95

94:                                               ; preds = %90
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %.pre, %94 ], [ %93, %92 ]
  %97 = call i32 @Trial(i32 noundef %96)
  %.not1 = icmp eq i32 %97, 0
  br i1 %.not1, label %98, label %99

98:                                               ; preds = %95
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %102

99:                                               ; preds = %95
  %100 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %100, 2005
  br i1 %.not3, label %102, label %101

101:                                              ; preds = %99
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %102

102:                                              ; preds = %99, %101, %98
  %103 = load i32, ptr @n, align 4
  %104 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %103) #4
  %105 = load i32, ptr @kount, align 4
  %106 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %105) #4
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
  %exitcond.not = icmp eq i32 %3, 100
  br i1 %exitcond.not, label %4, label %1, !llvm.loop !16

4:                                                ; preds = %1
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
