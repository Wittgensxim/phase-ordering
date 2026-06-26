; ModuleID = 'results\paper_full\McGill_chomp\round_005\output.ll'
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
  %5 = call ptr @malloc(i64 noundef %4) #4
  %6 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1, %.lr.ph
  %.02 = phi i32 [ %7, %.lr.ph ], [ %6, %1 ]
  %7 = add nsw i32 %.02, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [4 x i8], ptr %5, i64 %8
  store i32 %10, ptr %11, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %1
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @ncol, align 4
  %3 = icmp ne i32 0, %2
  br i1 %3, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %1, %13
  %.011 = phi i32 [ %.12, %13 ], [ 0, %1 ]
  %4 = sext i32 %.011 to i64
  %5 = getelementptr inbounds [4 x i8], ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr @nrow, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %.lr.ph
  store i32 0, ptr %5, align 4
  %10 = add nsw i32 %.011, 1
  br label %13

11:                                               ; preds = %.lr.ph
  %12 = add nsw i32 %6, 1
  store i32 %12, ptr %5, align 4
  br label %13

13:                                               ; preds = %11, %9
  %.12 = phi i32 [ %10, %9 ], [ %.011, %11 ]
  %.1 = phi i32 [ 0, %9 ], [ 1, %11 ]
  %14 = load i32, ptr @ncol, align 4
  %15 = icmp ne i32 %.12, %14
  %.not = icmp eq i32 %.1, 0
  %or.cond = select i1 %15, i1 %.not, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !9

.critedge:                                        ; preds = %13, %1
  %.0.lcssa = phi i32 [ 0, %1 ], [ %.1, %13 ]
  ret i32 %.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = add nsw i32 %3, -1
  %.not1 = icmp eq i32 %3, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2, %13
  %5 = phi i32 [ %14, %13 ], [ %4, %2 ]
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [4 x i8], ptr %1, i64 %6
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %.lr.ph
  store i32 %10, ptr %7, align 4
  br label %13

13:                                               ; preds = %12, %.lr.ph
  %14 = add nsw i32 %5, -1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %13, %2
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
  br i1 %12, label %4, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %5, %4
  %.0.lcssa = phi i32 [ %.0, %5 ], [ 0, %4 ]
  %13 = icmp slt i32 %.0.lcssa, 1
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %.pre = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 0, %.pre
  br i1 %.not1, label %._crit_edge, label %.lr.ph

3:                                                ; preds = %.lr.ph
  %.01 = phi i32 [ %6, %.lr.ph ]
  %.0 = phi i32 [ %8, %.lr.ph ]
  %.not = icmp eq i32 %.0, %.pre
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

.lr.ph:                                           ; preds = %1, %3
  %.03 = phi i32 [ %.0, %3 ], [ 0, %1 ]
  %.012 = phi i32 [ %.01, %3 ], [ %2, %1 ]
  %4 = zext nneg i32 %.03 to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, %.012
  %8 = add nuw nsw i32 %.03, 1
  br i1 %7, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %3, %.lr.ph, %1
  %.not.lcssa = phi i1 [ true, %1 ], [ false, %.lr.ph ], [ true, %3 ]
  %9 = zext i1 %.not.lcssa to i32
  ret i32 %9
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
  call void @free(ptr noundef %5) #5
  call void @free(ptr noundef nonnull %0) #5
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
  call void @free(ptr noundef %8) #5
  call void @free(ptr noundef nonnull %0) #5
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
  br i1 %.not, label %2, label %7, !llvm.loop !13

7:                                                ; preds = %2
  %.0.lcssa = phi ptr [ %.0, %2 ]
  %8 = load i32, ptr %.0.lcssa, align 8
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %.pre2 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 0, %.pre2
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1, %10
  %.03 = phi i32 [ %2, %10 ], [ 0, %1 ]
  %2 = add nuw nsw i32 %.03, 1
  %3 = zext nneg i32 %.03 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %5) #5
  %7 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %2, %7
  br i1 %.not1, label %10, label %8

