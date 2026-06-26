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
  %11 = load i32, ptr %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %4, align 4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %20, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds [4 x i8], ptr %18, i64 %15
  store i32 %17, ptr %19, align 4
  br label %10, !llvm.loop !7

20:                                               ; preds = %10
  %21 = load ptr, ptr %3, align 8
  ret ptr %21
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
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %6, %7
  br i1 %.not, label %10, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %4, align 4
  %.not1 = icmp eq i32 %9, 0
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i1 [ false, %5 ], [ %.not1, %8 ]
  br i1 %11, label %12, label %25

12:                                               ; preds = %10
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr @nrow, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  store i32 0, ptr %16, align 4
  %21 = add nsw i32 %14, 1
  store i32 %21, ptr %3, align 4
  br label %24

22:                                               ; preds = %12
  %23 = add nsw i32 %17, 1
  store i32 %23, ptr %16, align 4
  store i32 1, ptr %4, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %5, !llvm.loop !9

25:                                               ; preds = %10
  %26 = load i32, ptr %4, align 4
  ret i32 %26
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

7:                                                ; preds = %20, %2
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %21, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds [4 x i8], ptr %15, i64 %12
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 %17, ptr %13, align 4
  br label %20

20:                                               ; preds = %19, %10
  br label %7, !llvm.loop !10

21:                                               ; preds = %7
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

7:                                                ; preds = %21, %2
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %19, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds [4 x i8], ptr %15, i64 %12
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %14, %17
  br label %19

19:                                               ; preds = %10, %7
  %20 = phi i1 [ false, %7 ], [ %18, %10 ]
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  br label %7, !llvm.loop !11

22:                                               ; preds = %19
  %23 = load i32, ptr %5, align 4
  %.lobit = lshr i32 %23, 31
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
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i32, ptr %4, align 4
  %8 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %7, %8
  br i1 %.not, label %19, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %2, align 8
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %3, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %19

17:                                               ; preds = %9
  store i32 %13, ptr %3, align 4
  %18 = add nsw i32 %7, 1
  store i32 %18, ptr %4, align 4
  br label %6, !llvm.loop !12

19:                                               ; preds = %16, %6
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr @ncol, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  ret i32 %23
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
  br i1 %.not, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8
  call void @dump_play(ptr noundef %5)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load ptr, ptr %6, align 8
  call void @dump_list(ptr noundef %7)
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %10) #5
  call void @free(ptr noundef %8) #5
  br label %11

11:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_value(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %storemerge.in = phi ptr [ @game_tree, %1 ], [ %11, %9 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = call i32 @equal_data(ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %9, label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 24
  br label %4, !llvm.loop !13

12:                                               ; preds = %4
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %13, align 8
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %5, %6
  br i1 %.not, label %18, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8
  %9 = add nsw i32 %5, 1
  store i32 %9, ptr %3, align 4
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %8, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %12) #5
  %14 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %9, %14
  br i1 %.not1, label %17, label %15

15:                                               ; preds = %7
  %16 = call i32 @putchar(i32 noundef 44) #5
  br label %17

17:                                               ; preds = %15, %7
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

3:                                                ; preds = %4, %1
  %storemerge = phi ptr [ %0, %1 ], [ %7, %4 ]
  store ptr %storemerge, ptr %2, align 8
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %3
  %5 = load ptr, ptr %storemerge, align 8
  call void @show_move(ptr noundef %5)
  %6 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %7 = load ptr, ptr %6, align 8
  br label %3, !llvm.loop !15

8:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  br label %3

3:                                                ; preds = %4, %1
  %storemerge = phi ptr [ %0, %1 ], [ %14, %4 ]
  store ptr %storemerge, ptr %2, align 8
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %15, label %4

4:                                                ; preds = %3
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = load ptr, ptr %6, align 8
  call void @show_data(ptr noundef %7)
  %8 = load i32, ptr %5, align 8
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %8) #5
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load ptr, ptr %11, align 8
  call void @show_list(ptr noundef %12)
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %14 = load ptr, ptr %13, align 8
  br label %3, !llvm.loop !16

15:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %storemerge.in = phi ptr [ @wanted, %1 ], [ %12, %10 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %3, align 8
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %13, label %5

5:                                                ; preds = %4
  %6 = load ptr, ptr %storemerge, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = call i32 @equal_data(ptr noundef %6, ptr noundef %7)
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %5
  br label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %4, !llvm.loop !17

13:                                               ; preds = %9, %4
  %14 = load ptr, ptr %3, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %18

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %16
  %storemerge2 = phi i32 [ 1, %17 ], [ 0, %16 ]
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

11:                                               ; preds = %18, %2
  %storemerge = phi i32 [ 0, %2 ], [ %20, %18 ]
  store i32 %storemerge, ptr %5, align 4
  %12 = load i32, ptr %4, align 4
  %.not = icmp eq i32 %storemerge, %12
  br i1 %.not, label %21, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr @nrow, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = sext i32 %storemerge to i64
  %17 = getelementptr inbounds [4 x i8], ptr %15, i64 %16
  store i32 %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %13
  %19 = load i32, ptr %5, align 4
  %20 = add nsw i32 %19, 1
  br label %11, !llvm.loop !18

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %30, %21
  %23 = load i32, ptr %5, align 4
  %24 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %23, %24
  br i1 %.not1, label %33, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %3, align 4
  %27 = load ptr, ptr %6, align 8
  %28 = sext i32 %23 to i64
  %29 = getelementptr inbounds [4 x i8], ptr %27, i64 %28
  store i32 %26, ptr %29, align 4
  br label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %5, align 4
  br label %22, !llvm.loop !19

33:                                               ; preds = %22
  %34 = load ptr, ptr %6, align 8
  ret ptr %34
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

14:                                               ; preds = %76, %3
  %storemerge = phi i32 [ 0, %3 ], [ %78, %76 ]
  store i32 %storemerge, ptr %7, align 4
  %15 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %storemerge, %15
  br i1 %.not, label %79, label %16

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %72, %16
  %storemerge2 = phi i32 [ 0, %16 ], [ %74, %72 ]
  store i32 %storemerge2, ptr %8, align 4
  %18 = load i32, ptr @ncol, align 4
  %.not3 = icmp eq i32 %storemerge2, %18
  br i1 %.not3, label %75, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %7, align 4
  %21 = call ptr @make_data(i32 noundef %20, i32 noundef %storemerge2)
  store ptr %21, ptr %9, align 8
  %22 = load ptr, ptr %4, align 8
  call void @melt_data(ptr noundef %21, ptr noundef %22)
  %23 = call i32 @equal_data(ptr noundef %21, ptr noundef %22)
  %.not4 = icmp eq i32 %23, 0
  br i1 %.not4, label %24, label %61

24:                                               ; preds = %19
  %25 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %26 = load ptr, ptr %11, align 8
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %25, ptr %27, align 8
  %28 = load ptr, ptr %9, align 8
  %29 = call ptr @copy_data(ptr noundef %28)
  %30 = load ptr, ptr %27, align 8
  store ptr %29, ptr %30, align 8
  %31 = load ptr, ptr %11, align 8
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr null, ptr %34, align 8
  %35 = load ptr, ptr %32, align 8
  store ptr %35, ptr %11, align 8
  %36 = load ptr, ptr %5, align 8
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load ptr, ptr %9, align 8
  %41 = call i32 @get_value(ptr noundef %40)
  %42 = load ptr, ptr %5, align 8
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %39, %24
  %44 = load ptr, ptr %6, align 8
  %45 = load i32, ptr %44, align 4
  %.not5 = icmp eq i32 %45, 0
  br i1 %.not5, label %46, label %60

46:                                               ; preds = %43
  %47 = load ptr, ptr %5, align 8
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32, ptr @ncol, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, ptr %8, align 4
  %53 = load i32, ptr @nrow, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, ptr %7, align 4
  %55 = load ptr, ptr %9, align 8
  %56 = call i32 @in_wanted(ptr noundef %55)
  %.not6 = icmp eq i32 %56, 0
  br i1 %.not6, label %59, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %6, align 8
  store i32 2, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %50
  br label %60

60:                                               ; preds = %59, %46, %43
  br label %70

61:                                               ; preds = %19
  %62 = load i32, ptr %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, ptr @nrow, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %7, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, ptr @ncol, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, ptr %8, align 4
  br label %70

70:                                               ; preds = %67, %60
  %71 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %71) #5
  br label %72

72:                                               ; preds = %70
  %73 = load i32, ptr %8, align 4
  %74 = add nsw i32 %73, 1
  br label %17, !llvm.loop !20

75:                                               ; preds = %17
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %7, align 4
  %78 = add nsw i32 %77, 1
  br label %14, !llvm.loop !21

79:                                               ; preds = %14
  %80 = load ptr, ptr %10, align 8
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 8
  %82 = load ptr, ptr %81, align 8
  store ptr %82, ptr %11, align 8
  call void @free(ptr noundef %80) #5
  %.not1 = icmp eq ptr %82, null
  br i1 %.not1, label %87, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %5, align 8
  %85 = load i32, ptr %84, align 4
  %86 = sub nsw i32 1, %85
  store i32 %86, ptr %84, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load ptr, ptr %11, align 8
  ret ptr %88
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

11:                                               ; preds = %55, %1
  %12 = load ptr, ptr %4, align 8
  %13 = call i32 @next_data(ptr noundef %12)
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %56, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8
  %16 = call i32 @valid_data(ptr noundef %15)
  %.not1 = icmp eq i32 %16, 0
  br i1 %.not1, label %55, label %17

17:                                               ; preds = %14
  %18 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %18, ptr %20, align 8
  %21 = load ptr, ptr @game_tree, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr @game_tree, align 8
  br label %27

27:                                               ; preds = %23, %17
  %28 = load ptr, ptr %4, align 8
  %29 = call ptr @copy_data(ptr noundef %28)
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 24
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %29, ptr %33, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = call ptr @make_list(ptr noundef %34, ptr noundef nonnull %3, ptr noundef nonnull %2)
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 24
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %35, ptr %39, align 8
  %40 = load i32, ptr %3, align 4
  %41 = load ptr, ptr %37, align 8
  store i32 %40, ptr %41, align 8
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 24
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 24
  store ptr null, ptr %45, align 8
  %46 = load ptr, ptr %43, align 8
  store ptr %46, ptr %6, align 8
  %47 = load i32, ptr %2, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %54

49:                                               ; preds = %27
  %50 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %50) #5
  %51 = load i32, ptr @nrow, align 4
  %52 = load i32, ptr @ncol, align 4
  %53 = call ptr @make_data(i32 noundef %51, i32 noundef %52)
  store ptr %53, ptr %4, align 8
  br label %54

