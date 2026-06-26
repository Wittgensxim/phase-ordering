; ModuleID = 'results\paper_full\McGill_chomp\round_000\output.ll'
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
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %13, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %.in = phi i32 [ %6, %.lr.ph ], [ %8, %7 ]
  %8 = add nsw i32 %.in, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds [4 x i8], ptr %5, i64 %9
  store i32 %11, ptr %12, align 4
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %._crit_edge, label %7, !llvm.loop !7

._crit_edge:                                      ; preds = %7
  br label %13

13:                                               ; preds = %._crit_edge, %1
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %17, %1
  %.01 = phi i32 [ 0, %1 ], [ %.12, %17 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %17 ]
  %3 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %.01, %3
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  %.not1 = icmp eq i32 %.0, 0
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i1 [ false, %2 ], [ %.not1, %4 ]
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @nrow, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  store i32 0, ptr %9, align 4
  %14 = add nsw i32 %.01, 1
  br label %17

15:                                               ; preds = %7
  %16 = add nsw i32 %10, 1
  store i32 %16, ptr %9, align 4
  br label %17

17:                                               ; preds = %15, %13
  %.12 = phi i32 [ %14, %13 ], [ %.01, %15 ]
  %.1 = phi i32 [ %.0, %13 ], [ 1, %15 ]
  br label %2, !llvm.loop !9

18:                                               ; preds = %5
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %14, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %13
  %.in = phi i32 [ %3, %.lr.ph ], [ %5, %13 ]
  %5 = add nsw i32 %.in, -1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [4 x i8], ptr %1, i64 %6
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 %10, ptr %7, align 4
  br label %13

13:                                               ; preds = %12, %4
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %._crit_edge, label %4, !llvm.loop !10

._crit_edge:                                      ; preds = %13
  br label %14

14:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %13, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %13 ]
  %5 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %13, label %6

6:                                                ; preds = %4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [4 x i8], ptr %1, i64 %7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br label %13

13:                                               ; preds = %6, %4
  %14 = phi i1 [ false, %4 ], [ %12, %6 ]
  br i1 %14, label %4, label %15, !llvm.loop !11

15:                                               ; preds = %13
  %16 = icmp slt i32 %.0, 1
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %1
  %3 = load i32, ptr @nrow, align 4
  br label %4

4:                                                ; preds = %.lr.ph, %10
  %.04 = phi i32 [ 0, %.lr.ph ], [ %11, %10 ]
  %.013 = phi i32 [ %3, %.lr.ph ], [ %7, %10 ]
  %5 = zext nneg i32 %.04 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, %.013
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %13

10:                                               ; preds = %4
  %11 = add nuw nsw i32 %.04, 1
  %12 = load i32, ptr @ncol, align 4
  %.not5 = icmp eq i32 %11, %12
  br i1 %.not5, label %..loopexit_crit_edge, label %4, !llvm.loop !12

..loopexit_crit_edge:                             ; preds = %10
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  %.0.lcssa = phi i32 [ %11, %..loopexit_crit_edge ], [ 0, %1 ]
  br label %13

13:                                               ; preds = %.loopexit, %9
  %.02 = phi i32 [ %.0.lcssa, %.loopexit ], [ %.04, %9 ]
  %14 = load i32, ptr @ncol, align 4
  %15 = icmp eq i32 %.02, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
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
  %2 = load ptr, ptr @game_tree, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %1
  br label %6

6:                                                ; preds = %.lr.ph, %6
  %.01 = phi ptr [ %2, %.lr.ph ], [ %8, %6 ]
  %7 = getelementptr inbounds nuw i8, ptr %.01, i64 24
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @equal_data(ptr noundef %10, ptr noundef %0)
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %6, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %6
  br label %12