8:                                                ; preds = %.lr.ph
  %9 = call i32 @putchar(i32 noundef 44) #5
  %.pre = load i32, ptr @ncol, align 4
  br label %10

10:                                               ; preds = %8, %.lr.ph
  %11 = phi i32 [ %.pre, %8 ], [ %2, %.lr.ph ]
  %.not = icmp eq i32 %2, %11
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %10, %1
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

declare dso_local i32 @putchar(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_move(ptr noundef %0) #0 {
  %2 = call i32 @putchar(i32 noundef 40) #5
  call void @show_data(ptr noundef %0)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_list(ptr noundef %0) #0 {
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1, %.lr.ph
  %.02 = phi ptr [ %4, %.lr.ph ], [ %0, %1 ]
  %2 = load ptr, ptr %.02, align 8
  call void @show_move(ptr noundef %2)
  %3 = getelementptr inbounds nuw i8, ptr %.02, i64 8
  %4 = load ptr, ptr %3, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1, %.lr.ph
  %.02 = phi ptr [ %9, %.lr.ph ], [ %0, %1 ]
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %2 = getelementptr inbounds nuw i8, ptr %.02, i64 8
  %3 = load ptr, ptr %2, align 8
  call void @show_data(ptr noundef %3)
  %4 = load i32, ptr %.02, align 8
  %5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %4) #5
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %6 = getelementptr inbounds nuw i8, ptr %.02, i64 16
  %7 = load ptr, ptr %6, align 8
  call void @show_list(ptr noundef %7)
  %8 = getelementptr inbounds nuw i8, ptr %.02, i64 24
  %9 = load ptr, ptr %8, align 8
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %.011 = load ptr, ptr @wanted, align 8
  %cond2 = icmp eq ptr %.011, null
  br i1 %cond2, label %.loopexit, label %.lr.ph

2:                                                ; preds = %.lr.ph
  %.01.in = phi ptr [ %5, %.lr.ph ]
  %.01 = load ptr, ptr %.01.in, align 8
  %cond = icmp eq ptr %.01, null
  br i1 %cond, label %.loopexit, label %.lr.ph, !llvm.loop !17

.lr.ph:                                           ; preds = %1, %2
  %.013 = phi ptr [ %.01, %2 ], [ %.011, %1 ]
  %3 = load ptr, ptr %.013, align 8
  %4 = call i32 @equal_data(ptr noundef %3, ptr noundef %0)
  %.not = icmp eq i32 %4, 0
  %5 = getelementptr inbounds nuw i8, ptr %.013, i64 8
  br i1 %.not, label %2, label %.loopexit

.loopexit:                                        ; preds = %1, %2, %.lr.ph
  %.0 = phi i32 [ 1, %.lr.ph ], [ 0, %2 ], [ 0, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = call ptr @malloc(i64 noundef %5) #4
  %.not2 = icmp eq i32 0, %1
  br i1 %.not2, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %2
  %7 = load i32, ptr @ncol, align 4
  %.not14 = icmp eq i32 %1, %7
  br i1 %.not14, label %._crit_edge, label %.lr.ph6

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.03 = phi i32 [ %11, %.lr.ph ], [ 0, %2 ]
  %8 = load i32, ptr @nrow, align 4
  %9 = zext nneg i32 %.03 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
  store i32 %8, ptr %10, align 4
  %11 = add nuw nsw i32 %.03, 1
  %.not = icmp eq i32 %11, %1
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !18

.lr.ph6:                                          ; preds = %.preheader, %.lr.ph6
  %.15 = phi i32 [ %14, %.lr.ph6 ], [ %1, %.preheader ]
  %12 = zext nneg i32 %.15 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %12
  store i32 %0, ptr %13, align 4
  %14 = add nuw nsw i32 %.15, 1
  %15 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %14, %15
  br i1 %.not1, label %._crit_edge, label %.lr.ph6, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph6, %.preheader
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 1, ptr %1, align 4
  %4 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %5, align 8
  %6 = load i32, ptr @nrow, align 4
  %.not6 = icmp eq i32 0, %6
  br i1 %.not6, label %._crit_edge9, label %.preheader

.preheader:                                       ; preds = %3, %._crit_edge
  %.08 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %4, %3 ]
  %.047 = phi i32 [ %42, %._crit_edge ], [ 0, %3 ]
  %7 = load i32, ptr @ncol, align 4
  %.not21 = icmp eq i32 0, %7
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %39
  %.14 = phi ptr [ %.2, %39 ], [ %.08, %.preheader ]
  %.013 = phi i32 [ %40, %39 ], [ 0, %.preheader ]
  %.152 = phi i32 [ %.3, %39 ], [ %.047, %.preheader ]
  %8 = call ptr @make_data(i32 noundef %.152, i32 noundef %.013)
  call void @melt_data(ptr noundef %8, ptr noundef %0)
  %9 = call i32 @equal_data(ptr noundef %8, ptr noundef %0)
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %10, label %33

