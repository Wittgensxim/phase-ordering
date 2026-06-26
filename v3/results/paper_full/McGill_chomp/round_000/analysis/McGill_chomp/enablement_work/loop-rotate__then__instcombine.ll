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
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %4, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %22, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = load ptr, ptr %2, align 8
  %13 = load i32, ptr %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %17, i64 %18
  store i32 %16, ptr %19, align 4
  %20 = load i32, ptr %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %4, align 4
  %.not1 = icmp eq i32 %20, 0
  br i1 %.not1, label %._crit_edge, label %11, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  br label %22

22:                                               ; preds = %._crit_edge, %1
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
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %31, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %28
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %9, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %13, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %8
  %20 = load ptr, ptr %4, align 8
  %21 = load i32, ptr %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %20, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %3, align 8
  %26 = sext i32 %21 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %25, i64 %26
  store i32 %24, ptr %27, align 4
  br label %28

28:                                               ; preds = %19, %8
  %29 = load i32, ptr %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %5, align 4
  %.not1 = icmp eq i32 %29, 0
  br i1 %.not1, label %._crit_edge, label %8, !llvm.loop !10

._crit_edge:                                      ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge, %2
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
  br i1 %22, label %7, label %23, !llvm.loop !11

23:                                               ; preds = %21
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
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %16
  %8 = load ptr, ptr %2, align 8
  %9 = load i32, ptr %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %8, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %3, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  br label %24

16:                                               ; preds = %7
  %17 = load ptr, ptr %2, align 8
  %18 = load i32, ptr %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %3, align 4
  %22 = add nsw i32 %18, 1
  store i32 %22, ptr %4, align 4
  %23 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %22, %23
  br i1 %.not1, label %..loopexit_crit_edge, label %7, !llvm.loop !12

..loopexit_crit_edge:                             ; preds = %16
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  br label %24

24:                                               ; preds = %.loopexit, %15
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
  %4 = load ptr, ptr @game_tree, align 8
  store ptr %4, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %3, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %2, align 8
  %15 = call i32 @equal_data(ptr noundef %13, ptr noundef %14)
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %8, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %8
  br label %16

16:                                               ; preds = %._crit_edge, %1
  %17 = load ptr, ptr %3, align 8
  %18 = load i32, ptr %17, align 8
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %4 = load i32, ptr @ncol, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %16
  %6 = load ptr, ptr %2, align 8
  %7 = load i32, ptr %3, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %3, align 4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %11) #5
  %13 = load i32, ptr @ncol, align 4
  %.not1 = icmp eq i32 %8, %13
  br i1 %.not1, label %16, label %14

14:                                               ; preds = %5
  %15 = call i32 @putchar(i32 noundef 44) #5
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, ptr %3, align 4
  %18 = load i32, ptr @ncol, align 4
  %.not2 = icmp eq i32 %17, %18
  br i1 %.not2, label %._crit_edge, label %5, !llvm.loop !14

._crit_edge:                                      ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge, %1
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
  store ptr %0, ptr %2, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %8, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %4 = load ptr, ptr %2, align 8
  %5 = load ptr, ptr %4, align 8
  call void @show_move(ptr noundef %5)
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %2, align 8
  %.not1 = icmp eq ptr %7, null
  br i1 %.not1, label %._crit_edge, label %3, !llvm.loop !15

._crit_edge:                                      ; preds = %3
  br label %8

8:                                                ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %14, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  call void @show_data(ptr noundef %6)
  %7 = load i32, ptr %4, align 8
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %7) #5
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %11 = load ptr, ptr %10, align 8
  call void @show_list(ptr noundef %11)
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %2, align 8
  %.not2 = icmp eq ptr %13, null
  br i1 %.not2, label %._crit_edge, label %3, !llvm.loop !16

._crit_edge:                                      ; preds = %3
  br label %14

14:                                               ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr @wanted, align 8
  store ptr %4, ptr %3, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %11
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = call i32 @equal_data(ptr noundef %7, ptr noundef %8)
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %5
  br label %15

11:                                               ; preds = %5
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %3, align 8
  %.not2 = icmp eq ptr %14, null
  br i1 %.not2, label %..loopexit_crit_edge, label %5, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %11
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  br label %15

