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
  br i1 %.not, label %22, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8
  %15 = load i32, ptr %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = sext i32 %15 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %19, i64 %20
  store i32 %18, ptr %21, align 4
  br label %10, !llvm.loop !7

22:                                               ; preds = %10
  %23 = load ptr, ptr %3, align 8
  ret ptr %23
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

5:                                                ; preds = %31, %1
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %6, %7
  br i1 %.not, label %.critedge, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %4, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %10, label %.critedge

10:                                               ; preds = %8
  %11 = load ptr, ptr %2, align 8
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr @nrow, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %19, i64 %21
  store i32 0, ptr %22, align 4
  %23 = add nsw i32 %20, 1
  store i32 %23, ptr %3, align 4
  br label %31

24:                                               ; preds = %10
  %25 = load ptr, ptr %2, align 8
  %26 = load i32, ptr %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 4
  store i32 1, ptr %4, align 4
  br label %31

31:                                               ; preds = %24, %18
  br label %5, !llvm.loop !9

.critedge:                                        ; preds = %5, %8
  %32 = load i32, ptr %4, align 4
  ret i32 %32
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

7:                                                ; preds = %30, %2
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %31, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %10
  %22 = load ptr, ptr %4, align 8
  %23 = load i32, ptr %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %22, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = sext i32 %23 to i64
  %29 = getelementptr inbounds [4 x i8], ptr %27, i64 %28
  store i32 %26, ptr %29, align 4
  br label %30

30:                                               ; preds = %21, %10
  br label %7, !llvm.loop !10

31:                                               ; preds = %7
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

7:                                                ; preds = %10, %2
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %.critedge, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %7, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %7, %10
  %21 = load i32, ptr %5, align 4
  %.lobit = lshr i32 %21, 31
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
  br i1 %.not, label %24, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %3, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %2, align 8
  %19 = load i32, ptr %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %3, align 4
  %23 = add nsw i32 %19, 1
  store i32 %23, ptr %4, align 4
  br label %6, !llvm.loop !12

24:                                               ; preds = %9, %6
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr @ncol, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  call void @dump_list(ptr noundef %6)
  %7 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %7) #5
  call void @free(ptr noundef nonnull %4) #5
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %6 = load ptr, ptr %5, align 8
  call void @dump_play(ptr noundef %6)
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %8 = load ptr, ptr %7, align 8
  call void @dump_list(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %11) #5
  call void @free(ptr noundef %9) #5
  br label %12

12:                                               ; preds = %3, %1
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

4:                                                ; preds = %18, %1
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %5, %6
  br i1 %.not, label %19, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8
  %9 = load i32, ptr %3, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %3, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %8, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %13) #5
  %15 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %10, %15
  br i1 %.not1, label %18, label %16

16:                                               ; preds = %7
  %17 = call i32 @putchar(i32 noundef 44) #5
  br label %18

18:                                               ; preds = %16, %7
  br label %4, !llvm.loop !14

19:                                               ; preds = %4
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
  %storemerge = phi ptr [ %0, %1 ], [ %8, %4 ]
  store ptr %storemerge, ptr %2, align 8
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %9, label %4

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %5, align 8
  call void @show_move(ptr noundef %6)
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %7, align 8
  br label %3, !llvm.loop !15

9:                                                ; preds = %3
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
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = call i32 @equal_data(ptr noundef %7, ptr noundef %8)
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %4, !llvm.loop !17

13:                                               ; preds = %5, %4
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

11:                                               ; preds = %13, %2
  %storemerge = phi i32 [ 0, %2 ], [ %19, %13 ]
  store i32 %storemerge, ptr %5, align 4
  %12 = load i32, ptr %4, align 4
  %.not = icmp eq i32 %storemerge, %12
  br i1 %.not, label %20, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr @nrow, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %15, i64 %17
  store i32 %14, ptr %18, align 4
  %19 = add nsw i32 %16, 1
  br label %11, !llvm.loop !18

20:                                               ; preds = %11, %23
  %21 = load i32, ptr %5, align 4
  %22 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %21, %22
  br i1 %.not1, label %30, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %3, align 4
  %25 = load ptr, ptr %6, align 8
  %26 = load i32, ptr %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %25, i64 %27
  store i32 %24, ptr %28, align 4
  %29 = add nsw i32 %26, 1
  store i32 %29, ptr %5, align 4
  br label %20, !llvm.loop !19

30:                                               ; preds = %20
  %31 = load ptr, ptr %6, align 8
  ret ptr %31
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

