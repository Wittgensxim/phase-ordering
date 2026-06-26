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

5:                                                ; preds = %33, %1
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
  br i1 %11, label %12, label %34

12:                                               ; preds = %10
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr @nrow, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load ptr, ptr %2, align 8
  %22 = load i32, ptr %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr %21, i64 %23
  store i32 0, ptr %24, align 4
  %25 = add nsw i32 %22, 1
  store i32 %25, ptr %3, align 4
  br label %33

26:                                               ; preds = %12
  %27 = load ptr, ptr %2, align 8
  %28 = load i32, ptr %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %27, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 4
  store i32 1, ptr %4, align 4
  br label %33

33:                                               ; preds = %26, %20
  br label %5, !llvm.loop !9

34:                                               ; preds = %10
  %35 = load i32, ptr %4, align 4
  ret i32 %35
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

7:                                                ; preds = %23, %2
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %21, label %10

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
  br label %21

21:                                               ; preds = %10, %7
  %22 = phi i1 [ false, %7 ], [ %20, %10 ]
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %7, !llvm.loop !11

24:                                               ; preds = %21
  %25 = load i32, ptr %5, align 4
  %.lobit = lshr i32 %25, 31
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

6:                                                ; preds = %18, %1
  %7 = load i32, ptr %4, align 4
  %8 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %7, %8
  br i1 %.not, label %.loopexit, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %3, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %25

18:                                               ; preds = %9
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %19, i64 %21
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %3, align 4
  %24 = add nsw i32 %20, 1
  store i32 %24, ptr %4, align 4
  br label %6, !llvm.loop !12

.loopexit:                                        ; preds = %6
  br label %25

25:                                               ; preds = %.loopexit, %17
  %26 = load i32, ptr %4, align 4
  %27 = load i32, ptr @ncol, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  ret i32 %29
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

4:                                                ; preds = %11, %1
  %storemerge.in = phi ptr [ @wanted, %1 ], [ %13, %11 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  store ptr %storemerge, ptr %3, align 8
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %.loopexit, label %5

5:                                                ; preds = %4
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = call i32 @equal_data(ptr noundef %7, ptr noundef %8)
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %4, !llvm.loop !17

.loopexit:                                        ; preds = %4
  br label %14

14:                                               ; preds = %.loopexit, %10
  %15 = load ptr, ptr %3, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %19

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %17
  %storemerge2 = phi i32 [ 1, %18 ], [ 0, %17 ]
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

11:                                               ; preds = %19, %2
  %storemerge = phi i32 [ 0, %2 ], [ %21, %19 ]
  store i32 %storemerge, ptr %5, align 4
  %12 = load i32, ptr %4, align 4
  %.not = icmp eq i32 %storemerge, %12
  br i1 %.not, label %22, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr @nrow, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %15, i64 %17
  store i32 %14, ptr %18, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %5, align 4
  %21 = add nsw i32 %20, 1
  br label %11, !llvm.loop !18

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %32, %22
  %24 = load i32, ptr %5, align 4
  %25 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %24, %25
  br i1 %.not1, label %35, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %3, align 4
  %28 = load ptr, ptr %6, align 8
  %29 = load i32, ptr %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr %28, i64 %30
  store i32 %27, ptr %31, align 4
  br label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %5, align 4
  br label %23, !llvm.loop !19

35:                                               ; preds = %23
  %36 = load ptr, ptr %6, align 8
  ret ptr %36
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

14:                                               ; preds = %79, %3
  %storemerge = phi i32 [ 0, %3 ], [ %81, %79 ]
  store i32 %storemerge, ptr %7, align 4
  %15 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %storemerge, %15
  br i1 %.not, label %82, label %16

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %75, %16
  %storemerge2 = phi i32 [ 0, %16 ], [ %77, %75 ]
  store i32 %storemerge2, ptr %8, align 4
  %18 = load i32, ptr @ncol, align 4
  %.not3 = icmp eq i32 %storemerge2, %18
  br i1 %.not3, label %78, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %7, align 4
  %21 = load i32, ptr %8, align 4
  %22 = call ptr @make_data(i32 noundef %20, i32 noundef %21)
  store ptr %22, ptr %9, align 8
  %23 = load ptr, ptr %4, align 8
  call void @melt_data(ptr noundef %22, ptr noundef %23)
  %24 = call i32 @equal_data(ptr noundef %22, ptr noundef %23)
  %.not4 = icmp eq i32 %24, 0
  br i1 %.not4, label %25, label %64

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
  br i1 %.not5, label %49, label %63

49:                                               ; preds = %46
  %50 = load ptr, ptr %5, align 8
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

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
  br i1 %.not6, label %62, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr %6, align 8
  store i32 2, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %53
  br label %63

63:                                               ; preds = %62, %49, %46
  br label %73

64:                                               ; preds = %19
  %65 = load i32, ptr %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, ptr @nrow, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, ptr %7, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, ptr @ncol, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, ptr %8, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %74) #5
  br label %75

