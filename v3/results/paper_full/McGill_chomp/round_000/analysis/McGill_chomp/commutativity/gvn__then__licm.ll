; ModuleID = 'results\paper_full\McGill_chomp\McGill_chomp.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/chomp.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct._list = type { ptr, ptr }
%struct._play = type { i32, ptr, ptr, ptr }

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

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @copy_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load i32, ptr @ncol, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = call ptr @malloc(i64 noundef %7) #3
  store ptr %8, ptr %3, align 8
  %9 = load i32, ptr @ncol, align 4
  store i32 %9, ptr %4, align 4
  br label %10

10:                                               ; preds = %14, %1
  %11 = phi i32 [ %12, %14 ], [ %9, %1 ]
  %12 = add nsw i32 %11, -1
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i32, ptr %8, i64 %15
  store i32 %17, ptr %18, align 4
  br label %10, !llvm.loop !7

19:                                               ; preds = %10
  %.lcssa = phi i32 [ %12, %10 ]
  store i32 %.lcssa, ptr %4, align 4
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

5:                                                ; preds = %27, %1
  %6 = phi i32 [ %28, %27 ], [ 0, %1 ]
  %7 = phi ptr [ %29, %27 ], [ %0, %1 ]
  %8 = phi i32 [ %30, %27 ], [ 0, %1 ]
  %9 = load i32, ptr @ncol, align 4
  %10 = icmp ne i32 %6, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = icmp ne i32 %8, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  br i1 %15, label %16, label %31

16:                                               ; preds = %14
  %17 = sext i32 %6 to i64
  %18 = getelementptr inbounds i32, ptr %7, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr @nrow, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds i32, ptr %0, i64 %17
  store i32 0, ptr %23, align 4
  %24 = add nsw i32 %6, 1
  store i32 %24, ptr %3, align 4
  br label %27

25:                                               ; preds = %16
  %26 = add nsw i32 %19, 1
  store i32 %26, ptr %18, align 4
  store i32 1, ptr %4, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %6, %25 ], [ %24, %22 ]
  %29 = phi ptr [ %7, %25 ], [ %0, %22 ]
  %30 = phi i32 [ 1, %25 ], [ %8, %22 ]
  br label %5, !llvm.loop !9

31:                                               ; preds = %14
  %.lcssa = phi i32 [ %8, %14 ]
  ret i32 %.lcssa
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

7:                                                ; preds = %24, %2
  %8 = phi ptr [ %25, %24 ], [ %1, %2 ]
  %9 = phi ptr [ %26, %24 ], [ %0, %2 ]
  %10 = phi i32 [ %11, %24 ], [ %6, %2 ]
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %5, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds i32, ptr %9, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i32, ptr %8, i64 %14
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = getelementptr inbounds i32, ptr %1, i64 %14
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i32, ptr %0, i64 %14
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi ptr [ %1, %20 ], [ %8, %13 ]
  %26 = phi ptr [ %0, %20 ], [ %9, %13 ]
  br label %7, !llvm.loop !10

27:                                               ; preds = %7
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

7:                                                ; preds = %20, %2
  %8 = phi i32 [ %9, %20 ], [ %6, %2 ]
  %9 = add nsw i32 %8, -1
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i32, ptr %1, i64 %12
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi i1 [ false, %7 ], [ %17, %11 ]
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %7, !llvm.loop !11

21:                                               ; preds = %18
  %.lcssa1 = phi i32 [ %9, %18 ]
  %.lcssa = phi i32 [ %9, %18 ]
  store i32 %.lcssa1, ptr %5, align 4
  %22 = icmp slt i32 %.lcssa, 0
  %23 = zext i1 %22 to i32
  ret i32 %23
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
  %.promoted = load i32, ptr %3, align 1
  %.promoted4 = load i32, ptr %4, align 1
  br label %6