12:                                               ; preds = %._crit_edge, %1
  %.0.lcssa = phi ptr [ %8, %._crit_edge ], [ %2, %1 ]
  %13 = load i32, ptr %.0.lcssa, align 8
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %14, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %12
  %.01 = phi i32 [ 0, %.lr.ph ], [ %4, %12 ]
  %4 = add nuw nsw i32 %.01, 1
  %5 = zext nneg i32 %.01 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7) #5
  %9 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %4, %9
  br i1 %.not2, label %12, label %10

10:                                               ; preds = %3
  %11 = call i32 @putchar(i32 noundef 44) #5
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i32, ptr @ncol, align 4
  %.not3 = icmp eq i32 %4, %13
  br i1 %.not3, label %._crit_edge, label %3, !llvm.loop !14

._crit_edge:                                      ; preds = %12
  br label %14

14:                                               ; preds = %._crit_edge, %1
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
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %6, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %2

2:                                                ; preds = %.lr.ph, %2
  %.01 = phi ptr [ %0, %.lr.ph ], [ %5, %2 ]
  %3 = load ptr, ptr %.01, align 8
  call void @show_move(ptr noundef %3)
  %4 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  %5 = load ptr, ptr %4, align 8
  %.not2 = icmp eq ptr %5, null
  br i1 %.not2, label %._crit_edge, label %2, !llvm.loop !15

._crit_edge:                                      ; preds = %2
  br label %6

6:                                                ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %11, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %2

2:                                                ; preds = %.lr.ph, %2
  %.01 = phi ptr [ %0, %.lr.ph ], [ %10, %2 ]
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %3 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  %4 = load ptr, ptr %3, align 8
  call void @show_data(ptr noundef %4)
  %5 = load i32, ptr %.01, align 8
  %6 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %5) #5
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %7 = getelementptr inbounds nuw i8, ptr %.01, i64 16
  %8 = load ptr, ptr %7, align 8
  call void @show_list(ptr noundef %8)
  %9 = getelementptr inbounds nuw i8, ptr %.01, i64 24
  %10 = load ptr, ptr %9, align 8
  %.not3 = icmp eq ptr %10, null
  br i1 %.not3, label %._crit_edge, label %2, !llvm.loop !16

._crit_edge:                                      ; preds = %2
  br label %11

11:                                               ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = load ptr, ptr @wanted, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %7
  %.013 = phi ptr [ %2, %.lr.ph ], [ %9, %7 ]
  %4 = load ptr, ptr %.013, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %.not4 = icmp eq i32 %5, 0
  br i1 %.not4, label %7, label %6

6:                                                ; preds = %3
  br label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %9 = load ptr, ptr %8, align 8
  %.not5 = icmp eq ptr %9, null
  br i1 %.not5, label %..loopexit_crit_edge, label %3, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %7
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  br label %10

10:                                               ; preds = %.loopexit, %6
  %.012 = phi i1 [ true, %.loopexit ], [ false, %6 ]
  br i1 %.012, label %11, label %12