54:                                               ; preds = %49, %27
  br label %55

55:                                               ; preds = %54, %14
  br label %11, !llvm.loop !22

56:                                               ; preds = %11
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 24
  %59 = load ptr, ptr %58, align 8
  store ptr %59, ptr %6, align 8
  call void @free(ptr noundef %57) #5
  ret ptr %59
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

10:                                               ; preds = %47, %1
  %storemerge = phi i32 [ 0, %1 ], [ %49, %47 ]
  store i32 %storemerge, ptr %3, align 4
  %11 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %storemerge, %11
  br i1 %.not, label %50, label %12

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %43, %12
  %storemerge1 = phi i32 [ 0, %12 ], [ %45, %43 ]
  store i32 %storemerge1, ptr %4, align 4
  %14 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %storemerge1, %14
  br i1 %.not2, label %46, label %15

15:                                               ; preds = %13
  %16 = load i32, ptr %3, align 4
  %17 = call ptr @make_data(i32 noundef %16, i32 noundef %storemerge1)
  store ptr %17, ptr %5, align 8
  %18 = load ptr, ptr %2, align 8
  call void @melt_data(ptr noundef %17, ptr noundef %18)
  %19 = call i32 @equal_data(ptr noundef %17, ptr noundef %18)
  %.not3 = icmp eq i32 %19, 0
  br i1 %.not3, label %20, label %32

20:                                               ; preds = %15
  %21 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %22 = load ptr, ptr %7, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %21, ptr %23, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = call ptr @copy_data(ptr noundef %24)
  %26 = load ptr, ptr %23, align 8
  store ptr %25, ptr %26, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr null, ptr %30, align 8
  %31 = load ptr, ptr %28, align 8
  store ptr %31, ptr %7, align 8
  br label %41

32:                                               ; preds = %15
  %33 = load i32, ptr %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, ptr @nrow, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, ptr %3, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, ptr @ncol, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr %4, align 4
  br label %41

41:                                               ; preds = %38, %20
  %42 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %42) #5
  br label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %4, align 4
  %45 = add nsw i32 %44, 1
  br label %13, !llvm.loop !23

46:                                               ; preds = %13
  br label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %3, align 4
  %49 = add nsw i32 %48, 1
  br label %10, !llvm.loop !24

