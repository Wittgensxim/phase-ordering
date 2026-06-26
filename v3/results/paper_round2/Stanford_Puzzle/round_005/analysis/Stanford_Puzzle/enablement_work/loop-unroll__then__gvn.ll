; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_004\output.ll'
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
  br i1 %.not4, label %27, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add nuw i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 1
  %6 = icmp ult i64 %5, 1
  br i1 %6, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %wide.trip.count, %xtraiter
  br label %7

7:                                                ; preds = %20, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %20 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %20 ]
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %13 = getelementptr [4 x i8], ptr %12, i64 %3
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next
  %16 = load i32, ptr %15, align 4
  %.not3.1 = icmp eq i32 %16, 0
  br i1 %.not3.1, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv.next
  %19 = getelementptr [4 x i8], ptr %18, i64 %3
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %7, !llvm.loop !9

._crit_edge.unr-lcssa:                            ; preds = %20
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  %21 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %22 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv.epil.init
  %23 = load i32, ptr %22, align 4
  %.not3.epil = icmp eq i32 %23, 0
  br i1 %.not3.epil, label %._crit_edge.epilog-lcssa, label %24

24:                                               ; preds = %.epil.preheader
  %25 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv.epil.init
  %26 = getelementptr [4 x i8], ptr %25, i64 %3
  store i32 1, ptr %26, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %24, %.epil.preheader
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %27

27:                                               ; preds = %._crit_edge, %2
  %28 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr %31, align 4
  %34 = icmp slt i32 %1, 512
  br i1 %34, label %.lr.ph6, label %43

.lr.ph6:                                          ; preds = %27
  %35 = sext i32 %1 to i64
  br label %36

36:                                               ; preds = %41, %.lr.ph6
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %41 ], [ %35, %.lr.ph6 ]
  %37 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv3
  %38 = load i32, ptr %37, align 4
  %.not2 = icmp eq i32 %38, 0
  br i1 %.not2, label %39, label %41

39:                                               ; preds = %36
  %40 = trunc nsw i64 %indvars.iv3 to i32
  br label %44

41:                                               ; preds = %36
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %42 = and i64 %indvars.iv.next4, 4294967295
  %exitcond6.not = icmp eq i64 %42, 512
  br i1 %exitcond6.not, label %._crit_edge7, label %36, !llvm.loop !10

._crit_edge7:                                     ; preds = %41
  br label %43

43:                                               ; preds = %._crit_edge7, %27
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ 0, %43 ], [ %40, %39 ]
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %27, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add nuw i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 1
  %6 = icmp ult i64 %5, 1
  br i1 %6, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %wide.trip.count, %xtraiter
  br label %7

7:                                                ; preds = %20, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %20 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %20 ]
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %13 = getelementptr [4 x i8], ptr %12, i64 %3
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next
  %16 = load i32, ptr %15, align 4
  %.not2.1 = icmp eq i32 %16, 0
  br i1 %.not2.1, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv.next
  %19 = getelementptr [4 x i8], ptr %18, i64 %3
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %7, !llvm.loop !11

._crit_edge.unr-lcssa:                            ; preds = %20
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  %21 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %22 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv.epil.init
  %23 = load i32, ptr %22, align 4
  %.not2.epil = icmp eq i32 %23, 0
  br i1 %.not2.epil, label %._crit_edge.epilog-lcssa, label %24

24:                                               ; preds = %.epil.preheader
  %25 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv.epil.init
  %26 = getelementptr [4 x i8], ptr %25, i64 %3
  store i32 0, ptr %26, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %24, %.epil.preheader
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %27

27:                                               ; preds = %._crit_edge, %2
  %28 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %21, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %1 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %21, label %10

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  %12 = call i32 @Fit(i32 noundef %11, i32 noundef %0)
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %20, label %13

13:                                               ; preds = %10
  %14 = call i32 @Place(i32 noundef %11, i32 noundef %0)
  %15 = call i32 @Trial(i32 noundef %14)
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %16, label %18

16:                                               ; preds = %13
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16, %13
  br label %23

19:                                               ; preds = %16
  call void @Remove(i32 noundef %11, i32 noundef %0)
  br label %20

20:                                               ; preds = %19, %10
  br label %21

21:                                               ; preds = %20, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %22, label %4, !llvm.loop !12

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ 0, %22 ], [ 1, %18 ]
  ret i32 %24
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
  br i1 %exitcond.not.3, label %6, label %1, !llvm.loop !13

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %7, %6
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %7 ], [ 1, %6 ]
  %8 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 256
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 512
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 768
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 1024
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 1280
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 64
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 96
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds nuw i8, ptr %15, i64 96
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds nuw i8, ptr %17, i64 96
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds nuw i8, ptr %11, i64 128
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds nuw i8, ptr %13, i64 128
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 128
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds nuw i8, ptr %17, i64 128
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds nuw i8, ptr %9, i64 160
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds nuw i8, ptr %11, i64 160
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds nuw i8, ptr %13, i64 160
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds nuw i8, ptr %15, i64 160
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds nuw i8, ptr %17, i64 160
  store i32 0, ptr %38, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond13.not = icmp eq i64 %indvars.iv.next11, 6
  br i1 %exitcond13.not, label %39, label %7, !llvm.loop !14

39:                                               ; preds = %7
  br label %40

40:                                               ; preds = %47, %39
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %47 ], [ 0, %39 ]
  br label %41

41:                                               ; preds = %41, %40
  %indvars.iv14 = phi i64 [ 0, %40 ], [ %indvars.iv.next15.3, %41 ]
  %42 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %43 = getelementptr inbounds nuw [4 x i8], ptr %42, i64 %indvars.iv14
  store i32 0, ptr %43, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %44 = getelementptr inbounds nuw [4 x i8], ptr %42, i64 %indvars.iv.next15
  store i32 0, ptr %44, align 4
  %indvars.iv.next15.1 = add nuw nsw i64 %indvars.iv14, 2
  %45 = getelementptr inbounds nuw [4 x i8], ptr %42, i64 %indvars.iv.next15.1
  store i32 0, ptr %45, align 4
  %indvars.iv.next15.2 = add nuw nsw i64 %indvars.iv14, 3
  %46 = getelementptr inbounds nuw [4 x i8], ptr %42, i64 %indvars.iv.next15.2
  store i32 0, ptr %46, align 4
  %indvars.iv.next15.3 = add nuw nsw i64 %indvars.iv14, 4
  %exitcond17.not.3 = icmp eq i64 %indvars.iv.next15.3, 512
  br i1 %exitcond17.not.3, label %47, label %41, !llvm.loop !15

47:                                               ; preds = %41
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 13
  br i1 %exitcond21.not, label %48, label %40, !llvm.loop !16

48:                                               ; preds = %47
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
  %49 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %49, 0
  br i1 %.not, label %52, label %50

50:                                               ; preds = %48
  %51 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %51, ptr @n, align 4
  br label %53

52:                                               ; preds = %48
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %.pre, %52 ], [ %51, %50 ]
  %55 = call i32 @Trial(i32 noundef %54)
  %.not1 = icmp eq i32 %55, 0
  br i1 %.not1, label %56, label %57

56:                                               ; preds = %53
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %61

57:                                               ; preds = %53
  %58 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %58, 2005
  br i1 %.not3, label %60, label %59

59:                                               ; preds = %57
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %60

60:                                               ; preds = %59, %57
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, ptr @n, align 4
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %62) #4
  %64 = load i32, ptr @kount, align 4
  %65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %64) #4
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
