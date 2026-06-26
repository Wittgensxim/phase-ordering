; ModuleID = 'results\paper_full\McGill_exptree\round_004\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Out of memory for work list\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Out of memory for combination list\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" d%d \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%d=%d\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@stopSearch = internal global i32 0, align 4
@nbNodes = internal global i32 0, align 4
@dmax = internal global i32 0, align 4
@workList = internal global ptr null, align 8
@listLength = internal global i32 0, align 4
@goal = internal global i32 0, align 4
@best = internal global i32 0, align 4
@bestDepth = internal global i32 0, align 4
@solution = internal global ptr null, align 8
@combList = internal global ptr null, align 8
@str = private unnamed_addr constant [2 x i8] c".\00", align 1
@str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @newWorkList(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 4) #8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  ret ptr %3

5:                                                ; preds = %1
  %6 = call ptr @__acrt_iob_func(i32 noundef 2) #9
  %7 = call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %6)
  call void @exit(i32 noundef 1) #10
  unreachable
}

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare dllimport ptr @__acrt_iob_func(i32 noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @newCombList(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 12) #8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  ret ptr %3

5:                                                ; preds = %1
  %6 = call ptr @__acrt_iob_func(i32 noundef 2) #9
  %7 = call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %6)
  call void @exit(i32 noundef 1) #10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initWorkList(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %3
  %5 = add i32 %2, -1
  %xtraiter = and i32 %2, 3
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %2, %xtraiter
  br label %7

7:                                                ; preds = %7, %.lr.ph.new
  %.01 = phi i32 [ 0, %.lr.ph.new ], [ %27, %7 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %7 ]
  %8 = zext nneg i32 %.01 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %8
  store i32 %10, ptr %11, align 4
  %12 = add nuw nsw i32 %.01, 1
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = add nuw nsw i32 %.01, 2
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %18
  store i32 %20, ptr %21, align 4
  %22 = add nuw nsw i32 %.01, 3
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %23
  store i32 %25, ptr %26, align 4
  %27 = add nuw nsw i32 %.01, 4
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp ne i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %7, label %._crit_edge.unr-lcssa, !llvm.loop !7

