; ModuleID = 'results\paper_full\McGill_chomp\McGill_chomp.ll'
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
  br label %7

7:                                                ; preds = %8, %1
  %.0 = phi i32 [ %6, %1 ], [ %9, %8 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %15, label %8

8:                                                ; preds = %7
  %9 = add nsw i32 %.0, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %5, i64 %13
  store i32 %12, ptr %14, align 4
  br label %7, !llvm.loop !7

15:                                               ; preds = %7
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %22, %1
  %.01 = phi i32 [ 0, %1 ], [ %.12, %22 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %22 ]
  %3 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %.01, %3
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  %.not3 = icmp eq i32 %.0, 0
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i1 [ false, %2 ], [ %.not3, %4 ]
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @nrow, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = sext i32 %.01 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %0, i64 %14
  store i32 0, ptr %15, align 4
  %16 = add nsw i32 %.01, 1
  br label %22

17:                                               ; preds = %7
  %18 = sext i32 %.01 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %17, %13
  %.12 = phi i32 [ %16, %13 ], [ %.01, %17 ]
  %.1 = phi i32 [ %.0, %13 ], [ 1, %17 ]
  br label %2, !llvm.loop !9

23:                                               ; preds = %5
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %20, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %20 ]
  %5 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %21, label %6

6:                                                ; preds = %4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = sext i32 %5 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %1, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %5 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %0, i64 %18
  store i32 %17, ptr %19, align 4
  br label %20

20:                                               ; preds = %14, %6
  br label %4, !llvm.loop !10

21:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %16, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %16 ]
  %5 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %14, label %6

6:                                                ; preds = %4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %9, %12
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i1 [ false, %4 ], [ %13, %6 ]
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %4, !llvm.loop !11

17:                                               ; preds = %14
  %18 = icmp slt i32 %.0, 1
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %.01.in = phi ptr [ @nrow, %1 ], [ %12, %10 ]
  %.0 = phi i32 [ 0, %1 ], [ %13, %10 ]
  %3 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %.0, %3
  br i1 %.not, label %14, label %4

4:                                                ; preds = %2
  %.01 = load i32, ptr %.01.in, align 4
  %5 = zext nneg i32 %.0 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, %.01
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %14

10:                                               ; preds = %4
  %11 = zext nneg i32 %.0 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %11
  %13 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !12

14:                                               ; preds = %9, %2
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp eq i32 %.0, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
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
  br label %2

2:                                                ; preds = %13, %1
  %.0 = phi i32 [ 0, %1 ], [ %5, %13 ]
  %3 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %.0, %3
  br i1 %.not, label %14, label %4

4:                                                ; preds = %2
  %5 = add nuw nsw i32 %.0, 1
  %6 = zext nneg i32 %.0 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8) #5
  %10 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %5, %10
  br i1 %.not1, label %13, label %11

11:                                               ; preds = %4
  %12 = call i32 @putchar(i32 noundef 44) #5
  br label %13

13:                                               ; preds = %11, %4
  br label %2, !llvm.loop !14

14:                                               ; preds = %2
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

2:                                                ; preds = %7, %1
  %.01.in = phi ptr [ @wanted, %1 ], [ %8, %7 ]
  %.01 = load ptr, ptr %.01.in, align 8
  %.not = icmp eq ptr %.01, null
  br i1 %.not, label %9, label %3

3:                                                ; preds = %2
  %4 = load ptr, ptr %.01, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %.not2 = icmp eq i32 %5, 0
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %3
  br label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  br label %2, !llvm.loop !17

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %.01, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  br label %13

12:                                               ; preds = %9
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
  br label %7

7:                                                ; preds = %12, %2
  %.0 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %.not = icmp eq i32 %.0, %1
  br i1 %.not, label %14, label %8

8:                                                ; preds = %7
  %9 = load i32, ptr @nrow, align 4
  %10 = zext nneg i32 %.0 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %10
  store i32 %9, ptr %11, align 4
  br label %12

12:                                               ; preds = %8
  %13 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !18

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %20, %14
  %.1 = phi i32 [ %.0, %14 ], [ %21, %20 ]
  %16 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %.1, %16
  br i1 %.not1, label %22, label %17

