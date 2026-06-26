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
  br label %7

7:                                                ; preds = %8, %1
  %.0 = phi i32 [ %6, %1 ], [ %9, %8 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %14, label %8

8:                                                ; preds = %7
  %9 = add nsw i32 %.0, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [4 x i8], ptr %5, i64 %10
  store i32 %12, ptr %13, align 4
  br label %7, !llvm.loop !7

14:                                               ; preds = %7
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
  br label %4

4:                                                ; preds = %14, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %14 ]
  %5 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %15, label %6

6:                                                ; preds = %4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [4 x i8], ptr %1, i64 %7
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store i32 %11, ptr %8, align 4
  br label %14

14:                                               ; preds = %13, %6
  br label %4, !llvm.loop !10

15:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %15, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %15 ]
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
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %4, !llvm.loop !11

16:                                               ; preds = %13
  %17 = icmp slt i32 %.0, 1
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %.pre = load i32, ptr @ncol, align 4
  br label %3

3:                                                ; preds = %10, %1
  %.01 = phi i32 [ %2, %1 ], [ %7, %10 ]
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %.not = icmp eq i32 %.0, %.pre
  br i1 %.not, label %12, label %4

4:                                                ; preds = %3
  %5 = zext nneg i32 %.0 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, %.01
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %12

10:                                               ; preds = %4
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !12

12:                                               ; preds = %9, %3
  %13 = zext i1 %.not to i32
  ret i32 %13
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

2:                                                ; preds = %13, %1
  %3 = phi i32 [ %.pre2, %1 ], [ %14, %13 ]
  %.0 = phi i32 [ 0, %1 ], [ %5, %13 ]
  %.not = icmp eq i32 %.0, %3
  br i1 %.not, label %15, label %4

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
  %.pre = load i32, ptr @ncol, align 4
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi i32 [ %.pre, %11 ], [ %5, %4 ]
  br label %2, !llvm.loop !14

15:                                               ; preds = %2
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
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %3
  br label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %.01, i64 8
  br label %2, !llvm.loop !17

9:                                                ; preds = %6, %2
  br i1 %.not, label %10, label %11

