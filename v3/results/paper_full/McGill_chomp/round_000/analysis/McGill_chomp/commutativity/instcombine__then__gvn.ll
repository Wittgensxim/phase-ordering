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
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load i32, ptr @ncol, align 4
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = call ptr @malloc(i64 noundef %7) #4
  store ptr %8, ptr %3, align 8
  %9 = load i32, ptr @ncol, align 4
  store i32 %9, ptr %4, align 4
  br label %10

10:                                               ; preds = %13, %1
  %11 = phi i32 [ %12, %13 ], [ %9, %1 ]
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %4, align 4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %18, label %13

13:                                               ; preds = %10
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds [4 x i8], ptr %8, i64 %14
  store i32 %16, ptr %17, align 4
  br label %10, !llvm.loop !7

18:                                               ; preds = %10
  ret ptr %8
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = phi i32 [ %25, %24 ], [ 0, %1 ]
  %7 = phi ptr [ %26, %24 ], [ %0, %1 ]
  %8 = phi i32 [ %27, %24 ], [ 0, %1 ]
  %9 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %6, %9
  br i1 %.not, label %11, label %10

10:                                               ; preds = %5
  %.not1 = icmp eq i32 %8, 0
  br label %11

11:                                               ; preds = %10, %5
  %12 = phi i1 [ false, %5 ], [ %.not1, %10 ]
  br i1 %12, label %13, label %28

13:                                               ; preds = %11
  %14 = sext i32 %6 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %7, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr @nrow, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds [4 x i8], ptr %0, i64 %14
  store i32 0, ptr %20, align 4
  %21 = add nsw i32 %6, 1
  store i32 %21, ptr %3, align 4
  br label %24

22:                                               ; preds = %13
  %23 = add nsw i32 %16, 1
  store i32 %23, ptr %15, align 4
  store i32 1, ptr %4, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %6, %22 ], [ %21, %19 ]
  %26 = phi ptr [ %7, %22 ], [ %0, %19 ]
  %27 = phi i32 [ 1, %22 ], [ %8, %19 ]
  br label %5, !llvm.loop !9

28:                                               ; preds = %11
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load i32, ptr @ncol, align 4
  store i32 %6, ptr %5, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = phi ptr [ %24, %23 ], [ %1, %2 ]
  %9 = phi ptr [ %25, %23 ], [ %0, %2 ]
  %10 = phi i32 [ %11, %23 ], [ %6, %2 ]
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %5, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %26, label %12

12:                                               ; preds = %7
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %9, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds [4 x i8], ptr %8, i64 %13
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds [4 x i8], ptr %1, i64 %13
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds [4 x i8], ptr %0, i64 %13
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi ptr [ %1, %19 ], [ %8, %12 ]
  %25 = phi ptr [ %0, %19 ], [ %9, %12 ]
  br label %7, !llvm.loop !10

26:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load i32, ptr @ncol, align 4
  store i32 %6, ptr %5, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = phi i32 [ %9, %19 ], [ %6, %2 ]
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %17, label %10

10:                                               ; preds = %7
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds [4 x i8], ptr %1, i64 %11
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br label %17

17:                                               ; preds = %10, %7
  %18 = phi i1 [ false, %7 ], [ %16, %10 ]
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %7, !llvm.loop !11

20:                                               ; preds = %17
  %.lobit = lshr i32 %9, 31
  ret i32 %.lobit
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %4, align 4
  %5 = load i32, ptr @nrow, align 4
  store i32 %5, ptr %3, align 4
  %.pre = load i32, ptr @ncol, align 4
  br label %6

6:                                                ; preds = %15, %1
  %7 = phi i32 [ %12, %15 ], [ %5, %1 ]
  %8 = phi i32 [ %16, %15 ], [ 0, %1 ]
  %.not = icmp eq i32 %8, %.pre
  br i1 %.not, label %17, label %9

9:                                                ; preds = %6
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %7
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %17

15:                                               ; preds = %9
  store i32 %12, ptr %3, align 4
  %16 = add nsw i32 %8, 1
  store i32 %16, ptr %4, align 4
  br label %6, !llvm.loop !12