17:                                               ; preds = %15
  %18 = zext nneg i32 %.1 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %18
  store i32 %0, ptr %19, align 4
  br label %20

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %.1, 1
  br label %15, !llvm.loop !19

22:                                               ; preds = %15
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 1, ptr %1, align 4
  %4 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %5, align 8
  br label %6

6:                                                ; preds = %54, %3
  %.04 = phi i32 [ 0, %3 ], [ %55, %54 ]
  %.0 = phi ptr [ %4, %3 ], [ %.1, %54 ]
  %7 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %.04, %7
  br i1 %.not, label %56, label %8

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %52, %8
  %.15 = phi i32 [ %.04, %8 ], [ %.3, %52 ]
  %.01 = phi i32 [ 0, %8 ], [ %.23, %52 ]
  %.1 = phi ptr [ %.0, %8 ], [ %.2, %52 ]
  %10 = load i32, ptr @ncol, align 4
  %.not8 = icmp eq i32 %.01, %10
  br i1 %.not8, label %53, label %11

11:                                               ; preds = %9
  %12 = call ptr @make_data(i32 noundef %.15, i32 noundef %.01)
  call void @melt_data(ptr noundef %12, ptr noundef %0)
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %.not9 = icmp eq i32 %13, 0
  br i1 %.not9, label %14, label %44

14:                                               ; preds = %11
  %15 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %16 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store ptr %15, ptr %16, align 8
  %17 = call ptr @copy_data(ptr noundef %12)
  %18 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %19 = load ptr, ptr %18, align 8
  store ptr %17, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %24 = load ptr, ptr %23, align 8
  %25 = load i32, ptr %1, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = call i32 @get_value(ptr noundef %12)
  store i32 %28, ptr %1, align 4
  br label %29

29:                                               ; preds = %27, %14
  %30 = load i32, ptr %2, align 4
  %.not10 = icmp eq i32 %30, 0
  br i1 %.not10, label %31, label %42

31:                                               ; preds = %29
  %32 = load i32, ptr %1, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, ptr @ncol, align 4
  %36 = add nsw i32 %35, -1
  %37 = load i32, ptr @nrow, align 4
  %38 = add nsw i32 %37, -1
  %39 = call i32 @in_wanted(ptr noundef %12)
  %.not11 = icmp eq i32 %39, 0
  br i1 %.not11, label %41, label %40

40:                                               ; preds = %34
  store i32 2, ptr %2, align 4
  br label %41

41:                                               ; preds = %40, %34
  br label %42

42:                                               ; preds = %41, %31, %29
  %.26 = phi i32 [ %.15, %29 ], [ %38, %41 ], [ %.15, %31 ]
  %.12 = phi i32 [ %.01, %29 ], [ %36, %41 ], [ %.01, %31 ]
  %43 = add nsw i32 %.12, 1
  br label %51

44:                                               ; preds = %11
  %45 = icmp eq i32 %.01, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, ptr @nrow, align 4
  %48 = add nsw i32 %47, -1
  br label %49

49:                                               ; preds = %46, %44
  %.4 = phi i32 [ %48, %46 ], [ %.15, %44 ]
  %50 = load i32, ptr @ncol, align 4
  br label %51

51:                                               ; preds = %49, %42
  %.3 = phi i32 [ %.4, %49 ], [ %.26, %42 ]
  %.23 = phi i32 [ %50, %49 ], [ %43, %42 ]
  %.2 = phi ptr [ %.1, %49 ], [ %24, %42 ]
  call void @free(ptr noundef %12) #5
  br label %52

52:                                               ; preds = %51
  br label %9, !llvm.loop !20

53:                                               ; preds = %9
  br label %54

54:                                               ; preds = %53
  %55 = add nsw i32 %.15, 1
  br label %6, !llvm.loop !21

56:                                               ; preds = %6
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %58 = load ptr, ptr %57, align 8
  call void @free(ptr noundef %4) #5
  %.not7 = icmp eq ptr %58, null
  br i1 %.not7, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %1, align 4
  %61 = sub nsw i32 1, %60
  store i32 %61, ptr %1, align 4
  br label %62

62:                                               ; preds = %59, %56
  ret ptr %58
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