75:                                               ; preds = %73
  %76 = load i32, ptr %8, align 4
  %77 = add nsw i32 %76, 1
  br label %17, !llvm.loop !20

78:                                               ; preds = %17
  br label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %7, align 4
  %81 = add nsw i32 %80, 1
  br label %14, !llvm.loop !21

82:                                               ; preds = %14
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %85 = load ptr, ptr %84, align 8
  store ptr %85, ptr %11, align 8
  call void @free(ptr noundef %83) #5
  %.not1 = icmp eq ptr %85, null
  br i1 %.not1, label %90, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %5, align 8
  %88 = load i32, ptr %87, align 4
  %89 = sub nsw i32 1, %88
  store i32 %89, ptr %87, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load ptr, ptr %11, align 8
  ret ptr %91
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

11:                                               ; preds = %57, %1
  %12 = load ptr, ptr %4, align 8
  %13 = call i32 @next_data(ptr noundef %12)
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %58, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8
  %16 = call i32 @valid_data(ptr noundef %15)
  %.not1 = icmp eq i32 %16, 0
  br i1 %.not1, label %57, label %17

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

56:                                               ; preds = %51, %27
  br label %57

57:                                               ; preds = %56, %14
  br label %11, !llvm.loop !22

58:                                               ; preds = %11
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 24
  %61 = load ptr, ptr %60, align 8
  store ptr %61, ptr %6, align 8
  call void @free(ptr noundef %59) #5
  ret ptr %61
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

10:                                               ; preds = %50, %1
  %storemerge = phi i32 [ 0, %1 ], [ %52, %50 ]
  store i32 %storemerge, ptr %3, align 4
  %11 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %storemerge, %11
  br i1 %.not, label %53, label %12

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %46, %12
  %storemerge1 = phi i32 [ 0, %12 ], [ %48, %46 ]
  store i32 %storemerge1, ptr %4, align 4
  %14 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %storemerge1, %14
  br i1 %.not2, label %49, label %15

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
  br label %46

46:                                               ; preds = %44
  %47 = load i32, ptr %4, align 4
  %48 = add nsw i32 %47, 1
  br label %13, !llvm.loop !23

49:                                               ; preds = %13
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %3, align 4
  %52 = add nsw i32 %51, 1
  br label %10, !llvm.loop !24

53:                                               ; preds = %10
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 8
  %56 = load ptr, ptr %55, align 8
  store ptr %56, ptr %7, align 8
  call void @free(ptr noundef %54) #5
  store ptr %56, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %25

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %17, %5
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %15, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @get_value(ptr noundef %12)
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i1 [ false, %6 ], [ %14, %10 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %2, align 8
  br label %6, !llvm.loop !25

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = call ptr @copy_data(ptr noundef %23)
  br label %25

25:                                               ; preds = %21, %4
  %storemerge = phi ptr [ %24, %21 ], [ null, %4 ]
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
  switch i32 2, label %48 [
    i32 1, label %8
    i32 2, label %13
    i32 3, label %42
  ]

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %11, %8
  br i1 false, label %10, label %12

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  br label %9, !llvm.loop !29

12:                                               ; preds = %9
  br label %48

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

20:                                               ; preds = %35, %13
  %storemerge = phi ptr [ %19, %13 ], [ %36, %35 ]
  store ptr %storemerge, ptr %4, align 8
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %37, label %21

21:                                               ; preds = %20
  %22 = load ptr, ptr %4, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = call ptr @where(ptr noundef %22, ptr noundef %23)
  %25 = call ptr @get_good_move(ptr noundef %24)
  store ptr %25, ptr %5, align 8
  %.not3 = icmp eq ptr %25, null
  br i1 %.not3, label %35, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8
  %28 = load ptr, ptr %4, align 8
  call void @get_real_move(ptr noundef %27, ptr noundef %28, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %29 = load i32, ptr %3, align 4
  %30 = load i32, ptr %1, align 4
  %31 = load i32, ptr %2, align 4
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %29, i32 noundef %30, i32 noundef %31) #5
  %33 = sub nsw i32 1, %29
  store i32 %33, ptr %3, align 4
  %34 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %34) #5
  br label %35

35:                                               ; preds = %26, %21
  %36 = load ptr, ptr %5, align 8
  br label %20, !llvm.loop !30

37:                                               ; preds = %20
  %38 = load ptr, ptr %6, align 8
  call void @dump_play(ptr noundef %38)
  %39 = load i32, ptr %3, align 4
  %40 = sub nsw i32 1, %39
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %40) #5
  br label %48

42:                                               ; preds = %0
  br label %43

43:                                               ; preds = %46, %42
  br i1 false, label %44, label %47

44:                                               ; preds = %43
  br i1 poison, label %45, label %46

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45, %44
  br label %43, !llvm.loop !31

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %37, %12, %0
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
