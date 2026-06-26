; ModuleID = 'results\paper_full\McGill_chomp\round_004\output.ll'
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
  %7 = sext i32 %6 to i64
  br label %8

8:                                                ; preds = %10, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ %7, %1 ]
  %9 = icmp eq i64 %indvars.iv, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next
  store i32 %12, ptr %13, align 4
  br label %8, !llvm.loop !7

14:                                               ; preds = %8
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %15, %1
  %.01 = phi i32 [ 0, %1 ], [ %.12, %15 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %15 ]
  %3 = load i32, ptr @ncol, align 4
  %4 = icmp ne i32 %.01, %3
  %.not = icmp eq i32 %.0, 0
  %or.cond = select i1 %4, i1 %.not, i1 false
  br i1 %or.cond, label %5, label %.critedge

5:                                                ; preds = %2
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr @nrow, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  store i32 0, ptr %7, align 4
  %12 = add nsw i32 %.01, 1
  br label %15

13:                                               ; preds = %5
  %14 = add nsw i32 %8, 1
  store i32 %14, ptr %7, align 4
  br label %15

15:                                               ; preds = %13, %11
  %.12 = phi i32 [ %12, %11 ], [ %.01, %13 ]
  %.1 = phi i32 [ 0, %11 ], [ 1, %13 ]
  br label %2, !llvm.loop !9

.critedge:                                        ; preds = %2
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  br label %5

5:                                                ; preds = %14, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ %4, %2 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %6 = icmp eq i64 %indvars.iv, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 %11, ptr %8, align 4
  br label %14

14:                                               ; preds = %13, %7
  br label %5, !llvm.loop !10

15:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  br label %5

5:                                                ; preds = %8, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %8 ], [ %4, %2 ]
  %6 = icmp eq i64 %indvars.iv, 0
  %7 = trunc nsw i64 %indvars.iv to i32
  br i1 %6, label %.critedge, label %8

8:                                                ; preds = %5
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %9 = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %5, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %8, %5
  %.0.lcssa = phi i32 [ %7, %8 ], [ 0, %5 ]
  %14 = icmp slt i32 %.0.lcssa, 1
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %.pre = load i32, ptr @ncol, align 4
  %3 = zext i32 %.pre to i64
  br label %4

4:                                                ; preds = %9, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %1 ]
  %.01 = phi i32 [ %2, %1 ], [ %7, %9 ]
  %.not = icmp eq i64 %indvars.iv, %3
  br i1 %.not, label %10, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, %.01
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

10:                                               ; preds = %5, %4
  %.not.lcssa = phi i1 [ false, %5 ], [ true, %4 ]
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

2:                                                ; preds = %6, %1
  %.0.in = phi ptr [ @game_tree, %1 ], [ %7, %6 ]
  %.0 = load ptr, ptr %.0.in, align 8
  %3 = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %2, !llvm.loop !13

8:                                                ; preds = %2
  %9 = load i32, ptr %.0, align 8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %.pre2 = load i32, ptr @ncol, align 4
  br label %2

2:                                                ; preds = %14, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 0, %1 ]
  %3 = phi i32 [ %.pre2, %1 ], [ %15, %14 ]
  %4 = zext i32 %3 to i64
  %.not = icmp eq i64 %indvars.iv, %4
  br i1 %.not, label %16, label %5

5:                                                ; preds = %2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7) #5
  %9 = load i32, ptr @ncol, align 4
  %10 = zext i32 %9 to i64
  %.not1 = icmp eq i64 %indvars.iv.next, %10
  %11 = trunc nuw i64 %indvars.iv.next to i32
  br i1 %.not1, label %14, label %12

12:                                               ; preds = %5
  %13 = call i32 @putchar(i32 noundef 44) #5
  %.pre = load i32, ptr @ncol, align 4
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ %.pre, %12 ], [ %11, %5 ]
  br label %2, !llvm.loop !14

16:                                               ; preds = %2
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
  br label %2

2:                                                ; preds = %3, %1
  %.0 = phi ptr [ %0, %1 ], [ %6, %3 ]
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = load ptr, ptr %.0, align 8
  call void @show_move(ptr noundef %4)
  %5 = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %6 = load ptr, ptr %5, align 8
  br label %2, !llvm.loop !15

7:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %3, %1
  %.0 = phi ptr [ %0, %1 ], [ %11, %3 ]
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %12, label %3

3:                                                ; preds = %2
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %5 = load ptr, ptr %4, align 8
  call void @show_data(ptr noundef %5)
  %6 = load i32, ptr %.0, align 8
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %6) #5
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %8 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %9 = load ptr, ptr %8, align 8
  call void @show_list(ptr noundef %9)
  %10 = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %11 = load ptr, ptr %10, align 8
  br label %2, !llvm.loop !16

12:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %6, %1
  %.01.in = phi ptr [ @wanted, %1 ], [ %7, %6 ]
  %.01 = load ptr, ptr %.01.in, align 8
  %cond = icmp eq ptr %.01, null
  br i1 %cond, label %.loopexit, label %3

3:                                                ; preds = %2
  %4 = load ptr, ptr %.01, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  br label %2, !llvm.loop !17

8:                                                ; preds = %3
  br label %9

.loopexit:                                        ; preds = %2
  br label %9

9:                                                ; preds = %.loopexit, %8
  %.0 = phi i32 [ 1, %8 ], [ 0, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = call ptr @malloc(i64 noundef %5) #4
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %9, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %2 ]
  %.not = icmp eq i64 %indvars.iv, %7
  br i1 %.not, label %.preheader, label %9

.preheader:                                       ; preds = %8
  br label %12

9:                                                ; preds = %8
  %10 = load i32, ptr @nrow, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %10, ptr %11, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %8, !llvm.loop !18

12:                                               ; preds = %15, %.preheader
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %15 ], [ %7, %.preheader ]
  %13 = load i32, ptr @ncol, align 4
  %14 = zext i32 %13 to i64
  %.not1 = icmp eq i64 %indvars.iv2, %14
  br i1 %.not1, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv2
  store i32 %0, ptr %16, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %12, !llvm.loop !19

17:                                               ; preds = %12
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 1, ptr %1, align 4
  %4 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %5, align 8
  br label %6

6:                                                ; preds = %45, %3
  %.04 = phi i32 [ 0, %3 ], [ %46, %45 ]
  %.0 = phi ptr [ %4, %3 ], [ %.1, %45 ]
  %7 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %.04, %7
  br i1 %.not, label %47, label %.preheader

.preheader:                                       ; preds = %6
  br label %8

8:                                                ; preds = %43, %.preheader
  %.15 = phi i32 [ %.3, %43 ], [ %.04, %.preheader ]
  %.01 = phi i32 [ %44, %43 ], [ 0, %.preheader ]
  %.1 = phi ptr [ %.2, %43 ], [ %.0, %.preheader ]
  %9 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %.01, %9
  br i1 %.not2, label %45, label %10

10:                                               ; preds = %8
  %11 = call ptr @make_data(i32 noundef %.15, i32 noundef %.01)
  call void @melt_data(ptr noundef %11, ptr noundef %0)
  %12 = call i32 @equal_data(ptr noundef %11, ptr noundef %0)
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %37

13:                                               ; preds = %10
  %14 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %15 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store ptr %14, ptr %15, align 8
  %16 = call ptr @copy_data(ptr noundef %11)
  %17 = load ptr, ptr %15, align 8
  store ptr %16, ptr %17, align 8
  %18 = load ptr, ptr %15, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %19, align 8
  %20 = load ptr, ptr %15, align 8
  %21 = load i32, ptr %1, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 @get_value(ptr noundef %11)
  store i32 %24, ptr %1, align 4
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ %24, %23 ], [ %21, %13 ]
  %27 = load i32, ptr %2, align 4
  %.not4 = icmp eq i32 %27, 0
  br i1 %.not4, label %28, label %43

28:                                               ; preds = %25
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %28
  %31 = load i32, ptr @ncol, align 4
  %32 = add nsw i32 %31, -1
  %33 = load i32, ptr @nrow, align 4
  %34 = add nsw i32 %33, -1
  %35 = call i32 @in_wanted(ptr noundef %11)
  %.not5 = icmp eq i32 %35, 0
  br i1 %.not5, label %43, label %36

36:                                               ; preds = %30
  store i32 2, ptr %2, align 4
  br label %43

