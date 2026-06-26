; ModuleID = 'results\paper_full\McGill_exptree\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.Comb = type { i32, i32, i32 }

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

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @newWorkList(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 4) #7
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  ret ptr %3

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str) #8
  call void @exit(i32 noundef 1) #9
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
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 12) #7
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  ret ptr %3

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1) #8
  call void @exit(i32 noundef 1) #9
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
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i32, ptr %0, i64 %8
  store i32 %10, ptr %11, align 4
  %12 = add nuw nsw i32 %.01, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %1, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i32, ptr %0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = add nuw nsw i32 %.01, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %1, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds i32, ptr %0, i64 %18
  store i32 %20, ptr %21, align 4
  %22 = add nuw nsw i32 %.01, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %1, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds i32, ptr %0, i64 %23
  store i32 %25, ptr %26, align 4
  %27 = add nsw i32 %.01, 4
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
  %29 = sext i32 %.01.epil to i64
  %30 = getelementptr inbounds i32, ptr %1, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds i32, ptr %0, i64 %29
  store i32 %31, ptr %32, align 4
  %33 = add nsw i32 %.01.epil, 1
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
  br i1 %3, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  %4 = add i32 %1, -1
  %xtraiter = and i32 %1, 3
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %1, %xtraiter
  br label %6

6:                                                ; preds = %6, %.lr.ph.new
  %.01 = phi i32 [ 0, %.lr.ph.new ], [ %22, %6 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %6 ]
  %7 = sext i32 %.01 to i64
  %8 = getelementptr inbounds %struct.Comb, ptr %0, i64 %7
  %9 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i32 %.01, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.Comb, ptr %0, i64 %11
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %12, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = add nuw nsw i32 %.01, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.Comb, ptr %0, i64 %15
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %16, i32 0, i32 2
  store i32 0, ptr %17, align 4
  %18 = add nuw nsw i32 %.01, 3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Comb, ptr %0, i64 %19
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %20, i32 0, i32 2
  store i32 0, ptr %21, align 4
  %22 = add nsw i32 %.01, 4
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp ne i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %6, label %._crit_edge.unr-lcssa, !llvm.loop !11

