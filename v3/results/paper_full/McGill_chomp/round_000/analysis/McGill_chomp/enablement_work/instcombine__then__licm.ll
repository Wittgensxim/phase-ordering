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
  %10 = load ptr, ptr %2, align 8
  %11 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %15, %1
  %13 = phi i32 [ %14, %15 ], [ %.promoted, %1 ]
  %14 = add nsw i32 %13, -1
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %21, label %15

15:                                               ; preds = %12
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %10, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %14 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %11, i64 %19
  store i32 %18, ptr %20, align 4
  br label %12, !llvm.loop !7

21:                                               ; preds = %12
  %.lcssa = phi i32 [ %14, %12 ]
  store i32 %.lcssa, ptr %4, align 4
  %22 = load ptr, ptr %3, align 8
  ret ptr %22
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
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = load ptr, ptr %2, align 8
  %.promoted = load i32, ptr %3, align 4
  %.promoted2 = load i32, ptr %4, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = phi i32 [ %31, %30 ], [ %.promoted2, %1 ]
  %10 = phi i32 [ %32, %30 ], [ %.promoted, %1 ]
  %11 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %10, %11
  br i1 %.not, label %13, label %12

12:                                               ; preds = %8
  %.not1 = icmp eq i32 %9, 0
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i1 [ false, %8 ], [ %.not1, %12 ]
  br i1 %14, label %15, label %33

15:                                               ; preds = %13
  %16 = sext i32 %10 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %5, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr @nrow, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = sext i32 %10 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %7, i64 %22
  store i32 0, ptr %23, align 4
  %24 = add nsw i32 %10, 1
  br label %30

25:                                               ; preds = %15
  %26 = sext i32 %10 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %6, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ 1, %25 ], [ %9, %21 ]
  %32 = phi i32 [ %10, %25 ], [ %24, %21 ]
  br label %8, !llvm.loop !9

