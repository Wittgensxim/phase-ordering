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
  store ptr %0, ptr %2, align 8
  %4 = load i32, ptr @ncol, align 4
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2
  %7 = call ptr @malloc(i64 noundef %6) #4
  store ptr %7, ptr %3, align 8
  %8 = load i32, ptr @ncol, align 4
  %9 = load ptr, ptr %2, align 8
  br label %10

10:                                               ; preds = %12, %1
  %11 = phi i32 [ %13, %12 ], [ %8, %1 ]
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %19, label %12

12:                                               ; preds = %10
  %13 = add nsw i32 %11, -1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %9, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %7, i64 %17
  store i32 %16, ptr %18, align 4
  br label %10, !llvm.loop !7

19:                                               ; preds = %10
  %20 = load ptr, ptr %3, align 8
  ret ptr %20
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %24, %1
  %3 = phi i32 [ %25, %24 ], [ 0, %1 ]
  %4 = phi i32 [ %26, %24 ], [ 0, %1 ]
  %5 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %4, %5
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  %.not3 = icmp eq i32 %3, 0
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i1 [ false, %2 ], [ %.not3, %6 ]
  br i1 %8, label %9, label %27

9:                                                ; preds = %7
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr @nrow, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = sext i32 %4 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %0, i64 %16
  store i32 0, ptr %17, align 4
  %18 = add nsw i32 %4, 1
  br label %24

19:                                               ; preds = %9
  %20 = sext i32 %4 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i32 [ 1, %19 ], [ %3, %15 ]
  %26 = phi i32 [ %4, %19 ], [ %18, %15 ]
  br label %2, !llvm.loop !9

27:                                               ; preds = %7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %21, %2
  %5 = phi i32 [ %6, %21 ], [ %3, %2 ]
  %6 = add nsw i32 %5, -1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %22, label %7

7:                                                ; preds = %4
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = sext i32 %6 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %6 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %0, i64 %19
  store i32 %18, ptr %20, align 4
  br label %21

21:                                               ; preds = %15, %7
  br label %4, !llvm.loop !10

22:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %17, %2
  %5 = phi i32 [ %6, %17 ], [ %3, %2 ]
  %6 = add nsw i32 %5, -1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %15, label %7

7:                                                ; preds = %4
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %10, %13
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi i1 [ false, %4 ], [ %14, %7 ]
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %4, !llvm.loop !11

18:                                               ; preds = %15
  %19 = icmp slt i32 %5, 1
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @ncol, align 4
  br label %3

3:                                                ; preds = %12, %1
  %.in = phi ptr [ %14, %12 ], [ @nrow, %1 ]
  %4 = phi i32 [ %15, %12 ], [ 0, %1 ]
  %.not = icmp eq i32 %4, %2
  br i1 %.not, label %.loopexit, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %.in, align 4
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %6
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %16

12:                                               ; preds = %5
  %13 = zext nneg i32 %4 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %13
  %15 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !12

.loopexit:                                        ; preds = %3
  br label %16

16:                                               ; preds = %.loopexit, %11
  %17 = load i32, ptr @ncol, align 4
  %18 = icmp eq i32 %4, %17
  %19 = zext i1 %18 to i32
  ret i32 %19
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
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi i32 [ %6, %14 ], [ 0, %1 ]
  %4 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %3, %4
  br i1 %.not, label %15, label %5

5:                                                ; preds = %2
  %6 = add nuw nsw i32 %3, 1
  %7 = zext nneg i32 %3 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9) #5
  %11 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %6, %11
  br i1 %.not1, label %14, label %12

12:                                               ; preds = %5
  %13 = call i32 @putchar(i32 noundef 44) #5
  br label %14

14:                                               ; preds = %12, %5
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
  br i1 %.not, label %.loopexit, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @equal_data(ptr noundef %5, ptr noundef %0)
  %.not2 = icmp eq i32 %6, 0
  br i1 %.not2, label %8, label %7

7:                                                ; preds = %4
  br label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %2, !llvm.loop !17

.loopexit:                                        ; preds = %2
  br label %10