11:                                               ; preds = %10
  br label %13

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %11
  %.0 = phi i32 [ 0, %11 ], [ 1, %12 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = call ptr @malloc(i64 noundef %5) #4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %13, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %11
  %.01 = phi i32 [ 0, %.lr.ph ], [ %12, %11 ]
  %8 = load i32, ptr @nrow, align 4
  %9 = zext nneg i32 %.01 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
  store i32 %8, ptr %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = add nuw nsw i32 %.01, 1
  %.not6 = icmp eq i32 %12, %1
  br i1 %.not6, label %._crit_edge, label %7, !llvm.loop !18

._crit_edge:                                      ; preds = %11
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi i32 [ %12, %._crit_edge ], [ 0, %2 ]
  %14 = load i32, ptr @ncol, align 4
  %.not7 = icmp eq i32 %.0.lcssa, %14
  br i1 %.not7, label %21, label %.lr.ph4

.lr.ph4:                                          ; preds = %13
  br label %15

15:                                               ; preds = %.lr.ph4, %18
  %.12 = phi i32 [ %.0.lcssa, %.lr.ph4 ], [ %19, %18 ]
  %16 = sext i32 %.12 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %6, i64 %16
  store i32 %0, ptr %17, align 4
  br label %18

18:                                               ; preds = %15
  %19 = add nsw i32 %.12, 1
  %20 = load i32, ptr @ncol, align 4
  %.not8 = icmp eq i32 %19, %20
  br i1 %.not8, label %._crit_edge5, label %15, !llvm.loop !19

._crit_edge5:                                     ; preds = %18
  br label %21

21:                                               ; preds = %._crit_edge5, %13
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 1, ptr %1, align 4
  %4 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %5, align 8
  %6 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %53, label %.lr.ph8

.lr.ph8:                                          ; preds = %3
  br label %7

7:                                                ; preds = %.lr.ph8, %50
  %.06 = phi ptr [ %4, %.lr.ph8 ], [ %.1.lcssa, %50 ]
  %.045 = phi i32 [ 0, %.lr.ph8 ], [ %51, %50 ]
  %8 = load i32, ptr @ncol, align 4
  %.not10 = icmp eq i32 %8, 0
  br i1 %.not10, label %49, label %.lr.ph

.lr.ph:                                           ; preds = %7
  br label %9

9:                                                ; preds = %.lr.ph, %47
  %.13 = phi ptr [ %.06, %.lr.ph ], [ %.2, %47 ]
  %.012 = phi i32 [ 0, %.lr.ph ], [ %.23, %47 ]
  %.151 = phi i32 [ %.045, %.lr.ph ], [ %.3, %47 ]
  %10 = call ptr @make_data(i32 noundef %.151, i32 noundef %.012)
  call void @melt_data(ptr noundef %10, ptr noundef %0)
  %11 = call i32 @equal_data(ptr noundef %10, ptr noundef %0)
  %.not11 = icmp eq i32 %11, 0
  br i1 %.not11, label %12, label %39

12:                                               ; preds = %9
  %13 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %14 = getelementptr inbounds nuw i8, ptr %.13, i64 8
  store ptr %13, ptr %14, align 8
  %15 = call ptr @copy_data(ptr noundef %10)
  %16 = load ptr, ptr %14, align 8
  store ptr %15, ptr %16, align 8
  %17 = load ptr, ptr %14, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %18, align 8
  %19 = load ptr, ptr %14, align 8
  %20 = load i32, ptr %1, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = call i32 @get_value(ptr noundef %10)
  store i32 %23, ptr %1, align 4
  br label %24

24:                                               ; preds = %22, %12
  %25 = load i32, ptr %2, align 4
  %.not12 = icmp eq i32 %25, 0
  br i1 %.not12, label %26, label %37

26:                                               ; preds = %24
  %27 = load i32, ptr %1, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, ptr @ncol, align 4
  %31 = add nsw i32 %30, -1
  %32 = load i32, ptr @nrow, align 4
  %33 = add nsw i32 %32, -1
  %34 = call i32 @in_wanted(ptr noundef %10)
  %.not13 = icmp eq i32 %34, 0
  br i1 %.not13, label %36, label %35

35:                                               ; preds = %29
  store i32 2, ptr %2, align 4
  br label %36

36:                                               ; preds = %35, %29
  br label %37

37:                                               ; preds = %36, %26, %24
  %.26 = phi i32 [ %.151, %24 ], [ %33, %36 ], [ %.151, %26 ]
  %.12 = phi i32 [ %.012, %24 ], [ %31, %36 ], [ %.012, %26 ]
  %38 = add nsw i32 %.12, 1
  br label %46

39:                                               ; preds = %9
  %40 = icmp eq i32 %.012, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, ptr @nrow, align 4
  %43 = add nsw i32 %42, -1
  br label %44

44:                                               ; preds = %41, %39
  %.4 = phi i32 [ %43, %41 ], [ %.151, %39 ]
  %45 = load i32, ptr @ncol, align 4
  br label %46

46:                                               ; preds = %44, %37
  %.3 = phi i32 [ %.4, %44 ], [ %.26, %37 ]
  %.23 = phi i32 [ %45, %44 ], [ %38, %37 ]
  %.2 = phi ptr [ %.13, %44 ], [ %19, %37 ]
  call void @free(ptr noundef %10) #5
  br label %47

47:                                               ; preds = %46
  %48 = load i32, ptr @ncol, align 4
  %.not14 = icmp eq i32 %.23, %48
  br i1 %.not14, label %._crit_edge, label %9, !llvm.loop !20

._crit_edge:                                      ; preds = %47
  br label %49

49:                                               ; preds = %._crit_edge, %7
  %.15.lcssa = phi i32 [ %.3, %._crit_edge ], [ %.045, %7 ]
  %.1.lcssa = phi ptr [ %.2, %._crit_edge ], [ %.06, %7 ]
  br label %50

50:                                               ; preds = %49
  %51 = add nsw i32 %.15.lcssa, 1
  %52 = load i32, ptr @nrow, align 4
  %.not15 = icmp eq i32 %51, %52
  br i1 %.not15, label %._crit_edge9, label %7, !llvm.loop !21

._crit_edge9:                                     ; preds = %50
  br label %53

53:                                               ; preds = %._crit_edge9, %3
  %54 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %4) #5
  %.not16 = icmp eq ptr %54, null
  br i1 %.not16, label %58, label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %1, align 4
  %57 = sub nsw i32 1, %56
  store i32 %57, ptr %1, align 4
  br label %58