8:                                                ; preds = %44, %1
  %.01 = phi ptr [ %4, %1 ], [ %.12, %44 ]
  %.0 = phi ptr [ %5, %1 ], [ %.1, %44 ]
  %9 = call i32 @next_data(ptr noundef %.0)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %45, label %10

10:                                               ; preds = %8
  %11 = call i32 @valid_data(ptr noundef %.0)
  %.not3 = icmp eq i32 %11, 0
  br i1 %.not3, label %44, label %12

12:                                               ; preds = %10
  %13 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  %14 = getelementptr inbounds nuw i8, ptr %.01, i64 24
  store ptr %13, ptr %14, align 8
  %15 = load ptr, ptr @game_tree, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %.01, i64 24
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr @game_tree, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = call ptr @copy_data(ptr noundef %.0)
  %22 = getelementptr inbounds nuw i8, ptr %.01, i64 24
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %21, ptr %24, align 8
  %25 = call ptr @make_list(ptr noundef %.0, ptr noundef nonnull %3, ptr noundef nonnull %2)
  %26 = getelementptr inbounds nuw i8, ptr %.01, i64 24
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %25, ptr %28, align 8
  %29 = load i32, ptr %3, align 4
  %30 = getelementptr inbounds nuw i8, ptr %.01, i64 24
  %31 = load ptr, ptr %30, align 8
  store i32 %29, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %.01, i64 24
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 24
  store ptr null, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %.01, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = load i32, ptr %2, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %20
  call void @free(ptr noundef %.0) #5
  %40 = load i32, ptr @nrow, align 4
  %41 = load i32, ptr @ncol, align 4
  %42 = call ptr @make_data(i32 noundef %40, i32 noundef %41)
  br label %43

43:                                               ; preds = %39, %20
  %.2 = phi ptr [ %42, %39 ], [ %.0, %20 ]
  br label %44

44:                                               ; preds = %43, %10
  %.12 = phi ptr [ %36, %43 ], [ %.01, %10 ]
  %.1 = phi ptr [ %.2, %43 ], [ %.0, %10 ]
  br label %8, !llvm.loop !22

45:                                               ; preds = %8
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %47 = load ptr, ptr %46, align 8
  call void @free(ptr noundef %4) #5
  ret ptr %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %3, align 8
  br label %4

4:                                                ; preds = %34, %1
  %.01 = phi i32 [ 0, %1 ], [ %35, %34 ]
  %.0 = phi ptr [ %2, %1 ], [ %.1, %34 ]
  %5 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %.01, %5
  br i1 %.not, label %36, label %6

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %32, %6
  %.04 = phi i32 [ 0, %6 ], [ %.15, %32 ]
  %.12 = phi i32 [ %.01, %6 ], [ %.23, %32 ]
  %.1 = phi ptr [ %.0, %6 ], [ %.2, %32 ]
  %8 = load i32, ptr @ncol, align 4
  %.not6 = icmp eq i32 %.04, %8
  br i1 %.not6, label %33, label %9

9:                                                ; preds = %7
  %10 = call ptr @make_data(i32 noundef %.12, i32 noundef %.04)
  call void @melt_data(ptr noundef %10, ptr noundef %0)
  %11 = call i32 @equal_data(ptr noundef %10, ptr noundef %0)
  %.not7 = icmp eq i32 %11, 0
  br i1 %.not7, label %12, label %24

12:                                               ; preds = %9
  %13 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %14 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store ptr %13, ptr %14, align 8
  %15 = call ptr @copy_data(ptr noundef %10)
  %16 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %17 = load ptr, ptr %16, align 8
  store ptr %15, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %22 = load ptr, ptr %21, align 8
  %23 = add nsw i32 %.04, 1
  br label %31

24:                                               ; preds = %9
  %25 = icmp eq i32 %.04, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32, ptr @nrow, align 4
  %28 = add nsw i32 %27, -1
  br label %29

29:                                               ; preds = %26, %24
  %.3 = phi i32 [ %28, %26 ], [ %.12, %24 ]
  %30 = load i32, ptr @ncol, align 4
  br label %31