10:                                               ; preds = %.loopexit, %7
  %11 = icmp eq ptr %3, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %14

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %12
  %storemerge = phi i32 [ 1, %13 ], [ 0, %12 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr @ncol, align 4
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = call ptr @malloc(i64 noundef %8) #4
  store ptr %9, ptr %5, align 8
  %10 = load i32, ptr %4, align 4
  br label %11

11:                                               ; preds = %17, %2
  %12 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %.not = icmp eq i32 %12, %10
  br i1 %.not, label %19, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr @nrow, align 4
  %15 = zext nneg i32 %12 to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %15
  store i32 %14, ptr %16, align 4
  br label %17

17:                                               ; preds = %13
  %18 = add nuw nsw i32 %12, 1
  br label %11, !llvm.loop !18

19:                                               ; preds = %11
  %20 = load i32, ptr %3, align 4
  %21 = load ptr, ptr %5, align 8
  br label %22

22:                                               ; preds = %28, %19
  %23 = phi i32 [ %29, %28 ], [ %12, %19 ]
  %24 = load i32, ptr @ncol, align 4
  %.not3 = icmp eq i32 %23, %24
  br i1 %.not3, label %30, label %25

25:                                               ; preds = %22
  %26 = zext nneg i32 %23 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %26
  store i32 %20, ptr %27, align 4
  br label %28

28:                                               ; preds = %25
  %29 = add nuw nsw i32 %23, 1
  br label %22, !llvm.loop !19

30:                                               ; preds = %22
  %31 = load ptr, ptr %5, align 8
  ret ptr %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 1, ptr %1, align 4
  %11 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  store ptr %11, ptr %9, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %12, align 8
  store ptr %11, ptr %10, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8
  %.promoted9 = load i32, ptr %7, align 4
  %.promoted = load ptr, ptr %8, align 8
  br label %16

16:                                               ; preds = %74, %3
  %.lcssa613 = phi ptr [ %20, %74 ], [ %11, %3 ]
  %.lcssa411 = phi ptr [ %21, %74 ], [ %.promoted, %3 ]
  %.lcssa10 = phi i32 [ %23, %74 ], [ %.promoted9, %3 ]
  %.lcssa28 = phi i32 [ %75, %74 ], [ 0, %3 ]
  %17 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %.lcssa28, %17
  br i1 %.not, label %76, label %18

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %72, %18
  %20 = phi ptr [ %69, %72 ], [ %.lcssa613, %18 ]
  %21 = phi ptr [ %26, %72 ], [ %.lcssa411, %18 ]
  %22 = phi i32 [ %70, %72 ], [ %.lcssa28, %18 ]
  %23 = phi i32 [ %71, %72 ], [ 0, %18 ]
  %24 = load i32, ptr @ncol, align 4
  %.not15 = icmp eq i32 %23, %24
  br i1 %.not15, label %73, label %25

25:                                               ; preds = %19
  %26 = call ptr @make_data(i32 noundef %22, i32 noundef %23)
  call void @melt_data(ptr noundef %26, ptr noundef %13)
  %27 = call i32 @equal_data(ptr noundef %26, ptr noundef %13)
  %.not16 = icmp eq i32 %27, 0
  br i1 %.not16, label %28, label %60

28:                                               ; preds = %25
  %29 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %30 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %29, ptr %30, align 8
  %31 = call ptr @copy_data(ptr noundef %26)
  %32 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %33 = load ptr, ptr %32, align 8
  store ptr %31, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %38 = load ptr, ptr %37, align 8
  %39 = load i32, ptr %14, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = call i32 @get_value(ptr noundef %26)
  store i32 %42, ptr %14, align 4
  br label %43

43:                                               ; preds = %41, %28
  %44 = load i32, ptr %15, align 4
  %.not17 = icmp eq i32 %44, 0
  br i1 %.not17, label %45, label %56

45:                                               ; preds = %43
  %46 = load i32, ptr %14, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, ptr @ncol, align 4
  %50 = add nsw i32 %49, -1
  %51 = load i32, ptr @nrow, align 4
  %52 = add nsw i32 %51, -1
  %53 = call i32 @in_wanted(ptr noundef %26)
  %.not18 = icmp eq i32 %53, 0
  br i1 %.not18, label %55, label %54

54:                                               ; preds = %48
  store i32 2, ptr %15, align 4
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %45, %43
  %57 = phi i32 [ %52, %55 ], [ %22, %45 ], [ %22, %43 ]
  %58 = phi i32 [ %50, %55 ], [ %23, %45 ], [ %23, %43 ]
  %59 = add nsw i32 %58, 1
  br label %68

60:                                               ; preds = %25
  %61 = icmp eq i32 %23, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i32, ptr @nrow, align 4
  %64 = add nsw i32 %63, -1
  br label %65

65:                                               ; preds = %62, %60
  %66 = phi i32 [ %64, %62 ], [ %22, %60 ]
  %67 = load i32, ptr @ncol, align 4
  br label %68

68:                                               ; preds = %65, %56
  %69 = phi ptr [ %20, %65 ], [ %38, %56 ]
  %70 = phi i32 [ %66, %65 ], [ %57, %56 ]
  %71 = phi i32 [ %67, %65 ], [ %59, %56 ]
  call void @free(ptr noundef %26) #5
  br label %72

72:                                               ; preds = %68
  br label %19, !llvm.loop !20

73:                                               ; preds = %19
  br label %74

74:                                               ; preds = %73
  %75 = add nsw i32 %22, 1
  br label %16, !llvm.loop !21

76:                                               ; preds = %16
  store i32 %.lcssa10, ptr %7, align 4
  store ptr %.lcssa411, ptr %8, align 8
  store ptr %.lcssa613, ptr %10, align 8
  %77 = load ptr, ptr %9, align 8
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 8
  %79 = load ptr, ptr %78, align 8
  store ptr %79, ptr %10, align 8
  call void @free(ptr noundef %77) #5
  %.not14 = icmp eq ptr %79, null
  br i1 %.not14, label %84, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %5, align 8
  %82 = load i32, ptr %81, align 4
  %83 = sub nsw i32 1, %82
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load ptr, ptr %10, align 8
  ret ptr %85
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_play(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %5 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  store ptr %5, ptr %4, align 8
  store ptr null, ptr @game_tree, align 8
  %6 = call ptr @make_data(i32 noundef 0, i32 noundef 0)
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 4
  br label %9

9:                                                ; preds = %48, %1
  %10 = phi ptr [ %49, %48 ], [ %5, %1 ]
  %11 = phi ptr [ %50, %48 ], [ %6, %1 ]
  %12 = call i32 @next_data(ptr noundef %11)
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %51, label %13

13:                                               ; preds = %9
  %14 = call i32 @valid_data(ptr noundef %11)
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %48, label %15

15:                                               ; preds = %13
  %16 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %16, ptr %17, align 8
  %18 = load ptr, ptr @game_tree, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr @game_tree, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = call ptr @copy_data(ptr noundef %11)
  %25 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %24, ptr %27, align 8
  %28 = call ptr @make_list(ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull %2)
  %29 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %28, ptr %31, align 8
  %32 = load i32, ptr %3, align 4
  %33 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %34 = load ptr, ptr %33, align 8
  store i32 %32, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 24
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %39 = load ptr, ptr %38, align 8
  %40 = load i32, ptr %2, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %46

42:                                               ; preds = %23
  call void @free(ptr noundef %11) #5
  %43 = load i32, ptr @nrow, align 4
  %44 = load i32, ptr @ncol, align 4
  %45 = call ptr @make_data(i32 noundef %43, i32 noundef %44)
  br label %46

46:                                               ; preds = %42, %23
  %47 = phi ptr [ %45, %42 ], [ %11, %23 ]
  br label %48

48:                                               ; preds = %46, %13
  %49 = phi ptr [ %39, %46 ], [ %10, %13 ]
  %50 = phi ptr [ %47, %46 ], [ %11, %13 ]
  br label %9, !llvm.loop !22

51:                                               ; preds = %9
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 24
  %54 = load ptr, ptr %53, align 8
  call void @free(ptr noundef %52) #5
  ret ptr %54
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %6 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  store ptr %6, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %7, align 8
  %8 = load ptr, ptr %2, align 8
  %.promoted9 = load i32, ptr %3, align 4
  %.promoted = load ptr, ptr %4, align 8
  br label %9

9:                                                ; preds = %47, %1
  %.lcssa613 = phi ptr [ %13, %47 ], [ %6, %1 ]
  %.lcssa411 = phi ptr [ %14, %47 ], [ %.promoted, %1 ]
  %.lcssa10 = phi i32 [ %16, %47 ], [ %.promoted9, %1 ]
  %.lcssa28 = phi i32 [ %48, %47 ], [ 0, %1 ]
  %10 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %.lcssa28, %10
  br i1 %.not, label %49, label %11

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %45, %11
  %13 = phi ptr [ %42, %45 ], [ %.lcssa613, %11 ]
  %14 = phi ptr [ %19, %45 ], [ %.lcssa411, %11 ]
  %15 = phi i32 [ %43, %45 ], [ %.lcssa28, %11 ]
  %16 = phi i32 [ %44, %45 ], [ 0, %11 ]
  %17 = load i32, ptr @ncol, align 4
  %.not14 = icmp eq i32 %16, %17
  br i1 %.not14, label %46, label %18

18:                                               ; preds = %12
  %19 = call ptr @make_data(i32 noundef %15, i32 noundef %16)
  call void @melt_data(ptr noundef %19, ptr noundef %8)
  %20 = call i32 @equal_data(ptr noundef %19, ptr noundef %8)
  %.not15 = icmp eq i32 %20, 0
  br i1 %.not15, label %21, label %33

21:                                               ; preds = %18
  %22 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %23 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %22, ptr %23, align 8
  %24 = call ptr @copy_data(ptr noundef %19)
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %26 = load ptr, ptr %25, align 8
  store ptr %24, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr null, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %31 = load ptr, ptr %30, align 8
  %32 = add nsw i32 %16, 1
  br label %41

33:                                               ; preds = %18
  %34 = icmp eq i32 %16, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, ptr @nrow, align 4
  %37 = add nsw i32 %36, -1
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %37, %35 ], [ %15, %33 ]
  %40 = load i32, ptr @ncol, align 4
  br label %41

41:                                               ; preds = %38, %21
  %42 = phi ptr [ %13, %38 ], [ %31, %21 ]
  %43 = phi i32 [ %39, %38 ], [ %15, %21 ]
  %44 = phi i32 [ %40, %38 ], [ %32, %21 ]
  call void @free(ptr noundef %19) #5
  br label %45

45:                                               ; preds = %41
  br label %12, !llvm.loop !23

46:                                               ; preds = %12
  br label %47

47:                                               ; preds = %46
  %48 = add nsw i32 %15, 1
  br label %9, !llvm.loop !24

49:                                               ; preds = %9
  store i32 %.lcssa10, ptr %3, align 4
  store ptr %.lcssa411, ptr %4, align 8
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %52 = load ptr, ptr %51, align 8
  call void @free(ptr noundef %50) #5
  store ptr %52, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %22

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
  store ptr %7, ptr %2, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = call ptr @copy_data(ptr noundef %20)
  br label %22

22:                                               ; preds = %19, %4
  %storemerge = phi ptr [ %21, %19 ], [ null, %4 ]
  ret ptr %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load ptr, ptr %7, align 8
  br label %2, !llvm.loop !26

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %11 = load ptr, ptr %10, align 8
  %12 = call ptr @get_good_move(ptr noundef %11)
  ret ptr %12
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
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  br label %8

8:                                                ; preds = %16, %4
  %storemerge = phi i32 [ 0, %4 ], [ %18, %16 ]
  store i32 %storemerge, ptr %3, align 4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %storemerge to i64
  %13 = getelementptr inbounds [4 x i8], ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, ptr %3, align 4
  %18 = add nsw i32 %17, 1
  br label %8, !llvm.loop !28

19:                                               ; preds = %8
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr %20, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %6, align 8
  store i32 %25, ptr %26, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %puts11 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %puts12 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) #5
  store i32 2, ptr %1, align 4
  switch i32 2, label %42 [
    i32 1, label %6
    i32 2, label %11
    i32 3, label %36
  ]

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %9, %6
  br i1 poison, label %8, label %10

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8
  br label %7, !llvm.loop !29