10:                                               ; preds = %9
  br label %12

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11, %10
  %.0 = phi i32 [ 0, %10 ], [ 1, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = call ptr @malloc(i64 noundef %5) #4
  br label %7

7:                                                ; preds = %8, %2
  %.0 = phi i32 [ 0, %2 ], [ %12, %8 ]
  %.not = icmp eq i32 %.0, %1
  br i1 %.not, label %13, label %8

8:                                                ; preds = %7
  %9 = load i32, ptr @nrow, align 4
  %10 = zext nneg i32 %.0 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %10
  store i32 %9, ptr %11, align 4
  %12 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !18

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %16, %13
  %.1 = phi i32 [ %1, %13 ], [ %19, %16 ]
  %15 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %.1, %15
  br i1 %.not1, label %20, label %16

16:                                               ; preds = %14
  %17 = zext nneg i32 %.1 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %17
  store i32 %0, ptr %18, align 4
  %19 = add nuw nsw i32 %.1, 1
  br label %14, !llvm.loop !19

20:                                               ; preds = %14
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 1, ptr %1, align 4
  %4 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %5, align 8
  br label %6

6:                                                ; preds = %49, %3
  %.04 = phi i32 [ 0, %3 ], [ %50, %49 ]
  %.0 = phi ptr [ %4, %3 ], [ %.1, %49 ]
  %7 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %.04, %7
  br i1 %.not, label %51, label %8

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %48, %8
  %.15 = phi i32 [ %.04, %8 ], [ %.3, %48 ]
  %.01 = phi i32 [ 0, %8 ], [ %.23, %48 ]
  %.1 = phi ptr [ %.0, %8 ], [ %.2, %48 ]
  %10 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %.01, %10
  br i1 %.not2, label %49, label %11

11:                                               ; preds = %9
  %12 = call ptr @make_data(i32 noundef %.15, i32 noundef %.01)
  call void @melt_data(ptr noundef %12, ptr noundef %0)
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %14, label %41

14:                                               ; preds = %11
  %15 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %16 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store ptr %15, ptr %16, align 8
  %17 = call ptr @copy_data(ptr noundef %12)
  %18 = load ptr, ptr %16, align 8
  store ptr %17, ptr %18, align 8
  %19 = load ptr, ptr %16, align 8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %20, align 8
  %21 = load ptr, ptr %16, align 8
  %22 = load i32, ptr %1, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = call i32 @get_value(ptr noundef %12)
  store i32 %25, ptr %1, align 4
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i32 [ %25, %24 ], [ %22, %14 ]
  %28 = load i32, ptr %2, align 4
  %.not4 = icmp eq i32 %28, 0
  br i1 %.not4, label %29, label %39

29:                                               ; preds = %26
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %29
  %32 = load i32, ptr @ncol, align 4
  %33 = add nsw i32 %32, -1
  %34 = load i32, ptr @nrow, align 4
  %35 = add nsw i32 %34, -1
  %36 = call i32 @in_wanted(ptr noundef %12)
  %.not5 = icmp eq i32 %36, 0
  br i1 %.not5, label %38, label %37

37:                                               ; preds = %31
  store i32 2, ptr %2, align 4
  br label %38

38:                                               ; preds = %37, %31
  br label %39

39:                                               ; preds = %38, %29, %26
  %.26 = phi i32 [ %.15, %26 ], [ %35, %38 ], [ %.15, %29 ]
  %.12 = phi i32 [ %.01, %26 ], [ %33, %38 ], [ %.01, %29 ]
  %40 = add nsw i32 %.12, 1
  br label %48

41:                                               ; preds = %11
  %42 = icmp eq i32 %.01, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, ptr @nrow, align 4
  %45 = add nsw i32 %44, -1
  br label %46

46:                                               ; preds = %43, %41
  %.4 = phi i32 [ %45, %43 ], [ %.15, %41 ]
  %47 = load i32, ptr @ncol, align 4
  br label %48

48:                                               ; preds = %46, %39
  %.3 = phi i32 [ %.4, %46 ], [ %.26, %39 ]
  %.23 = phi i32 [ %47, %46 ], [ %40, %39 ]
  %.2 = phi ptr [ %.1, %46 ], [ %21, %39 ]
  call void @free(ptr noundef %12) #5
  br label %9, !llvm.loop !20

49:                                               ; preds = %9
  %50 = add nsw i32 %.15, 1
  br label %6, !llvm.loop !21

51:                                               ; preds = %6
  %52 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %4) #5
  %.not1 = icmp eq ptr %52, null
  br i1 %.not1, label %56, label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %1, align 4
  %55 = sub nsw i32 1, %54
  store i32 %55, ptr %1, align 4
  br label %56

56:                                               ; preds = %53, %51
  ret ptr %52
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

8:                                                ; preds = %37, %1
  %.01 = phi ptr [ %4, %1 ], [ %.12, %37 ]
  %.0 = phi ptr [ %5, %1 ], [ %.1, %37 ]
  %9 = call i32 @next_data(ptr noundef %.0)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %38, label %10

10:                                               ; preds = %8
  %11 = call i32 @valid_data(ptr noundef %.0)
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %37, label %12

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

36:                                               ; preds = %32, %18
  %.2 = phi ptr [ %35, %32 ], [ %.0, %18 ]
  br label %37

37:                                               ; preds = %36, %10
  %.12 = phi ptr [ %29, %36 ], [ %.01, %10 ]
  %.1 = phi ptr [ %.2, %36 ], [ %.0, %10 ]
  br label %8, !llvm.loop !22

38:                                               ; preds = %8
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
  br label %4

4:                                                ; preds = %29, %1
  %.01 = phi i32 [ 0, %1 ], [ %30, %29 ]
  %.0 = phi ptr [ %2, %1 ], [ %.1, %29 ]
  %5 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %.01, %5
  br i1 %.not, label %31, label %6

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %28, %6
  %.04 = phi i32 [ 0, %6 ], [ %.15, %28 ]
  %.12 = phi i32 [ %.01, %6 ], [ %.23, %28 ]
  %.1 = phi ptr [ %.0, %6 ], [ %.2, %28 ]
  %8 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %.04, %8
  br i1 %.not1, label %29, label %9

9:                                                ; preds = %7
  %10 = call ptr @make_data(i32 noundef %.12, i32 noundef %.04)
  call void @melt_data(ptr noundef %10, ptr noundef %0)
  %11 = call i32 @equal_data(ptr noundef %10, ptr noundef %0)
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %12, label %21