33:                                               ; preds = %13
  %.lcssa3 = phi i32 [ %9, %13 ]
  %.lcssa = phi i32 [ %10, %13 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa3, ptr %4, align 4
  %34 = load i32, ptr %4, align 4
  ret i32 %34
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
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %5, align 4
  br label %11

11:                                               ; preds = %28, %2
  %12 = phi i32 [ %13, %28 ], [ %.promoted, %2 ]
  %13 = add nsw i32 %12, -1
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %29, label %14

14:                                               ; preds = %11
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %7, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %8, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = sext i32 %13 to i64
  %24 = getelementptr inbounds [4 x i8], ptr %9, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %13 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %10, i64 %26
  store i32 %25, ptr %27, align 4
  br label %28

28:                                               ; preds = %22, %14
  br label %11, !llvm.loop !10

29:                                               ; preds = %11
  %.lcssa = phi i32 [ %13, %11 ]
  store i32 %.lcssa, ptr %5, align 4
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
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %5, align 4
  br label %9

9:                                                ; preds = %22, %2
  %10 = phi i32 [ %11, %22 ], [ %.promoted, %2 ]
  %11 = add nsw i32 %10, -1
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %20, label %12

12:                                               ; preds = %9
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %7, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %8, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %15, %18
  br label %20

20:                                               ; preds = %12, %9
  %21 = phi i1 [ false, %9 ], [ %19, %12 ]
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %9, !llvm.loop !11

23:                                               ; preds = %20
  %.lcssa = phi i32 [ %11, %20 ]
  store i32 %.lcssa, ptr %5, align 4
  %24 = load i32, ptr %5, align 4
  %.lobit = lshr i32 %24, 31
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
  %6 = load i32, ptr @ncol, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr %2, align 8
  %.promoted = load i32, ptr %4, align 4
  %.promoted2 = load i32, ptr %3, align 4
  br label %9

9:                                                ; preds = %18, %1
  %10 = phi i32 [ %21, %18 ], [ %.promoted2, %1 ]
  %11 = phi i32 [ %22, %18 ], [ %.promoted, %1 ]
  %.not = icmp eq i32 %11, %6
  br i1 %.not, label %.loopexit, label %12

12:                                               ; preds = %9
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %7, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, %10
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  %.lcssa4 = phi i32 [ %10, %12 ]
  %.lcssa1 = phi i32 [ %11, %12 ]
  store i32 %.lcssa1, ptr %4, align 4
  store i32 %.lcssa4, ptr %3, align 4
  br label %23

18:                                               ; preds = %12
  %19 = sext i32 %11 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %8, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %11, 1
  br label %9, !llvm.loop !12

.loopexit:                                        ; preds = %9
  %.lcssa3 = phi i32 [ %10, %9 ]
  %.lcssa = phi i32 [ %11, %9 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa3, ptr %3, align 4
  br label %23

23:                                               ; preds = %.loopexit, %17
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr @ncol, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  ret i32 %27
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
  %4 = load ptr, ptr %2, align 8
  br label %5

5:                                                ; preds = %9, %1
  %storemerge.in = phi ptr [ @game_tree, %1 ], [ %10, %9 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  %6 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @equal_data(ptr noundef %7, ptr noundef %4)
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  br label %5, !llvm.loop !13

11:                                               ; preds = %5
  %storemerge.lcssa = phi ptr [ %storemerge, %5 ]
  store ptr %storemerge.lcssa, ptr %3, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = load i32, ptr %12, align 8
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr %2, align 8
  %.promoted = load i32, ptr %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = phi i32 [ %9, %17 ], [ %.promoted, %1 ]
  %7 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %6, %7
  br i1 %.not, label %18, label %8

8:                                                ; preds = %5
  %9 = add nsw i32 %6, 1
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %4, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %12) #5
  %14 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %9, %14
  br i1 %.not1, label %17, label %15

15:                                               ; preds = %8
  %16 = call i32 @putchar(i32 noundef 44) #5
  br label %17

17:                                               ; preds = %15, %8
  br label %5, !llvm.loop !14

18:                                               ; preds = %5
  %.lcssa = phi i32 [ %6, %5 ]
  store i32 %.lcssa, ptr %3, align 4
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
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %3
  %5 = load ptr, ptr %storemerge, align 8
  call void @show_move(ptr noundef %5)
  %6 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %7 = load ptr, ptr %6, align 8
  br label %3, !llvm.loop !15

8:                                                ; preds = %3
  %storemerge.lcssa = phi ptr [ %storemerge, %3 ]
  store ptr %storemerge.lcssa, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  br label %3

3:                                                ; preds = %4, %1
  %storemerge = phi ptr [ %0, %1 ], [ %12, %4 ]
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %13, label %4

4:                                                ; preds = %3
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %5 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %6 = load ptr, ptr %5, align 8
  call void @show_data(ptr noundef %6)
  %7 = load i32, ptr %storemerge, align 8
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %7) #5
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %9 = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  %10 = load ptr, ptr %9, align 8
  call void @show_list(ptr noundef %10)
  %11 = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  %12 = load ptr, ptr %11, align 8
  br label %3, !llvm.loop !16

13:                                               ; preds = %3
  %storemerge.lcssa = phi ptr [ %storemerge, %3 ]
  store ptr %storemerge.lcssa, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  br label %5

5:                                                ; preds = %10, %1
  %storemerge.in = phi ptr [ @wanted, %1 ], [ %11, %10 ]
  %storemerge = load ptr, ptr %storemerge.in, align 8
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %.loopexit, label %6

6:                                                ; preds = %5
  %7 = load ptr, ptr %storemerge, align 8
  %8 = call i32 @equal_data(ptr noundef %7, ptr noundef %4)
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %6
  %storemerge.lcssa3 = phi ptr [ %storemerge, %6 ]
  store ptr %storemerge.lcssa3, ptr %3, align 8
  br label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  br label %5, !llvm.loop !17

.loopexit:                                        ; preds = %5
  %storemerge.lcssa = phi ptr [ %storemerge, %5 ]
  store ptr %storemerge.lcssa, ptr %3, align 8
  br label %12

12:                                               ; preds = %.loopexit, %9
  %13 = load ptr, ptr %3, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %15
  %storemerge2 = phi i32 [ 1, %16 ], [ 0, %15 ]
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
  %11 = load i32, ptr %4, align 4
  %12 = load ptr, ptr %6, align 8
  br label %13

13:                                               ; preds = %18, %2
  %storemerge = phi i32 [ 0, %2 ], [ %19, %18 ]
  %.not = icmp eq i32 %storemerge, %11
  br i1 %.not, label %20, label %14

14:                                               ; preds = %13
  %15 = load i32, ptr @nrow, align 4
  %16 = sext i32 %storemerge to i64
  %17 = getelementptr inbounds [4 x i8], ptr %12, i64 %16
  store i32 %15, ptr %17, align 4
  br label %18

18:                                               ; preds = %14
  %19 = add nsw i32 %storemerge, 1
  br label %13, !llvm.loop !18

20:                                               ; preds = %13
  %storemerge.lcssa = phi i32 [ %storemerge, %13 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %21 = load i32, ptr %3, align 4
  %22 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %5, align 4
  br label %23

23:                                               ; preds = %29, %20
  %24 = phi i32 [ %30, %29 ], [ %.promoted, %20 ]
  %25 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %24, %25
  br i1 %.not1, label %31, label %26

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %22, i64 %27
  store i32 %21, ptr %28, align 4
  br label %29

29:                                               ; preds = %26
  %30 = add nsw i32 %24, 1
  br label %23, !llvm.loop !19

31:                                               ; preds = %23
  %.lcssa = phi i32 [ %24, %23 ]
  store i32 %.lcssa, ptr %5, align 4
  %32 = load ptr, ptr %6, align 8
  ret ptr %32
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
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %9, align 8
  %.promoted15 = load ptr, ptr %11, align 8
  %.promoted17 = load i32, ptr %8, align 1
  br label %20

20:                                               ; preds = %76, %3
  %storemerge2.lcssa18 = phi i32 [ %.promoted17, %3 ], [ %storemerge2.lcssa, %76 ]
  %.lcssa1216 = phi ptr [ %.promoted15, %3 ], [ %.lcssa12, %76 ]
  %.lcssa1014 = phi ptr [ %.promoted, %3 ], [ %.lcssa10, %76 ]
  %storemerge = phi i32 [ 0, %3 ], [ %77, %76 ]
  %21 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %storemerge, %21
  br i1 %.not, label %78, label %22

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %73, %22
  %24 = phi ptr [ %.lcssa1216, %22 ], [ %71, %73 ]
  %25 = phi ptr [ %.lcssa1014, %22 ], [ %29, %73 ]
  %26 = phi i32 [ %storemerge, %22 ], [ %72, %73 ]
  %storemerge2 = phi i32 [ 0, %22 ], [ %74, %73 ]
  %27 = load i32, ptr @ncol, align 4
  %.not3 = icmp eq i32 %storemerge2, %27
  br i1 %.not3, label %75, label %28

28:                                               ; preds = %23
  %29 = call ptr @make_data(i32 noundef %26, i32 noundef %storemerge2)
  call void @melt_data(ptr noundef %29, ptr noundef %14)
  %30 = call i32 @equal_data(ptr noundef %29, ptr noundef %14)
  %.not4 = icmp eq i32 %30, 0
  br i1 %.not4, label %31, label %61

31:                                               ; preds = %28
  %32 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %33 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %32, ptr %33, align 8
  %34 = call ptr @copy_data(ptr noundef %29)
  %35 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %36 = load ptr, ptr %35, align 8
  store ptr %34, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr null, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %41 = load ptr, ptr %40, align 8
  %42 = load i32, ptr %15, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = call i32 @get_value(ptr noundef %29)
  store i32 %45, ptr %16, align 4
  br label %46

46:                                               ; preds = %44, %31
  %47 = load i32, ptr %17, align 4
  %.not5 = icmp eq i32 %47, 0
  br i1 %.not5, label %48, label %59

48:                                               ; preds = %46
  %49 = load i32, ptr %18, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, ptr @ncol, align 4
  %53 = add nsw i32 %52, -1
  %54 = load i32, ptr @nrow, align 4
  %55 = add nsw i32 %54, -1
  %56 = call i32 @in_wanted(ptr noundef %29)
  %.not6 = icmp eq i32 %56, 0
  br i1 %.not6, label %58, label %57

57:                                               ; preds = %51
  store i32 2, ptr %19, align 4
  br label %58

58:                                               ; preds = %57, %51
  br label %59

59:                                               ; preds = %58, %48, %46
  %60 = phi i32 [ %55, %58 ], [ %26, %48 ], [ %26, %46 ]
  %storemerge28 = phi i32 [ %53, %58 ], [ %storemerge2, %48 ], [ %storemerge2, %46 ]
  br label %70

61:                                               ; preds = %28
  %62 = icmp eq i32 %storemerge2, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i32, ptr @nrow, align 4
  %65 = add nsw i32 %64, -1
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i32 [ %65, %63 ], [ %26, %61 ]
  %68 = load i32, ptr @ncol, align 4
  %69 = add nsw i32 %68, -1
  br label %70

70:                                               ; preds = %66, %59
  %71 = phi ptr [ %24, %66 ], [ %41, %59 ]
  %72 = phi i32 [ %67, %66 ], [ %60, %59 ]
  %storemerge27 = phi i32 [ %69, %66 ], [ %storemerge28, %59 ]
  call void @free(ptr noundef %29) #5
  br label %73

73:                                               ; preds = %70
  %74 = add nsw i32 %storemerge27, 1
  br label %23, !llvm.loop !20

75:                                               ; preds = %23
  %.lcssa12 = phi ptr [ %24, %23 ]
  %.lcssa10 = phi ptr [ %25, %23 ]
  %.lcssa = phi i32 [ %26, %23 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %23 ]
  br label %76

76:                                               ; preds = %75
  %77 = add nsw i32 %.lcssa, 1
  br label %20, !llvm.loop !21

78:                                               ; preds = %20
  %storemerge2.lcssa18.lcssa = phi i32 [ %storemerge2.lcssa18, %20 ]
  %.lcssa1216.lcssa = phi ptr [ %.lcssa1216, %20 ]
  %.lcssa1014.lcssa = phi ptr [ %.lcssa1014, %20 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %20 ]
  store i32 %storemerge.lcssa, ptr %7, align 4
  store ptr %.lcssa1014.lcssa, ptr %9, align 8
  store ptr %.lcssa1216.lcssa, ptr %11, align 8
  store i32 %storemerge2.lcssa18.lcssa, ptr %8, align 1
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
  %.promoted = load ptr, ptr %4, align 8
  %.promoted2 = load ptr, ptr %6, align 8
  br label %11

11:                                               ; preds = %50, %1
  %12 = phi ptr [ %51, %50 ], [ %.promoted2, %1 ]
  %13 = phi ptr [ %52, %50 ], [ %.promoted, %1 ]
  %14 = call i32 @next_data(ptr noundef %13)
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %53, label %15

15:                                               ; preds = %11
  %16 = call i32 @valid_data(ptr noundef %13)
  %.not1 = icmp eq i32 %16, 0
  br i1 %.not1, label %50, label %17

17:                                               ; preds = %15
  %18 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %18, ptr %19, align 8
  %20 = load ptr, ptr @game_tree, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr @game_tree, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = call ptr @copy_data(ptr noundef %13)
  %27 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %26, ptr %29, align 8
  %30 = call ptr @make_list(ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull %2)
  %31 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %30, ptr %33, align 8
  %34 = load i32, ptr %3, align 4
  %35 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %36 = load ptr, ptr %35, align 8
  store i32 %34, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr null, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %41 = load ptr, ptr %40, align 8
  %42 = load i32, ptr %2, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %48

44:                                               ; preds = %25
  call void @free(ptr noundef %13) #5
  %45 = load i32, ptr @nrow, align 4
  %46 = load i32, ptr @ncol, align 4
  %47 = call ptr @make_data(i32 noundef %45, i32 noundef %46)
  br label %48

48:                                               ; preds = %44, %25
  %49 = phi ptr [ %47, %44 ], [ %13, %25 ]
  br label %50

50:                                               ; preds = %48, %15
  %51 = phi ptr [ %41, %48 ], [ %12, %15 ]
  %52 = phi ptr [ %49, %48 ], [ %13, %15 ]
  br label %11, !llvm.loop !22

53:                                               ; preds = %11
  %.lcssa3 = phi ptr [ %12, %11 ]
  %.lcssa = phi ptr [ %13, %11 ]
  store ptr %.lcssa, ptr %4, align 8
  store ptr %.lcssa3, ptr %6, align 8
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 24
  %56 = load ptr, ptr %55, align 8
  store ptr %56, ptr %6, align 8
  call void @free(ptr noundef %54) #5
  ret ptr %56
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
  %10 = load ptr, ptr %2, align 8
  %.promoted = load ptr, ptr %5, align 8
  %.promoted11 = load ptr, ptr %7, align 8
  %.promoted13 = load i32, ptr %4, align 1
  br label %11

11:                                               ; preds = %48, %1
  %storemerge1.lcssa14 = phi i32 [ %.promoted13, %1 ], [ %storemerge1.lcssa, %48 ]
  %.lcssa812 = phi ptr [ %.promoted11, %1 ], [ %.lcssa8, %48 ]
  %.lcssa610 = phi ptr [ %.promoted, %1 ], [ %.lcssa6, %48 ]
  %storemerge = phi i32 [ 0, %1 ], [ %49, %48 ]
  %12 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %storemerge, %12
  br i1 %.not, label %50, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %45, %13
  %15 = phi ptr [ %.lcssa812, %13 ], [ %43, %45 ]
  %16 = phi ptr [ %.lcssa610, %13 ], [ %20, %45 ]
  %17 = phi i32 [ %storemerge, %13 ], [ %44, %45 ]
  %storemerge1 = phi i32 [ 0, %13 ], [ %46, %45 ]
  %18 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %storemerge1, %18
  br i1 %.not2, label %47, label %19

19:                                               ; preds = %14
  %20 = call ptr @make_data(i32 noundef %17, i32 noundef %storemerge1)
  call void @melt_data(ptr noundef %20, ptr noundef %10)
  %21 = call i32 @equal_data(ptr noundef %20, ptr noundef %10)
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %22, label %33

22:                                               ; preds = %19
  %23 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %23, ptr %24, align 8
  %25 = call ptr @copy_data(ptr noundef %20)
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %27 = load ptr, ptr %26, align 8
  store ptr %25, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %32 = load ptr, ptr %31, align 8
  br label %42

33:                                               ; preds = %19
  %34 = icmp eq i32 %storemerge1, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, ptr @nrow, align 4
  %37 = add nsw i32 %36, -1
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %37, %35 ], [ %17, %33 ]
  %40 = load i32, ptr @ncol, align 4
  %41 = add nsw i32 %40, -1
  br label %42

42:                                               ; preds = %38, %22
  %43 = phi ptr [ %15, %38 ], [ %32, %22 ]
  %44 = phi i32 [ %39, %38 ], [ %17, %22 ]
  %storemerge14 = phi i32 [ %41, %38 ], [ %storemerge1, %22 ]
  call void @free(ptr noundef %20) #5
  br label %45

45:                                               ; preds = %42
  %46 = add nsw i32 %storemerge14, 1
  br label %14, !llvm.loop !23

47:                                               ; preds = %14
  %.lcssa8 = phi ptr [ %15, %14 ]
  %.lcssa6 = phi ptr [ %16, %14 ]
  %.lcssa = phi i32 [ %17, %14 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %14 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nsw i32 %.lcssa, 1
  br label %11, !llvm.loop !24

50:                                               ; preds = %11
  %storemerge1.lcssa14.lcssa = phi i32 [ %storemerge1.lcssa14, %11 ]
  %.lcssa812.lcssa = phi ptr [ %.lcssa812, %11 ]
  %.lcssa610.lcssa = phi ptr [ %.lcssa610, %11 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %11 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store ptr %.lcssa610.lcssa, ptr %5, align 8
  store ptr %.lcssa812.lcssa, ptr %7, align 8
  store i32 %storemerge1.lcssa14.lcssa, ptr %4, align 1
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
  br label %23

5:                                                ; preds = %1
  %.promoted = load ptr, ptr %2, align 8
  br label %6

6:                                                ; preds = %16, %5
  %7 = phi ptr [ %18, %16 ], [ %.promoted, %5 ]
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
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %18 = load ptr, ptr %17, align 8
  br label %6, !llvm.loop !25

19:                                               ; preds = %14
  %.lcssa = phi ptr [ %7, %14 ]
  store ptr %.lcssa, ptr %2, align 8
  %20 = load ptr, ptr %2, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = call ptr @copy_data(ptr noundef %21)
  br label %23

23:                                               ; preds = %19, %4
  %storemerge = phi ptr [ %22, %19 ], [ null, %4 ]
  ret ptr %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  br label %3

3:                                                ; preds = %6, %1
  %storemerge = phi ptr [ %0, %1 ], [ %8, %6 ]
  %4 = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  %5 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  %8 = load ptr, ptr %7, align 8
  br label %3, !llvm.loop !26

9:                                                ; preds = %3
  %storemerge.lcssa = phi ptr [ %storemerge, %3 ]
  store ptr %storemerge.lcssa, ptr %2, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @get_good_move(ptr noundef %12)
  ret ptr %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  br label %6

6:                                                ; preds = %10, %2
  %storemerge = phi ptr [ %1, %2 ], [ %12, %10 ]
  %7 = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @equal_data(ptr noundef %8, ptr noundef %5)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  %12 = load ptr, ptr %11, align 8
  br label %6, !llvm.loop !27

13:                                               ; preds = %6
  %storemerge.lcssa = phi ptr [ %storemerge, %6 ]
  store ptr %storemerge.lcssa, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = load ptr, ptr %15, align 8
  ret ptr %16
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
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %8, align 8
  br label %13

13:                                               ; preds = %22, %4
  %14 = load i32, ptr %10, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %11, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, ptr %12, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %12, align 4
  br label %13, !llvm.loop !28

25:                                               ; preds = %13
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
  switch i32 2, label %45 [
    i32 1, label %8
    i32 2, label %13
    i32 3, label %39
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
  br label %45

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
  %20 = load ptr, ptr %6, align 8
  %.promoted = load ptr, ptr %5, align 8
  %.promoted4 = load i32, ptr %3, align 4
  br label %21

21:                                               ; preds = %32, %13
  %22 = phi i32 [ %.promoted4, %13 ], [ %33, %32 ]
  %23 = phi ptr [ %.promoted, %13 ], [ %26, %32 ]
  %storemerge = phi ptr [ %19, %13 ], [ %26, %32 ]
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %34, label %24

24:                                               ; preds = %21
  %25 = call ptr @where(ptr noundef %storemerge, ptr noundef %20)
  %26 = call ptr @get_good_move(ptr noundef %25)
  %.not3 = icmp eq ptr %26, null
  br i1 %.not3, label %32, label %27

27:                                               ; preds = %24
  call void @get_real_move(ptr noundef %26, ptr noundef %storemerge, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %28 = load i32, ptr %1, align 4
  %29 = load i32, ptr %2, align 4
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %22, i32 noundef %28, i32 noundef %29) #5
  %31 = sub nsw i32 1, %22
  call void @free(ptr noundef %storemerge) #5
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i32 [ %31, %27 ], [ %22, %24 ]
  br label %21, !llvm.loop !30

34:                                               ; preds = %21
  %.lcssa5 = phi i32 [ %22, %21 ]
  %.lcssa = phi ptr [ %23, %21 ]
  %storemerge.lcssa = phi ptr [ %storemerge, %21 ]
  store ptr %storemerge.lcssa, ptr %4, align 8
  store ptr %.lcssa, ptr %5, align 8
  store i32 %.lcssa5, ptr %3, align 4
  %35 = load ptr, ptr %6, align 8
  call void @dump_play(ptr noundef %35)
  %36 = load i32, ptr %3, align 4
  %37 = sub nsw i32 1, %36
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %37) #5
  br label %45

39:                                               ; preds = %0
  br label %40

40:                                               ; preds = %43, %39
  br i1 false, label %41, label %44

41:                                               ; preds = %40
  br i1 poison, label %42, label %43

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %41
  br label %40, !llvm.loop !31

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %34, %12, %0
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