31:                                               ; preds = %29, %12
  %.15 = phi i32 [ %30, %29 ], [ %23, %12 ]
  %.23 = phi i32 [ %.3, %29 ], [ %.12, %12 ]
  %.2 = phi ptr [ %.1, %29 ], [ %22, %12 ]
  call void @free(ptr noundef %10) #5
  br label %32

32:                                               ; preds = %31
  br label %7, !llvm.loop !23

33:                                               ; preds = %7
  br label %34

34:                                               ; preds = %33
  %35 = add nsw i32 %.12, 1
  br label %4, !llvm.loop !24

36:                                               ; preds = %4
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %38 = load ptr, ptr %37, align 8
  call void @free(ptr noundef %2) #5
  store ptr %38, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %20

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %14, %4
  %.01 = phi ptr [ %0, %4 ], [ %16, %14 ]
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
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  %16 = load ptr, ptr %15, align 8
  br label %5, !llvm.loop !25

17:                                               ; preds = %12
  %18 = load ptr, ptr %.01, align 8
  %19 = call ptr @copy_data(ptr noundef %18)
  br label %20

20:                                               ; preds = %17, %3
  %.0 = phi ptr [ null, %3 ], [ %19, %17 ]
  ret ptr %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi ptr [ %0, %1 ], [ %7, %5 ]
  %3 = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %4 = load ptr, ptr %3, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %7 = load ptr, ptr %6, align 8
  br label %2, !llvm.loop !26

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %10 = load ptr, ptr %9, align 8
  %11 = call ptr @get_good_move(ptr noundef %10)
  ret ptr %11
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

5:                                                ; preds = %13, %4
  %storemerge = phi i32 [ 0, %4 ], [ %15, %13 ]
  store i32 %storemerge, ptr %3, align 4
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load i32, ptr %3, align 4
  %15 = add nsw i32 %14, 1
  br label %5, !llvm.loop !28

16:                                               ; preds = %5
  %17 = load i32, ptr %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %puts3 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) #5
  store i32 2, ptr %1, align 4
  switch i32 2, label %35 [
    i32 1, label %4
    i32 2, label %9
    i32 3, label %29
  ]

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %7, %4
  br i1 poison, label %6, label %8

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6
  br label %5, !llvm.loop !29

8:                                                ; preds = %5
  br label %35

9:                                                ; preds = %0
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #5
  store i32 7, ptr @ncol, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #5
  store i32 8, ptr @nrow, align 4
  %12 = call ptr @make_play(i32 noundef 1)
  %13 = load i32, ptr @nrow, align 4
  %14 = load i32, ptr @ncol, align 4
  %15 = call ptr @make_data(i32 noundef %13, i32 noundef %14)
  br label %16

16:                                               ; preds = %25, %9
  %.02 = phi ptr [ %15, %9 ], [ %19, %25 ]
  %.01 = phi i32 [ 0, %9 ], [ %.1, %25 ]
  %.not = icmp eq ptr %.02, null
  br i1 %.not, label %26, label %17

17:                                               ; preds = %16
  %18 = call ptr @where(ptr noundef nonnull %.02, ptr noundef %12)
  %19 = call ptr @get_good_move(ptr noundef %18)
  %.not5 = icmp eq ptr %19, null
  br i1 %.not5, label %25, label %20

20:                                               ; preds = %17
  call void @get_real_move(ptr noundef nonnull %19, ptr noundef nonnull %.02, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %21 = load i32, ptr %1, align 4
  %22 = load i32, ptr %2, align 4
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.01, i32 noundef %21, i32 noundef %22) #5
  %24 = sub nsw i32 1, %.01
  call void @free(ptr noundef nonnull %.02) #5
  br label %25

25:                                               ; preds = %20, %17
  %.1 = phi i32 [ %24, %20 ], [ %.01, %17 ]
  br label %16, !llvm.loop !30

26:                                               ; preds = %16
  call void @dump_play(ptr noundef %12)
  %27 = sub nsw i32 1, %.01
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %27) #5
  br label %35

29:                                               ; preds = %0
  br label %30

30:                                               ; preds = %33, %29
  br i1 poison, label %31, label %34

31:                                               ; preds = %30
  br i1 poison, label %32, label %33

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32, %31
  br label %30, !llvm.loop !31

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %26, %8, %0
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