14:                                               ; preds = %75, %3
  %storemerge = phi i32 [ 0, %3 ], [ %77, %75 ]
  store i32 %storemerge, ptr %7, align 4
  %15 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %storemerge, %15
  br i1 %.not, label %78, label %16

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %71, %16
  %storemerge2 = phi i32 [ 0, %16 ], [ %74, %71 ]
  store i32 %storemerge2, ptr %8, align 4
  %18 = load i32, ptr @ncol, align 4
  %.not3 = icmp eq i32 %storemerge2, %18
  br i1 %.not3, label %75, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %7, align 4
  %21 = load i32, ptr %8, align 4
  %22 = call ptr @make_data(i32 noundef %20, i32 noundef %21)
  store ptr %22, ptr %9, align 8
  %23 = load ptr, ptr %4, align 8
  call void @melt_data(ptr noundef %22, ptr noundef %23)
  %24 = call i32 @equal_data(ptr noundef %22, ptr noundef %23)
  %.not4 = icmp eq i32 %24, 0
  br i1 %.not4, label %25, label %62

25:                                               ; preds = %19
  %26 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %27 = load ptr, ptr %11, align 8
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %26, ptr %28, align 8
  %29 = load ptr, ptr %9, align 8
  %30 = call ptr @copy_data(ptr noundef %29)
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %32 = load ptr, ptr %31, align 8
  store ptr %30, ptr %32, align 8
  %33 = load ptr, ptr %11, align 8
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %38 = load ptr, ptr %37, align 8
  store ptr %38, ptr %11, align 8
  %39 = load ptr, ptr %5, align 8
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %25
  %43 = load ptr, ptr %9, align 8
  %44 = call i32 @get_value(ptr noundef %43)
  %45 = load ptr, ptr %5, align 8
  store i32 %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %42, %25
  %47 = load ptr, ptr %6, align 8
  %48 = load i32, ptr %47, align 4
  %.not5 = icmp eq i32 %48, 0
  br i1 %.not5, label %49, label %71

49:                                               ; preds = %46
  %50 = load ptr, ptr %5, align 8
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i32, ptr @ncol, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, ptr %8, align 4
  %56 = load i32, ptr @nrow, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, ptr %7, align 4
  %58 = load ptr, ptr %9, align 8
  %59 = call i32 @in_wanted(ptr noundef %58)
  %.not6 = icmp eq i32 %59, 0
  br i1 %.not6, label %71, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr %6, align 8
  store i32 2, ptr %61, align 4
  br label %71

62:                                               ; preds = %19
  %63 = load i32, ptr %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, ptr @nrow, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, ptr %7, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, ptr @ncol, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, ptr %8, align 4
  br label %71

71:                                               ; preds = %46, %49, %60, %53, %68
  %72 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %72) #5
  %73 = load i32, ptr %8, align 4
  %74 = add nsw i32 %73, 1
  br label %17, !llvm.loop !20

75:                                               ; preds = %17
  %76 = load i32, ptr %7, align 4
  %77 = add nsw i32 %76, 1
  br label %14, !llvm.loop !21

78:                                               ; preds = %14
  %79 = load ptr, ptr %10, align 8
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %81 = load ptr, ptr %80, align 8
  store ptr %81, ptr %11, align 8
  call void @free(ptr noundef %79) #5
  %.not1 = icmp eq ptr %81, null
  br i1 %.not1, label %86, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %5, align 8
  %84 = load i32, ptr %83, align 4
  %85 = sub nsw i32 1, %84
  store i32 %85, ptr %83, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = load ptr, ptr %11, align 8
  ret ptr %87
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

11:                                               ; preds = %56, %1
  %12 = load ptr, ptr %4, align 8
  %13 = call i32 @next_data(ptr noundef %12)
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %57, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8
  %16 = call i32 @valid_data(ptr noundef %15)
  %.not1 = icmp eq i32 %16, 0
  br i1 %.not1, label %56, label %17

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
  %41 = getelementptr inbounds nuw i8, ptr %36, i64 24
  %42 = load ptr, ptr %41, align 8
  store i32 %40, ptr %42, align 8
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 24
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 24
  store ptr null, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %43, i64 24
  %48 = load ptr, ptr %47, align 8
  store ptr %48, ptr %6, align 8
  %49 = load i32, ptr %2, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %56

51:                                               ; preds = %27
  %52 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %52) #5
  %53 = load i32, ptr @nrow, align 4
  %54 = load i32, ptr @ncol, align 4
  %55 = call ptr @make_data(i32 noundef %53, i32 noundef %54)
  store ptr %55, ptr %4, align 8
  br label %56

56:                                               ; preds = %27, %51, %14
  br label %11, !llvm.loop !22

57:                                               ; preds = %11
  %58 = load ptr, ptr %5, align 8
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 24
  %60 = load ptr, ptr %59, align 8
  store ptr %60, ptr %6, align 8
  call void @free(ptr noundef %58) #5
  ret ptr %60
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

10:                                               ; preds = %48, %1
  %storemerge = phi i32 [ 0, %1 ], [ %50, %48 ]
  store i32 %storemerge, ptr %3, align 4
  %11 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %storemerge, %11
  br i1 %.not, label %51, label %12

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %44, %12
  %storemerge1 = phi i32 [ 0, %12 ], [ %47, %44 ]
  store i32 %storemerge1, ptr %4, align 4
  %14 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %storemerge1, %14
  br i1 %.not2, label %48, label %15