58:                                               ; preds = %55, %53
  ret ptr %54
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
  %8 = call i32 @next_data(ptr noundef nonnull %5)
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %38, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %9

9:                                                ; preds = %.lr.ph, %36
  %.02 = phi ptr [ %5, %.lr.ph ], [ %.1, %36 ]
  %.011 = phi ptr [ %4, %.lr.ph ], [ %.12, %36 ]
  %10 = call i32 @valid_data(ptr noundef %.02)
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %36, label %11

11:                                               ; preds = %9
  %12 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  %13 = getelementptr inbounds nuw i8, ptr %.011, i64 24
  store ptr %12, ptr %13, align 8
  %14 = load ptr, ptr @game_tree, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store ptr %12, ptr @game_tree, align 8
  br label %17

17:                                               ; preds = %16, %11
  %18 = call ptr @copy_data(ptr noundef %.02)
  %19 = load ptr, ptr %13, align 8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %18, ptr %20, align 8
  %21 = call ptr @make_list(ptr noundef %.02, ptr noundef nonnull %3, ptr noundef nonnull %2)
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
  call void @free(ptr noundef %.02) #5
  %32 = load i32, ptr @nrow, align 4
  %33 = load i32, ptr @ncol, align 4
  %34 = call ptr @make_data(i32 noundef %32, i32 noundef %33)
  br label %35

35:                                               ; preds = %31, %17
  %.2 = phi ptr [ %34, %31 ], [ %.02, %17 ]
  br label %36

36:                                               ; preds = %35, %9
  %.12 = phi ptr [ %28, %35 ], [ %.011, %9 ]
  %.1 = phi ptr [ %.2, %35 ], [ %.02, %9 ]
  %37 = call i32 @next_data(ptr noundef %.1)
  %.not4 = icmp eq i32 %37, 0
  br i1 %.not4, label %._crit_edge, label %9, !llvm.loop !22

._crit_edge:                                      ; preds = %36
  br label %38

38:                                               ; preds = %._crit_edge, %1
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %40 = load ptr, ptr %39, align 8
  call void @free(ptr noundef %4) #5
  ret ptr %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %3, align 8
  %4 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %33, label %.lr.ph8

.lr.ph8:                                          ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph8, %30
  %.06 = phi ptr [ %2, %.lr.ph8 ], [ %.1.lcssa, %30 ]
  %.015 = phi i32 [ 0, %.lr.ph8 ], [ %31, %30 ]
  %6 = load i32, ptr @ncol, align 4
  %.not10 = icmp eq i32 %6, 0
  br i1 %.not10, label %29, label %.lr.ph