6:                                                ; preds = %18, %1
  %7 = phi i32 [ %19, %18 ], [ %.promoted4, %1 ]
  %8 = phi i32 [ %15, %18 ], [ %.promoted, %1 ]
  %9 = phi i32 [ %15, %18 ], [ %5, %1 ]
  %10 = phi i32 [ %19, %18 ], [ 0, %1 ]
  %11 = icmp ne i32 %10, %.pre
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %6
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, %9
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  %.lcssa6 = phi i32 [ %7, %12 ]
  %.lcssa3 = phi i32 [ %8, %12 ]
  %.lcssa1 = phi i32 [ %10, %12 ]
  store i32 %.lcssa3, ptr %3, align 1
  store i32 %.lcssa6, ptr %4, align 1
  br label %20

18:                                               ; preds = %12
  %19 = add nsw i32 %10, 1
  br label %6, !llvm.loop !12

.loopexit:                                        ; preds = %6
  %.lcssa5 = phi i32 [ %7, %6 ]
  %.lcssa2 = phi i32 [ %8, %6 ]
  %.lcssa = phi i32 [ %10, %6 ]
  store i32 %.lcssa2, ptr %3, align 1
  store i32 %.lcssa5, ptr %4, align 1
  br label %20

20:                                               ; preds = %.loopexit, %17
  %21 = phi i32 [ %.lcssa, %.loopexit ], [ %.lcssa1, %17 ]
  %22 = icmp eq i32 %21, %.pre
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp ne ptr %0, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  call void @dump_list(ptr noundef %6)
  %7 = load ptr, ptr %0, align 8
  call void @free(ptr noundef %7)
  call void @free(ptr noundef %0)
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp ne ptr %0, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  call void @dump_play(ptr noundef %6)
  %7 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  call void @dump_list(ptr noundef %8)
  %9 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %10)
  call void @free(ptr noundef %0)
  br label %11

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_value(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr @game_tree, align 8
  store ptr %4, ptr %3, align 8
  %.promoted = load ptr, ptr %3, align 1
  br label %5

5:                                                ; preds = %13, %1
  %6 = phi ptr [ %15, %13 ], [ %.promoted, %1 ]
  %7 = phi ptr [ %15, %13 ], [ %4, %1 ]
  %8 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @equal_data(ptr noundef %9, ptr noundef %0)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  br label %5, !llvm.loop !13

16:                                               ; preds = %5
  %.lcssa1 = phi ptr [ %6, %5 ]
  %.lcssa = phi ptr [ %7, %5 ]
  store ptr %.lcssa1, ptr %3, align 1
  %17 = load i32, ptr %.lcssa, align 8
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %.pre1 = load i32, ptr @ncol, align 4
  %.promoted = load i32, ptr %3, align 1
  br label %4

4:                                                ; preds = %19, %1
  %5 = phi i32 [ %10, %19 ], [ %.promoted, %1 ]
  %6 = phi i32 [ %20, %19 ], [ %.pre1, %1 ]
  %7 = phi i32 [ %10, %19 ], [ 0, %1 ]
  %8 = icmp ne i32 %7, %6
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = add nsw i32 %7, 1
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13)
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 %10, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = call i32 @putchar(i32 noundef 44)
  %.pre = load i32, ptr @ncol, align 4
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i32 [ %.pre, %17 ], [ %10, %9 ]
  br label %4, !llvm.loop !14

21:                                               ; preds = %4
  %.lcssa = phi i32 [ %5, %4 ]
  store i32 %.lcssa, ptr %3, align 1
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