50:                                               ; preds = %10
  %51 = load ptr, ptr %6, align 8
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %53 = load ptr, ptr %52, align 8
  store ptr %53, ptr %7, align 8
  call void @free(ptr noundef %51) #5
  store ptr %53, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %24

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %16, %5
  %7 = load ptr, ptr %2, align 8
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
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %2, align 8
  br label %6, !llvm.loop !25

20:                                               ; preds = %14
  %21 = load ptr, ptr %2, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = call ptr @copy_data(ptr noundef %22)
  br label %24

24:                                               ; preds = %20, %4
  %storemerge = phi ptr [ %23, %20 ], [ null, %4 ]
  ret ptr %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  br label %3

3:                                                ; preds = %6, %1
  %storemerge = phi ptr [ %0, %1 ], [ %5, %6 ]
  store ptr %storemerge, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  %5 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %7, label %6

6:                                                ; preds = %3
  br label %3, !llvm.loop !26

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  %9 = load ptr, ptr %8, align 8
  %10 = call ptr @get_good_move(ptr noundef %9)
  ret ptr %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  br label %5

5:                                                ; preds = %10, %2
  %storemerge = phi ptr [ %1, %2 ], [ %13, %10 ]
  store ptr %storemerge, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = call i32 @equal_data(ptr noundef %7, ptr noundef %8)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %14

10:                                               ; preds = %5
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %13 = load ptr, ptr %12, align 8
  br label %5, !llvm.loop !27

14:                                               ; preds = %5
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %17 = load ptr, ptr %16, align 8
  ret ptr %17
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

9:                                                ; preds = %20, %4
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds [4 x i8], ptr %16, i64 %13
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = add nsw i32 %12, 1
  store i32 %21, ptr %11, align 4
  br label %9, !llvm.loop !28

22:                                               ; preds = %9
  %23 = load ptr, ptr %7, align 8
  store i32 %15, ptr %23, align 4
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
  switch i32 2, label %46 [
    i32 1, label %8
    i32 2, label %13
    i32 3, label %40
  ]

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %11, %8
  br i1 poison, label %10, label %12

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  br label %9, !llvm.loop !29

12:                                               ; preds = %9
  br label %46

13:                                               ; preds = %0
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #5
  store i32 7, ptr @ncol, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #5
  store i32 8, ptr @nrow, align 4
  %16 = call ptr @make_play(i32 noundef 1)
  store ptr %16, ptr %6, align 8
  store i32 0, ptr %3, align 4
  %17 = load i32, ptr @nrow, align 4
  %18 = load i32, ptr @ncol, align 4
  %19 = call ptr @make_data(i32 noundef %17, i32 noundef %18)
  br label %20

20:                                               ; preds = %33, %13
  %storemerge = phi ptr [ %19, %13 ], [ %34, %33 ]
  store ptr %storemerge, ptr %4, align 8
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %35, label %21

21:                                               ; preds = %20
  %22 = load ptr, ptr %6, align 8
  %23 = call ptr @where(ptr noundef %storemerge, ptr noundef %22)
  %24 = call ptr @get_good_move(ptr noundef %23)
  store ptr %24, ptr %5, align 8
  %.not3 = icmp eq ptr %24, null
  br i1 %.not3, label %33, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %4, align 8
  call void @get_real_move(ptr noundef %24, ptr noundef %26, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %27 = load i32, ptr %3, align 4
  %28 = load i32, ptr %1, align 4
  %29 = load i32, ptr %2, align 4
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %27, i32 noundef %28, i32 noundef %29) #5
  %31 = sub nsw i32 1, %27
  store i32 %31, ptr %3, align 4
  %32 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %32) #5
  br label %33

33:                                               ; preds = %25, %21
  %34 = load ptr, ptr %5, align 8
  br label %20, !llvm.loop !30

35:                                               ; preds = %20
  %36 = load ptr, ptr %6, align 8
  call void @dump_play(ptr noundef %36)
  %37 = load i32, ptr %3, align 4
  %38 = sub nsw i32 1, %37
  %39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %38) #5
  br label %46

40:                                               ; preds = %0
  br label %41

41:                                               ; preds = %44, %40
  br i1 poison, label %42, label %45

42:                                               ; preds = %41
  br i1 poison, label %43, label %44

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43, %42
  br label %41, !llvm.loop !31

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %35, %12, %0
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
