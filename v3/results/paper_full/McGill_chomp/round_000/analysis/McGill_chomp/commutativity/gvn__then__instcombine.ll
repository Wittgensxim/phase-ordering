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

7:                                                ; preds = %9, %1
  %8 = phi i32 [ %10, %9 ], [ %6, %1 ]
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %15, label %9

9:                                                ; preds = %7
  %10 = add nsw i32 %8, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds [4 x i8], ptr %5, i64 %11
  store i32 %13, ptr %14, align 4
  br label %7, !llvm.loop !7

15:                                               ; preds = %7
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %20, %1
  %3 = phi i32 [ %21, %20 ], [ 0, %1 ]
  %4 = phi i32 [ %22, %20 ], [ 0, %1 ]
  %5 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %3, %5
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  %.not1 = icmp eq i32 %4, 0
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i1 [ false, %2 ], [ %.not1, %6 ]
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr @nrow, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  store i32 0, ptr %16, align 4
  %17 = add nsw i32 %3, 1
  br label %20

18:                                               ; preds = %9
  %19 = add nsw i32 %12, 1
  store i32 %19, ptr %11, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %3, %18 ], [ %17, %15 ]
  %22 = phi i32 [ 1, %18 ], [ %4, %15 ]
  br label %2, !llvm.loop !9

23:                                               ; preds = %7
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %18, %2
  %5 = phi i32 [ %6, %18 ], [ %3, %2 ]
  %6 = add nsw i32 %5, -1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %19, label %7

7:                                                ; preds = %4
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [4 x i8], ptr %1, i64 %8
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds [4 x i8], ptr %1, i64 %8
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds [4 x i8], ptr %0, i64 %8
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %7
  br label %4, !llvm.loop !10

19:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %16, %2
  %5 = phi i32 [ %6, %16 ], [ %3, %2 ]
  %6 = add nsw i32 %5, -1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %14, label %7

7:                                                ; preds = %4
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [4 x i8], ptr %1, i64 %8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br label %14

14:                                               ; preds = %7, %4
  %15 = phi i1 [ false, %4 ], [ %13, %7 ]
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %4, !llvm.loop !11

17:                                               ; preds = %14
  %18 = icmp slt i32 %5, 1
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %.pre = load i32, ptr @ncol, align 4
  br label %3

3:                                                ; preds = %12, %1
  %4 = phi i32 [ %9, %12 ], [ %2, %1 ]
  %5 = phi i32 [ %13, %12 ], [ 0, %1 ]
  %.not = icmp eq i32 %5, %.pre
  br i1 %.not, label %14, label %6

6:                                                ; preds = %3
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %4
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %14

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %5, 1
  br label %3, !llvm.loop !12

14:                                               ; preds = %11, %3
  %15 = icmp eq i32 %5, %.pre
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
  br label %2

2:                                                ; preds = %7, %1
  %.in = phi ptr [ %8, %7 ], [ @game_tree, %1 ]
  %3 = load ptr, ptr %.in, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @equal_data(ptr noundef %5, ptr noundef %0)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %2, !llvm.loop !13

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 8
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %.pre1 = load i32, ptr @ncol, align 4
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi i32 [ %15, %14 ], [ %.pre1, %1 ]
  %4 = phi i32 [ %6, %14 ], [ 0, %1 ]
  %.not = icmp eq i32 %4, %3
  br i1 %.not, label %16, label %5

5:                                                ; preds = %2
  %6 = add nuw nsw i32 %4, 1
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9) #5
  %11 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %6, %11
  br i1 %.not2, label %14, label %12

12:                                               ; preds = %5
  %13 = call i32 @putchar(i32 noundef 44) #5
  %.pre = load i32, ptr @ncol, align 4
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ %.pre, %12 ], [ %6, %5 ]
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

2:                                                ; preds = %4, %1
  %3 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %3, align 8
  call void @show_move(ptr noundef %5)
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = load ptr, ptr %6, align 8
  br label %2, !llvm.loop !15

8:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %3 = phi ptr [ %12, %4 ], [ %0, %1 ]
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %13, label %4

4:                                                ; preds = %2
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = load ptr, ptr %5, align 8
  call void @show_data(ptr noundef %6)
  %7 = load i32, ptr %3, align 8
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %7) #5
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = load ptr, ptr %9, align 8
  call void @show_list(ptr noundef %10)
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %12 = load ptr, ptr %11, align 8
  br label %2, !llvm.loop !16

13:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %8, %1
  %.in = phi ptr [ %9, %8 ], [ @wanted, %1 ]
  %3 = load ptr, ptr %.in, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %10, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @equal_data(ptr noundef %5, ptr noundef %0)
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4
  br label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %2, !llvm.loop !17

10:                                               ; preds = %7, %2
  %11 = icmp eq ptr %3, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %14

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %12
  %15 = phi i32 [ 1, %13 ], [ 0, %12 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = call ptr @malloc(i64 noundef %5) #4
  br label %7

7:                                                ; preds = %9, %2
  %8 = phi i32 [ %13, %9 ], [ 0, %2 ]
  %.not = icmp eq i32 %8, %1
  br i1 %.not, label %14, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr @nrow, align 4
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %11
  store i32 %10, ptr %12, align 4
  %13 = add nuw nsw i32 %8, 1
  br label %7, !llvm.loop !18

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %18, %14
  %16 = phi i32 [ %21, %18 ], [ %1, %14 ]
  %17 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %16, %17
  br i1 %.not1, label %22, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %6, i64 %19
  store i32 %0, ptr %20, align 4
  %21 = add nsw i32 %16, 1
  br label %15, !llvm.loop !19

22:                                               ; preds = %15
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store i32 1, ptr %1, align 4
  %9 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %10, align 8
  store ptr %9, ptr %8, align 8
  br label %11

11:                                               ; preds = %69, %3
  %12 = phi ptr [ %17, %69 ], [ %0, %3 ]
  %13 = phi i32 [ %70, %69 ], [ 0, %3 ]
  %14 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %13, %14
  br i1 %.not, label %71, label %15

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %65, %15
  %storemerge = phi i32 [ 0, %15 ], [ %66, %65 ]
  %17 = phi ptr [ %12, %15 ], [ %23, %65 ]
  %18 = phi i32 [ %13, %15 ], [ %68, %65 ]
  store i32 %storemerge, ptr %6, align 4
  %19 = load i32, ptr @ncol, align 4
  %.not6 = icmp eq i32 %storemerge, %19
  br i1 %.not6, label %69, label %20

20:                                               ; preds = %16
  %21 = call ptr @make_data(i32 noundef %18, i32 noundef %storemerge)
  store ptr %21, ptr %7, align 8
  call void @melt_data(ptr noundef %21, ptr noundef %17)
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = call i32 @equal_data(ptr noundef %22, ptr noundef %23)
  %.not7 = icmp eq i32 %24, 0
  br i1 %.not7, label %25, label %55

25:                                               ; preds = %20
  %26 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %26, ptr %28, align 8
  %29 = call ptr @copy_data(ptr noundef %22)
  %30 = load ptr, ptr %28, align 8
  store ptr %29, ptr %30, align 8
  %31 = load ptr, ptr %28, align 8
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr null, ptr %32, align 8
  %33 = load ptr, ptr %28, align 8
  store ptr %33, ptr %8, align 8
  %34 = load i32, ptr %1, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 @get_value(ptr noundef %22)
  store i32 %37, ptr %1, align 4
  br label %38

38:                                               ; preds = %36, %25
  %39 = load ptr, ptr %5, align 8
  %40 = load i32, ptr %39, align 4
  %.not8 = icmp eq i32 %40, 0
  br i1 %.not8, label %41, label %._crit_edge

._crit_edge:                                      ; preds = %38
  %.pre1.pre = load ptr, ptr %7, align 8
  br label %52

41:                                               ; preds = %38
  %42 = load i32, ptr %1, align 4
  %43 = icmp eq i32 %42, 0
  %.pre1.pre3 = load ptr, ptr %7, align 8
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, ptr @ncol, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr %6, align 4
  %47 = load i32, ptr @nrow, align 4
  %48 = add nsw i32 %47, -1
  %49 = call i32 @in_wanted(ptr noundef %.pre1.pre3)
  %.not9 = icmp eq i32 %49, 0
  br i1 %.not9, label %51, label %50

50:                                               ; preds = %44
  store i32 2, ptr %39, align 4
  br label %51

51:                                               ; preds = %50, %44
  br label %52

52:                                               ; preds = %._crit_edge, %51, %41
  %.pre1 = phi ptr [ %.pre1.pre3, %51 ], [ %.pre1.pre3, %41 ], [ %.pre1.pre, %._crit_edge ]
  %53 = phi i32 [ %48, %51 ], [ %18, %41 ], [ %18, %._crit_edge ]
  %.pre2 = load i32, ptr %6, align 4
  %54 = add nsw i32 %.pre2, 1
  br label %65

55:                                               ; preds = %20
  %56 = load i32, ptr %6, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, ptr @nrow, align 4
  %60 = add nsw i32 %59, -1
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i32 [ %60, %58 ], [ %18, %55 ]
  %63 = load i32, ptr @ncol, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, ptr %6, align 4
  br label %65

65:                                               ; preds = %61, %52
  %66 = phi i32 [ %63, %61 ], [ %54, %52 ]
  %67 = phi ptr [ %22, %61 ], [ %.pre1, %52 ]
  %68 = phi i32 [ %62, %61 ], [ %53, %52 ]
  call void @free(ptr noundef %67) #5
  br label %16, !llvm.loop !20

69:                                               ; preds = %16
  %70 = add nsw i32 %18, 1
  br label %11, !llvm.loop !21

71:                                               ; preds = %11
  %72 = load ptr, ptr %10, align 8
  store ptr %72, ptr %8, align 8
  call void @free(ptr noundef %9) #5
  %.not5 = icmp eq ptr %72, null
  br i1 %.not5, label %76, label %73

73:                                               ; preds = %71
  %74 = load i32, ptr %1, align 4
  %75 = sub nsw i32 1, %74
  store i32 %75, ptr %1, align 4
  %.pre = load ptr, ptr %8, align 8
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi ptr [ %.pre, %73 ], [ null, %71 ]
  ret ptr %77
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_play(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %7 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  store ptr %7, ptr %5, align 8
  store ptr %7, ptr %6, align 8
  store ptr null, ptr @game_tree, align 8
  %8 = call ptr @make_data(i32 noundef 0, i32 noundef 0)
  store ptr %8, ptr %4, align 8
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = phi ptr [ %45, %44 ], [ %8, %1 ]
  %13 = call i32 @next_data(ptr noundef %12)
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %46, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8
  %16 = call i32 @valid_data(ptr noundef %15)
  %.not1 = icmp eq i32 %16, 0
  br i1 %.not1, label %44, label %17

17:                                               ; preds = %14
  %18 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %18, ptr %20, align 8
  %21 = load ptr, ptr @game_tree, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store ptr %18, ptr @game_tree, align 8
  br label %24

24:                                               ; preds = %23, %17
  %25 = call ptr @copy_data(ptr noundef %15)
  %26 = load ptr, ptr %20, align 8
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %25, ptr %27, align 8
  %28 = call ptr @make_list(ptr noundef %15, ptr noundef nonnull %3, ptr noundef nonnull %2)
  %29 = load ptr, ptr %20, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %28, ptr %30, align 8
  %31 = load i32, ptr %3, align 4
  %32 = load ptr, ptr %20, align 8
  store i32 %31, ptr %32, align 8
  %33 = load ptr, ptr %20, align 8
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 24
  store ptr null, ptr %34, align 8
  %35 = load ptr, ptr %20, align 8
  store ptr %35, ptr %6, align 8
  %36 = load i32, ptr %2, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  call void @free(ptr noundef %15) #5
  %39 = load i32, ptr @nrow, align 4
  %40 = load i32, ptr @ncol, align 4
  %41 = call ptr @make_data(i32 noundef %39, i32 noundef %40)
  store ptr %41, ptr %4, align 8
  br label %42

42:                                               ; preds = %38, %24
  %43 = phi ptr [ %41, %38 ], [ %15, %24 ]
  br label %44

44:                                               ; preds = %42, %14
  %45 = phi ptr [ %43, %42 ], [ %15, %14 ]
  br label %11, !llvm.loop !22

46:                                               ; preds = %11
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 24
  %49 = load ptr, ptr %48, align 8
  store ptr %49, ptr %6, align 8
  call void @free(ptr noundef %47) #5
  ret ptr %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %6 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %7, align 8
  store ptr %6, ptr %5, align 8
  br label %8

8:                                                ; preds = %45, %1
  %9 = phi ptr [ %14, %45 ], [ %0, %1 ]
  %10 = phi i32 [ %46, %45 ], [ 0, %1 ]
  %11 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %10, %11
  br i1 %.not, label %47, label %12

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %42, %12
  %storemerge = phi i32 [ 0, %12 ], [ %43, %42 ]
  %14 = phi ptr [ %9, %12 ], [ %20, %42 ]
  %15 = phi i32 [ %10, %12 ], [ %44, %42 ]
  store i32 %storemerge, ptr %3, align 4
  %16 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %storemerge, %16
  br i1 %.not1, label %45, label %17

17:                                               ; preds = %13
  %18 = call ptr @make_data(i32 noundef %15, i32 noundef %storemerge)
  store ptr %18, ptr %4, align 8
  call void @melt_data(ptr noundef %18, ptr noundef %14)
  %19 = load ptr, ptr %4, align 8
  %20 = load ptr, ptr %2, align 8
  %21 = call i32 @equal_data(ptr noundef %19, ptr noundef %20)
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %22, label %32

22:                                               ; preds = %17
  %23 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %23, ptr %25, align 8
  %26 = call ptr @copy_data(ptr noundef %19)
  %27 = load ptr, ptr %25, align 8
  store ptr %26, ptr %27, align 8
  %28 = load ptr, ptr %25, align 8
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr null, ptr %29, align 8
  %30 = load ptr, ptr %25, align 8
  store ptr %30, ptr %5, align 8
  %.pre = load i32, ptr %3, align 4
  %31 = add nsw i32 %.pre, 1
  br label %42

32:                                               ; preds = %17
  %33 = load i32, ptr %3, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, ptr @nrow, align 4
  %37 = add nsw i32 %36, -1
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %37, %35 ], [ %15, %32 ]
  %40 = load i32, ptr @ncol, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, ptr %3, align 4
  br label %42

42:                                               ; preds = %38, %22
  %43 = phi i32 [ %40, %38 ], [ %31, %22 ]
  %44 = phi i32 [ %39, %38 ], [ %15, %22 ]
  call void @free(ptr noundef %19) #5
  br label %13, !llvm.loop !23

45:                                               ; preds = %13
  %46 = add nsw i32 %15, 1
  br label %8, !llvm.loop !24

47:                                               ; preds = %8
  %48 = load ptr, ptr %7, align 8
  store ptr %48, ptr %5, align 8
  call void @free(ptr noundef %6) #5
  store ptr %48, ptr @wanted, align 8
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

5:                                                ; preds = %15, %4
  %6 = phi ptr [ %16, %15 ], [ %0, %4 ]
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %6, align 8
  %11 = call i32 @get_value(ptr noundef %10)
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 8
  br label %5, !llvm.loop !25

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 8
  %19 = call ptr @copy_data(ptr noundef %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi ptr [ %19, %17 ], [ null, %3 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %5, %6 ], [ %0, %1 ]
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  br label %2, !llvm.loop !26

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = load ptr, ptr %8, align 8
  %10 = call ptr @get_good_move(ptr noundef %9)
  ret ptr %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %10, %8 ], [ %1, %2 ]
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %10 = load ptr, ptr %9, align 8
  br label %3, !llvm.loop !27

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %13 = load ptr, ptr %12, align 8
  ret ptr %13
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
  switch i32 2, label %37 [
    i32 1, label %4
    i32 2, label %8
    i32 3, label %31
  ]

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %6, %4
  br i1 poison, label %6, label %7

6:                                                ; preds = %5
  br label %5, !llvm.loop !29

7:                                                ; preds = %5
  br label %37

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

15:                                               ; preds = %26, %8
  %16 = phi i32 [ %27, %26 ], [ 0, %8 ]
  %17 = phi ptr [ %20, %26 ], [ %14, %8 ]
  %.not = icmp eq ptr %17, null
  br i1 %.not, label %28, label %18

18:                                               ; preds = %15
  %19 = call ptr @where(ptr noundef nonnull %17, ptr noundef %11)
  %20 = call ptr @get_good_move(ptr noundef %19)
  %.not3 = icmp eq ptr %20, null
  br i1 %.not3, label %26, label %21

21:                                               ; preds = %18
  call void @get_real_move(ptr noundef nonnull %20, ptr noundef nonnull %17, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %22 = load i32, ptr %1, align 4
  %23 = load i32, ptr %2, align 4
  %24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %16, i32 noundef %22, i32 noundef %23) #5
  %25 = sub nsw i32 1, %16
  call void @free(ptr noundef nonnull %17) #5
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i32 [ %25, %21 ], [ %16, %18 ]
  br label %15, !llvm.loop !30

28:                                               ; preds = %15
  call void @dump_play(ptr noundef %11)
  %29 = sub nsw i32 1, %16
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %29) #5
  br label %37

31:                                               ; preds = %0
  br label %32

32:                                               ; preds = %35, %31
  br i1 poison, label %33, label %36

33:                                               ; preds = %32
  br i1 poison, label %34, label %35

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %33
  br label %32, !llvm.loop !31

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %28, %7, %0
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
