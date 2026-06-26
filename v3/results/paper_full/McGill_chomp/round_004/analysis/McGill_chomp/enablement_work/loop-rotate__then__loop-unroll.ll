; ModuleID = 'results\paper_full\McGill_chomp\round_003\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/chomp.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@ncol = dso_local global i32 0, align 4
@nrow = dso_local global i32 0, align 4
@game_tree = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"For state :\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"  value = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"We get, in order :\0A\00", align 1
@wanted = dso_local global ptr null, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"Mode : 1 -> multiple first moves\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"       2 -> report game\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"       3 -> good positions\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c" Selection : \00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Enter number of Columns       : \00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Enter Initial number of Rows : \00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Enter Maximum number of Rows : \00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"The winning initial move for %d x %d CHOMP is (%d,%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Enter number of Columns : \00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Enter number of Rows    : \00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"player %d plays at (%d,%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"player %d loses\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"ATTENTION : representation is as in a _data structure\0A\00", align 1
@str = private unnamed_addr constant [2 x i8] c")\00", align 1
@str.1 = private unnamed_addr constant [12 x i8] c"For state :\00", align 1
@str.2 = private unnamed_addr constant [19 x i8] c"We get, in order :\00", align 1
@str.3 = private unnamed_addr constant [33 x i8] c"Mode : 1 -> multiple first moves\00", align 1
@str.4 = private unnamed_addr constant [24 x i8] c"       2 -> report game\00", align 1
@str.5 = private unnamed_addr constant [27 x i8] c"       3 -> good positions\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @copy_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @ncol, align 4
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = call ptr @malloc(i64 noundef %4) #5
  %6 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %36, label %.lr.ph

.lr.ph:                                           ; preds = %1
  %7 = add i32 %6, -1
  %xtraiter = and i32 %6, 3
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  br label %8

8:                                                ; preds = %8, %.prol.preheader
  %.02.prol = phi i32 [ %6, %.prol.preheader ], [ %9, %8 ]
  %prol.iter = phi i32 [ 0, %.prol.preheader ], [ %prol.iter.next, %8 ]
  %9 = add nsw i32 %.02.prol, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [4 x i8], ptr %5, i64 %10
  store i32 %12, ptr %13, align 4
  %.not.prol = icmp eq i32 %9, 0
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp = icmp ne i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp, label %8, label %.prol.loopexit.unr-lcssa, !llvm.loop !7

.prol.loopexit.unr-lcssa:                         ; preds = %8
  %.02.unr.ph = phi i32 [ %9, %8 ]
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.02.unr = phi i32 [ %6, %.lr.ph ], [ %.02.unr.ph, %.prol.loopexit.unr-lcssa ]
  %14 = icmp ult i32 %7, 3
  br i1 %14, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit
  br label %15

15:                                               ; preds = %15, %.lr.ph.new
  %.02 = phi i32 [ %.02.unr, %.lr.ph.new ], [ %31, %15 ]
  %16 = add nsw i32 %.02, -1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds [4 x i8], ptr %5, i64 %17
  store i32 %19, ptr %20, align 4
  %21 = add nsw i32 %.02, -2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds [4 x i8], ptr %5, i64 %22
  store i32 %24, ptr %25, align 4
  %26 = add nsw i32 %.02, -3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds [4 x i8], ptr %5, i64 %27
  store i32 %29, ptr %30, align 4
  %31 = add nsw i32 %.02, -4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr %0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds [4 x i8], ptr %5, i64 %32
  store i32 %34, ptr %35, align 4
  %.not.3 = icmp eq i32 %31, 0
  br i1 %.not.3, label %._crit_edge.unr-lcssa, label %15, !llvm.loop !9

._crit_edge.unr-lcssa:                            ; preds = %15
  br label %._crit_edge

._crit_edge:                                      ; preds = %.prol.loopexit, %._crit_edge.unr-lcssa
  br label %36

36:                                               ; preds = %._crit_edge, %1
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @ncol, align 4
  %3 = icmp ne i32 0, %2
  br i1 %3, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %14
  %.011 = phi i32 [ 0, %.lr.ph ], [ %.12, %14 ]
  %5 = sext i32 %.011 to i64
  %6 = getelementptr inbounds [4 x i8], ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @nrow, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  store i32 0, ptr %6, align 4
  %11 = add nsw i32 %.011, 1
  br label %14

12:                                               ; preds = %4
  %13 = add nsw i32 %7, 1
  store i32 %13, ptr %6, align 4
  br label %14

14:                                               ; preds = %12, %10
  %.12 = phi i32 [ %11, %10 ], [ %.011, %12 ]
  %.1 = phi i32 [ 0, %10 ], [ 1, %12 ]
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 %.12, %15
  %.not = icmp eq i32 %.1, 0
  %or.cond = select i1 %16, i1 %.not, i1 false
  br i1 %or.cond, label %4, label %..critedge_crit_edge, !llvm.loop !11

..critedge_crit_edge:                             ; preds = %14
  %split = phi i32 [ %.1, %14 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %1
  %.0.lcssa = phi i32 [ %split, %..critedge_crit_edge ], [ 0, %1 ]
  ret i32 %.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = add i32 %3, -1
  %.not1 = icmp eq i32 %3, 0
  br i1 %.not1, label %35, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %xtraiter = and i32 %3, 1
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  br label %5

5:                                                ; preds = %.prol.preheader
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [4 x i8], ptr %1, i64 %6
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %12, label %.prol.loopexit.unr-lcssa

12:                                               ; preds = %5
  store i32 %10, ptr %7, align 4
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %12, %5
  %13 = add nsw i32 %4, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.unr = phi i32 [ %4, %.lr.ph ], [ %13, %.prol.loopexit.unr-lcssa ]
  %14 = icmp ult i32 %4, 1
  br i1 %14, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit
  br label %15

15:                                               ; preds = %33, %.lr.ph.new
  %16 = phi i32 [ %.unr, %.lr.ph.new ], [ %34, %33 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds [4 x i8], ptr %1, i64 %17
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 %21, ptr %18, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = add nsw i32 %16, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds [4 x i8], ptr %1, i64 %26
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 %30, ptr %27, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = add nsw i32 %16, -2
  %.not.1 = icmp eq i32 %25, 0
  br i1 %.not.1, label %._crit_edge.unr-lcssa, label %15, !llvm.loop !12

._crit_edge.unr-lcssa:                            ; preds = %33
  br label %._crit_edge

._crit_edge:                                      ; preds = %.prol.loopexit, %._crit_edge.unr-lcssa
  br label %35

35:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %5, %2
  %.0 = phi i32 [ %3, %2 ], [ %6, %5 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %.critedge, label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %.0, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [4 x i8], ptr %1, i64 %7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %4, label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %5, %4
  %.0.lcssa = phi i32 [ %.0, %5 ], [ %.0, %4 ]
  %13 = icmp slt i32 %.0.lcssa, 1
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %.pre = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 0, %.pre
  br i1 %.not1, label %10, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %4

3:                                                ; preds = %4
  %.01 = phi i32 [ %7, %4 ]
  %.0 = phi i32 [ %9, %4 ]
  %.not = icmp eq i32 %.0, %.pre
  br i1 %.not, label %._crit_edge5, label %4, !llvm.loop !14

4:                                                ; preds = %.lr.ph, %3
  %.not4 = phi i1 [ %.not1, %.lr.ph ], [ %.not, %3 ]
  %.03 = phi i32 [ 0, %.lr.ph ], [ %.0, %3 ]
  %.012 = phi i32 [ %2, %.lr.ph ], [ %.01, %3 ]
  %5 = zext nneg i32 %.03 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, %.012
  %9 = add nuw nsw i32 %.03, 1
  br i1 %8, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %4
  %split = phi i1 [ %.not4, %4 ]
  br label %10

._crit_edge5:                                     ; preds = %3
  %split6 = phi i1 [ %.not, %3 ]
  br label %10

10:                                               ; preds = %._crit_edge5, %._crit_edge, %1
  %.not.lcssa = phi i1 [ %split, %._crit_edge ], [ %split6, %._crit_edge5 ], [ %.not1, %1 ]
  %11 = zext i1 %.not.lcssa to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(ptr noundef %0) #0 {
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  call void @dump_list(ptr noundef %4)
  %5 = load ptr, ptr %0, align 8
  call void @free(ptr noundef %5) #6
  call void @free(ptr noundef nonnull %0) #6
  br label %6

6:                                                ; preds = %2, %1
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_play(ptr noundef %0) #0 {
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %9, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8
  call void @dump_play(ptr noundef %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8
  call void @dump_list(ptr noundef %6)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %8) #6
  call void @free(ptr noundef nonnull %0) #6
  br label %9

9:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_value(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %.0.in = phi ptr [ @game_tree, %1 ], [ %6, %2 ]
  %.0 = load ptr, ptr %.0.in, align 8
  %3 = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %.not = icmp eq i32 %5, 0
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br i1 %.not, label %2, label %7, !llvm.loop !15

7:                                                ; preds = %2
  %.0.lcssa = phi ptr [ %.0, %2 ]
  %8 = load i32, ptr %.0.lcssa, align 8
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %.pre2 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 0, %.pre2
  br i1 %.not2, label %13, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %2

2:                                                ; preds = %.lr.ph, %11
  %.03 = phi i32 [ 0, %.lr.ph ], [ %3, %11 ]
  %3 = add nuw nsw i32 %.03, 1
  %4 = zext nneg i32 %.03 to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6) #6
  %8 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %3, %8
  br i1 %.not1, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @putchar(i32 noundef 44) #6
  %.pre = load i32, ptr @ncol, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %.pre, %9 ], [ %3, %2 ]
  %.not = icmp eq i32 %3, %12
  br i1 %.not, label %._crit_edge, label %2, !llvm.loop !16

._crit_edge:                                      ; preds = %11
  br label %13

13:                                               ; preds = %._crit_edge, %1
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

declare dso_local i32 @putchar(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_move(ptr noundef %0) #0 {
  %2 = call i32 @putchar(i32 noundef 40) #6
  call void @show_data(ptr noundef %0)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_list(ptr noundef %0) #0 {
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %6, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %2

2:                                                ; preds = %.lr.ph, %2
  %.02 = phi ptr [ %0, %.lr.ph ], [ %5, %2 ]
  %3 = load ptr, ptr %.02, align 8
  call void @show_move(ptr noundef %3)
  %4 = getelementptr inbounds nuw i8, ptr %.02, i64 8
  %5 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %._crit_edge, label %2, !llvm.loop !17

._crit_edge:                                      ; preds = %2
  br label %6

6:                                                ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %11, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %2

2:                                                ; preds = %.lr.ph, %2
  %.02 = phi ptr [ %0, %.lr.ph ], [ %10, %2 ]
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %3 = getelementptr inbounds nuw i8, ptr %.02, i64 8
  %4 = load ptr, ptr %3, align 8
  call void @show_data(ptr noundef %4)
  %5 = load i32, ptr %.02, align 8
  %6 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %5) #6
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %7 = getelementptr inbounds nuw i8, ptr %.02, i64 16
  %8 = load ptr, ptr %7, align 8
  call void @show_list(ptr noundef %8)
  %9 = getelementptr inbounds nuw i8, ptr %.02, i64 24
  %10 = load ptr, ptr %9, align 8
  %.not = icmp eq ptr %10, null
  br i1 %.not, label %._crit_edge, label %2, !llvm.loop !18

._crit_edge:                                      ; preds = %2
  br label %11

11:                                               ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %.011 = load ptr, ptr @wanted, align 8
  %cond2 = icmp eq ptr %.011, null
  br i1 %cond2, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %3

2:                                                ; preds = %3
  %.01.in = phi ptr [ %6, %3 ]
  %.01 = load ptr, ptr %.01.in, align 8
  %cond = icmp eq ptr %.01, null
  br i1 %cond, label %..loopexit_crit_edge, label %3, !llvm.loop !19

3:                                                ; preds = %.lr.ph, %2
  %.013 = phi ptr [ %.011, %.lr.ph ], [ %.01, %2 ]
  %4 = load ptr, ptr %.013, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %.not = icmp eq i32 %5, 0
  %6 = getelementptr inbounds nuw i8, ptr %.013, i64 8
  br i1 %.not, label %2, label %7

7:                                                ; preds = %3
  br label %8

..loopexit_crit_edge:                             ; preds = %2
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  br label %8

8:                                                ; preds = %.loopexit, %7
  %.0 = phi i32 [ 1, %7 ], [ 0, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = call ptr @malloc(i64 noundef %5) #5
  %.not2 = icmp eq i32 0, %1
  br i1 %.not2, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %7 = add i32 %1, -1
  %xtraiter = and i32 %1, 3
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %1, %xtraiter
  br label %15

..preheader_crit_edge.unr-lcssa:                  ; preds = %15
  %.03.unr = phi i32 [ %31, %15 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %..preheader_crit_edge

.epil.preheader:                                  ; preds = %..preheader_crit_edge.unr-lcssa, %.lr.ph
  %.03.epil.init = phi i32 [ 0, %.lr.ph ], [ %.03.unr, %..preheader_crit_edge.unr-lcssa ]
  %lcmp.mod7 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod7)
  br label %9

9:                                                ; preds = %9, %.epil.preheader
  %.03.epil = phi i32 [ %.03.epil.init, %.epil.preheader ], [ %13, %9 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %9 ]
  %10 = load i32, ptr @nrow, align 4
  %11 = zext nneg i32 %.03.epil to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %11
  store i32 %10, ptr %12, align 4
  %13 = add nuw nsw i32 %.03.epil, 1
  %.not.epil = icmp eq i32 %13, %1
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %9, label %..preheader_crit_edge.epilog-lcssa, !llvm.loop !20

..preheader_crit_edge.epilog-lcssa:               ; preds = %9
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.unr-lcssa, %..preheader_crit_edge.epilog-lcssa
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %2
  %14 = load i32, ptr @ncol, align 4
  %.not14 = icmp eq i32 %1, %14
  br i1 %.not14, label %37, label %.lr.ph6

.lr.ph6:                                          ; preds = %.preheader
  br label %32

15:                                               ; preds = %15, %.lr.ph.new
  %.03 = phi i32 [ 0, %.lr.ph.new ], [ %31, %15 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %15 ]
  %16 = load i32, ptr @nrow, align 4
  %17 = zext nneg i32 %.03 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %17
  store i32 %16, ptr %18, align 4
  %19 = add nuw nsw i32 %.03, 1
  %20 = load i32, ptr @nrow, align 4
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %21
  store i32 %20, ptr %22, align 4
  %23 = add nuw nsw i32 %.03, 2
  %24 = load i32, ptr @nrow, align 4
  %25 = zext nneg i32 %23 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %25
  store i32 %24, ptr %26, align 4
  %27 = add nuw nsw i32 %.03, 3
  %28 = load i32, ptr @nrow, align 4
  %29 = zext nneg i32 %27 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %29
  store i32 %28, ptr %30, align 4
  %31 = add nuw nsw i32 %.03, 4
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.unr-lcssa, label %15, !llvm.loop !21

32:                                               ; preds = %.lr.ph6, %32
  %.15 = phi i32 [ %1, %.lr.ph6 ], [ %35, %32 ]
  %33 = zext nneg i32 %.15 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %33
  store i32 %0, ptr %34, align 4
  %35 = add nuw nsw i32 %.15, 1
  %36 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %35, %36
  br i1 %.not1, label %._crit_edge, label %32, !llvm.loop !22

._crit_edge:                                      ; preds = %32
  br label %37

37:                                               ; preds = %._crit_edge, %.preheader
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 1, ptr %1, align 4
  %4 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #5
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %5, align 8
  %6 = load i32, ptr @nrow, align 4
  %.not6 = icmp eq i32 0, %6
  br i1 %.not6, label %47, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %44
  %.08 = phi ptr [ %4, %.preheader.lr.ph ], [ %.1.lcssa, %44 ]
  %.047 = phi i32 [ 0, %.preheader.lr.ph ], [ %45, %44 ]
  %7 = load i32, ptr @ncol, align 4
  %.not21 = icmp eq i32 0, %7
  br i1 %.not21, label %44, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %8

8:                                                ; preds = %.lr.ph, %41
  %.14 = phi ptr [ %.08, %.lr.ph ], [ %.2, %41 ]
  %.013 = phi i32 [ 0, %.lr.ph ], [ %42, %41 ]
  %.152 = phi i32 [ %.047, %.lr.ph ], [ %.3, %41 ]
  %9 = call ptr @make_data(i32 noundef %.152, i32 noundef %.013)
  call void @melt_data(ptr noundef %9, ptr noundef %0)
  %10 = call i32 @equal_data(ptr noundef %9, ptr noundef %0)
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %11, label %35

11:                                               ; preds = %8
  %12 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #5
  %13 = getelementptr inbounds nuw i8, ptr %.14, i64 8
  store ptr %12, ptr %13, align 8
  %14 = call ptr @copy_data(ptr noundef %9)
  %15 = load ptr, ptr %13, align 8
  store ptr %14, ptr %15, align 8
  %16 = load ptr, ptr %13, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %17, align 8
  %18 = load ptr, ptr %13, align 8
  %19 = load i32, ptr %1, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = call i32 @get_value(ptr noundef %9)
  store i32 %22, ptr %1, align 4
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i32 [ %22, %21 ], [ %19, %11 ]
  %25 = load i32, ptr %2, align 4
  %.not4 = icmp eq i32 %25, 0
  br i1 %.not4, label %26, label %41

26:                                               ; preds = %23
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = load i32, ptr @ncol, align 4
  %30 = add nsw i32 %29, -1
  %31 = load i32, ptr @nrow, align 4
  %32 = add nsw i32 %31, -1
  %33 = call i32 @in_wanted(ptr noundef %9)
  %.not5 = icmp eq i32 %33, 0
  br i1 %.not5, label %41, label %34

34:                                               ; preds = %28
  store i32 2, ptr %2, align 4
  br label %41

35:                                               ; preds = %8
  %36 = icmp eq i32 %.013, 0
  %37 = load i32, ptr @nrow, align 4
  %38 = add nsw i32 %37, -1
  %.4 = select i1 %36, i32 %38, i32 %.152
  %39 = load i32, ptr @ncol, align 4
  %40 = add nsw i32 %39, -1
  br label %41

41:                                               ; preds = %35, %34, %28, %26, %23
  %.3 = phi i32 [ %.4, %35 ], [ %.152, %23 ], [ %.152, %26 ], [ %32, %34 ], [ %32, %28 ]
  %.23 = phi i32 [ %40, %35 ], [ %.013, %23 ], [ %.013, %26 ], [ %30, %34 ], [ %30, %28 ]
  %.2 = phi ptr [ %.14, %35 ], [ %18, %23 ], [ %18, %26 ], [ %18, %34 ], [ %18, %28 ]
  call void @free(ptr noundef %9) #6
  %42 = add nsw i32 %.23, 1
  %43 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %42, %43
  br i1 %.not2, label %._crit_edge, label %8, !llvm.loop !23

._crit_edge:                                      ; preds = %41
  %split = phi i32 [ %.3, %41 ]
  %split5 = phi ptr [ %.2, %41 ]
  br label %44

44:                                               ; preds = %._crit_edge, %.preheader
  %.15.lcssa = phi i32 [ %split, %._crit_edge ], [ %.047, %.preheader ]
  %.1.lcssa = phi ptr [ %split5, %._crit_edge ], [ %.08, %.preheader ]
  %45 = add nsw i32 %.15.lcssa, 1
  %46 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %45, %46
  br i1 %.not, label %._crit_edge9, label %.preheader, !llvm.loop !24

._crit_edge9:                                     ; preds = %44
  br label %47

47:                                               ; preds = %._crit_edge9, %3
  %48 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %4) #6
  %.not1 = icmp eq ptr %48, null
  br i1 %.not1, label %52, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %1, align 4
  %51 = sub nsw i32 1, %50
  store i32 %51, ptr %1, align 4
  br label %52

52:                                               ; preds = %49, %47
  ret ptr %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_play(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #5
  store ptr null, ptr @game_tree, align 8
  %5 = call ptr @make_data(i32 noundef 0, i32 noundef 0)
  %6 = load i32, ptr %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = call i32 @next_data(ptr noundef %5)
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %37, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %9

9:                                                ; preds = %.lr.ph, %35
  %.04 = phi ptr [ %5, %.lr.ph ], [ %.1, %35 ]
  %.013 = phi ptr [ %4, %.lr.ph ], [ %.12, %35 ]
  %10 = call i32 @valid_data(ptr noundef %.04)
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %35, label %11

11:                                               ; preds = %9
  %12 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #5
  %13 = getelementptr inbounds nuw i8, ptr %.013, i64 24
  store ptr %12, ptr %13, align 8
  %14 = load ptr, ptr @game_tree, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store ptr %12, ptr @game_tree, align 8
  br label %17

17:                                               ; preds = %16, %11
  %18 = call ptr @copy_data(ptr noundef %.04)
  %19 = load ptr, ptr %13, align 8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %18, ptr %20, align 8
  %21 = call ptr @make_list(ptr noundef %.04, ptr noundef nonnull %3, ptr noundef nonnull %2)
  %22 = load ptr, ptr %13, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %21, ptr %23, align 8
  %24 = load i32, ptr %3, align 4
  %25 = load ptr, ptr %13, align 8
  store i32 %24, ptr %25, align 8
  %26 = load ptr, ptr %13, align 8
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr null, ptr %27, align 8
  %28 = load ptr, ptr %13, align 8
  %29 = load i32, ptr %2, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  call void @free(ptr noundef %.04) #6
  %32 = load i32, ptr @nrow, align 4
  %33 = load i32, ptr @ncol, align 4
  %34 = call ptr @make_data(i32 noundef %32, i32 noundef %33)
  br label %35

35:                                               ; preds = %31, %17, %9
  %.12 = phi ptr [ %.013, %9 ], [ %28, %31 ], [ %28, %17 ]
  %.1 = phi ptr [ %.04, %9 ], [ %34, %31 ], [ %.04, %17 ]
  %36 = call i32 @next_data(ptr noundef %.1)
  %.not = icmp eq i32 %36, 0
  br i1 %.not, label %._crit_edge, label %9, !llvm.loop !25

._crit_edge:                                      ; preds = %35
  br label %37

37:                                               ; preds = %._crit_edge, %1
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %39 = load ptr, ptr %38, align 8
  call void @free(ptr noundef %4) #6
  ret ptr %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #5
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %3, align 8
  %4 = load i32, ptr @nrow, align 4
  %.not6 = icmp eq i32 0, %4
  br i1 %.not6, label %28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %25
  %.08 = phi ptr [ %2, %.preheader.lr.ph ], [ %.1.lcssa, %25 ]
  %.017 = phi i32 [ 0, %.preheader.lr.ph ], [ %26, %25 ]
  %5 = load i32, ptr @ncol, align 4
  %.not11 = icmp eq i32 0, %5
  br i1 %.not11, label %25, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %6

6:                                                ; preds = %.lr.ph, %23
  %.14 = phi ptr [ %.08, %.lr.ph ], [ %.2, %23 ]
  %.123 = phi i32 [ %.017, %.lr.ph ], [ %.23, %23 ]
  %.042 = phi i32 [ 0, %.lr.ph ], [ %.15, %23 ]
  %7 = call ptr @make_data(i32 noundef %.123, i32 noundef %.042)
  call void @melt_data(ptr noundef %7, ptr noundef %0)
  %8 = call i32 @equal_data(ptr noundef %7, ptr noundef %0)
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %9, label %18

9:                                                ; preds = %6
  %10 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #5
  %11 = getelementptr inbounds nuw i8, ptr %.14, i64 8
  store ptr %10, ptr %11, align 8
  %12 = call ptr @copy_data(ptr noundef %7)
  %13 = load ptr, ptr %11, align 8
  store ptr %12, ptr %13, align 8
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %15, align 8
  %16 = load ptr, ptr %11, align 8
  %17 = add nsw i32 %.042, 1
  br label %23

18:                                               ; preds = %6
  %19 = icmp eq i32 %.042, 0
  %20 = load i32, ptr @nrow, align 4
  %21 = add nsw i32 %20, -1
  %.3 = select i1 %19, i32 %21, i32 %.123
  %22 = load i32, ptr @ncol, align 4
  br label %23

23:                                               ; preds = %18, %9
  %.15 = phi i32 [ %22, %18 ], [ %17, %9 ]
  %.23 = phi i32 [ %.3, %18 ], [ %.123, %9 ]
  %.2 = phi ptr [ %.14, %18 ], [ %16, %9 ]
  call void @free(ptr noundef %7) #6
  %24 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %.15, %24
  br i1 %.not1, label %._crit_edge, label %6, !llvm.loop !26

._crit_edge:                                      ; preds = %23
  %split = phi i32 [ %.23, %23 ]
  %split5 = phi ptr [ %.2, %23 ]
  br label %25

25:                                               ; preds = %._crit_edge, %.preheader
  %.12.lcssa = phi i32 [ %split, %._crit_edge ], [ %.017, %.preheader ]
  %.1.lcssa = phi ptr [ %split5, %._crit_edge ], [ %.08, %.preheader ]
  %26 = add nsw i32 %.12.lcssa, 1
  %27 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %26, %27
  br i1 %.not, label %._crit_edge9, label %.preheader, !llvm.loop !27

._crit_edge9:                                     ; preds = %25
  br label %28

28:                                               ; preds = %._crit_edge9, %1
  %29 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %2) #6
  store ptr %29, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %.preheader

.preheader:                                       ; preds = %1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  %.not2 = icmp eq ptr %4, null
  br i1 %.not2, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %5

5:                                                ; preds = %.lr.ph, %9
  %6 = phi ptr [ %3, %.lr.ph ], [ %11, %9 ]
  %.013 = phi ptr [ %0, %.lr.ph ], [ %10, %9 ]
  %7 = load ptr, ptr %.013, align 8
  %8 = call i32 @get_value(ptr noundef %7)
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %..critedge_crit_edge, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  %.not = icmp eq ptr %12, null
  br i1 %.not, label %..critedge_crit_edge4, label %5, !llvm.loop !28

..critedge_crit_edge:                             ; preds = %5
  %split = phi ptr [ %.013, %5 ]
  br label %.critedge

..critedge_crit_edge4:                            ; preds = %9
  %split5 = phi ptr [ %10, %9 ]
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge4, %..critedge_crit_edge, %.preheader
  %.01.lcssa = phi ptr [ %split, %..critedge_crit_edge ], [ %split5, %..critedge_crit_edge4 ], [ %0, %.preheader ]
  %13 = load ptr, ptr %.01.lcssa, align 8
  %14 = call ptr @copy_data(ptr noundef %13)
  br label %15

15:                                               ; preds = %.critedge, %1
  %.0 = phi ptr [ %14, %.critedge ], [ null, %1 ]
  ret ptr %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %.0 = phi ptr [ %0, %1 ], [ %4, %2 ]
  %3 = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %4 = load ptr, ptr %3, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %5, label %2, !llvm.loop !29

5:                                                ; preds = %2
  %.0.lcssa = phi ptr [ %.0, %2 ]
  %6 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %7 = load ptr, ptr %6, align 8
  %8 = call ptr @get_good_move(ptr noundef %7)
  ret ptr %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %6
  %.02 = phi ptr [ %1, %.lr.ph ], [ %8, %6 ]
  %7 = getelementptr inbounds nuw i8, ptr %.02, i64 24
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @equal_data(ptr noundef %10, ptr noundef %0)
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %6, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %6
  %split = phi ptr [ %8, %6 ]
  br label %12

12:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %1, %2 ]
  %13 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %14 = load ptr, ptr %13, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_real_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  br label %5

5:                                                ; preds = %5, %4
  %storemerge = phi i32 [ 0, %4 ], [ %12, %5 ]
  store i32 %storemerge, ptr %3, align 4
  %6 = zext nneg i32 %storemerge to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  %12 = add nuw nsw i32 %storemerge, 1
  br i1 %11, label %5, label %13, !llvm.loop !31

13:                                               ; preds = %5
  %.lcssa = phi i32 [ %8, %5 ]
  store i32 %.lcssa, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) #6
  store i32 2, ptr %1, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #6
  store i32 7, ptr @ncol, align 4
  %5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #6
  store i32 8, ptr @nrow, align 4
  %6 = call ptr @make_play(i32 noundef 1)
  %7 = load i32, ptr @nrow, align 4
  %8 = load i32, ptr @ncol, align 4
  %9 = call ptr @make_data(i32 noundef %7, i32 noundef %8)
  %.not1 = icmp eq ptr %9, null
  br i1 %.not1, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %0
  br label %10

10:                                               ; preds = %.lr.ph, %18
  %.013 = phi i32 [ 0, %.lr.ph ], [ %.1, %18 ]
  %.022 = phi ptr [ %9, %.lr.ph ], [ %12, %18 ]
  %11 = call ptr @where(ptr noundef nonnull %.022, ptr noundef %6)
  %12 = call ptr @get_good_move(ptr noundef %11)
  %.not3 = icmp eq ptr %12, null
  br i1 %.not3, label %18, label %13

13:                                               ; preds = %10
  call void @get_real_move(ptr noundef nonnull %12, ptr noundef nonnull %.022, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %14 = load i32, ptr %1, align 4
  %15 = load i32, ptr %2, align 4
  %16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.013, i32 noundef %14, i32 noundef %15) #6
  %17 = sub nsw i32 1, %.013
  call void @free(ptr noundef nonnull %.022) #6
  br label %18

18:                                               ; preds = %13, %10
  %.1 = phi i32 [ %17, %13 ], [ %.013, %10 ]
  %.not = icmp eq ptr %12, null
  br i1 %.not, label %._crit_edge, label %10, !llvm.loop !32

._crit_edge:                                      ; preds = %18
  %split = phi i32 [ %.1, %18 ]
  br label %19

19:                                               ; preds = %._crit_edge, %0
  %.01.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %0 ]
  call void @dump_play(ptr noundef %6)
  %20 = sub nsw i32 1, %.01.lcssa
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %20) #6
  ret i32 0
}

declare dso_local i32 @scanf(ptr noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/chomp.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