12:                                               ; preds = %9
  %13 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %14 = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store ptr %13, ptr %14, align 8
  %15 = call ptr @copy_data(ptr noundef %10)
  %16 = load ptr, ptr %14, align 8
  store ptr %15, ptr %16, align 8
  %17 = load ptr, ptr %14, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %18, align 8
  %19 = load ptr, ptr %14, align 8
  %20 = add nsw i32 %.04, 1
  br label %28

21:                                               ; preds = %9
  %22 = icmp eq i32 %.04, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i32, ptr @nrow, align 4
  %25 = add nsw i32 %24, -1
  br label %26

26:                                               ; preds = %23, %21
  %.3 = phi i32 [ %25, %23 ], [ %.12, %21 ]
  %27 = load i32, ptr @ncol, align 4
  br label %28

28:                                               ; preds = %26, %12
  %.15 = phi i32 [ %27, %26 ], [ %20, %12 ]
  %.23 = phi i32 [ %.3, %26 ], [ %.12, %12 ]
  %.2 = phi ptr [ %.1, %26 ], [ %19, %12 ]
  call void @free(ptr noundef %10) #5
  br label %7, !llvm.loop !23

29:                                               ; preds = %7
  %30 = add nsw i32 %.12, 1
  br label %4, !llvm.loop !24

31:                                               ; preds = %4
  %32 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %2) #5
  store ptr %32, ptr @wanted, align 8
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

2:                                                ; preds = %5, %1
  %.0 = phi ptr [ %0, %1 ], [ %4, %5 ]
  %3 = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %4 = load ptr, ptr %3, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %6, label %5

5:                                                ; preds = %2
  br label %2, !llvm.loop !26

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %8 = load ptr, ptr %7, align 8
  %9 = call ptr @get_good_move(ptr noundef %8)
  ret ptr %9
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
  %storemerge = phi i32 [ 0, %4 ], [ %13, %12 ]
  store i32 %storemerge, ptr %3, align 4
  %6 = zext nneg i32 %storemerge to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = add nuw nsw i32 %storemerge, 1
  br label %5, !llvm.loop !28

14:                                               ; preds = %5
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
  switch i32 2, label %34 [
    i32 1, label %4
    i32 2, label %8
    i32 3, label %28
  ]

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %6, %4
  br i1 poison, label %6, label %7

6:                                                ; preds = %5
  br label %5, !llvm.loop !29

7:                                                ; preds = %5
  br label %34

8:                                                ; preds = %0
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #5
  store i32 7, ptr @ncol, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #5
  store i32 8, ptr @nrow, align 4
  %11 = call ptr @make_play(i32 noundef 1)
  %12 = load i32, ptr @nrow, align 4
  %13 = load i32, ptr @ncol, align 4
  %14 = call ptr @make_data(i32 noundef %12, i32 noundef %13)
  br label %15

15:                                               ; preds = %24, %8
  %.02 = phi ptr [ %14, %8 ], [ %18, %24 ]
  %.01 = phi i32 [ 0, %8 ], [ %.1, %24 ]
  %.not = icmp eq ptr %.02, null
  br i1 %.not, label %25, label %16

16:                                               ; preds = %15
  %17 = call ptr @where(ptr noundef nonnull %.02, ptr noundef %11)
  %18 = call ptr @get_good_move(ptr noundef %17)
  %.not3 = icmp eq ptr %18, null
  br i1 %.not3, label %24, label %19

19:                                               ; preds = %16
  call void @get_real_move(ptr noundef nonnull %18, ptr noundef nonnull %.02, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %20 = load i32, ptr %1, align 4
  %21 = load i32, ptr %2, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.01, i32 noundef %20, i32 noundef %21) #5
  %23 = sub nsw i32 1, %.01
  call void @free(ptr noundef nonnull %.02) #5
  br label %24

24:                                               ; preds = %19, %16
  %.1 = phi i32 [ %23, %19 ], [ %.01, %16 ]
  br label %15, !llvm.loop !30

25:                                               ; preds = %15
  call void @dump_play(ptr noundef %11)
  %26 = sub nsw i32 1, %.01
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %26) #5
  br label %34

28:                                               ; preds = %0
  br label %29

29:                                               ; preds = %32, %28
  br i1 poison, label %30, label %33

30:                                               ; preds = %29
  br i1 poison, label %31, label %32

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31, %30
  br label %29, !llvm.loop !31

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %25, %7, %0
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