declare dso_local i32 @putchar(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 @putchar(i32 noundef 40)
  call void @show_data(ptr noundef %0)
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_list(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.promoted = load ptr, ptr %2, align 1
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %10, %7 ], [ %.promoted, %1 ]
  %5 = phi ptr [ %10, %7 ], [ %0, %1 ]
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8
  call void @show_move(ptr noundef %8)
  %9 = getelementptr inbounds nuw %struct._list, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %3, !llvm.loop !15

11:                                               ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  store ptr %.lcssa, ptr %2, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.promoted = load ptr, ptr %2, align 1
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %17, %7 ], [ %.promoted, %1 ]
  %5 = phi ptr [ %17, %7 ], [ %0, %1 ]
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %9 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  call void @show_data(ptr noundef %10)
  %11 = load i32, ptr %5, align 8
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %11)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %14 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  call void @show_list(ptr noundef %15)
  %16 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  br label %3, !llvm.loop !16

18:                                               ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  store ptr %.lcssa, ptr %2, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr @wanted, align 8
  store ptr %5, ptr %4, align 8
  %.promoted = load ptr, ptr %4, align 1
  br label %6

6:                                                ; preds = %15, %1
  %7 = phi ptr [ %17, %15 ], [ %.promoted, %1 ]
  %8 = phi ptr [ %17, %15 ], [ %5, %1 ]
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8
  %12 = call i32 @equal_data(ptr noundef %11, ptr noundef %0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  %.lcssa3 = phi ptr [ %7, %10 ]
  %.lcssa1 = phi ptr [ %8, %10 ]
  store ptr %.lcssa3, ptr %4, align 1
  br label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  br label %6, !llvm.loop !17

.loopexit:                                        ; preds = %6
  %.lcssa2 = phi ptr [ %7, %6 ]
  %.lcssa = phi ptr [ %8, %6 ]
  store ptr %.lcssa2, ptr %4, align 1
  br label %18

18:                                               ; preds = %.loopexit, %14
  %19 = phi ptr [ %.lcssa, %.loopexit ], [ %.lcssa1, %14 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, ptr %2, align 4
  br label %23

22:                                               ; preds = %18
  store i32 1, ptr %2, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = phi i32 [ 1, %22 ], [ 0, %21 ]
  ret i32 %24
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
  %9 = mul i64 %8, 4
  %10 = call ptr @malloc(i64 noundef %9) #3
  store ptr %10, ptr %6, align 8
  store i32 0, ptr %5, align 4
  %.promoted = load i32, ptr %5, align 1
  br label %11

11:                                               ; preds = %15, %2
  %12 = phi i32 [ %19, %15 ], [ %.promoted, %2 ]
  %13 = phi i32 [ %19, %15 ], [ 0, %2 ]
  %14 = icmp ne i32 %13, %1
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, ptr @nrow, align 4
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds i32, ptr %10, i64 %17
  store i32 %16, ptr %18, align 4
  %19 = add nsw i32 %13, 1
  br label %11, !llvm.loop !18

20:                                               ; preds = %11
  %.lcssa = phi i32 [ %12, %11 ]
  store i32 %.lcssa, ptr %5, align 1
  %.promoted1 = load i32, ptr %5, align 1
  br label %21

21:                                               ; preds = %26, %20
  %22 = phi i32 [ %29, %26 ], [ %.promoted1, %20 ]
  %23 = phi i32 [ %29, %26 ], [ %1, %20 ]
  %24 = load i32, ptr @ncol, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds i32, ptr %10, i64 %27
  store i32 %0, ptr %28, align 4
  %29 = add nsw i32 %23, 1
  br label %21, !llvm.loop !19

30:                                               ; preds = %21
  %.lcssa2 = phi i32 [ %22, %21 ]
  store i32 %.lcssa2, ptr %5, align 1
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
  %12 = call ptr @malloc(i64 noundef 16) #3
  store ptr %12, ptr %10, align 8
  %13 = getelementptr inbounds nuw %struct._list, ptr %12, i32 0, i32 1
  store ptr null, ptr %13, align 8
  store ptr %12, ptr %11, align 8
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %90, %3
  %15 = phi ptr [ %.lcssa8, %90 ], [ %1, %3 ]
  %16 = phi ptr [ %.lcssa7, %90 ], [ %1, %3 ]
  %17 = phi ptr [ %.lcssa6, %90 ], [ %0, %3 ]
  %18 = phi ptr [ %.lcssa, %90 ], [ %1, %3 ]
  %19 = phi i32 [ %91, %90 ], [ 0, %3 ]
  %20 = load i32, ptr @nrow, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %92

22:                                               ; preds = %14
  store i32 0, ptr %8, align 4
  br label %23

23:                                               ; preds = %82, %22
  %24 = phi ptr [ %85, %82 ], [ %15, %22 ]
  %25 = phi ptr [ %86, %82 ], [ %16, %22 ]
  %26 = phi ptr [ %35, %82 ], [ %17, %22 ]
  %27 = phi i32 [ %87, %82 ], [ %19, %22 ]
  %28 = phi i32 [ %89, %82 ], [ 0, %22 ]
  %29 = phi ptr [ %88, %82 ], [ %18, %22 ]
  %30 = load i32, ptr @ncol, align 4
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %23
  %33 = call ptr @make_data(i32 noundef %27, i32 noundef %28)
  store ptr %33, ptr %9, align 8
  call void @melt_data(ptr noundef %33, ptr noundef %26)
  %34 = load ptr, ptr %9, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = call i32 @equal_data(ptr noundef %34, ptr noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %72, label %38

38:                                               ; preds = %32
  %39 = call ptr @malloc(i64 noundef 16) #3
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds nuw %struct._list, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 8
  %42 = call ptr @copy_data(ptr noundef %34)
  %43 = load ptr, ptr %41, align 8
  store ptr %42, ptr %43, align 8
  %44 = load ptr, ptr %41, align 8
  %45 = getelementptr inbounds nuw %struct._list, ptr %44, i32 0, i32 1
  store ptr null, ptr %45, align 8
  %46 = load ptr, ptr %41, align 8
  store ptr %46, ptr %11, align 8
  %47 = load i32, ptr %25, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = call i32 @get_value(ptr noundef %34)
  store i32 %50, ptr %24, align 4
  br label %51

51:                                               ; preds = %49, %38
  %52 = phi ptr [ %24, %49 ], [ %25, %38 ]
  %53 = load ptr, ptr %6, align 8
  %54 = load i32, ptr %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %._crit_edge, label %56

._crit_edge:                                      ; preds = %51
  %.pre1.pre = load ptr, ptr %9, align 8
  br label %68

56:                                               ; preds = %51
  %57 = load i32, ptr %1, align 4
  %58 = icmp eq i32 %57, 0
  %.pre1.pre3 = load ptr, ptr %9, align 8
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, ptr @ncol, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, ptr %8, align 4
  %62 = load i32, ptr @nrow, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, ptr %7, align 4
  %64 = call i32 @in_wanted(ptr noundef %.pre1.pre3)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 2, ptr %53, align 4
  br label %67

67:                                               ; preds = %66, %59
  br label %68

68:                                               ; preds = %._crit_edge, %67, %56
  %.pre1 = phi ptr [ %.pre1.pre3, %67 ], [ %.pre1.pre3, %56 ], [ %.pre1.pre, %._crit_edge ]
  %69 = phi ptr [ %1, %67 ], [ %1, %56 ], [ %24, %._crit_edge ]
  %70 = phi ptr [ %1, %67 ], [ %1, %56 ], [ %52, %._crit_edge ]
  %71 = phi i32 [ %63, %67 ], [ %27, %56 ], [ %27, %._crit_edge ]
  %.pre2 = load i32, ptr %8, align 4
  br label %82

72:                                               ; preds = %32
  %73 = load i32, ptr %8, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, ptr @nrow, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, ptr %7, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i32 [ %77, %75 ], [ %27, %72 ]
  %80 = load i32, ptr @ncol, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, ptr %8, align 4
  br label %82

82:                                               ; preds = %78, %68
  %83 = phi i32 [ %81, %78 ], [ %.pre2, %68 ]
  %84 = phi ptr [ %34, %78 ], [ %.pre1, %68 ]
  %85 = phi ptr [ %24, %78 ], [ %69, %68 ]
  %86 = phi ptr [ %25, %78 ], [ %70, %68 ]
  %87 = phi i32 [ %79, %78 ], [ %71, %68 ]
  %88 = phi ptr [ %29, %78 ], [ %70, %68 ]
  call void @free(ptr noundef %84)
  %89 = add nsw i32 %83, 1
  store i32 %89, ptr %8, align 4
  br label %23, !llvm.loop !20

90:                                               ; preds = %23
  %.lcssa8 = phi ptr [ %24, %23 ]
  %.lcssa7 = phi ptr [ %25, %23 ]
  %.lcssa6 = phi ptr [ %26, %23 ]
  %.lcssa5 = phi i32 [ %27, %23 ]
  %.lcssa = phi ptr [ %29, %23 ]
  %91 = add nsw i32 %.lcssa5, 1
  store i32 %91, ptr %7, align 4
  br label %14, !llvm.loop !21

92:                                               ; preds = %14
  %.lcssa9 = phi ptr [ %18, %14 ]
  %93 = load ptr, ptr %13, align 8
  store ptr %93, ptr %11, align 8
  call void @free(ptr noundef %12)
  %94 = icmp ne ptr %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, ptr %.lcssa9, align 4
  %97 = sub nsw i32 1, %96
  store i32 %97, ptr %.lcssa9, align 4
  %.pre = load ptr, ptr %11, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi ptr [ %.pre, %95 ], [ null, %92 ]
  ret ptr %99
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_play(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %7 = call ptr @malloc(i64 noundef 32) #3
  store ptr %7, ptr %5, align 8
  store ptr %7, ptr %6, align 8
  store ptr null, ptr @game_tree, align 8
  %8 = call ptr @make_data(i32 noundef 0, i32 noundef 0)
  store ptr %8, ptr %4, align 8
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %46, %1
  %12 = phi ptr [ %47, %46 ], [ %8, %1 ]
  %13 = call i32 @next_data(ptr noundef %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 8
  %17 = call i32 @valid_data(ptr noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = call ptr @malloc(i64 noundef 32) #3
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds nuw %struct._play, ptr %21, i32 0, i32 3
  store ptr %20, ptr %22, align 8
  %23 = load ptr, ptr @game_tree, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store ptr %20, ptr @game_tree, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = call ptr @copy_data(ptr noundef %16)
  %28 = load ptr, ptr %22, align 8
  %29 = getelementptr inbounds nuw %struct._play, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 8
  %30 = call ptr @make_list(ptr noundef %16, ptr noundef %3, ptr noundef %2)
  %31 = load ptr, ptr %22, align 8
  %32 = getelementptr inbounds nuw %struct._play, ptr %31, i32 0, i32 2
  store ptr %30, ptr %32, align 8
  %33 = load i32, ptr %3, align 4
  %34 = load ptr, ptr %22, align 8
  store i32 %33, ptr %34, align 8
  %35 = load ptr, ptr %22, align 8
  %36 = getelementptr inbounds nuw %struct._play, ptr %35, i32 0, i32 3
  store ptr null, ptr %36, align 8
  %37 = load ptr, ptr %22, align 8
  store ptr %37, ptr %6, align 8
  %38 = load i32, ptr %2, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  call void @free(ptr noundef %16)
  %41 = load i32, ptr @nrow, align 4
  %42 = load i32, ptr @ncol, align 4
  %43 = call ptr @make_data(i32 noundef %41, i32 noundef %42)
  store ptr %43, ptr %4, align 8
  br label %44

44:                                               ; preds = %40, %26
  %45 = phi ptr [ %43, %40 ], [ %16, %26 ]
  br label %46

46:                                               ; preds = %44, %15
  %47 = phi ptr [ %45, %44 ], [ %16, %15 ]
  br label %11, !llvm.loop !22

48:                                               ; preds = %11
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds nuw %struct._play, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  store ptr %51, ptr %6, align 8
  call void @free(ptr noundef %49)
  ret ptr %51
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
  %8 = call ptr @malloc(i64 noundef 16) #3
  store ptr %8, ptr %6, align 8
  %9 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  store ptr null, ptr %9, align 8
  store ptr %8, ptr %7, align 8
  store i32 0, ptr %3, align 4
  br label %10

10:                                               ; preds = %51, %1
  %11 = phi ptr [ %.lcssa1, %51 ], [ %0, %1 ]
  %12 = phi i32 [ %52, %51 ], [ 0, %1 ]
  %13 = load i32, ptr @nrow, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %10
  store i32 0, ptr %4, align 4
  br label %16

16:                                               ; preds = %47, %15
  %17 = phi ptr [ %25, %47 ], [ %11, %15 ]
  %18 = phi i32 [ %49, %47 ], [ %12, %15 ]
  %19 = phi i32 [ %50, %47 ], [ 0, %15 ]
  %20 = load i32, ptr @ncol, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %16
  %23 = call ptr @make_data(i32 noundef %18, i32 noundef %19)
  store ptr %23, ptr %5, align 8
  call void @melt_data(ptr noundef %23, ptr noundef %17)
  %24 = load ptr, ptr %5, align 8
  %25 = load ptr, ptr %2, align 8
  %26 = call i32 @equal_data(ptr noundef %24, ptr noundef %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = call ptr @malloc(i64 noundef 16) #3
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds nuw %struct._list, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 8
  %32 = call ptr @copy_data(ptr noundef %24)
  %33 = load ptr, ptr %31, align 8
  store ptr %32, ptr %33, align 8
  %34 = load ptr, ptr %31, align 8
  %35 = getelementptr inbounds nuw %struct._list, ptr %34, i32 0, i32 1
  store ptr null, ptr %35, align 8
  %36 = load ptr, ptr %31, align 8
  store ptr %36, ptr %7, align 8
  %.pre = load i32, ptr %4, align 4
  br label %47

37:                                               ; preds = %22
  %38 = load i32, ptr %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, ptr @nrow, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, ptr %3, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %42, %40 ], [ %18, %37 ]
  %45 = load i32, ptr @ncol, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, ptr %4, align 4
  br label %47

47:                                               ; preds = %43, %28
  %48 = phi i32 [ %46, %43 ], [ %.pre, %28 ]
  %49 = phi i32 [ %44, %43 ], [ %18, %28 ]
  call void @free(ptr noundef %24)
  %50 = add nsw i32 %48, 1
  store i32 %50, ptr %4, align 4
  br label %16, !llvm.loop !23

51:                                               ; preds = %16
  %.lcssa1 = phi ptr [ %17, %16 ]
  %.lcssa = phi i32 [ %18, %16 ]
  %52 = add nsw i32 %.lcssa, 1
  store i32 %52, ptr %3, align 4
  br label %10, !llvm.loop !24

53:                                               ; preds = %10
  %54 = load ptr, ptr %9, align 8
  store ptr %54, ptr %7, align 8
  call void @free(ptr noundef %8)
  store ptr %54, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %24

6:                                                ; preds = %1
  %.promoted = load ptr, ptr %3, align 1
  br label %7

7:                                                ; preds = %19, %6
  %8 = phi ptr [ %20, %19 ], [ %.promoted, %6 ]
  %9 = phi ptr [ %20, %19 ], [ %0, %6 ]
  %10 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load ptr, ptr %9, align 8
  %15 = call i32 @get_value(ptr noundef %14)
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i1 [ false, %7 ], [ %16, %13 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = load ptr, ptr %10, align 8
  br label %7, !llvm.loop !25

21:                                               ; preds = %17
  %.lcssa1 = phi ptr [ %8, %17 ]
  %.lcssa = phi ptr [ %9, %17 ]
  store ptr %.lcssa1, ptr %3, align 1
  %22 = load ptr, ptr %.lcssa, align 8
  %23 = call ptr @copy_data(ptr noundef %22)
  store ptr %23, ptr %2, align 8
  br label %24

24:                                               ; preds = %21, %5
  %25 = phi ptr [ %23, %21 ], [ null, %5 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.promoted = load ptr, ptr %2, align 1
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %8, %10 ], [ %.promoted, %1 ]
  %6 = phi ptr [ %8, %10 ], [ %0, %1 ]
  %7 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  br label %4, !llvm.loop !26

11:                                               ; preds = %4
  %.lcssa1 = phi ptr [ %5, %4 ]
  %.lcssa = phi ptr [ %6, %4 ]
  store ptr %.lcssa1, ptr %2, align 1
  %12 = getelementptr inbounds nuw %struct._play, ptr %.lcssa, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = call ptr @get_good_move(ptr noundef %13)
  store ptr %14, ptr %3, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %.promoted = load ptr, ptr %4, align 1
  br label %5

5:                                                ; preds = %13, %2
  %6 = phi ptr [ %15, %13 ], [ %.promoted, %2 ]
  %7 = phi ptr [ %15, %13 ], [ %1, %2 ]
  %8 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @equal_data(ptr noundef %9, ptr noundef %0)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  br label %5, !llvm.loop !27

16:                                               ; preds = %5
  %.lcssa1 = phi ptr [ %6, %5 ]
  %.lcssa = phi ptr [ %7, %5 ]
  store ptr %.lcssa1, ptr %4, align 1
  %17 = getelementptr inbounds nuw %struct._play, ptr %.lcssa, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  ret ptr %18
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
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds i32, ptr %1, i64 %11
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = add nsw i32 %10, 1
  store i32 %18, ptr %3, align 4
  br label %9, !llvm.loop !28

19:                                               ; preds = %9
  %.lcssa = phi i32 [ %13, %9 ]
  store i32 %.lcssa, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 2, ptr %2, align 4
  switch i32 2, label %95 [
    i32 1, label %15
    i32 2, label %45
    i32 3, label %74
  ]

15:                                               ; preds = %0
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %17 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %19 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %21 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %4)
  %.pre = load i32, ptr @nrow, align 4
  %.promoted8 = load ptr, ptr %9, align 1
  %.promoted10 = load ptr, ptr %6, align 1
  br label %22

22:                                               ; preds = %28, %15
  %23 = phi ptr [ %32, %28 ], [ %.promoted10, %15 ]
  %24 = phi ptr [ %31, %28 ], [ %.promoted8, %15 ]
  %25 = phi i32 [ %43, %28 ], [ %.pre, %15 ]
  %26 = load i32, ptr %4, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i32, ptr @ncol, align 4
  %30 = call ptr @make_data(i32 noundef %25, i32 noundef %29)
  call void @make_wanted(ptr noundef %30)
  %31 = call ptr @make_play(i32 noundef 0)
  %32 = call ptr @get_winning_move(ptr noundef %31)
  %33 = load i32, ptr @nrow, align 4
  %34 = load i32, ptr @ncol, align 4
  %35 = call ptr @make_data(i32 noundef %33, i32 noundef %34)
  call void @get_real_move(ptr noundef %32, ptr noundef %35, ptr noundef %2, ptr noundef %3)
  %36 = load i32, ptr @nrow, align 4
  %37 = load i32, ptr @ncol, align 4
  %38 = load i32, ptr %2, align 4
  %39 = load i32, ptr %3, align 4
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39)
  call void @dump_play(ptr noundef %31)
  %41 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %41)
  %42 = load i32, ptr @nrow, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @nrow, align 4
  br label %22, !llvm.loop !29

44:                                               ; preds = %22
  %.lcssa11 = phi ptr [ %23, %22 ]
  %.lcssa9 = phi ptr [ %24, %22 ]
  store ptr %.lcssa9, ptr %9, align 1
  store ptr %.lcssa11, ptr %6, align 1
  br label %95

45:                                               ; preds = %0
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %48 = call ptr @make_play(i32 noundef 1)
  store ptr %48, ptr %9, align 8
  store i32 0, ptr %5, align 4
  %49 = load i32, ptr @nrow, align 4
  %50 = load i32, ptr @ncol, align 4
  %51 = call ptr @make_data(i32 noundef %49, i32 noundef %50)
  store ptr %51, ptr %7, align 8
  %.promoted2 = load ptr, ptr %8, align 1
  %.promoted4 = load i32, ptr %5, align 1
  %.promoted6 = load ptr, ptr %7, align 1
  br label %52

52:                                               ; preds = %68, %45
  %53 = phi ptr [ %61, %68 ], [ %.promoted6, %45 ]
  %54 = phi i32 [ %69, %68 ], [ %.promoted4, %45 ]
  %55 = phi ptr [ %61, %68 ], [ %.promoted2, %45 ]
  %56 = phi i32 [ %70, %68 ], [ 0, %45 ]
  %57 = phi ptr [ %61, %68 ], [ %51, %45 ]
  %58 = icmp ne ptr %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = call ptr @where(ptr noundef %57, ptr noundef %48)
  %61 = call ptr @get_good_move(ptr noundef %60)
  %62 = icmp ne ptr %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  call void @get_real_move(ptr noundef %61, ptr noundef %57, ptr noundef %2, ptr noundef %3)
  %64 = load i32, ptr %2, align 4
  %65 = load i32, ptr %3, align 4
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %56, i32 noundef %64, i32 noundef %65)
  %67 = sub nsw i32 1, %56
  call void @free(ptr noundef %57)
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i32 [ %67, %63 ], [ %54, %59 ]
  %70 = phi i32 [ %67, %63 ], [ %56, %59 ]
  br label %52, !llvm.loop !30

71:                                               ; preds = %52
  %.lcssa7 = phi ptr [ %53, %52 ]
  %.lcssa5 = phi i32 [ %54, %52 ]
  %.lcssa3 = phi ptr [ %55, %52 ]
  %.lcssa = phi i32 [ %56, %52 ]
  store ptr %.lcssa3, ptr %8, align 1
  store i32 %.lcssa5, ptr %5, align 1
  store ptr %.lcssa7, ptr %7, align 1
  call void @dump_play(ptr noundef %48)
  %72 = sub nsw i32 1, %.lcssa
  %73 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %72)
  br label %95

74:                                               ; preds = %0
  %75 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %76 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %77 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %78 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %80 = call ptr @make_play(i32 noundef 1)
  store ptr %80, ptr %9, align 8
  store ptr %80, ptr %10, align 8
  %.promoted = load ptr, ptr %10, align 1
  br label %81

81:                                               ; preds = %91, %74
  %82 = phi ptr [ %93, %91 ], [ %.promoted, %74 ]
  %83 = phi ptr [ %93, %91 ], [ %80, %74 ]
  %84 = icmp ne ptr %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, ptr %83, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = getelementptr inbounds nuw %struct._play, ptr %83, i32 0, i32 1
  %90 = load ptr, ptr %89, align 8
  call void @show_move(ptr noundef %90)
  br label %91

91:                                               ; preds = %88, %85
  %92 = getelementptr inbounds nuw %struct._play, ptr %83, i32 0, i32 3
  %93 = load ptr, ptr %92, align 8
  br label %81, !llvm.loop !31

94:                                               ; preds = %81
  %.lcssa1 = phi ptr [ %82, %81 ]
  store ptr %.lcssa1, ptr %10, align 1
  call void @dump_play(ptr noundef %80)
  br label %95

95:                                               ; preds = %94, %71, %44, %0
  ret i32 0
}

declare dso_local i32 @scanf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) }

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