15:                                               ; preds = %.loopexit, %10
  %16 = load ptr, ptr %3, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %20

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %18
  %storemerge = phi i32 [ 1, %19 ], [ 0, %18 ]
  ret i32 %storemerge
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
  store i32 0, ptr %5, align 4
  %11 = load i32, ptr %4, align 4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %22, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %18
  %13 = load i32, ptr @nrow, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %14, i64 %16
  store i32 %13, ptr %17, align 4
  br label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %5, align 4
  %21 = load i32, ptr %4, align 4
  %.not4 = icmp eq i32 %20, %21
  br i1 %.not4, label %._crit_edge, label %12, !llvm.loop !18

._crit_edge:                                      ; preds = %18
  br label %22

22:                                               ; preds = %._crit_edge, %2
  %23 = load i32, ptr %5, align 4
  %24 = load i32, ptr @ncol, align 4
  %.not5 = icmp eq i32 %23, %24
  br i1 %.not5, label %35, label %.lr.ph2

.lr.ph2:                                          ; preds = %22
  br label %25

25:                                               ; preds = %.lr.ph2, %31
  %26 = load i32, ptr %3, align 4
  %27 = load ptr, ptr %6, align 8
  %28 = load i32, ptr %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %27, i64 %29
  store i32 %26, ptr %30, align 4
  br label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %5, align 4
  %34 = load i32, ptr @ncol, align 4
  %.not6 = icmp eq i32 %33, %34
  br i1 %.not6, label %._crit_edge3, label %25, !llvm.loop !19

._crit_edge3:                                     ; preds = %31
  br label %35

35:                                               ; preds = %._crit_edge3, %22
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
  store i32 0, ptr %7, align 4
  %14 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %82, label %.lr.ph2

.lr.ph2:                                          ; preds = %3
  br label %15

15:                                               ; preds = %.lr.ph2, %78
  store i32 0, ptr %8, align 4
  %16 = load i32, ptr @ncol, align 4
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %77, label %.lr.ph

.lr.ph:                                           ; preds = %15
  br label %17

17:                                               ; preds = %.lr.ph, %73
  %18 = load i32, ptr %7, align 4
  %19 = load i32, ptr %8, align 4
  %20 = call ptr @make_data(i32 noundef %18, i32 noundef %19)
  store ptr %20, ptr %9, align 8
  %21 = load ptr, ptr %4, align 8
  call void @melt_data(ptr noundef %20, ptr noundef %21)
  %22 = call i32 @equal_data(ptr noundef %20, ptr noundef %21)
  %.not5 = icmp eq i32 %22, 0
  br i1 %.not5, label %23, label %62

23:                                               ; preds = %17
  %24 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %25 = load ptr, ptr %11, align 8
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %24, ptr %26, align 8
  %27 = load ptr, ptr %9, align 8
  %28 = call ptr @copy_data(ptr noundef %27)
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %30 = load ptr, ptr %29, align 8
  store ptr %28, ptr %30, align 8
  %31 = load ptr, ptr %11, align 8
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr null, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %11, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load ptr, ptr %9, align 8
  %42 = call i32 @get_value(ptr noundef %41)
  %43 = load ptr, ptr %5, align 8
  store i32 %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %40, %23
  %45 = load ptr, ptr %6, align 8
  %46 = load i32, ptr %45, align 4
  %.not6 = icmp eq i32 %46, 0
  br i1 %.not6, label %47, label %61

47:                                               ; preds = %44
  %48 = load ptr, ptr %5, align 8
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i32, ptr @ncol, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr %8, align 4
  %54 = load i32, ptr @nrow, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, ptr %7, align 4
  %56 = load ptr, ptr %9, align 8
  %57 = call i32 @in_wanted(ptr noundef %56)
  %.not7 = icmp eq i32 %57, 0
  br i1 %.not7, label %60, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr %6, align 8
  store i32 2, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %51
  br label %61

61:                                               ; preds = %60, %47, %44
  br label %71

62:                                               ; preds = %17
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

71:                                               ; preds = %68, %61
  %72 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %72) #5
  br label %73