37:                                               ; preds = %10
  %38 = icmp eq i32 %.01, 0
  %39 = load i32, ptr @nrow, align 4
  %40 = add nsw i32 %39, -1
  %.4 = select i1 %38, i32 %40, i32 %.15
  %41 = load i32, ptr @ncol, align 4
  %42 = add nsw i32 %41, -1
  br label %43

43:                                               ; preds = %37, %36, %30, %28, %25
  %.3 = phi i32 [ %.4, %37 ], [ %.15, %25 ], [ %.15, %28 ], [ %34, %36 ], [ %34, %30 ]
  %.23 = phi i32 [ %42, %37 ], [ %.01, %25 ], [ %.01, %28 ], [ %32, %36 ], [ %32, %30 ]
  %.2 = phi ptr [ %.1, %37 ], [ %20, %25 ], [ %20, %28 ], [ %20, %36 ], [ %20, %30 ]
  call void @free(ptr noundef %11) #5
  %44 = add nsw i32 %.23, 1
  br label %8, !llvm.loop !20

45:                                               ; preds = %8
  %46 = add nsw i32 %.15, 1
  br label %6, !llvm.loop !21

47:                                               ; preds = %6
  %48 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %4) #5
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
  %4 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  store ptr null, ptr @game_tree, align 8
  %5 = call ptr @make_data(i32 noundef 0, i32 noundef 0)
  %6 = load i32, ptr %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4
  br label %8

8:                                                ; preds = %36, %1
  %.01 = phi ptr [ %4, %1 ], [ %.12, %36 ]
  %.0 = phi ptr [ %5, %1 ], [ %.1, %36 ]
  %9 = call i32 @next_data(ptr noundef %.0)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %37, label %10

10:                                               ; preds = %8
  %11 = call i32 @valid_data(ptr noundef %.0)
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %36, label %12

12:                                               ; preds = %10
  %13 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  %14 = getelementptr inbounds nuw i8, ptr %.01, i64 24
  store ptr %13, ptr %14, align 8
  %15 = load ptr, ptr @game_tree, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store ptr %13, ptr @game_tree, align 8
  br label %18

18:                                               ; preds = %17, %12
  %19 = call ptr @copy_data(ptr noundef %.0)
  %20 = load ptr, ptr %14, align 8
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %19, ptr %21, align 8
  %22 = call ptr @make_list(ptr noundef %.0, ptr noundef nonnull %3, ptr noundef nonnull %2)
  %23 = load ptr, ptr %14, align 8
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %22, ptr %24, align 8
  %25 = load i32, ptr %3, align 4
  %26 = load ptr, ptr %14, align 8
  store i32 %25, ptr %26, align 8
  %27 = load ptr, ptr %14, align 8
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr null, ptr %28, align 8
  %29 = load ptr, ptr %14, align 8
  %30 = load i32, ptr %2, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  call void @free(ptr noundef %.0) #5
  %33 = load i32, ptr @nrow, align 4
  %34 = load i32, ptr @ncol, align 4
  %35 = call ptr @make_data(i32 noundef %33, i32 noundef %34)
  br label %36

36:                                               ; preds = %32, %18, %10
  %.12 = phi ptr [ %.01, %10 ], [ %29, %32 ], [ %29, %18 ]
  %.1 = phi ptr [ %.0, %10 ], [ %35, %32 ], [ %.0, %18 ]
  br label %8, !llvm.loop !22

37:                                               ; preds = %8
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %39 = load ptr, ptr %38, align 8
  call void @free(ptr noundef %4) #5
  ret ptr %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %3, align 8
  br label %4

4:                                                ; preds = %26, %1
  %.01 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %.0 = phi ptr [ %2, %1 ], [ %.1, %26 ]
  %5 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %.01, %5
  br i1 %.not, label %28, label %.preheader

.preheader:                                       ; preds = %4
  br label %6

6:                                                ; preds = %25, %.preheader
  %.04 = phi i32 [ %.15, %25 ], [ 0, %.preheader ]
  %.12 = phi i32 [ %.23, %25 ], [ %.01, %.preheader ]
  %.1 = phi ptr [ %.2, %25 ], [ %.0, %.preheader ]
  %7 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %.04, %7
  br i1 %.not1, label %26, label %8