10:                                               ; preds = %.lr.ph
  %11 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %12 = getelementptr inbounds nuw i8, ptr %.14, i64 8
  store ptr %11, ptr %12, align 8
  %13 = call ptr @copy_data(ptr noundef %8)
  %14 = load ptr, ptr %12, align 8
  store ptr %13, ptr %14, align 8
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %16, align 8
  %17 = load ptr, ptr %12, align 8
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = call i32 @get_value(ptr noundef %8)
  store i32 %21, ptr %1, align 4
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i32 [ %21, %20 ], [ %18, %10 ]
  %24 = load i32, ptr %2, align 4
  %.not4 = icmp eq i32 %24, 0
  %25 = icmp eq i32 %23, 0
  %or.cond = select i1 %.not4, i1 %25, i1 false
  br i1 %or.cond, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32, ptr @ncol, align 4
  %28 = add nsw i32 %27, -1
  %29 = load i32, ptr @nrow, align 4
  %30 = add nsw i32 %29, -1
  %31 = call i32 @in_wanted(ptr noundef %8)
  %.not5 = icmp eq i32 %31, 0
  br i1 %.not5, label %39, label %32

32:                                               ; preds = %26
  store i32 2, ptr %2, align 4
  br label %39

33:                                               ; preds = %.lr.ph
  %34 = icmp eq i32 %.013, 0
  %35 = load i32, ptr @nrow, align 4
  %36 = add nsw i32 %35, -1
  %.4 = select i1 %34, i32 %36, i32 %.152
  %37 = load i32, ptr @ncol, align 4
  %38 = add nsw i32 %37, -1
  br label %39

39:                                               ; preds = %33, %32, %26, %22
  %.3 = phi i32 [ %.4, %33 ], [ %.152, %22 ], [ %30, %26 ], [ %30, %32 ]
  %.23 = phi i32 [ %38, %33 ], [ %.013, %22 ], [ %28, %26 ], [ %28, %32 ]
  %.2 = phi ptr [ %.14, %33 ], [ %17, %22 ], [ %17, %26 ], [ %17, %32 ]
  call void @free(ptr noundef %8) #5
  %40 = add nsw i32 %.23, 1
  %41 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %40, %41
  br i1 %.not2, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %39, %.preheader
  %.15.lcssa = phi i32 [ %.047, %.preheader ], [ %.3, %39 ]
  %.1.lcssa = phi ptr [ %.08, %.preheader ], [ %.2, %39 ]
  %42 = add nsw i32 %.15.lcssa, 1
  %43 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %42, %43
  br i1 %.not, label %._crit_edge9, label %.preheader, !llvm.loop !21

._crit_edge9:                                     ; preds = %._crit_edge, %3
  %44 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %4) #5
  %.not1 = icmp eq ptr %44, null
  br i1 %.not1, label %48, label %45

45:                                               ; preds = %._crit_edge9
  %46 = load i32, ptr %1, align 4
  %47 = sub nsw i32 1, %46
  store i32 %47, ptr %1, align 4
  br label %48