17:                                               ; preds = %14, %6
  %18 = zext i1 %.not to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8
  call void @dump_list(ptr noundef %5)
  %6 = load ptr, ptr %0, align 8
  call void @free(ptr noundef %6) #5
  call void @free(ptr noundef nonnull %0) #5
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8
  call void @dump_play(ptr noundef %5)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load ptr, ptr %6, align 8
  call void @dump_list(ptr noundef %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %9) #5
  call void @free(ptr noundef %0) #5
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_value(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %storemerge.in = phi ptr [ @game_tree, %1 ], [ %9, %8 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  br label %4, !llvm.loop !13

10:                                               ; preds = %4
  %11 = load i32, ptr %storemerge, align 8
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %.pre2 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = phi i32 [ %17, %16 ], [ %.pre2, %1 ]
  %6 = phi i32 [ %8, %16 ], [ 0, %1 ]
  %.not = icmp eq i32 %6, %5
  br i1 %.not, label %18, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %6, 1
  store i32 %8, ptr %3, align 4
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %11) #5
  %13 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %8, %13
  br i1 %.not1, label %16, label %14

14:                                               ; preds = %7
  %15 = call i32 @putchar(i32 noundef 44) #5
  %.pre = load i32, ptr @ncol, align 4
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi i32 [ %.pre, %14 ], [ %8, %7 ]
  br label %4, !llvm.loop !14

18:                                               ; preds = %4
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
  %2 = alloca ptr, align 8
  br label %3

3:                                                ; preds = %5, %1
  %4 = phi ptr [ %0, %1 ], [ %8, %5 ]
  store ptr %4, ptr %2, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %9, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %4, align 8
  call void @show_move(ptr noundef %6)
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %8 = load ptr, ptr %7, align 8
  br label %3, !llvm.loop !15

9:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  br label %3

3:                                                ; preds = %5, %1
  %4 = phi ptr [ %0, %1 ], [ %13, %5 ]
  store ptr %4, ptr %2, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %14, label %5

5:                                                ; preds = %3
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %7 = load ptr, ptr %6, align 8
  call void @show_data(ptr noundef %7)
  %8 = load i32, ptr %4, align 8
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %8) #5
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %11 = load ptr, ptr %10, align 8
  call void @show_list(ptr noundef %11)
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %13 = load ptr, ptr %12, align 8
  br label %3, !llvm.loop !16

14:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %storemerge.in = phi ptr [ @wanted, %1 ], [ %10, %9 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %3, align 8
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %11, label %5

5:                                                ; preds = %4
  %6 = load ptr, ptr %storemerge, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %5
  br label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %4, !llvm.loop !17

11:                                               ; preds = %8, %4
  br i1 %.not, label %12, label %13

12:                                               ; preds = %11
  br label %14

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %12
  %storemerge2 = phi i32 [ 1, %13 ], [ 0, %12 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %7 = load i32, ptr @ncol, align 4
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  %10 = call ptr @malloc(i64 noundef %9) #4
  store ptr %10, ptr %6, align 8
  br label %11

11:                                               ; preds = %13, %2
  %12 = phi i32 [ 0, %2 ], [ %17, %13 ]
  store i32 %12, ptr %5, align 4
  %.not = icmp eq i32 %12, %1
  br i1 %.not, label %18, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr @nrow, align 4
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %10, i64 %15
  store i32 %14, ptr %16, align 4
  %17 = add nsw i32 %12, 1
  br label %11, !llvm.loop !18

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i32 [ %25, %22 ], [ %1, %18 ]
  %21 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %20, %21
  br i1 %.not1, label %26, label %22

22:                                               ; preds = %19
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds [4 x i8], ptr %10, i64 %23
  store i32 %0, ptr %24, align 4
  %25 = add nsw i32 %20, 1
  store i32 %25, ptr %5, align 4
  br label %19, !llvm.loop !19

26:                                               ; preds = %19
  ret ptr %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 1, ptr %1, align 4
  %12 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  store ptr %12, ptr %10, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %13, align 8
  store ptr %12, ptr %11, align 8
  br label %14

14:                                               ; preds = %88, %3
  %15 = phi ptr [ %2, %3 ], [ %23, %88 ]
  %16 = phi ptr [ %2, %3 ], [ %24, %88 ]
  %17 = phi ptr [ %1, %3 ], [ %25, %88 ]
  %18 = phi ptr [ %1, %3 ], [ %26, %88 ]
  %19 = phi ptr [ %12, %3 ], [ %27, %88 ]
  %storemerge = phi i32 [ 0, %3 ], [ %89, %88 ]
  store i32 %storemerge, ptr %7, align 4
  %20 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %storemerge, %20
  br i1 %.not, label %90, label %21

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %78, %21
  %23 = phi ptr [ %15, %21 ], [ %81, %78 ]
  %24 = phi ptr [ %16, %21 ], [ %82, %78 ]
  %25 = phi ptr [ %17, %21 ], [ %83, %78 ]
  %26 = phi ptr [ %18, %21 ], [ %84, %78 ]
  %27 = phi ptr [ %19, %21 ], [ %85, %78 ]
  %28 = phi i32 [ %storemerge, %21 ], [ %86, %78 ]
  %29 = phi i32 [ 0, %21 ], [ %87, %78 ]
  store i32 %29, ptr %8, align 4
  %30 = load i32, ptr @ncol, align 4
  %.not3 = icmp eq i32 %29, %30
  br i1 %.not3, label %88, label %31

31:                                               ; preds = %22
  %32 = call ptr @make_data(i32 noundef %28, i32 noundef %29)
  store ptr %32, ptr %9, align 8
  call void @melt_data(ptr noundef %32, ptr noundef %0)
  %33 = call i32 @equal_data(ptr noundef %32, ptr noundef %0)
  %.not4 = icmp eq i32 %33, 0
  br i1 %.not4, label %34, label %69

34:                                               ; preds = %31
  %35 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %36 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %35, ptr %36, align 8
  %37 = call ptr @copy_data(ptr noundef %32)
  %38 = load ptr, ptr %36, align 8
  store ptr %37, ptr %38, align 8
  %39 = load ptr, ptr %36, align 8
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr null, ptr %40, align 8
  %41 = load ptr, ptr %36, align 8
  store ptr %41, ptr %11, align 8
  %42 = load i32, ptr %26, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = call i32 @get_value(ptr noundef %32)
  store i32 %45, ptr %25, align 4
  %.pre = load ptr, ptr %6, align 8
  br label %46

46:                                               ; preds = %44, %34
  %47 = phi ptr [ %.pre, %44 ], [ %23, %34 ]
  %48 = phi ptr [ %.pre, %44 ], [ %24, %34 ]
  %49 = phi ptr [ %25, %44 ], [ %26, %34 ]
  %50 = load i32, ptr %48, align 4
  %.not5 = icmp eq i32 %50, 0
  br i1 %.not5, label %51, label %64

51:                                               ; preds = %46
  %52 = load i32, ptr %1, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, ptr @ncol, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, ptr %8, align 4
  %57 = load i32, ptr @nrow, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, ptr %7, align 4
  %59 = load ptr, ptr %9, align 8
  %60 = call i32 @in_wanted(ptr noundef %59)
  %.not6 = icmp eq i32 %60, 0
  br i1 %.not6, label %62, label %61

61:                                               ; preds = %54
  store i32 2, ptr %47, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = phi ptr [ %47, %61 ], [ %48, %54 ]
  br label %64

64:                                               ; preds = %62, %51, %46
  %65 = phi ptr [ %63, %62 ], [ %48, %51 ], [ %48, %46 ]
  %66 = phi ptr [ %1, %62 ], [ %1, %51 ], [ %25, %46 ]
  %67 = phi ptr [ %1, %62 ], [ %1, %51 ], [ %49, %46 ]
  %68 = phi i32 [ %58, %62 ], [ %28, %51 ], [ %28, %46 ]
  %.pre7 = load ptr, ptr %9, align 8
  %.pre8 = load i32, ptr %8, align 4
  br label %78

69:                                               ; preds = %31
  %70 = icmp eq i32 %29, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i32, ptr @nrow, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, ptr %7, align 4
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i32 [ %73, %71 ], [ %28, %69 ]
  %76 = load i32, ptr @ncol, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, ptr %8, align 4
  br label %78

78:                                               ; preds = %74, %64
  %79 = phi i32 [ %77, %74 ], [ %.pre8, %64 ]
  %80 = phi ptr [ %32, %74 ], [ %.pre7, %64 ]
  %81 = phi ptr [ %23, %74 ], [ %47, %64 ]
  %82 = phi ptr [ %24, %74 ], [ %65, %64 ]
  %83 = phi ptr [ %25, %74 ], [ %66, %64 ]
  %84 = phi ptr [ %26, %74 ], [ %67, %64 ]
  %85 = phi ptr [ %27, %74 ], [ %41, %64 ]
  %86 = phi i32 [ %75, %74 ], [ %68, %64 ]
  call void @free(ptr noundef %80) #5
  %87 = add nsw i32 %79, 1
  br label %22, !llvm.loop !20

88:                                               ; preds = %22
  %89 = add nsw i32 %28, 1
  br label %14, !llvm.loop !21

90:                                               ; preds = %14
  %91 = load ptr, ptr %10, align 8
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %93 = load ptr, ptr %92, align 8
  store ptr %93, ptr %11, align 8
  call void @free(ptr noundef %91) #5
  %.not1 = icmp eq ptr %93, null
  br i1 %.not1, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, ptr %1, align 4
  %96 = sub nsw i32 1, %95
  store i32 %96, ptr %1, align 4
  br label %97

97:                                               ; preds = %94, %90
  ret ptr %93
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
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %8 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  store ptr %8, ptr %6, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %9, align 8
  store ptr %8, ptr %7, align 8
  br label %10

10:                                               ; preds = %44, %1
  %11 = phi ptr [ %8, %1 ], [ %15, %44 ]
  %storemerge = phi i32 [ 0, %1 ], [ %45, %44 ]
  store i32 %storemerge, ptr %3, align 4
  %12 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %storemerge, %12
  br i1 %.not, label %46, label %13

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %39, %13
  %15 = phi ptr [ %11, %13 ], [ %41, %39 ]
  %16 = phi i32 [ %storemerge, %13 ], [ %42, %39 ]
  %17 = phi i32 [ 0, %13 ], [ %43, %39 ]
  store i32 %17, ptr %4, align 4
  %18 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %17, %18
  br i1 %.not2, label %44, label %19

19:                                               ; preds = %14
  %20 = call ptr @make_data(i32 noundef %16, i32 noundef %17)
  store ptr %20, ptr %5, align 8
  call void @melt_data(ptr noundef %20, ptr noundef %0)
  %21 = call i32 @equal_data(ptr noundef %20, ptr noundef %0)
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %22, label %30

22:                                               ; preds = %19
  %23 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %23, ptr %24, align 8
  %25 = call ptr @copy_data(ptr noundef %20)
  %26 = load ptr, ptr %24, align 8
  store ptr %25, ptr %26, align 8
  %27 = load ptr, ptr %24, align 8
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr null, ptr %28, align 8
  %29 = load ptr, ptr %24, align 8
  store ptr %29, ptr %7, align 8
  br label %39

30:                                               ; preds = %19
  %31 = icmp eq i32 %17, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i32, ptr @nrow, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %3, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %34, %32 ], [ %16, %30 ]
  %37 = load i32, ptr @ncol, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %4, align 4
  br label %39

39:                                               ; preds = %35, %22
  %40 = phi i32 [ %38, %35 ], [ %17, %22 ]
  %41 = phi ptr [ %15, %35 ], [ %29, %22 ]
  %42 = phi i32 [ %36, %35 ], [ %16, %22 ]
  call void @free(ptr noundef %20) #5
  %43 = add nsw i32 %40, 1
  br label %14, !llvm.loop !23

44:                                               ; preds = %14
  %45 = add nsw i32 %16, 1
  br label %10, !llvm.loop !24

46:                                               ; preds = %10
  %47 = load ptr, ptr %9, align 8
  store ptr %47, ptr %7, align 8
  call void @free(ptr noundef %8) #5
  store ptr %47, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %21

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %16, %5
  %7 = phi ptr [ %17, %16 ], [ %0, %5 ]
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 8
  %12 = call i32 @get_value(ptr noundef %11)
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i1 [ false, %6 ], [ %13, %10 ]
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = load ptr, ptr %8, align 8
  store ptr %17, ptr %2, align 8
  br label %6, !llvm.loop !25

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8
  %20 = call ptr @copy_data(ptr noundef %19)
  br label %21

21:                                               ; preds = %18, %4
  %storemerge = phi ptr [ %20, %18 ], [ null, %4 ]
  ret ptr %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %0, %1 ], [ %6, %7 ]
  store ptr %4, ptr %2, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %6 = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %8, label %7