._crit_edge.unr-lcssa:                            ; preds = %6
  %.01.unr = phi i32 [ %22, %6 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.01.epil.init = phi i32 [ 0, %.lr.ph ], [ %.01.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %23

23:                                               ; preds = %23, %.epil.preheader
  %.01.epil = phi i32 [ %.01.epil.init, %.epil.preheader ], [ %27, %23 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %23 ]
  %24 = sext i32 %.01.epil to i64
  %25 = getelementptr inbounds %struct.Comb, ptr %0, i64 %24
  %26 = getelementptr inbounds nuw %struct.Comb, ptr %25, i32 0, i32 2
  store i32 0, ptr %26, align 4
  %27 = add nsw i32 %.01.epil, 1
  %28 = icmp slt i32 %27, %1
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %23, label %._crit_edge.epilog-lcssa, !llvm.loop !12

._crit_edge.epilog-lcssa:                         ; preds = %23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %29

29:                                               ; preds = %._crit_edge, %2
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
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds %struct.Comb, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.Comb, ptr %0, i64 %8
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %9, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = add nuw nsw i32 %.01, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Comb, ptr %1, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.Comb, ptr %0, i64 %19
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds nuw %struct.Comb, ptr %20, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %22, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds nuw %struct.Comb, ptr %20, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds nuw %struct.Comb, ptr %22, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = add nsw i32 %.01, 2
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
  %30 = sext i32 %.01.epil.init to i64
  %31 = getelementptr inbounds %struct.Comb, ptr %1, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.Comb, ptr %0, i64 %30
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds nuw %struct.Comb, ptr %31, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds nuw %struct.Comb, ptr %33, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds nuw %struct.Comb, ptr %31, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds nuw %struct.Comb, ptr %33, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %40

40:                                               ; preds = %._crit_edge, %3
  %41 = sext i32 %2 to i64
  %42 = getelementptr inbounds %struct.Comb, ptr %0, i64 %41
  %43 = getelementptr inbounds nuw %struct.Comb, ptr %42, i32 0, i32 2
  store i32 0, ptr %43, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %24 [
    i32 1, label %4
    i32 2, label %9
    i32 3, label %14
    i32 4, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %5, %7
  br label %24

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %10, %12
  br label %24

14:                                               ; preds = %1
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = mul nsw i32 %15, %17
  br label %24

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sdiv i32 %20, %22
  br label %24

24:                                               ; preds = %19, %14, %9, %4, %1
  %.0 = phi i32 [ %23, %19 ], [ %8, %4 ], [ %13, %9 ], [ %18, %14 ], [ 0, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 0, %1
  br i1 %3, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %34
  %.01 = phi i32 [ 0, %.lr.ph ], [ %35, %34 ]
  %5 = sext i32 %.01 to i64
  %6 = getelementptr inbounds %struct.Comb, ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %7)
  %9 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %21 [
    i32 0, label %11
    i32 1, label %13
    i32 2, label %15
    i32 3, label %17
    i32 4, label %19
  ]

11:                                               ; preds = %4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %23

13:                                               ; preds = %4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %23

15:                                               ; preds = %4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %23

17:                                               ; preds = %4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %23

19:                                               ; preds = %4
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %23

21:                                               ; preds = %4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %10)
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13, %11
  %24 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = call i32 @calculate(ptr noundef %6)
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %25, i32 noundef %26)
  %28 = sub nsw i32 %1, 1
  %29 = icmp slt i32 %.01, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %34

32:                                               ; preds = %23
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %34

34:                                               ; preds = %32, %30
  %35 = add nsw i32 %.01, 1
  %36 = icmp slt i32 %35, %1
  br i1 %36, label %4, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %34
  br label %37

37:                                               ; preds = %._crit_edge, %2
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %1
  br i1 %4, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %14
  %.01 = phi i32 [ 0, %.lr.ph ], [ %15, %14 ]
  %6 = shl i32 1, %.01
  %7 = and i32 %6, %2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = sext i32 %.01 to i64
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %12)
  br label %14

14:                                               ; preds = %9, %5
  %15 = add nsw i32 %.01, 1
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %5, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %14
  br label %17

17:                                               ; preds = %._crit_edge, %3
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %100, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @nbNodes, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @nbNodes, align 4
  %8 = load i32, ptr @dmax, align 4
  %9 = icmp eq i32 %0, %8
  br i1 %9, label %10, label %.preheader2

.preheader2:                                      ; preds = %5
  br label %.preheader1

10:                                               ; preds = %5
  %11 = load ptr, ptr @workList, align 8
  %12 = load i32, ptr @listLength, align 4
  %13 = add nsw i32 %12, %0
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %11, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr @goal, align 4
  %19 = sub nsw i32 %17, %18
  %20 = call i32 @llvm.abs.i32(i32 %19, i1 true)
  %21 = load i32, ptr @best, align 4
  %22 = sub nsw i32 %21, %18
  %23 = call i32 @llvm.abs.i32(i32 %22, i1 true)
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %100

25:                                               ; preds = %10
  store i32 %17, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %26 = load ptr, ptr @solution, align 8
  %27 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %26, ptr noundef %27, i32 noundef %0)
  %28 = load i32, ptr @best, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %100

31:                                               ; preds = %25
  %32 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %32, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %100

.preheader1:                                      ; preds = %.preheader2, %97
  %.027 = phi i32 [ 1, %.preheader2 ], [ %98, %97 ]
  %33 = load i32, ptr @listLength, align 4
  %34 = add nsw i32 %33, %0
  %35 = icmp slt i32 0, %34
  br i1 %35, label %.lr.ph6, label %97

.lr.ph6:                                          ; preds = %.preheader1
  br label %36