10:                                               ; preds = %7
  br label %42

11:                                               ; preds = %0
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #5
  store i32 7, ptr @ncol, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #5
  store i32 8, ptr @nrow, align 4
  %14 = call ptr @make_play(i32 noundef 1)
  store ptr %14, ptr %4, align 8
  %15 = load i32, ptr @nrow, align 4
  %16 = load i32, ptr @ncol, align 4
  %17 = call ptr @make_data(i32 noundef %15, i32 noundef %16)
  %.promoted3 = load ptr, ptr %3, align 8
  br label %18

18:                                               ; preds = %30, %11
  %19 = phi i32 [ %31, %30 ], [ 0, %11 ]
  %20 = phi ptr [ %24, %30 ], [ %.promoted3, %11 ]
  %21 = phi ptr [ %24, %30 ], [ %17, %11 ]
  %.not = icmp eq ptr %21, null
  br i1 %.not, label %32, label %22

22:                                               ; preds = %18
  %23 = call ptr @where(ptr noundef nonnull %21, ptr noundef %14)
  %24 = call ptr @get_good_move(ptr noundef %23)
  %.not13 = icmp eq ptr %24, null
  br i1 %.not13, label %30, label %25

25:                                               ; preds = %22
  call void @get_real_move(ptr noundef nonnull %24, ptr noundef nonnull %21, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %26 = load i32, ptr %1, align 4
  %27 = load i32, ptr %2, align 4
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %19, i32 noundef %26, i32 noundef %27) #5
  %29 = sub nsw i32 1, %19
  call void @free(ptr noundef nonnull %21) #5
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i32 [ %29, %25 ], [ %19, %22 ]
  br label %18, !llvm.loop !30

32:                                               ; preds = %18
  store ptr %20, ptr %3, align 8
  %33 = load ptr, ptr %4, align 8
  call void @dump_play(ptr noundef %33)
  %34 = sub nsw i32 1, %19
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %34) #5
  br label %42

36:                                               ; preds = %0
  br label %37

37:                                               ; preds = %40, %36
  br i1 poison, label %38, label %41

38:                                               ; preds = %37
  br i1 poison, label %39, label %40

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39, %38
  br label %37, !llvm.loop !31

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %32, %10, %0
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