48:                                               ; preds = %45, %._crit_edge9
  ret ptr %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_play(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  store ptr null, ptr @game_tree, align 8
  %5 = call ptr @make_data(i32 noundef 0, i32 noundef 0)
  %6 = load i32, ptr %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = call i32 @next_data(ptr noundef %5)
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1, %34
  %.04 = phi ptr [ %.1, %34 ], [ %5, %1 ]
  %.013 = phi ptr [ %.12, %34 ], [ %4, %1 ]
  %9 = call i32 @valid_data(ptr noundef %.04)
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %34, label %10

10:                                               ; preds = %.lr.ph
  %11 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  %12 = getelementptr inbounds nuw i8, ptr %.013, i64 24
  store ptr %11, ptr %12, align 8
  %13 = load ptr, ptr @game_tree, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store ptr %11, ptr @game_tree, align 8
  br label %16

16:                                               ; preds = %15, %10
  %17 = call ptr @copy_data(ptr noundef %.04)
  %18 = load ptr, ptr %12, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %17, ptr %19, align 8
  %20 = call ptr @make_list(ptr noundef %.04, ptr noundef nonnull %3, ptr noundef nonnull %2)
  %21 = load ptr, ptr %12, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %20, ptr %22, align 8
  %23 = load i32, ptr %3, align 4
  %24 = load ptr, ptr %12, align 8
  store i32 %23, ptr %24, align 8
  %25 = load ptr, ptr %12, align 8
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr null, ptr %26, align 8
  %27 = load ptr, ptr %12, align 8
  %28 = load i32, ptr %2, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  call void @free(ptr noundef %.04) #5
  %31 = load i32, ptr @nrow, align 4
  %32 = load i32, ptr @ncol, align 4
  %33 = call ptr @make_data(i32 noundef %31, i32 noundef %32)
  br label %34

34:                                               ; preds = %30, %16, %.lr.ph
  %.12 = phi ptr [ %.013, %.lr.ph ], [ %27, %30 ], [ %27, %16 ]
  %.1 = phi ptr [ %.04, %.lr.ph ], [ %33, %30 ], [ %.04, %16 ]
  %35 = call i32 @next_data(ptr noundef %.1)
  %.not = icmp eq i32 %35, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %34, %1
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %37 = load ptr, ptr %36, align 8
  call void @free(ptr noundef %4) #5
  ret ptr %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %3, align 8
  %4 = load i32, ptr @nrow, align 4
  %.not6 = icmp eq i32 0, %4
  br i1 %.not6, label %._crit_edge9, label %.preheader

.preheader:                                       ; preds = %1, %._crit_edge
  %.08 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %2, %1 ]
  %.017 = phi i32 [ %24, %._crit_edge ], [ 0, %1 ]
  %5 = load i32, ptr @ncol, align 4
  %.not11 = icmp eq i32 0, %5
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %22
  %.14 = phi ptr [ %.2, %22 ], [ %.08, %.preheader ]
  %.123 = phi i32 [ %.23, %22 ], [ %.017, %.preheader ]
  %.042 = phi i32 [ %.15, %22 ], [ 0, %.preheader ]
  %6 = call ptr @make_data(i32 noundef %.123, i32 noundef %.042)
  call void @melt_data(ptr noundef %6, ptr noundef %0)
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %8, label %17

8:                                                ; preds = %.lr.ph
  %9 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %10 = getelementptr inbounds nuw i8, ptr %.14, i64 8
  store ptr %9, ptr %10, align 8
  %11 = call ptr @copy_data(ptr noundef %6)
  %12 = load ptr, ptr %10, align 8
  store ptr %11, ptr %12, align 8
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %14, align 8
  %15 = load ptr, ptr %10, align 8
  %16 = add nsw i32 %.042, 1
  br label %22

17:                                               ; preds = %.lr.ph
  %18 = icmp eq i32 %.042, 0
  %19 = load i32, ptr @nrow, align 4
  %20 = add nsw i32 %19, -1
  %.3 = select i1 %18, i32 %20, i32 %.123
  %21 = load i32, ptr @ncol, align 4
  br label %22