36:                                               ; preds = %.lr.ph6, %92
  %.045 = phi i32 [ 0, %.lr.ph6 ], [ %93, %92 ]
  %37 = shl i32 1, %.045
  %38 = and i32 %37, %1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %92, label %.preheader

.preheader:                                       ; preds = %36
  %40 = icmp slt i32 0, %.045
  br i1 %40, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  br label %41

41:                                               ; preds = %.lr.ph, %89
  %.034 = phi i32 [ 0, %.lr.ph ], [ %90, %89 ]
  %42 = shl i32 1, %.034
  %43 = and i32 %42, %1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %89, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr @workList, align 8
  %47 = sext i32 %.045 to i64
  %48 = getelementptr inbounds i32, ptr %46, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = sext i32 %.034 to i64
  %51 = getelementptr inbounds i32, ptr %46, i64 %50
  %52 = load i32, ptr %51, align 4
  switch i32 %.027, label %56 [
    i32 3, label %53
    i32 4, label %53
  ]

53:                                               ; preds = %45, %45
  %54 = icmp eq i32 %49, 1
  %55 = icmp eq i32 %52, 1
  %or.cond = select i1 %54, i1 true, i1 %55
  br i1 %or.cond, label %89, label %56

56:                                               ; preds = %53, %45
  %57 = icmp eq i32 %49, 0
  %58 = icmp eq i32 %52, 0
  %or.cond1 = select i1 %57, i1 true, i1 %58
  br i1 %or.cond1, label %89, label %59

59:                                               ; preds = %56
  %60 = icmp eq i32 %.027, 4
  br i1 %60, label %61, label %.critedge

61:                                               ; preds = %59
  %62 = srem i32 %49, %52
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %89, label %64

64:                                               ; preds = %61
  %65 = icmp eq i32 %.027, 2
  %.old3 = icmp slt i32 %49, %52
  br i1 %.old3, label %67, label %68

.critedge:                                        ; preds = %59
  %.old = icmp eq i32 %.027, 2
  %66 = icmp slt i32 %49, %52
  %or.cond4 = select i1 %.old, i1 %66, i1 false
  br i1 %or.cond4, label %67, label %68

67:                                               ; preds = %.critedge, %64
  br label %68

68:                                               ; preds = %67, %.critedge, %64
  %.01 = phi i32 [ %52, %67 ], [ %49, %64 ], [ %49, %.critedge ]
  %.0 = phi i32 [ %49, %67 ], [ %52, %64 ], [ %52, %.critedge ]
  %69 = or i32 %1, %37
  %70 = or i32 %69, %42
  %71 = load ptr, ptr @combList, align 8
  %72 = sext i32 %0 to i64
  %73 = getelementptr inbounds %struct.Comb, ptr %71, i64 %72
  store i32 %.01, ptr %73, align 4
  %74 = load ptr, ptr @combList, align 8
  %75 = getelementptr inbounds %struct.Comb, ptr %74, i64 %72
  %76 = getelementptr inbounds nuw %struct.Comb, ptr %75, i32 0, i32 1
  store i32 %.0, ptr %76, align 4
  %77 = load ptr, ptr @combList, align 8
  %78 = getelementptr inbounds %struct.Comb, ptr %77, i64 %72
  %79 = getelementptr inbounds nuw %struct.Comb, ptr %78, i32 0, i32 2
  store i32 %.027, ptr %79, align 4
  %80 = load ptr, ptr @combList, align 8
  %81 = getelementptr inbounds %struct.Comb, ptr %80, i64 %72
  %82 = call i32 @calculate(ptr noundef %81)
  %83 = load ptr, ptr @workList, align 8
  %84 = load i32, ptr @listLength, align 4
  %85 = add nsw i32 %84, %0
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %83, i64 %86
  store i32 %82, ptr %87, align 4
  %88 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %88, i32 noundef %70)
  br label %89