7:                                                ; preds = %3
  br label %3, !llvm.loop !26

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %10 = load ptr, ptr %9, align 8
  %11 = call ptr @get_good_move(ptr noundef %10)
  ret ptr %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %1, %2 ], [ %12, %10 ]
  store ptr %6, ptr %4, align 8
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @equal_data(ptr noundef %8, ptr noundef %0)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %12 = load ptr, ptr %11, align 8
  br label %5, !llvm.loop !27

13:                                               ; preds = %5
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %15 = load ptr, ptr %14, align 8
  ret ptr %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_real_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %17, %4
  %10 = phi i32 [ %18, %17 ], [ 0, %4 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds [4 x i8], ptr %1, i64 %11
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = add nsw i32 %10, 1
  store i32 %18, ptr %3, align 4
  br label %9, !llvm.loop !28

19:                                               ; preds = %9
  store i32 %13, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) #5
  store i32 2, ptr %1, align 4
  switch i32 2, label %41 [
    i32 1, label %8
    i32 2, label %12
    i32 3, label %35
  ]

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %10, %8
  br i1 poison, label %10, label %11

10:                                               ; preds = %9
  br label %9, !llvm.loop !29

11:                                               ; preds = %9
  br label %41

12:                                               ; preds = %0
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #5
  store i32 7, ptr @ncol, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #5
  store i32 8, ptr @nrow, align 4
  %15 = call ptr @make_play(i32 noundef 1)
  store ptr %15, ptr %6, align 8
  store i32 0, ptr %3, align 4
  %16 = load i32, ptr @nrow, align 4
  %17 = load i32, ptr @ncol, align 4
  %18 = call ptr @make_data(i32 noundef %16, i32 noundef %17)
  br label %19

