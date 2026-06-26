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
  store i32 %12, ptr %4, align 4
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

5:                                                ; preds = %25, %1
  %6 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %7 = phi i32 [ %27, %25 ], [ 0, %1 ]
  %8 = load i32, ptr @ncol, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = icmp ne i32 %6, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi i1 [ false, %5 ], [ %12, %10 ]
  br i1 %14, label %15, label %28

15:                                               ; preds = %13
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr @nrow, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  store i32 0, ptr %17, align 4
  %22 = add nsw i32 %7, 1
  br label %25

23:                                               ; preds = %15
  %24 = add nsw i32 %18, 1
  store i32 %24, ptr %17, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ 1, %23 ], [ %6, %21 ]
  %27 = phi i32 [ %7, %23 ], [ %22, %21 ]
  br label %5, !llvm.loop !9

28:                                               ; preds = %13
  store i32 %7, ptr %3, align 4
  store i32 %6, ptr %4, align 4
  ret i32 %6
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

7:                                                ; preds = %19, %2
  %8 = phi i32 [ %9, %19 ], [ %6, %2 ]
  %9 = add nsw i32 %8, -1
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i32, ptr %1, i64 %12
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 %16, ptr %13, align 4
  br label %19

19:                                               ; preds = %18, %11
  br label %7, !llvm.loop !10

20:                                               ; preds = %7
  store i32 %9, ptr %5, align 4
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
  store i32 %9, ptr %5, align 4
  %22 = icmp slt i32 %9, 0
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
  %6 = load i32, ptr @ncol, align 4
  br label %7

7:                                                ; preds = %17, %1
  %8 = phi i32 [ %14, %17 ], [ %5, %1 ]
  %9 = phi i32 [ %18, %17 ], [ 0, %1 ]
  %10 = icmp ne i32 %9, %6
  br i1 %10, label %11, label %.loopexit

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, %8
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 %9, ptr %4, align 4
  store i32 %8, ptr %3, align 4
  br label %19

17:                                               ; preds = %11
  %18 = add nsw i32 %9, 1
  br label %7, !llvm.loop !12

.loopexit:                                        ; preds = %7
  store i32 %6, ptr %4, align 4
  store i32 %8, ptr %3, align 4
  br label %19

19:                                               ; preds = %.loopexit, %16
  %20 = phi i32 [ %6, %.loopexit ], [ %9, %16 ]
  %21 = icmp eq i32 %20, %6
  %22 = zext i1 %21 to i32
  ret i32 %22
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
  br label %5

5:                                                ; preds = %12, %1
  %6 = phi ptr [ %14, %12 ], [ %4, %1 ]
  %7 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @equal_data(ptr noundef %8, ptr noundef %0)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  br label %5, !llvm.loop !13

15:                                               ; preds = %5
  store ptr %6, ptr %3, align 8
  %16 = load i32, ptr %6, align 8
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %.pre1 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = phi i32 [ %19, %18 ], [ %.pre1, %1 ]
  %6 = phi i32 [ %9, %18 ], [ 0, %1 ]
  %7 = icmp ne i32 %6, %5
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 1
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  %14 = load i32, ptr @ncol, align 4
  %15 = icmp ne i32 %9, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 @putchar(i32 noundef 44)
  %.pre = load i32, ptr @ncol, align 4
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i32 [ %.pre, %16 ], [ %9, %8 ]
  br label %4, !llvm.loop !14

20:                                               ; preds = %4
  store i32 %5, ptr %3, align 4
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
  br label %3

3:                                                ; preds = %6, %1
  %4 = phi ptr [ %9, %6 ], [ %0, %1 ]
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8
  call void @show_move(ptr noundef %7)
  %8 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  br label %3, !llvm.loop !15

10:                                               ; preds = %3
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %3

3:                                                ; preds = %6, %1
  %4 = phi ptr [ %16, %6 ], [ %0, %1 ]
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %8 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @show_data(ptr noundef %9)
  %10 = load i32, ptr %4, align 8
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %10)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %13 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  call void @show_list(ptr noundef %14)
  %15 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  br label %3, !llvm.loop !16