.lr.ph:                                           ; preds = %5
  br label %7

7:                                                ; preds = %.lr.ph, %27
  %.13 = phi ptr [ %.06, %.lr.ph ], [ %.2, %27 ]
  %.122 = phi i32 [ %.015, %.lr.ph ], [ %.23, %27 ]
  %.041 = phi i32 [ 0, %.lr.ph ], [ %.15, %27 ]
  %8 = call ptr @make_data(i32 noundef %.122, i32 noundef %.041)
  call void @melt_data(ptr noundef %8, ptr noundef %0)
  %9 = call i32 @equal_data(ptr noundef %8, ptr noundef %0)
  %.not11 = icmp eq i32 %9, 0
  br i1 %.not11, label %10, label %19

10:                                               ; preds = %7
  %11 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %12 = getelementptr inbounds nuw i8, ptr %.13, i64 8
  store ptr %11, ptr %12, align 8
  %13 = call ptr @copy_data(ptr noundef %8)
  %14 = load ptr, ptr %12, align 8
  store ptr %13, ptr %14, align 8
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %16, align 8
  %17 = load ptr, ptr %12, align 8
  %18 = add nsw i32 %.041, 1
  br label %26

19:                                               ; preds = %7
  %20 = icmp eq i32 %.041, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i32, ptr @nrow, align 4
  %23 = add nsw i32 %22, -1
  br label %24

24:                                               ; preds = %21, %19
  %.3 = phi i32 [ %23, %21 ], [ %.122, %19 ]
  %25 = load i32, ptr @ncol, align 4
  br label %26

26:                                               ; preds = %24, %10
  %.15 = phi i32 [ %25, %24 ], [ %18, %10 ]
  %.23 = phi i32 [ %.3, %24 ], [ %.122, %10 ]
  %.2 = phi ptr [ %.13, %24 ], [ %17, %10 ]
  call void @free(ptr noundef %8) #5
  br label %27

27:                                               ; preds = %26
  %28 = load i32, ptr @ncol, align 4
  %.not12 = icmp eq i32 %.15, %28
  br i1 %.not12, label %._crit_edge, label %7, !llvm.loop !23

._crit_edge:                                      ; preds = %27
  br label %29

29:                                               ; preds = %._crit_edge, %5
  %.12.lcssa = phi i32 [ %.23, %._crit_edge ], [ %.015, %5 ]
  %.1.lcssa = phi ptr [ %.2, %._crit_edge ], [ %.06, %5 ]
  br label %30

30:                                               ; preds = %29
  %31 = add nsw i32 %.12.lcssa, 1
  %32 = load i32, ptr @nrow, align 4
  %.not13 = icmp eq i32 %31, %32
  br i1 %.not13, label %._crit_edge9, label %5, !llvm.loop !24

._crit_edge9:                                     ; preds = %30
  br label %33

33:                                               ; preds = %._crit_edge9, %1
  %34 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %2) #5
  store ptr %34, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %19

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %14, %4
  %.01 = phi ptr [ %0, %4 ], [ %15, %14 ]
  %6 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  %7 = load ptr, ptr %6, align 8
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %12, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %.01, align 8
  %10 = call i32 @get_value(ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i1 [ false, %5 ], [ %11, %8 ]
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = load ptr, ptr %6, align 8
  br label %5, !llvm.loop !25

16:                                               ; preds = %12
  %17 = load ptr, ptr %.01, align 8
  %18 = call ptr @copy_data(ptr noundef %17)
  br label %19

19:                                               ; preds = %16, %3
  %.0 = phi ptr [ null, %3 ], [ %18, %16 ]
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
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %7 = load ptr, ptr %6, align 8
  %8 = call ptr @get_good_move(ptr noundef %7)
  ret ptr %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %6
  %.01 = phi ptr [ %1, %.lr.ph ], [ %8, %6 ]
  %7 = getelementptr inbounds nuw i8, ptr %.01, i64 24
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @equal_data(ptr noundef %10, ptr noundef %0)
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %6, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %6
  br label %12

12:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %8, %._crit_edge ], [ %1, %2 ]
  %13 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %14 = load ptr, ptr %13, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_real_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  store i32 0, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = load i32, ptr %1, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %9 = phi i32 [ 0, %.lr.ph ], [ %10, %8 ]
  %10 = add nuw nsw i32 %9, 1
  store i32 %10, ptr %3, align 4
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %11
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %8, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %8
  br label %17

17:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %13, %._crit_edge ], [ %5, %4 ]
  store i32 %.lcssa, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %puts12 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %puts13 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) #5
  store i32 2, ptr %1, align 4
  switch i32 2, label %32 [
    i32 1, label %4
    i32 2, label %8
    i32 3, label %27
  ]

4:                                                ; preds = %0
  br i1 poison, label %.lr.ph10, label %7

.lr.ph10:                                         ; preds = %4
  br label %5

5:                                                ; preds = %.lr.ph10, %6
  br label %6

6:                                                ; preds = %5
  br i1 poison, label %5, label %._crit_edge11, !llvm.loop !29

._crit_edge11:                                    ; preds = %6
  br label %7

7:                                                ; preds = %._crit_edge11, %4
  br label %32

8:                                                ; preds = %0
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #5
  store i32 7, ptr @ncol, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #5
  store i32 8, ptr @nrow, align 4
  %11 = call ptr @make_play(i32 noundef 1)
  %12 = load i32, ptr @nrow, align 4
  %13 = load i32, ptr @ncol, align 4
  %14 = call ptr @make_data(i32 noundef %12, i32 noundef %13)
  %.not = icmp eq ptr %14, null
  br i1 %.not, label %25, label %.lr.ph7

.lr.ph7:                                          ; preds = %8
  br label %15

15:                                               ; preds = %.lr.ph7, %23
  %.015 = phi i32 [ 0, %.lr.ph7 ], [ %.1, %23 ]
  %.024 = phi ptr [ %14, %.lr.ph7 ], [ %17, %23 ]
  %16 = call ptr @where(ptr noundef nonnull %.024, ptr noundef %11)
  %17 = call ptr @get_good_move(ptr noundef %16)
  %.not14 = icmp eq ptr %17, null
  br i1 %.not14, label %23, label %18

18:                                               ; preds = %15
  call void @get_real_move(ptr noundef nonnull %17, ptr noundef nonnull %.024, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %19 = load i32, ptr %1, align 4
  %20 = load i32, ptr %2, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.015, i32 noundef %19, i32 noundef %20) #5
  %22 = sub nsw i32 1, %.015
  call void @free(ptr noundef nonnull %.024) #5
  br label %23

23:                                               ; preds = %18, %15
  %.1 = phi i32 [ %22, %18 ], [ %.015, %15 ]
  %.not15 = icmp eq ptr %17, null
  br i1 %.not15, label %._crit_edge8, label %15, !llvm.loop !30

._crit_edge8:                                     ; preds = %23
  %24 = sub nsw i32 1, %.1
  br label %25

25:                                               ; preds = %._crit_edge8, %8
  %.01.lcssa = phi i32 [ %24, %._crit_edge8 ], [ 1, %8 ]
  call void @dump_play(ptr noundef %11)
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %.01.lcssa) #5
  br label %32

27:                                               ; preds = %0
  br i1 poison, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %27
  br label %28

28:                                               ; preds = %.lr.ph, %30
  br i1 poison, label %29, label %30

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29, %28
  br i1 poison, label %28, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %30
  br label %31

31:                                               ; preds = %._crit_edge, %27
  br label %32

32:                                               ; preds = %31, %25, %7, %0
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
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