8:                                                ; preds = %6
  %9 = call ptr @make_data(i32 noundef %.12, i32 noundef %.04)
  call void @melt_data(ptr noundef %9, ptr noundef %0)
  %10 = call i32 @equal_data(ptr noundef %9, ptr noundef %0)
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %11, label %20

11:                                               ; preds = %8
  %12 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %13 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store ptr %12, ptr %13, align 8
  %14 = call ptr @copy_data(ptr noundef %9)
  %15 = load ptr, ptr %13, align 8
  store ptr %14, ptr %15, align 8
  %16 = load ptr, ptr %13, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %17, align 8
  %18 = load ptr, ptr %13, align 8
  %19 = add nsw i32 %.04, 1
  br label %25

20:                                               ; preds = %8
  %21 = icmp eq i32 %.04, 0
  %22 = load i32, ptr @nrow, align 4
  %23 = add nsw i32 %22, -1
  %.3 = select i1 %21, i32 %23, i32 %.12
  %24 = load i32, ptr @ncol, align 4
  br label %25

25:                                               ; preds = %20, %11
  %.15 = phi i32 [ %24, %20 ], [ %19, %11 ]
  %.23 = phi i32 [ %.3, %20 ], [ %.12, %11 ]
  %.2 = phi ptr [ %.1, %20 ], [ %18, %11 ]
  call void @free(ptr noundef %9) #5
  br label %6, !llvm.loop !23

26:                                               ; preds = %6
  %27 = add nsw i32 %.12, 1
  br label %4, !llvm.loop !24

28:                                               ; preds = %4
  %29 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %2) #5
  store ptr %29, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %.preheader

.preheader:                                       ; preds = %1
  br label %3

3:                                                ; preds = %9, %.preheader
  %.01 = phi ptr [ %10, %9 ], [ %0, %.preheader ]
  %4 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  %5 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %.critedge, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %.01, align 8
  %8 = call i32 @get_value(ptr noundef %7)
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %.critedge, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %4, align 8
  br label %3, !llvm.loop !25

.critedge:                                        ; preds = %6, %3
  %11 = load ptr, ptr %.01, align 8
  %12 = call ptr @copy_data(ptr noundef %11)
  br label %13

13:                                               ; preds = %.critedge, %1
  %.0 = phi ptr [ %12, %.critedge ], [ null, %1 ]
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
  br label %3

3:                                                ; preds = %7, %2
  %.0 = phi ptr [ %1, %2 ], [ %9, %7 ]
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @equal_data(ptr noundef %5, ptr noundef %0)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %9 = load ptr, ptr %8, align 8
  br label %3, !llvm.loop !27

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %12 = load ptr, ptr %11, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_real_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  br label %5

5:                                                ; preds = %12, %4
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 0, %4 ]
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %6, ptr %3, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !28

13:                                               ; preds = %5
  store i32 %8, ptr %2, align 4
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
  br label %10

10:                                               ; preds = %19, %0
  %.02 = phi ptr [ %9, %0 ], [ %13, %19 ]
  %.01 = phi i32 [ 0, %0 ], [ %.1, %19 ]
  %.not = icmp eq ptr %.02, null
  br i1 %.not, label %20, label %11

11:                                               ; preds = %10
  %12 = call ptr @where(ptr noundef nonnull %.02, ptr noundef %6)
  %13 = call ptr @get_good_move(ptr noundef %12)
  %.not3 = icmp eq ptr %13, null
  br i1 %.not3, label %19, label %14

14:                                               ; preds = %11
  call void @get_real_move(ptr noundef nonnull %13, ptr noundef nonnull %.02, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %15 = load i32, ptr %1, align 4
  %16 = load i32, ptr %2, align 4
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.01, i32 noundef %15, i32 noundef %16) #5
  %18 = sub nsw i32 1, %.01
  call void @free(ptr noundef nonnull %.02) #5
  br label %19

19:                                               ; preds = %14, %11
  %.1 = phi i32 [ %18, %14 ], [ %.01, %11 ]
  br label %10, !llvm.loop !29

20:                                               ; preds = %10
  call void @dump_play(ptr noundef %6)
  %21 = sub nsw i32 1, %.01
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %21) #5
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