73:                                               ; preds = %71
  %74 = load i32, ptr %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %8, align 4
  %76 = load i32, ptr @ncol, align 4
  %.not8 = icmp eq i32 %75, %76
  br i1 %.not8, label %._crit_edge, label %17, !llvm.loop !20

._crit_edge:                                      ; preds = %73
  br label %77

77:                                               ; preds = %._crit_edge, %15
  br label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %7, align 4
  %81 = load i32, ptr @nrow, align 4
  %.not9 = icmp eq i32 %80, %81
  br i1 %.not9, label %._crit_edge3, label %15, !llvm.loop !21

._crit_edge3:                                     ; preds = %78
  br label %82

82:                                               ; preds = %._crit_edge3, %3
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %85 = load ptr, ptr %84, align 8
  store ptr %85, ptr %11, align 8
  call void @free(ptr noundef %83) #5
  %.not10 = icmp eq ptr %85, null
  br i1 %.not10, label %90, label %86

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
  %11 = call i32 @next_data(ptr noundef nonnull %8)
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %58, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %12

12:                                               ; preds = %.lr.ph, %55
  %13 = load ptr, ptr %4, align 8
  %14 = call i32 @valid_data(ptr noundef %13)
  %.not1 = icmp eq i32 %14, 0
  br i1 %.not1, label %55, label %15

15:                                               ; preds = %12
  %16 = call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #4
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %16, ptr %18, align 8
  %19 = load ptr, ptr @game_tree, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 24
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr @game_tree, align 8
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %4, align 8
  %27 = call ptr @copy_data(ptr noundef %26)
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 24
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %27, ptr %31, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = call ptr @make_list(ptr noundef %32, ptr noundef nonnull %3, ptr noundef nonnull %2)
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %33, ptr %37, align 8
  %38 = load i32, ptr %3, align 4
  %39 = getelementptr inbounds nuw i8, ptr %34, i64 24
  %40 = load ptr, ptr %39, align 8
  store i32 %38, ptr %40, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 24
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr null, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 24
  %46 = load ptr, ptr %45, align 8
  store ptr %46, ptr %6, align 8
  %47 = load i32, ptr %2, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %54

49:                                               ; preds = %25
  %50 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %50) #5
  %51 = load i32, ptr @nrow, align 4
  %52 = load i32, ptr @ncol, align 4
  %53 = call ptr @make_data(i32 noundef %51, i32 noundef %52)
  store ptr %53, ptr %4, align 8
  br label %54

54:                                               ; preds = %49, %25
  br label %55

55:                                               ; preds = %54, %12
  %56 = load ptr, ptr %4, align 8
  %57 = call i32 @next_data(ptr noundef %56)
  %.not2 = icmp eq i32 %57, 0
  br i1 %.not2, label %._crit_edge, label %12, !llvm.loop !22

._crit_edge:                                      ; preds = %55
  br label %58

58:                                               ; preds = %._crit_edge, %1
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
  store i32 0, ptr %3, align 4
  %10 = load i32, ptr @nrow, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %53, label %.lr.ph2

.lr.ph2:                                          ; preds = %1
  br label %11

11:                                               ; preds = %.lr.ph2, %49
  store i32 0, ptr %4, align 4
  %12 = load i32, ptr @ncol, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %48, label %.lr.ph

.lr.ph:                                           ; preds = %11
  br label %13

13:                                               ; preds = %.lr.ph, %44
  %14 = load i32, ptr %3, align 4
  %15 = load i32, ptr %4, align 4
  %16 = call ptr @make_data(i32 noundef %14, i32 noundef %15)
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %2, align 8
  call void @melt_data(ptr noundef %16, ptr noundef %17)
  %18 = call i32 @equal_data(ptr noundef %16, ptr noundef %17)
  %.not5 = icmp eq i32 %18, 0
  br i1 %.not5, label %19, label %33

19:                                               ; preds = %13
  %20 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #4
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %20, ptr %22, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = call ptr @copy_data(ptr noundef %23)
  %25 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %26 = load ptr, ptr %25, align 8
  store ptr %24, ptr %26, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %32 = load ptr, ptr %31, align 8
  store ptr %32, ptr %7, align 8
  br label %42

33:                                               ; preds = %13
  %34 = load i32, ptr %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, ptr @nrow, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %3, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, ptr @ncol, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, ptr %4, align 4
  br label %42

