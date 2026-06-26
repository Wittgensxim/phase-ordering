; ModuleID = 'results\paper_full\Stanford_Puzzle\round_004\output.ll'
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
  br i1 %.not1, label %16, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = zext nneg i32 %.pre to i64
  br label %5

5:                                                ; preds = %15, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %.lr.ph ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %11 = getelementptr [4 x i8], ptr %10, i64 %3
  %12 = load i32, ptr %11, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %9
  br label %17

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.not = icmp samesign ult i64 %indvars.iv, %4
  br i1 %.not.not, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %15
  br label %16

16:                                               ; preds = %._crit_edge, %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 1, %16 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp slt i32 %.pre, 0
  br i1 %.not4, label %28, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add nuw i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %5 = icmp eq i32 %.pre, 0
  br i1 %5, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %6

6:                                                ; preds = %20, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %20 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %20 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %12 = getelementptr [4 x i8], ptr %11, i64 %3
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %6
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %14 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %15 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv.next
  %16 = load i32, ptr %15, align 4
  %.not3.1 = icmp eq i32 %16, 0
  br i1 %.not3.1, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv.next
  %19 = getelementptr [4 x i8], ptr %18, i64 %3
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %6, !llvm.loop !9

._crit_edge.unr-lcssa:                            ; preds = %20
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod2 = trunc i32 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %21

21:                                               ; preds = %.epil.preheader
  %22 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %23 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.epil.init
  %24 = load i32, ptr %23, align 4
  %.not3.epil = icmp eq i32 %24, 0
  br i1 %.not3.epil, label %._crit_edge.epilog-lcssa, label %25

25:                                               ; preds = %21
  %26 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv.epil.init
  %27 = getelementptr [4 x i8], ptr %26, i64 %3
  store i32 1, ptr %27, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %25, %21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %28

28:                                               ; preds = %._crit_edge, %2
  %29 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %32, align 4
  %35 = icmp slt i32 %1, 512
  br i1 %35, label %.lr.ph6, label %44

.lr.ph6:                                          ; preds = %28
  %36 = sext i32 %1 to i64
  br label %37

37:                                               ; preds = %42, %.lr.ph6
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %42 ], [ %36, %.lr.ph6 ]
  %38 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv3
  %39 = load i32, ptr %38, align 4
  %.not2 = icmp eq i32 %39, 0
  br i1 %.not2, label %40, label %42

40:                                               ; preds = %37
  %41 = trunc nsw i64 %indvars.iv3 to i32
  br label %45

42:                                               ; preds = %37
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %43 = and i64 %indvars.iv.next4, 4294967295
  %exitcond6.not = icmp eq i64 %43, 512
  br i1 %exitcond6.not, label %._crit_edge7, label %37, !llvm.loop !10

._crit_edge7:                                     ; preds = %42
  br label %44

44:                                               ; preds = %._crit_edge7, %28
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ 0, %44 ], [ %41, %40 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %28, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add nuw i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %5 = icmp eq i32 %.pre, 0
  br i1 %5, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %6

6:                                                ; preds = %20, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %20 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %20 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %12 = getelementptr [4 x i8], ptr %11, i64 %3
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %6
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %14 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %15 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv.next
  %16 = load i32, ptr %15, align 4
  %.not2.1 = icmp eq i32 %16, 0
  br i1 %.not2.1, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv.next
  %19 = getelementptr [4 x i8], ptr %18, i64 %3
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %6, !llvm.loop !11

._crit_edge.unr-lcssa:                            ; preds = %20
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod1 = trunc i32 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %21

21:                                               ; preds = %.epil.preheader
  %22 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %23 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.epil.init
  %24 = load i32, ptr %23, align 4
  %.not2.epil = icmp eq i32 %24, 0
  br i1 %.not2.epil, label %._crit_edge.epilog-lcssa, label %25

25:                                               ; preds = %21
  %26 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv.epil.init
  %27 = getelementptr [4 x i8], ptr %26, i64 %3
  store i32 0, ptr %27, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %25, %21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %28

28:                                               ; preds = %._crit_edge, %2
  %29 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %23, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ 0, %1 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %23, label %10

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  %12 = call i32 @Fit(i32 noundef %11, i32 noundef %0)
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %22, label %13

13:                                               ; preds = %10
  %14 = trunc nuw nsw i64 %indvars.iv to i32
  %15 = call i32 @Place(i32 noundef %14, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %17, label %19

17:                                               ; preds = %13
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17, %13
  br label %25

20:                                               ; preds = %17
  %21 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %21, i32 noundef %0)
  br label %22

22:                                               ; preds = %20, %10
  br label %23

23:                                               ; preds = %22, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %24, label %4, !llvm.loop !12

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i32 [ 0, %24 ], [ 1, %19 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next.3, %1 ]
  %2 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %2, align 4
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 1, ptr %8, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 512
  br i1 %exitcond.not.3, label %9, label %1, !llvm.loop !13

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %53, %9
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %53 ], [ 1, %9 ]
  %11 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  br label %12

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 288
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 544
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 800
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 1056
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 1312
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds nuw i8, ptr %11, i64 320
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 576
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 832
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 1088
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 1344
  store i32 0, ptr %32, align 4
  br label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds nuw i8, ptr %11, i64 352
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 608
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 864
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 1120
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 1376
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 384
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 640
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 896
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 1152
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 1408
  store i32 0, ptr %52, align 4
  br label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds nuw i8, ptr %11, i64 416
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 672
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 928
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 1184
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 1440
  store i32 0, ptr %62, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond13.not = icmp eq i64 %indvars.iv.next11, 6
  br i1 %exitcond13.not, label %63, label %10, !llvm.loop !14

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %77, %63
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %77 ], [ 0, %63 ]
  br label %65