19:                                               ; preds = %30, %12
  %20 = phi i32 [ 0, %12 ], [ %31, %30 ]
  %21 = phi ptr [ %18, %12 ], [ %24, %30 ]
  store ptr %21, ptr %4, align 8
  %.not = icmp eq ptr %21, null
  br i1 %.not, label %32, label %22

22:                                               ; preds = %19
  %23 = call ptr @where(ptr noundef %21, ptr noundef %15)
  %24 = call ptr @get_good_move(ptr noundef %23)
  store ptr %24, ptr %5, align 8
  %.not3 = icmp eq ptr %24, null
  br i1 %.not3, label %30, label %25

25:                                               ; preds = %22
  call void @get_real_move(ptr noundef %24, ptr noundef %21, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %26 = load i32, ptr %1, align 4
  %27 = load i32, ptr %2, align 4
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %20, i32 noundef %26, i32 noundef %27) #5
  %29 = sub nsw i32 1, %20
  store i32 %29, ptr %3, align 4
  call void @free(ptr noundef %21) #5
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i32 [ %29, %25 ], [ %20, %22 ]
  br label %19, !llvm.loop !30

32:                                               ; preds = %19
  call void @dump_play(ptr noundef %15)
  %33 = sub nsw i32 1, %20
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %33) #5
  br label %41

35:                                               ; preds = %0
  br label %36

36:                                               ; preds = %39, %35
  br i1 poison, label %37, label %40

37:                                               ; preds = %36
  br i1 poison, label %38, label %39

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38, %37
  br label %36, !llvm.loop !31

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %32, %11, %0
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