._crit_edge.unr-lcssa:                            ; preds = %7
  %.01.unr = phi i32 [ %27, %7 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.01.epil.init = phi i32 [ 0, %.lr.ph ], [ %.01.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %28

28:                                               ; preds = %28, %.epil.preheader
  %.01.epil = phi i32 [ %.01.epil.init, %.epil.preheader ], [ %33, %28 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %28 ]
  %29 = zext nneg i32 %.01.epil to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %29
  store i32 %31, ptr %32, align 4
  %33 = add nuw nsw i32 %.01.epil, 1
  %34 = icmp slt i32 %33, %2
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %28, label %._crit_edge.epilog-lcssa, !llvm.loop !9

._crit_edge.epilog-lcssa:                         ; preds = %28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %35

35:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 0, %1
  br i1 %3, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %2
  %4 = add i32 %1, -1
  %xtraiter = and i32 %1, 7
  %5 = icmp ult i32 %4, 7
  br i1 %5, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %1, %xtraiter
  br label %6

6:                                                ; preds = %6, %.lr.ph.new
  %.01 = phi i32 [ 0, %.lr.ph.new ], [ %38, %6 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.7, %6 ]
  %7 = zext nneg i32 %.01 to i64
  %8 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i32 %.01, 1
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %13, align 4
  %14 = add nuw nsw i32 %.01, 2
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %17, align 4
  %18 = add nuw nsw i32 %.01, 3
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 0, ptr %21, align 4
  %22 = add nuw nsw i32 %.01, 4
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 0, ptr %25, align 4
  %26 = add nuw nsw i32 %.01, 5
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 0, ptr %29, align 4
  %30 = add nuw nsw i32 %.01, 6
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 0, ptr %33, align 4
  %34 = add nuw nsw i32 %.01, 7
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 0, ptr %37, align 4
  %38 = add nuw nsw i32 %.01, 8
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp ne i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %6, label %._crit_edge.unr-lcssa, !llvm.loop !11

._crit_edge.unr-lcssa:                            ; preds = %6
  %.01.unr = phi i32 [ %38, %6 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.01.epil.init = phi i32 [ 0, %.lr.ph ], [ %.01.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %39

39:                                               ; preds = %39, %.epil.preheader
  %.01.epil = phi i32 [ %.01.epil.init, %.epil.preheader ], [ %43, %39 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %39 ]
  %40 = zext nneg i32 %.01.epil to i64
  %41 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 0, ptr %42, align 4
  %43 = add nuw nsw i32 %.01.epil, 1
  %44 = icmp slt i32 %43, %1
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %39, label %._crit_edge.epilog-lcssa, !llvm.loop !12

._crit_edge.epilog-lcssa:                         ; preds = %39
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %45

45:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %3
  %5 = add i32 %2, -1
  %xtraiter = and i32 %2, 1
  %6 = icmp ult i32 %5, 1
  br i1 %6, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %2, %xtraiter
  br label %7

7:                                                ; preds = %7, %.lr.ph.new
  %.01 = phi i32 [ 0, %.lr.ph.new ], [ %29, %7 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %7 ]
  %8 = zext nneg i32 %.01 to i64
  %9 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %8
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %16, ptr %17, align 4
  %18 = add nuw nsw i32 %.01, 1
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %19
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %27, ptr %28, align 4
  %29 = add nuw nsw i32 %.01, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %7, label %._crit_edge.unr-lcssa, !llvm.loop !13

._crit_edge.unr-lcssa:                            ; preds = %7
  %.01.unr = phi i32 [ %29, %7 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.01.epil.init = phi i32 [ 0, %.lr.ph ], [ %.01.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %.epil.preheader
  %30 = zext nneg i32 %.01.epil.init to i64
  %31 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %30
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 4
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %38, ptr %39, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %40

40:                                               ; preds = %._crit_edge, %3
  %41 = sext i32 %2 to i64
  %42 = getelementptr inbounds [12 x i8], ptr %0, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 0, ptr %43, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %24 [
    i32 1, label %4
    i32 2, label %9
    i32 3, label %14
    i32 4, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %5, %7
  br label %24

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %10, %12
  br label %24

14:                                               ; preds = %1
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = mul nsw i32 %15, %17
  br label %24

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %22 = load i32, ptr %21, align 4
  %23 = sdiv i32 %20, %22
  br label %24

24:                                               ; preds = %19, %14, %9, %4, %1
  %.0 = phi i32 [ %23, %19 ], [ %8, %4 ], [ %13, %9 ], [ %18, %14 ], [ 0, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add nsw i32 %1, -1
  %4 = icmp slt i32 0, %1
  br i1 %4, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %2
  br label %5

5:                                                ; preds = %.lr.ph, %28
  %.01 = phi i32 [ 0, %.lr.ph ], [ %29, %28 ]
  %6 = zext nneg i32 %.01 to i64
  %7 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %8) #9
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %17 [
    i32 0, label %12
    i32 1, label %13
    i32 2, label %14
    i32 3, label %15
    i32 4, label %16
  ]

12:                                               ; preds = %5
  %putchar5 = call i32 @putchar(i32 32)
  br label %19

13:                                               ; preds = %5
  %putchar4 = call i32 @putchar(i32 43)
  br label %19

14:                                               ; preds = %5
  %putchar3 = call i32 @putchar(i32 45)
  br label %19

15:                                               ; preds = %5
  %putchar2 = call i32 @putchar(i32 42)
  br label %19

16:                                               ; preds = %5
  %putchar1 = call i32 @putchar(i32 58)
  br label %19

17:                                               ; preds = %5
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %11) #9
  br label %19

19:                                               ; preds = %17, %16, %15, %14, %13, %12
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @calculate(ptr noundef nonnull %7)
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %21, i32 noundef %22) #9
  %24 = icmp slt i32 %.01, %3
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #9
  br label %28

27:                                               ; preds = %19
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %28

28:                                               ; preds = %27, %25
  %29 = add nuw nsw i32 %.01, 1
  %30 = icmp slt i32 %29, %1
  br i1 %30, label %5, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge, %2
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %1
  br i1 %4, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %13
  %.01 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %6 = shl nuw i32 1, %.01
  %7 = and i32 %6, %2
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %13

8:                                                ; preds = %5
  %9 = zext nneg i32 %.01 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %11) #9
  br label %13

13:                                               ; preds = %8, %5
  %14 = add nuw nsw i32 %.01, 1
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %5, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %13
  br label %16

16:                                               ; preds = %._crit_edge, %3
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %95

4:                                                ; preds = %2
  %5 = load i32, ptr @nbNodes, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @nbNodes, align 4
  %7 = load i32, ptr @dmax, align 4
  %8 = icmp eq i32 %0, %7
  br i1 %8, label %11, label %.preheader2

.preheader2:                                      ; preds = %4
  %9 = sext i32 %0 to i64
  %10 = add nsw i32 %0, 1
  br label %.preheader1

11:                                               ; preds = %4
  %12 = load ptr, ptr @workList, align 8
  %13 = load i32, ptr @listLength, align 4
  %14 = add nsw i32 %13, %0
  %15 = sext i32 %14 to i64
  %16 = getelementptr [4 x i8], ptr %12, i64 %15
  %17 = getelementptr i8, ptr %16, i64 -4
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr @goal, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = load i32, ptr @best, align 4
  %23 = sub nsw i32 %22, %19
  %24 = call i32 @llvm.abs.i32(i32 %23, i1 true)
  %25 = icmp samesign ult i32 %21, %24
  br i1 %25, label %26, label %95

26:                                               ; preds = %11
  store i32 %18, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %27 = load ptr, ptr @solution, align 8
  %28 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %27, ptr noundef %28, i32 noundef %0)
  %29 = load i32, ptr @best, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %95

32:                                               ; preds = %26
  %33 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %33, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %95

.preheader1:                                      ; preds = %.preheader2, %92
  %.024 = phi i32 [ 1, %.preheader2 ], [ %93, %92 ]
  %34 = icmp eq i32 %.024, 4
  %.old = icmp eq i32 %.024, 2
  %35 = load i32, ptr @listLength, align 4
  %36 = add nsw i32 %35, %0
  %37 = icmp slt i32 0, %36
  br i1 %37, label %.lr.ph3, label %92

.lr.ph3:                                          ; preds = %.preheader1
  br label %38

38:                                               ; preds = %.lr.ph3, %87
  %.042 = phi i32 [ 0, %.lr.ph3 ], [ %88, %87 ]
  %39 = shl nuw i32 1, %.042
  %40 = and i32 %39, %1
  %.not1 = icmp eq i32 %40, 0
  br i1 %.not1, label %.preheader, label %87

.preheader:                                       ; preds = %38
  %41 = zext nneg i32 %.042 to i64
  %42 = or i32 %1, %39
  %43 = icmp samesign ult i32 0, %.042
  br i1 %43, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  br label %44

44:                                               ; preds = %.lr.ph, %84
  %.031 = phi i32 [ 0, %.lr.ph ], [ %85, %84 ]
  %45 = shl nuw i32 1, %.031
  %46 = and i32 %45, %1
  %.not2 = icmp eq i32 %46, 0
  br i1 %.not2, label %47, label %84

47:                                               ; preds = %44
  %48 = load ptr, ptr @workList, align 8
  %49 = getelementptr inbounds nuw [4 x i8], ptr %48, i64 %41
  %50 = load i32, ptr %49, align 4
  %51 = zext nneg i32 %.031 to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr %48, i64 %51
  %53 = load i32, ptr %52, align 4
  switch i32 %.024, label %57 [
    i32 3, label %54
    i32 4, label %54
  ]

54:                                               ; preds = %47, %47
  %55 = icmp eq i32 %50, 1
  %56 = icmp eq i32 %53, 1
  %or.cond = select i1 %55, i1 true, i1 %56
  br i1 %or.cond, label %84, label %57

57:                                               ; preds = %54, %47
  %58 = icmp eq i32 %50, 0
  %59 = icmp eq i32 %53, 0
  %or.cond1 = select i1 %58, i1 true, i1 %59
  br i1 %or.cond1, label %84, label %60

60:                                               ; preds = %57
  br i1 %34, label %61, label %.critedge

61:                                               ; preds = %60
  %62 = srem i32 %50, %53
  %.not3 = icmp eq i32 %62, 0
  br i1 %.not3, label %63, label %84

63:                                               ; preds = %61
  %.old3 = icmp slt i32 %50, %53
  br i1 %.old3, label %65, label %66

.critedge:                                        ; preds = %60
  %64 = icmp slt i32 %50, %53
  %or.cond4 = select i1 %.old, i1 %64, i1 false
  br i1 %or.cond4, label %65, label %66

65:                                               ; preds = %.critedge, %63
  br label %66

66:                                               ; preds = %65, %.critedge, %63
  %.01 = phi i32 [ %53, %65 ], [ %50, %63 ], [ %50, %.critedge ]
  %.0 = phi i32 [ %50, %65 ], [ %53, %63 ], [ %53, %.critedge ]
  %67 = or i32 %42, %45
  %68 = load ptr, ptr @combList, align 8
  %69 = getelementptr inbounds [12 x i8], ptr %68, i64 %9
  store i32 %.01, ptr %69, align 4
  %70 = load ptr, ptr @combList, align 8
  %71 = getelementptr inbounds [12 x i8], ptr %70, i64 %9
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 4
  store i32 %.0, ptr %72, align 4
  %73 = load ptr, ptr @combList, align 8
  %74 = getelementptr inbounds [12 x i8], ptr %73, i64 %9
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store i32 %.024, ptr %75, align 4
  %76 = load ptr, ptr @combList, align 8
  %77 = getelementptr inbounds [12 x i8], ptr %76, i64 %9
  %78 = call i32 @calculate(ptr noundef %77)
  %79 = load ptr, ptr @workList, align 8
  %80 = load i32, ptr @listLength, align 4
  %81 = add nsw i32 %80, %0
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i8], ptr %79, i64 %82
  store i32 %78, ptr %83, align 4
  call void @recSearch(i32 noundef %10, i32 noundef %67)
  br label %84

84:                                               ; preds = %66, %61, %57, %54, %44
  %85 = add nuw nsw i32 %.031, 1
  %86 = icmp samesign ult i32 %85, %.042
  br i1 %86, label %44, label %..loopexit_crit_edge, !llvm.loop !16

..loopexit_crit_edge:                             ; preds = %84
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %87

87:                                               ; preds = %.loopexit, %38
  %88 = add nuw nsw i32 %.042, 1
  %89 = load i32, ptr @listLength, align 4
  %90 = add nsw i32 %89, %0
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %38, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %87
  br label %92

92:                                               ; preds = %._crit_edge, %.preheader1
  %93 = add nuw nsw i32 %.024, 1
  %94 = icmp samesign ult i32 %93, 5
  br i1 %94, label %.preheader1, label %.loopexit3, !llvm.loop !18

.loopexit3:                                       ; preds = %92
  br label %95

95:                                               ; preds = %.loopexit3, %32, %26, %11, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %.pre = load i32, ptr @listLength, align 4
  %1 = load ptr, ptr @workList, align 8
  %2 = load i32, ptr @goal, align 4
  %best.promoted = load i32, ptr @best, align 4
  %3 = icmp slt i32 0, %.pre
  br i1 %3, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %0
  br label %4

4:                                                ; preds = %.lr.ph, %15
  %.02 = phi i32 [ 0, %.lr.ph ], [ %17, %15 ]
  %5 = phi i32 [ %best.promoted, %.lr.ph ], [ %16, %15 ]
  %6 = zext nneg i32 %.02 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sub nsw i32 %8, %2
  %10 = call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = sub nsw i32 %5, %2
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = icmp samesign ult i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 %8, ptr @best, align 4
  br label %15

15:                                               ; preds = %14, %4
  %16 = phi i32 [ %8, %14 ], [ %5, %4 ]
  %17 = add nuw nsw i32 %.02, 1
  %18 = icmp slt i32 %17, %.pre
  br i1 %18, label %4, label %._crit_edge4, !llvm.loop !19

._crit_edge4:                                     ; preds = %15
  %split5 = phi i32 [ %16, %15 ]
  br label %19

19:                                               ; preds = %._crit_edge4, %0
  %.lcssa1 = phi i32 [ %split5, %._crit_edge4 ], [ %best.promoted, %0 ]
  %20 = icmp eq i32 %.lcssa1, %2
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %36

22:                                               ; preds = %19
  store i32 1, ptr @dmax, align 4
  %23 = icmp slt i32 1, %.pre
  br i1 %23, label %.lr.ph7, label %._crit_edge

.lr.ph7:                                          ; preds = %22
  br label %24

.._crit_edge_crit_edge:                           ; preds = %26
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %22
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %30

24:                                               ; preds = %.lr.ph7, %26
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %25 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %25, 0
  br i1 %.not, label %26, label %split

26:                                               ; preds = %24
  %27 = load i32, ptr @dmax, align 4
  %28 = add nsw i32 %27, 1
  %.pre1 = load i32, ptr @listLength, align 4
  store i32 %28, ptr @dmax, align 4
  %29 = icmp slt i32 %28, %.pre1
  br i1 %29, label %24, label %.._crit_edge_crit_edge, !llvm.loop !20

split:                                            ; preds = %24
  %.lcssa = phi i32 [ %25, %24 ]
  br label %30

30:                                               ; preds = %split, %._crit_edge
  %31 = phi i32 [ %.lcssa, %split ], [ %.pre2, %._crit_edge ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load ptr, ptr @solution, align 8
  %35 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %34, i32 noundef %35)
  br label %36

36:                                               ; preds = %33, %30, %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  store i32 13, ptr %1, align 16
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1412, ptr %4, align 4
  br label %5

5:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %14, %7 ]
  %6 = call i32 @getchar() #9
  switch i32 %6, label %7 [
    i32 -1, label %15
    i32 10, label %15
  ]

7:                                                ; preds = %5
  %8 = call ptr @__acrt_iob_func(i32 noundef 0) #9
  %9 = call i32 @ungetc(i32 noundef %6, ptr noundef %8) #9
  %10 = call ptr @__acrt_iob_func(i32 noundef 0) #9
  %11 = zext nneg i32 %.0 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %11
  %13 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #9
  %14 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !21

15:                                               ; preds = %5, %5
  %.0.lcssa = phi i32 [ %.0, %5 ], [ %.0, %5 ]
  %16 = icmp eq i32 %.0.lcssa, 0
  %17 = add nsw i32 %.0.lcssa, -1
  %18 = select i1 %16, i32 3, i32 %17
  store i32 %18, ptr @listLength, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %1, i64 %19
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr @goal, align 4
  %22 = shl nsw i32 %18, 1
  %23 = call ptr @newWorkList(i32 noundef %22)
  store ptr %23, ptr @workList, align 8
  %24 = load i32, ptr @listLength, align 4
  %25 = call ptr @newCombList(i32 noundef %24)
  store ptr %25, ptr @combList, align 8
  %26 = load i32, ptr @listLength, align 4
  %27 = call ptr @newCombList(i32 noundef %26)
  store ptr %27, ptr @solution, align 8
  %28 = load ptr, ptr @workList, align 8
  %29 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %28, ptr noundef nonnull %1, i32 noundef %29)
  %30 = load ptr, ptr @combList, align 8
  %31 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %30, i32 noundef %31)
  %32 = load ptr, ptr @solution, align 8
  %33 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %32, i32 noundef %33)
  %34 = load i32, ptr @listLength, align 4
  ret i32 %34
}

declare dso_local i32 @getchar() #3

declare dso_local i32 @ungetc(i32 noundef, ptr noundef) #3

declare dso_local i32 @fscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @search() #0 {
  store i32 0, ptr @stopSearch, align 4
  store i32 0, ptr @nbNodes, align 4
  call void @doSearch()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call i32 @getInput()
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @search()
  br label %5

5:                                                ; preds = %4, %2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind }
attributes #10 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