65:                                               ; preds = %65, %64
  %indvars.iv14 = phi i64 [ 0, %64 ], [ %indvars.iv.next15.3, %65 ]
  %66 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %67 = getelementptr inbounds nuw [4 x i8], ptr %66, i64 %indvars.iv14
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %69 = getelementptr inbounds nuw [4 x i8], ptr %68, i64 %indvars.iv14
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 4
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %72 = getelementptr inbounds nuw [4 x i8], ptr %71, i64 %indvars.iv14
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %75 = getelementptr inbounds nuw [4 x i8], ptr %74, i64 %indvars.iv14
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 12
  store i32 0, ptr %76, align 4
  %indvars.iv.next15.3 = add nuw nsw i64 %indvars.iv14, 4
  %exitcond17.not.3 = icmp eq i64 %indvars.iv.next15.3, 512
  br i1 %exitcond17.not.3, label %77, label %65, !llvm.loop !15

77:                                               ; preds = %65
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 13
  br i1 %exitcond21.not, label %78, label %64, !llvm.loop !16

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  store i32 1, ptr @p, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br label %81

81:                                               ; preds = %80
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br label %82

82:                                               ; preds = %81
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br label %83

83:                                               ; preds = %82
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br label %86

86:                                               ; preds = %85
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br label %89

89:                                               ; preds = %88
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br label %90

90:                                               ; preds = %89
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br label %91

91:                                               ; preds = %90
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br label %94

94:                                               ; preds = %93
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br label %97

97:                                               ; preds = %96
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br label %98

98:                                               ; preds = %97
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br label %99

99:                                               ; preds = %98
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br label %102

102:                                              ; preds = %101
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %103

103:                                              ; preds = %102
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %104

104:                                              ; preds = %103
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %105

105:                                              ; preds = %104
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br label %108

108:                                              ; preds = %107
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br label %111

111:                                              ; preds = %110
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br label %114

114:                                              ; preds = %113
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br label %118

118:                                              ; preds = %117
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br label %121

121:                                              ; preds = %120
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %122 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %122, 0
  br i1 %.not, label %125, label %123

123:                                              ; preds = %121
  %124 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %124, ptr @n, align 4
  br label %126

125:                                              ; preds = %121
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %.pre, %125 ], [ %124, %123 ]
  %128 = call i32 @Trial(i32 noundef %127)
  %.not1 = icmp eq i32 %128, 0
  br i1 %.not1, label %129, label %130

129:                                              ; preds = %126
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %134

130:                                              ; preds = %126
  %131 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %131, 2005
  br i1 %.not3, label %133, label %132

132:                                              ; preds = %130
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %133

133:                                              ; preds = %132, %130
  br label %134

134:                                              ; preds = %133, %129
  %135 = load i32, ptr @n, align 4
  %136 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %135) #4
  %137 = load i32, ptr @kount, align 4
  %138 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %137) #4
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
  br i1 %exitcond.not, label %4, label %1, !llvm.loop !17

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
!17 = distinct !{!17, !8}