17:                                               ; preds = %3
  store ptr null, ptr %2, align 8
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
  br label %6

6:                                                ; preds = %14, %1
  %7 = phi ptr [ %16, %14 ], [ %5, %1 ]
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %.loopexit

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8
  %11 = call i32 @equal_data(ptr noundef %10, ptr noundef %0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store ptr %7, ptr %4, align 8
  br label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw %struct._list, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  br label %6, !llvm.loop !17

.loopexit:                                        ; preds = %6
  store ptr null, ptr %4, align 8
  br label %17

17:                                               ; preds = %.loopexit, %13
  %18 = phi ptr [ null, %.loopexit ], [ %7, %13 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, ptr %2, align 4
  br label %22

21:                                               ; preds = %17
  store i32 1, ptr %2, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi i32 [ 1, %21 ], [ 0, %20 ]
  ret i32 %23
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
  br label %11

11:                                               ; preds = %14, %2
  %12 = phi i32 [ %18, %14 ], [ 0, %2 ]
  %13 = icmp ne i32 %12, %1
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, ptr @nrow, align 4
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds i32, ptr %10, i64 %16
  store i32 %15, ptr %17, align 4
  %18 = add nsw i32 %12, 1
  br label %11, !llvm.loop !18

19:                                               ; preds = %11
  store i32 %1, ptr %5, align 4
  br label %20

20:                                               ; preds = %24, %19
  %21 = phi i32 [ %27, %24 ], [ %1, %19 ]
  %22 = load i32, ptr @ncol, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds i32, ptr %10, i64 %25
  store i32 %0, ptr %26, align 4
  %27 = add nsw i32 %21, 1
  br label %20, !llvm.loop !19

28:                                               ; preds = %20
  store i32 %21, ptr %5, align 4
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

14:                                               ; preds = %73, %3
  %.lcssa613 = phi ptr [ %19, %73 ], [ %12, %3 ]
  %.lcssa411 = phi ptr [ %20, %73 ], [ undef, %3 ]
  %.lcssa10 = phi i32 [ %22, %73 ], [ undef, %3 ]
  %.lcssa28 = phi i32 [ %74, %73 ], [ 0, %3 ]
  %15 = load i32, ptr @nrow, align 4
  %16 = icmp ne i32 %.lcssa28, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %68, %17
  %19 = phi ptr [ %69, %68 ], [ %.lcssa613, %17 ]
  %20 = phi ptr [ %26, %68 ], [ %.lcssa411, %17 ]
  %21 = phi i32 [ %70, %68 ], [ %.lcssa28, %17 ]
  %22 = phi i32 [ %72, %68 ], [ 0, %17 ]
  %23 = load i32, ptr @ncol, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %18
  %26 = call ptr @make_data(i32 noundef %21, i32 noundef %22)
  call void @melt_data(ptr noundef %26, ptr noundef %0)
  %27 = call i32 @equal_data(ptr noundef %26, ptr noundef %0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %25
  %30 = call ptr @malloc(i64 noundef 16) #3
  %31 = getelementptr inbounds nuw %struct._list, ptr %19, i32 0, i32 1
  store ptr %30, ptr %31, align 8
  %32 = call ptr @copy_data(ptr noundef %26)
  %33 = load ptr, ptr %31, align 8
  store ptr %32, ptr %33, align 8
  %34 = load ptr, ptr %31, align 8
  %35 = getelementptr inbounds nuw %struct._list, ptr %34, i32 0, i32 1
  store ptr null, ptr %35, align 8
  %36 = load ptr, ptr %31, align 8
  %37 = load i32, ptr %1, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = call i32 @get_value(ptr noundef %26)
  store i32 %40, ptr %1, align 4
  br label %41

41:                                               ; preds = %39, %29
  %42 = phi i32 [ %40, %39 ], [ %37, %29 ]
  %43 = load i32, ptr %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  %46 = icmp eq i32 %42, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %45
  %48 = load i32, ptr @ncol, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, ptr @nrow, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @in_wanted(ptr noundef %26)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 2, ptr %2, align 4
  br label %55

55:                                               ; preds = %54, %47
  br label %56

56:                                               ; preds = %55, %45, %41
  %57 = phi i32 [ %51, %55 ], [ %21, %45 ], [ %21, %41 ]
  %58 = phi i32 [ %49, %55 ], [ %22, %45 ], [ %22, %41 ]
  br label %68

59:                                               ; preds = %25
  %60 = icmp eq i32 %22, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i32, ptr @nrow, align 4
  %63 = sub nsw i32 %62, 1
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i32 [ %63, %61 ], [ %21, %59 ]
  %66 = load i32, ptr @ncol, align 4
  %67 = sub nsw i32 %66, 1
  br label %68

68:                                               ; preds = %64, %56
  %69 = phi ptr [ %19, %64 ], [ %36, %56 ]
  %70 = phi i32 [ %65, %64 ], [ %57, %56 ]
  %71 = phi i32 [ %67, %64 ], [ %58, %56 ]
  call void @free(ptr noundef %26)
  %72 = add nsw i32 %71, 1
  br label %18, !llvm.loop !20

73:                                               ; preds = %18
  %74 = add nsw i32 %21, 1
  br label %14, !llvm.loop !21

75:                                               ; preds = %14
  store i32 %.lcssa28, ptr %7, align 4
  store i32 %.lcssa10, ptr %8, align 4
  store ptr %.lcssa411, ptr %9, align 8
  store ptr %.lcssa613, ptr %11, align 8
  %76 = load ptr, ptr %13, align 8
  store ptr %76, ptr %11, align 8
  call void @free(ptr noundef %12)
  %77 = icmp ne ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, ptr %1, align 4
  %80 = sub nsw i32 1, %79
  store i32 %80, ptr %1, align 4
  br label %81

81:                                               ; preds = %78, %75
  ret ptr %76
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

11:                                               ; preds = %45, %1
  %12 = phi ptr [ %46, %45 ], [ %7, %1 ]
  %13 = phi ptr [ %47, %45 ], [ %8, %1 ]
  %14 = call i32 @next_data(ptr noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %11
  %17 = call i32 @valid_data(ptr noundef %13)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = call ptr @malloc(i64 noundef 32) #3
  %21 = getelementptr inbounds nuw %struct._play, ptr %12, i32 0, i32 3
  store ptr %20, ptr %21, align 8
  %22 = load ptr, ptr @game_tree, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store ptr %20, ptr @game_tree, align 8
  br label %25

25:                                               ; preds = %24, %19
  %26 = call ptr @copy_data(ptr noundef %13)
  %27 = load ptr, ptr %21, align 8
  %28 = getelementptr inbounds nuw %struct._play, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 8
  %29 = call ptr @make_list(ptr noundef %13, ptr noundef %3, ptr noundef %2)
  %30 = load ptr, ptr %21, align 8
  %31 = getelementptr inbounds nuw %struct._play, ptr %30, i32 0, i32 2
  store ptr %29, ptr %31, align 8
  %32 = load i32, ptr %3, align 4
  %33 = load ptr, ptr %21, align 8
  store i32 %32, ptr %33, align 8
  %34 = load ptr, ptr %21, align 8
  %35 = getelementptr inbounds nuw %struct._play, ptr %34, i32 0, i32 3
  store ptr null, ptr %35, align 8
  %36 = load ptr, ptr %21, align 8
  %37 = load i32, ptr %2, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  call void @free(ptr noundef %13)
  %40 = load i32, ptr @nrow, align 4
  %41 = load i32, ptr @ncol, align 4
  %42 = call ptr @make_data(i32 noundef %40, i32 noundef %41)
  br label %43

43:                                               ; preds = %39, %25
  %44 = phi ptr [ %42, %39 ], [ %13, %25 ]
  br label %45

45:                                               ; preds = %43, %16
  %46 = phi ptr [ %36, %43 ], [ %12, %16 ]
  %47 = phi ptr [ %44, %43 ], [ %13, %16 ]
  br label %11, !llvm.loop !22

48:                                               ; preds = %11
  store ptr %13, ptr %4, align 8
  store ptr %12, ptr %6, align 8
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

10:                                               ; preds = %47, %1
  %.lcssa613 = phi ptr [ %15, %47 ], [ %8, %1 ]
  %.lcssa411 = phi ptr [ %16, %47 ], [ undef, %1 ]
  %.lcssa10 = phi i32 [ %18, %47 ], [ undef, %1 ]
  %.lcssa28 = phi i32 [ %48, %47 ], [ 0, %1 ]
  %11 = load i32, ptr @nrow, align 4
  %12 = icmp ne i32 %.lcssa28, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %42, %13
  %15 = phi ptr [ %43, %42 ], [ %.lcssa613, %13 ]
  %16 = phi ptr [ %22, %42 ], [ %.lcssa411, %13 ]
  %17 = phi i32 [ %44, %42 ], [ %.lcssa28, %13 ]
  %18 = phi i32 [ %46, %42 ], [ 0, %13 ]
  %19 = load i32, ptr @ncol, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %14
  %22 = call ptr @make_data(i32 noundef %17, i32 noundef %18)
  call void @melt_data(ptr noundef %22, ptr noundef %0)
  %23 = call i32 @equal_data(ptr noundef %22, ptr noundef %0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = call ptr @malloc(i64 noundef 16) #3
  %27 = getelementptr inbounds nuw %struct._list, ptr %15, i32 0, i32 1
  store ptr %26, ptr %27, align 8
  %28 = call ptr @copy_data(ptr noundef %22)
  %29 = load ptr, ptr %27, align 8
  store ptr %28, ptr %29, align 8
  %30 = load ptr, ptr %27, align 8
  %31 = getelementptr inbounds nuw %struct._list, ptr %30, i32 0, i32 1
  store ptr null, ptr %31, align 8
  %32 = load ptr, ptr %27, align 8
  br label %42

33:                                               ; preds = %21
  %34 = icmp eq i32 %18, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, ptr @nrow, align 4
  %37 = sub nsw i32 %36, 1
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %37, %35 ], [ %17, %33 ]
  %40 = load i32, ptr @ncol, align 4
  %41 = sub nsw i32 %40, 1
  br label %42

42:                                               ; preds = %38, %25
  %43 = phi ptr [ %15, %38 ], [ %32, %25 ]
  %44 = phi i32 [ %39, %38 ], [ %17, %25 ]
  %45 = phi i32 [ %41, %38 ], [ %18, %25 ]
  call void @free(ptr noundef %22)
  %46 = add nsw i32 %45, 1
  br label %14, !llvm.loop !23

47:                                               ; preds = %14
  %48 = add nsw i32 %17, 1
  br label %10, !llvm.loop !24

49:                                               ; preds = %10
  store i32 %.lcssa28, ptr %3, align 4
  store i32 %.lcssa10, ptr %4, align 4
  store ptr %.lcssa411, ptr %5, align 8
  store ptr %.lcssa613, ptr %7, align 8
  %50 = load ptr, ptr %9, align 8
  store ptr %50, ptr %7, align 8
  call void @free(ptr noundef %8)
  store ptr %50, ptr @wanted, align 8
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
  br label %23

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %18, %6
  %8 = phi ptr [ %19, %18 ], [ %0, %6 ]
  %9 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8
  %14 = call i32 @get_value(ptr noundef %13)
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i1 [ false, %7 ], [ %15, %12 ]
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = load ptr, ptr %9, align 8
  br label %7, !llvm.loop !25

20:                                               ; preds = %16
  store ptr %8, ptr %3, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = call ptr @copy_data(ptr noundef %21)
  store ptr %22, ptr %2, align 8
  br label %23

23:                                               ; preds = %20, %5
  %24 = phi ptr [ %22, %20 ], [ null, %5 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = phi ptr [ %7, %9 ], [ %0, %1 ]
  %6 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %4, !llvm.loop !26

10:                                               ; preds = %4
  store ptr %5, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @get_good_move(ptr noundef %12)
  store ptr %13, ptr %3, align 8
  ret ptr %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  br label %5

5:                                                ; preds = %12, %2
  %6 = phi ptr [ %14, %12 ], [ %1, %2 ]
  %7 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @equal_data(ptr noundef %8, ptr noundef %0)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  br label %5, !llvm.loop !27

15:                                               ; preds = %5
  store ptr %6, ptr %4, align 8
  %16 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 2
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
  store i32 %13, ptr %2, align 4
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
  switch i32 2, label %91 [
    i32 1, label %15
    i32 2, label %45
    i32 3, label %71
  ]

15:                                               ; preds = %0
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %17 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %19 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %21 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %4)
  %.pre = load i32, ptr @nrow, align 4
  br label %22

22:                                               ; preds = %28, %15
  %23 = phi i32 [ %43, %28 ], [ %.pre, %15 ]
  %24 = phi ptr [ %32, %28 ], [ undef, %15 ]
  %25 = phi ptr [ %31, %28 ], [ undef, %15 ]
  %26 = load i32, ptr %4, align 4
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i32, ptr @ncol, align 4
  %30 = call ptr @make_data(i32 noundef %23, i32 noundef %29)
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
  store ptr %25, ptr %9, align 8
  store ptr %24, ptr %6, align 8
  br label %91

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
  br label %52

52:                                               ; preds = %66, %45
  %53 = phi i32 [ %67, %66 ], [ 0, %45 ]
  %54 = phi ptr [ %59, %66 ], [ undef, %45 ]
  %55 = phi ptr [ %59, %66 ], [ %51, %45 ]
  %56 = icmp ne ptr %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = call ptr @where(ptr noundef %55, ptr noundef %48)
  %59 = call ptr @get_good_move(ptr noundef %58)
  %60 = icmp ne ptr %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  call void @get_real_move(ptr noundef %59, ptr noundef %55, ptr noundef %2, ptr noundef %3)
  %62 = load i32, ptr %2, align 4
  %63 = load i32, ptr %3, align 4
  %64 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %53, i32 noundef %62, i32 noundef %63)
  %65 = sub nsw i32 1, %53
  call void @free(ptr noundef %55)
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i32 [ %65, %61 ], [ %53, %57 ]
  br label %52, !llvm.loop !30

68:                                               ; preds = %52
  store ptr null, ptr %7, align 8
  store ptr %54, ptr %8, align 8
  store i32 %53, ptr %5, align 4
  call void @dump_play(ptr noundef %48)
  %69 = sub nsw i32 1, %53
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %69)
  br label %91

71:                                               ; preds = %0
  %72 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %73 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %74 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %75 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %76 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %77 = call ptr @make_play(i32 noundef 1)
  store ptr %77, ptr %9, align 8
  store ptr %77, ptr %10, align 8
  br label %78

78:                                               ; preds = %87, %71
  %79 = phi ptr [ %89, %87 ], [ %77, %71 ]
  %80 = icmp ne ptr %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, ptr %79, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = getelementptr inbounds nuw %struct._play, ptr %79, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  call void @show_move(ptr noundef %86)
  br label %87

87:                                               ; preds = %84, %81
  %88 = getelementptr inbounds nuw %struct._play, ptr %79, i32 0, i32 3
  %89 = load ptr, ptr %88, align 8
  br label %78, !llvm.loop !31

90:                                               ; preds = %78
  store ptr null, ptr %10, align 8
  call void @dump_play(ptr noundef %77)
  br label %91

91:                                               ; preds = %90, %68, %44, %0
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