89:                                               ; preds = %68, %61, %56, %53, %41
  %90 = add nsw i32 %.034, 1
  %91 = icmp slt i32 %90, %.045
  br i1 %91, label %41, label %..loopexit_crit_edge, !llvm.loop !16

..loopexit_crit_edge:                             ; preds = %89
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %92

92:                                               ; preds = %.loopexit, %36
  %93 = add nsw i32 %.045, 1
  %94 = load i32, ptr @listLength, align 4
  %95 = add nsw i32 %94, %0
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %36, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %92
  br label %97

97:                                               ; preds = %._crit_edge, %.preheader1
  %98 = add nsw i32 %.027, 1
  %99 = icmp sle i32 %98, 4
  br i1 %99, label %.preheader1, label %.loopexit3, !llvm.loop !18

.loopexit3:                                       ; preds = %97
  br label %100

100:                                              ; preds = %.loopexit3, %31, %25, %10, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = icmp slt i32 0, %1
  br i1 %2, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %16
  %.01 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %4 = load ptr, ptr @workList, align 8
  %5 = sext i32 %.01 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @goal, align 4
  %9 = sub nsw i32 %7, %8
  %10 = call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = load i32, ptr @best, align 4
  %12 = sub nsw i32 %11, %8
  %13 = call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 %7, ptr @best, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = add nsw i32 %.01, 1
  %18 = load i32, ptr @listLength, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %3, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %16
  br label %20

20:                                               ; preds = %._crit_edge, %0
  %21 = load i32, ptr @best, align 4
  %22 = load i32, ptr @goal, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %45

26:                                               ; preds = %20
  store i32 1, ptr @dmax, align 4
  %27 = load i32, ptr @dmax, align 4
  %28 = load i32, ptr @listLength, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %.lr.ph3, label %39

.lr.ph3:                                          ; preds = %26
  br label %30

30:                                               ; preds = %.lr.ph3, %33
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %31 = load i32, ptr @stopSearch, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %._crit_edge4, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr @dmax, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @dmax, align 4
  %36 = load i32, ptr @dmax, align 4
  %37 = load i32, ptr @listLength, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %30, label %._crit_edge5, !llvm.loop !20

._crit_edge4:                                     ; preds = %30
  br label %39

._crit_edge5:                                     ; preds = %33
  br label %39

39:                                               ; preds = %._crit_edge5, %._crit_edge4, %26
  %40 = load i32, ptr @stopSearch, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load ptr, ptr @solution, align 8
  %44 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %43, i32 noundef %44)
  br label %45

45:                                               ; preds = %42, %39, %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  store i32 13, ptr %1, align 16
  %2 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 1
  store i32 32, ptr %2, align 4
  %3 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 2
  store i32 14, ptr %3, align 8
  %4 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 3
  store i32 1412, ptr %4, align 4
  br label %5

5:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %14, %7 ]
  %6 = call i32 @getchar()
  switch i32 %6, label %7 [
    i32 -1, label %15
    i32 10, label %15
  ]

7:                                                ; preds = %5
  %8 = call ptr @__acrt_iob_func(i32 noundef 0)
  %9 = call i32 @ungetc(i32 noundef %6, ptr noundef %8)
  %10 = call ptr @__acrt_iob_func(i32 noundef 0)
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %11
  %13 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %10, ptr noundef @.str.2, ptr noundef %12)
  %14 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !21

15:                                               ; preds = %5, %5
  %.0.lcssa = phi i32 [ %.0, %5 ], [ %.0, %5 ]
  %16 = icmp eq i32 %.0.lcssa, 0
  %spec.select1 = select i1 %16, i32 4, i32 %.0.lcssa
  %17 = sub nsw i32 %spec.select1, 1
  store i32 %17, ptr @listLength, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr @goal, align 4
  %21 = load i32, ptr @listLength, align 4
  %22 = mul nsw i32 2, %21
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
  call void @initWorkList(ptr noundef %28, ptr noundef %1, i32 noundef %29)
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
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @search()
  br label %6

6:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { allocsize(0,1) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