22:                                               ; preds = %17, %8
  %.15 = phi i32 [ %21, %17 ], [ %16, %8 ]
  %.23 = phi i32 [ %.3, %17 ], [ %.123, %8 ]
  %.2 = phi ptr [ %.14, %17 ], [ %15, %8 ]
  call void @free(ptr noundef %6) #5
  %23 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %.15, %23
  br i1 %.not1, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %22, %.preheader
  %.12.lcssa = phi i32 [ %.017, %.preheader ], [ %.23, %22 ]
  %.1.lcssa = phi ptr [ %.08, %.preheader ], [ %.2, %22 ]
  %24 = add nsw i32 %.12.lcssa, 1
  %25 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %24, %25
  br i1 %.not, label %._crit_edge9, label %.preheader, !llvm.loop !24

._crit_edge9:                                     ; preds = %._crit_edge, %1
  %26 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %2) #5
  store ptr %26, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %.preheader

.preheader:                                       ; preds = %1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  %.not2 = icmp eq ptr %4, null
  br i1 %.not2, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %8
  %5 = phi ptr [ %10, %8 ], [ %3, %.preheader ]
  %.013 = phi ptr [ %9, %8 ], [ %0, %.preheader ]
  %6 = load ptr, ptr %.013, align 8
  %7 = call i32 @get_value(ptr noundef %6)
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %.critedge, label %8

8:                                                ; preds = %.lr.ph
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %.not = icmp eq ptr %11, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !25

.critedge:                                        ; preds = %8, %.lr.ph, %.preheader
  %.01.lcssa = phi ptr [ %0, %.preheader ], [ %.013, %.lr.ph ], [ %9, %8 ]
  %12 = load ptr, ptr %.01.lcssa, align 8
  %13 = call ptr @copy_data(ptr noundef %12)
  br label %14

14:                                               ; preds = %.critedge, %1
  %.0 = phi ptr [ %13, %.critedge ], [ null, %1 ]
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
  br i1 %.not, label %5, label %2, !llvm.loop !26

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
  br i1 %.not1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.02 = phi ptr [ %7, %.lr.ph ], [ %1, %2 ]
  %6 = getelementptr inbounds nuw i8, ptr %.02, i64 24
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @equal_data(ptr noundef %9, ptr noundef %0)
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %2
  %.0.lcssa = phi ptr [ %1, %2 ], [ %7, %.lr.ph ]
  %11 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %12 = load ptr, ptr %11, align 8
  ret ptr %12
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
  br i1 %11, label %5, label %13, !llvm.loop !28

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
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) #5
  store i32 2, ptr %1, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #5
  store i32 7, ptr @ncol, align 4
  %5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #5
  store i32 8, ptr @nrow, align 4
  %6 = call ptr @make_play(i32 noundef 1)
  %7 = load i32, ptr @nrow, align 4
  %8 = load i32, ptr @ncol, align 4
  %9 = call ptr @make_data(i32 noundef %7, i32 noundef %8)
  %.not1 = icmp eq ptr %9, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %17
  %.013 = phi i32 [ %.1, %17 ], [ 0, %0 ]
  %.022 = phi ptr [ %11, %17 ], [ %9, %0 ]
  %10 = call ptr @where(ptr noundef nonnull %.022, ptr noundef %6)
  %11 = call ptr @get_good_move(ptr noundef %10)
  %.not3 = icmp eq ptr %11, null
  br i1 %.not3, label %17, label %12

12:                                               ; preds = %.lr.ph
  call void @get_real_move(ptr noundef nonnull %11, ptr noundef nonnull %.022, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %13 = load i32, ptr %1, align 4
  %14 = load i32, ptr %2, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.013, i32 noundef %13, i32 noundef %14) #5
  %16 = sub nsw i32 1, %.013
  call void @free(ptr noundef nonnull %.022) #5
  br label %17

17:                                               ; preds = %12, %.lr.ph
  %.1 = phi i32 [ %16, %12 ], [ %.013, %.lr.ph ]
  %.not = icmp eq ptr %11, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %17, %0
  %.01.lcssa = phi i32 [ 0, %0 ], [ %.1, %17 ]
  call void @dump_play(ptr noundef %6)
  %18 = sub nsw i32 1, %.01.lcssa
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %18) #5
  ret i32 0
}

declare dso_local i32 @scanf(ptr noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

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
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