15:                                               ; preds = %13
  %16 = load i32, ptr %3, align 4
  %17 = load i32, ptr %4, align 4
  %18 = call ptr @make_data(i32 noundef %16, i32 noundef %17)
  store ptr %18, ptr %5, align 8
  %19 = load ptr, ptr %2, align 8
  call void @melt_data(ptr noundef %18, ptr noundef %19)
  %20 = call i32 @equal_data(ptr noundef %18, ptr noundef %19)
  %.not3 = icmp eq i32 %20, 0
  br i1 %.not3, label %21, label %35

21:                                               ; preds = %15
  %22 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %22, ptr %24, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = call ptr @copy_data(ptr noundef %25)
  %27 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %28 = load ptr, ptr %27, align 8
  store ptr %26, ptr %28, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr null, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %34 = load ptr, ptr %33, align 8
  store ptr %34, ptr %7, align 8
  br label %44

35:                                               ; preds = %15
  %36 = load i32, ptr %4, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, ptr @nrow, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr %3, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, ptr @ncol, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, ptr %4, align 4
  br label %44

44:                                               ; preds = %41, %21
  %45 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %45) #5
  %46 = load i32, ptr %4, align 4
  %47 = add nsw i32 %46, 1
  br label %13, !llvm.loop !23

48:                                               ; preds = %13
  %49 = load i32, ptr %3, align 4
  %50 = add nsw i32 %49, 1
  br label %10, !llvm.loop !24

51:                                               ; preds = %10
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8
  store ptr %54, ptr %7, align 8
  call void @free(ptr noundef %52) #5
  store ptr %54, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %20

5:                                                ; preds = %1, %13
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %.critedge, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @get_value(ptr noundef %11)
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %.critedge, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %2, align 8
  br label %5, !llvm.loop !25

.critedge:                                        ; preds = %5, %9
  %17 = load ptr, ptr %2, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = call ptr @copy_data(ptr noundef %18)
  br label %20

20:                                               ; preds = %.critedge, %4
  %storemerge = phi ptr [ %19, %.critedge ], [ null, %4 ]
  ret ptr %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  br label %3

3:                                                ; preds = %6, %1
  %storemerge = phi ptr [ %0, %1 ], [ %9, %6 ]
  store ptr %storemerge, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  %5 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %10, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  br label %3, !llvm.loop !26

10:                                               ; preds = %3
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %13 = load ptr, ptr %12, align 8
  %14 = call ptr @get_good_move(ptr noundef %13)
  ret ptr %14
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

9:                                                ; preds = %21, %4
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %6, align 8
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = load ptr, ptr %8, align 8
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  br label %9, !llvm.loop !28

25:                                               ; preds = %9
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %26, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %7, align 8
  store i32 %31, ptr %32, align 4
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
    i32 2, label %11
    i32 3, label %40
  ]

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %10, %8
  br i1 poison, label %10, label %46

10:                                               ; preds = %9
  br label %9, !llvm.loop !29

11:                                               ; preds = %0
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #5
  store i32 7, ptr @ncol, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #5
  store i32 8, ptr @nrow, align 4
  %14 = call ptr @make_play(i32 noundef 1)
  store ptr %14, ptr %6, align 8
  store i32 0, ptr %3, align 4
  %15 = load i32, ptr @nrow, align 4
  %16 = load i32, ptr @ncol, align 4
  %17 = call ptr @make_data(i32 noundef %15, i32 noundef %16)
  br label %18

18:                                               ; preds = %33, %11
  %storemerge = phi ptr [ %17, %11 ], [ %34, %33 ]
  store ptr %storemerge, ptr %4, align 8
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %35, label %19

19:                                               ; preds = %18
  %20 = load ptr, ptr %4, align 8
  %21 = load ptr, ptr %6, align 8
  %22 = call ptr @where(ptr noundef %20, ptr noundef %21)
  %23 = call ptr @get_good_move(ptr noundef %22)
  store ptr %23, ptr %5, align 8
  %.not3 = icmp eq ptr %23, null
  br i1 %.not3, label %33, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8
  %26 = load ptr, ptr %4, align 8
  call void @get_real_move(ptr noundef %25, ptr noundef %26, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %27 = load i32, ptr %3, align 4
  %28 = load i32, ptr %1, align 4
  %29 = load i32, ptr %2, align 4
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %27, i32 noundef %28, i32 noundef %29) #5
  %31 = sub nsw i32 1, %27
  store i32 %31, ptr %3, align 4
  %32 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %32) #5
  br label %33

33:                                               ; preds = %24, %19
  %34 = load ptr, ptr %5, align 8
  br label %18, !llvm.loop !30

35:                                               ; preds = %18
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

46:                                               ; preds = %9, %45, %35, %0
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