42:                                               ; preds = %39, %19
  %43 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %43) #5
  br label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %4, align 4
  %47 = load i32, ptr @ncol, align 4
  %.not6 = icmp eq i32 %46, %47
  br i1 %.not6, label %._crit_edge, label %13, !llvm.loop !23

._crit_edge:                                      ; preds = %44
  br label %48

48:                                               ; preds = %._crit_edge, %11
  br label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %3, align 4
  %52 = load i32, ptr @nrow, align 4
  %.not7 = icmp eq i32 %51, %52
  br i1 %.not7, label %._crit_edge3, label %11, !llvm.loop !24

._crit_edge3:                                     ; preds = %49
  br label %53

53:                                               ; preds = %._crit_edge3, %1
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
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %11, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %10 = load ptr, ptr %9, align 8
  %.not1 = icmp eq ptr %10, null
  br i1 %.not1, label %._crit_edge, label %5, !llvm.loop !26

._crit_edge:                                      ; preds = %5
  br label %11

11:                                               ; preds = %._crit_edge, %1
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8
  %15 = call ptr @get_good_move(ptr noundef %14)
  ret ptr %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %4, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = call i32 @equal_data(ptr noundef %13, ptr noundef %14)
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %8, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %8
  br label %16

16:                                               ; preds = %._crit_edge, %2
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %19 = load ptr, ptr %18, align 8
  ret ptr %19
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
  %9 = load i32, ptr %0, align 4
  %10 = load i32, ptr %1, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = load ptr, ptr %8, align 8
  %14 = load i32, ptr %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = load ptr, ptr %5, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %6, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr %20, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %19, %25
  br i1 %26, label %12, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %12
  br label %27

27:                                               ; preds = %._crit_edge, %4
  %28 = load ptr, ptr %5, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr %28, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %7, align 8
  store i32 %33, ptr %34, align 4
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
  %puts7 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %puts8 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) #5
  store i32 2, ptr %1, align 4
  switch i32 2, label %45 [
    i32 1, label %8
    i32 2, label %12
    i32 3, label %40
  ]

8:                                                ; preds = %0
  br i1 poison, label %.lr.ph5, label %11

.lr.ph5:                                          ; preds = %8
  br label %9

9:                                                ; preds = %.lr.ph5, %10
  br label %10

10:                                               ; preds = %9
  br i1 poison, label %9, label %._crit_edge6, !llvm.loop !29

._crit_edge6:                                     ; preds = %10
  br label %11

11:                                               ; preds = %._crit_edge6, %8
  br label %45

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
  store ptr %18, ptr %4, align 8
  %.not = icmp eq ptr %18, null
  br i1 %.not, label %35, label %.lr.ph2

.lr.ph2:                                          ; preds = %12
  br label %19

19:                                               ; preds = %.lr.ph2, %33
  %20 = load ptr, ptr %4, align 8
  %21 = load ptr, ptr %6, align 8
  %22 = call ptr @where(ptr noundef %20, ptr noundef %21)
  %23 = call ptr @get_good_move(ptr noundef %22)
  store ptr %23, ptr %5, align 8
  %.not9 = icmp eq ptr %23, null
  br i1 %.not9, label %33, label %24

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
  store ptr %34, ptr %4, align 8
  %.not10 = icmp eq ptr %34, null
  br i1 %.not10, label %._crit_edge3, label %19, !llvm.loop !30

._crit_edge3:                                     ; preds = %33
  br label %35

35:                                               ; preds = %._crit_edge3, %12
  %36 = load ptr, ptr %6, align 8
  call void @dump_play(ptr noundef %36)
  %37 = load i32, ptr %3, align 4
  %38 = sub nsw i32 1, %37
  %39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %38) #5
  br label %45

40:                                               ; preds = %0
  br i1 poison, label %.lr.ph, label %44

.lr.ph:                                           ; preds = %40
  br label %41

41:                                               ; preds = %.lr.ph, %43
  br i1 poison, label %42, label %43

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %41
  br i1 poison, label %41, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %43
  br label %44

44:                                               ; preds = %._crit_edge, %40
  br label %45

45:                                               ; preds = %44, %35, %11, %0
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
