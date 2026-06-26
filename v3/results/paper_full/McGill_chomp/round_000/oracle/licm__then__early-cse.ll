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
  %10 = load ptr, ptr %2, align 8
  %11 = load ptr, ptr %3, align 8
  br label %12

12:                                               ; preds = %16, %1
  %13 = phi i32 [ %14, %16 ], [ %9, %1 ]
  %14 = add nsw i32 %13, -1
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds i32, ptr %10, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i32, ptr %11, i64 %17
  store i32 %19, ptr %20, align 4
  br label %12, !llvm.loop !7

21:                                               ; preds = %12
  store i32 %14, ptr %4, align 4
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
  %.promoted = load i32, ptr %3, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = phi i32 [ %27, %26 ], [ 0, %1 ]
  %8 = phi i32 [ %28, %26 ], [ %.promoted, %1 ]
  %9 = load i32, ptr @ncol, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = icmp ne i32 %7, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i1 [ false, %6 ], [ %13, %11 ]
  br i1 %15, label %16, label %29

16:                                               ; preds = %14
  %17 = sext i32 %8 to i64
  %18 = getelementptr inbounds i32, ptr %5, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr @nrow, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  store i32 0, ptr %18, align 4
  %23 = add nsw i32 %8, 1
  br label %26

24:                                               ; preds = %16
  %25 = add nsw i32 %19, 1
  store i32 %25, ptr %18, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ 1, %24 ], [ %7, %22 ]
  %28 = phi i32 [ %8, %24 ], [ %23, %22 ]
  br label %6, !llvm.loop !9

29:                                               ; preds = %14
  store i32 %8, ptr %3, align 4
  store i32 %7, ptr %4, align 4
  ret i32 %7
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
  br label %9

9:                                                ; preds = %21, %2
  %10 = phi i32 [ %11, %21 ], [ %6, %2 ]
  %11 = add nsw i32 %10, -1
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds i32, ptr %7, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i32, ptr %8, i64 %14
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 %18, ptr %15, align 4
  br label %21

21:                                               ; preds = %20, %13
  br label %9, !llvm.loop !10

22:                                               ; preds = %9
  store i32 %11, ptr %5, align 4
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
  br label %9

9:                                                ; preds = %22, %2
  %10 = phi i32 [ %11, %22 ], [ %6, %2 ]
  %11 = add nsw i32 %10, -1
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds i32, ptr %7, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i32, ptr %8, i64 %14
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br label %20

20:                                               ; preds = %13, %9
  %21 = phi i1 [ false, %9 ], [ %19, %13 ]
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %9, !llvm.loop !11

23:                                               ; preds = %20
  store i32 %11, ptr %5, align 4
  %24 = icmp slt i32 %11, 0
  %25 = zext i1 %24 to i32
  ret i32 %25
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
  %.promoted = load i32, ptr %4, align 4
  br label %8

8:                                                ; preds = %18, %1
  %9 = phi i32 [ %15, %18 ], [ %5, %1 ]
  %10 = phi i32 [ %19, %18 ], [ %.promoted, %1 ]
  %11 = icmp ne i32 %10, %6
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i32, ptr %7, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, %9
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 %10, ptr %4, align 4
  store i32 %9, ptr %3, align 4
  br label %20

18:                                               ; preds = %12
  %19 = add nsw i32 %10, 1
  br label %8, !llvm.loop !12

.loopexit:                                        ; preds = %8
  store i32 %10, ptr %4, align 4
  store i32 %9, ptr %3, align 4
  br label %20

20:                                               ; preds = %.loopexit, %17
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr @ncol, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp ne ptr %0, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  call void @dump_list(ptr noundef %6)
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %9)
  br label %10

10:                                               ; preds = %4, %1
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp ne ptr %0, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  call void @dump_play(ptr noundef %6)
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  call void @dump_list(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %12)
  %13 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %13)
  br label %14

14:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_value(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr @game_tree, align 8
  store ptr %4, ptr %3, align 8
  %5 = load ptr, ptr %2, align 8
  br label %6

6:                                                ; preds = %13, %1
  %7 = phi ptr [ %15, %13 ], [ %4, %1 ]
  %8 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @equal_data(ptr noundef %9, ptr noundef %5)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  br label %6, !llvm.loop !13

16:                                               ; preds = %6
  store ptr %7, ptr %3, align 8
  %17 = load i32, ptr %7, align 8
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr %2, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = phi i32 [ %10, %19 ], [ 0, %1 ]
  %7 = load i32, ptr @ncol, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = add nsw i32 %6, 1
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %4, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13)
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 %10, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = call i32 @putchar(i32 noundef 44)
  br label %19

19:                                               ; preds = %17, %9
  br label %5, !llvm.loop !14

20:                                               ; preds = %5
  store i32 %6, ptr %3, align 4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

declare dso_local i32 @putchar(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 @putchar(i32 noundef 40)
  %4 = load ptr, ptr %2, align 8
  call void @show_data(ptr noundef %4)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
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
  store ptr %4, ptr %2, align 8
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
  store ptr %4, ptr %2, align 8
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
  %6 = load ptr, ptr %3, align 8
  br label %7

7:                                                ; preds = %15, %1
  %8 = phi ptr [ %17, %15 ], [ %5, %1 ]
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8
  %12 = call i32 @equal_data(ptr noundef %11, ptr noundef %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store ptr %8, ptr %4, align 8
  br label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  br label %7, !llvm.loop !17

.loopexit:                                        ; preds = %7
  store ptr %8, ptr %4, align 8
  br label %18

18:                                               ; preds = %.loopexit, %14
  %19 = load ptr, ptr %4, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, ptr %2, align 4
  br label %23

22:                                               ; preds = %18
  store i32 1, ptr %2, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, ptr %2, align 4
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
  %11 = load i32, ptr %4, align 4
  %12 = load ptr, ptr %6, align 8
  br label %13

13:                                               ; preds = %20, %2
  %14 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %15 = icmp ne i32 %14, %11
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, ptr @nrow, align 4
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds i32, ptr %12, i64 %18
  store i32 %17, ptr %19, align 4
  br label %20

20:                                               ; preds = %16
  %21 = add nsw i32 %14, 1
  br label %13, !llvm.loop !18

22:                                               ; preds = %13
  store i32 %14, ptr %5, align 4
  %23 = load i32, ptr %3, align 4
  %24 = load ptr, ptr %6, align 8
  br label %25

25:                                               ; preds = %32, %22
  %26 = phi i32 [ %33, %32 ], [ %14, %22 ]
  %27 = load i32, ptr @ncol, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = sext i32 %26 to i64
  %31 = getelementptr inbounds i32, ptr %24, i64 %30
  store i32 %23, ptr %31, align 4
  br label %32

32:                                               ; preds = %29
  %33 = add nsw i32 %26, 1
  br label %25, !llvm.loop !19

34:                                               ; preds = %25
  store i32 %26, ptr %5, align 4
  %35 = load ptr, ptr %6, align 8
  ret ptr %35
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
  %12 = load ptr, ptr %5, align 8
  store i32 1, ptr %12, align 4
  %13 = call ptr @malloc(i64 noundef 16) #3
  store ptr %13, ptr %10, align 8
  %14 = getelementptr inbounds nuw %struct._list, ptr %13, i32 0, i32 1
  store ptr null, ptr %14, align 8
  %15 = load ptr, ptr %10, align 8
  store ptr %15, ptr %11, align 8
  store i32 0, ptr %7, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = load ptr, ptr %6, align 8
  %.promoted9 = load i32, ptr %8, align 4
  %.promoted = load ptr, ptr %9, align 8
  %.promoted12 = load ptr, ptr %11, align 8
  br label %19

19:                                               ; preds = %80, %3
  %.lcssa613 = phi ptr [ %24, %80 ], [ %.promoted12, %3 ]
  %.lcssa411 = phi ptr [ %25, %80 ], [ %.promoted, %3 ]
  %.lcssa10 = phi i32 [ %27, %80 ], [ %.promoted9, %3 ]
  %.lcssa28 = phi i32 [ %81, %80 ], [ 0, %3 ]
  %20 = load i32, ptr @nrow, align 4
  %21 = icmp ne i32 %.lcssa28, %20
  br i1 %21, label %22, label %82

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %77, %22
  %24 = phi ptr [ %74, %77 ], [ %.lcssa613, %22 ]
  %25 = phi ptr [ %31, %77 ], [ %.lcssa411, %22 ]
  %26 = phi i32 [ %75, %77 ], [ %.lcssa28, %22 ]
  %27 = phi i32 [ %78, %77 ], [ 0, %22 ]
  %28 = load i32, ptr @ncol, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %23
  %31 = call ptr @make_data(i32 noundef %26, i32 noundef %27)
  call void @melt_data(ptr noundef %31, ptr noundef %16)
  %32 = call i32 @equal_data(ptr noundef %31, ptr noundef %16)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %30
  %35 = call ptr @malloc(i64 noundef 16) #3
  %36 = getelementptr inbounds nuw %struct._list, ptr %24, i32 0, i32 1
  store ptr %35, ptr %36, align 8
  %37 = call ptr @copy_data(ptr noundef %31)
  %38 = load ptr, ptr %36, align 8
  store ptr %37, ptr %38, align 8
  %39 = load ptr, ptr %36, align 8
  %40 = getelementptr inbounds nuw %struct._list, ptr %39, i32 0, i32 1
  store ptr null, ptr %40, align 8
  %41 = load ptr, ptr %36, align 8
  %42 = load i32, ptr %17, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = call i32 @get_value(ptr noundef %31)
  store i32 %45, ptr %17, align 4
  br label %46

46:                                               ; preds = %44, %34
  %47 = load i32, ptr %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %17, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, ptr @ncol, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32, ptr @nrow, align 4
  %56 = sub nsw i32 %55, 1
  %57 = call i32 @in_wanted(ptr noundef %31)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 2, ptr %18, align 4
  br label %60

60:                                               ; preds = %59, %52
  br label %61

61:                                               ; preds = %60, %49, %46
  %62 = phi i32 [ %56, %60 ], [ %26, %49 ], [ %26, %46 ]
  %63 = phi i32 [ %54, %60 ], [ %27, %49 ], [ %27, %46 ]
  br label %73

64:                                               ; preds = %30
  %65 = icmp eq i32 %27, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i32, ptr @nrow, align 4
  %68 = sub nsw i32 %67, 1
  br label %69

69:                                               ; preds = %66, %64
  %70 = phi i32 [ %68, %66 ], [ %26, %64 ]
  %71 = load i32, ptr @ncol, align 4
  %72 = sub nsw i32 %71, 1
  br label %73

73:                                               ; preds = %69, %61
  %74 = phi ptr [ %24, %69 ], [ %41, %61 ]
  %75 = phi i32 [ %70, %69 ], [ %62, %61 ]
  %76 = phi i32 [ %72, %69 ], [ %63, %61 ]
  call void @free(ptr noundef %31)
  br label %77

77:                                               ; preds = %73
  %78 = add nsw i32 %76, 1
  br label %23, !llvm.loop !20

79:                                               ; preds = %23
  br label %80

80:                                               ; preds = %79
  %81 = add nsw i32 %26, 1
  br label %19, !llvm.loop !21

82:                                               ; preds = %19
  store i32 %.lcssa28, ptr %7, align 4
  store i32 %.lcssa10, ptr %8, align 4
  store ptr %.lcssa411, ptr %9, align 8
  store ptr %.lcssa613, ptr %11, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds nuw %struct._list, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8
  store ptr %85, ptr %11, align 8
  %86 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %86)
  %87 = load ptr, ptr %11, align 8
  %88 = icmp ne ptr %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load ptr, ptr %5, align 8
  %91 = load i32, ptr %90, align 4
  %92 = sub nsw i32 1, %91
  store i32 %92, ptr %90, align 4
  br label %93

93:                                               ; preds = %89, %82
  %94 = load ptr, ptr %11, align 8
  ret ptr %94
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
  %.promoted = load ptr, ptr %4, align 8
  %.promoted1 = load ptr, ptr %6, align 8
  br label %11

11:                                               ; preds = %45, %1
  %12 = phi ptr [ %46, %45 ], [ %.promoted1, %1 ]
  %13 = phi ptr [ %47, %45 ], [ %.promoted, %1 ]
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
  %52 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %52)
  %53 = load ptr, ptr %6, align 8
  ret ptr %53
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
  %10 = load ptr, ptr %6, align 8
  store ptr %10, ptr %7, align 8
  store i32 0, ptr %3, align 4
  %11 = load ptr, ptr %2, align 8
  %.promoted9 = load i32, ptr %4, align 4
  %.promoted = load ptr, ptr %5, align 8
  %.promoted12 = load ptr, ptr %7, align 8
  br label %12

12:                                               ; preds = %51, %1
  %.lcssa613 = phi ptr [ %17, %51 ], [ %.promoted12, %1 ]
  %.lcssa411 = phi ptr [ %18, %51 ], [ %.promoted, %1 ]
  %.lcssa10 = phi i32 [ %20, %51 ], [ %.promoted9, %1 ]
  %.lcssa28 = phi i32 [ %52, %51 ], [ 0, %1 ]
  %13 = load i32, ptr @nrow, align 4
  %14 = icmp ne i32 %.lcssa28, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %48, %15
  %17 = phi ptr [ %45, %48 ], [ %.lcssa613, %15 ]
  %18 = phi ptr [ %24, %48 ], [ %.lcssa411, %15 ]
  %19 = phi i32 [ %46, %48 ], [ %.lcssa28, %15 ]
  %20 = phi i32 [ %49, %48 ], [ 0, %15 ]
  %21 = load i32, ptr @ncol, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = call ptr @make_data(i32 noundef %19, i32 noundef %20)
  call void @melt_data(ptr noundef %24, ptr noundef %11)
  %25 = call i32 @equal_data(ptr noundef %24, ptr noundef %11)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = call ptr @malloc(i64 noundef 16) #3
  %29 = getelementptr inbounds nuw %struct._list, ptr %17, i32 0, i32 1
  store ptr %28, ptr %29, align 8
  %30 = call ptr @copy_data(ptr noundef %24)
  %31 = load ptr, ptr %29, align 8
  store ptr %30, ptr %31, align 8
  %32 = load ptr, ptr %29, align 8
  %33 = getelementptr inbounds nuw %struct._list, ptr %32, i32 0, i32 1
  store ptr null, ptr %33, align 8
  %34 = load ptr, ptr %29, align 8
  br label %44

35:                                               ; preds = %23
  %36 = icmp eq i32 %20, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i32, ptr @nrow, align 4
  %39 = sub nsw i32 %38, 1
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %39, %37 ], [ %19, %35 ]
  %42 = load i32, ptr @ncol, align 4
  %43 = sub nsw i32 %42, 1
  br label %44

44:                                               ; preds = %40, %27
  %45 = phi ptr [ %17, %40 ], [ %34, %27 ]
  %46 = phi i32 [ %41, %40 ], [ %19, %27 ]
  %47 = phi i32 [ %43, %40 ], [ %20, %27 ]
  call void @free(ptr noundef %24)
  br label %48

48:                                               ; preds = %44
  %49 = add nsw i32 %47, 1
  br label %16, !llvm.loop !23

50:                                               ; preds = %16
  br label %51

51:                                               ; preds = %50
  %52 = add nsw i32 %19, 1
  br label %12, !llvm.loop !24

53:                                               ; preds = %12
  store i32 %.lcssa28, ptr %3, align 4
  store i32 %.lcssa10, ptr %4, align 4
  store ptr %.lcssa411, ptr %5, align 8
  store ptr %.lcssa613, ptr %7, align 8
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds nuw %struct._list, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  store ptr %56, ptr %7, align 8
  %57 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %57)
  %58 = load ptr, ptr %7, align 8
  store ptr %58, ptr @wanted, align 8
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
  %24 = load ptr, ptr %2, align 8
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
  %5 = load ptr, ptr %3, align 8
  br label %6

6:                                                ; preds = %13, %2
  %7 = phi ptr [ %15, %13 ], [ %1, %2 ]
  %8 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @equal_data(ptr noundef %9, ptr noundef %5)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  br label %6, !llvm.loop !27

16:                                               ; preds = %6
  store ptr %7, ptr %4, align 8
  %17 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 2
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
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  br label %12

12:                                               ; preds = %20, %4
  %13 = load i32, ptr %10, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %9, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i32, ptr %11, i64 %14
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = add nsw i32 %13, 1
  store i32 %21, ptr %10, align 4
  br label %12, !llvm.loop !28

22:                                               ; preds = %12
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %23, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %7, align 8
  store i32 %28, ptr %29, align 4
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
  switch i32 2, label %96 [
    i32 1, label %15
    i32 2, label %46
    i32 3, label %75
  ]

15:                                               ; preds = %0
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %17 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %19 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %21 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %4)
  %.promoted7 = load ptr, ptr %9, align 8
  %.promoted9 = load ptr, ptr %6, align 8
  br label %22

22:                                               ; preds = %42, %15
  %23 = phi ptr [ %32, %42 ], [ %.promoted9, %15 ]
  %24 = phi ptr [ %31, %42 ], [ %.promoted7, %15 ]
  %25 = load i32, ptr @nrow, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %45

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
  br label %42

42:                                               ; preds = %28
  %43 = load i32, ptr @nrow, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr @nrow, align 4
  br label %22, !llvm.loop !29

45:                                               ; preds = %22
  store ptr %24, ptr %9, align 8
  store ptr %23, ptr %6, align 8
  br label %96

46:                                               ; preds = %0
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %49 = call ptr @make_play(i32 noundef 1)
  store ptr %49, ptr %9, align 8
  store i32 0, ptr %5, align 4
  %50 = load i32, ptr @nrow, align 4
  %51 = load i32, ptr @ncol, align 4
  %52 = call ptr @make_data(i32 noundef %50, i32 noundef %51)
  store ptr %52, ptr %7, align 8
  %53 = load ptr, ptr %9, align 8
  %.promoted3 = load ptr, ptr %8, align 8
  %.promoted5 = load i32, ptr %5, align 4
  br label %54

54:                                               ; preds = %68, %46
  %55 = phi i32 [ %69, %68 ], [ %.promoted5, %46 ]
  %56 = phi ptr [ %61, %68 ], [ %.promoted3, %46 ]
  %57 = phi ptr [ %61, %68 ], [ %52, %46 ]
  %58 = icmp ne ptr %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = call ptr @where(ptr noundef %57, ptr noundef %53)
  %61 = call ptr @get_good_move(ptr noundef %60)
  %62 = icmp ne ptr %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  call void @get_real_move(ptr noundef %61, ptr noundef %57, ptr noundef %2, ptr noundef %3)
  %64 = load i32, ptr %2, align 4
  %65 = load i32, ptr %3, align 4
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %55, i32 noundef %64, i32 noundef %65)
  %67 = sub nsw i32 1, %55
  call void @free(ptr noundef %57)
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i32 [ %67, %63 ], [ %55, %59 ]
  br label %54, !llvm.loop !30

70:                                               ; preds = %54
  store ptr %57, ptr %7, align 8
  store ptr %56, ptr %8, align 8
  store i32 %55, ptr %5, align 4
  %71 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %71)
  %72 = load i32, ptr %5, align 4
  %73 = sub nsw i32 1, %72
  %74 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %73)
  br label %96

75:                                               ; preds = %0
  %76 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %77 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %78 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %79 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %81 = call ptr @make_play(i32 noundef 1)
  store ptr %81, ptr %9, align 8
  store ptr %81, ptr %10, align 8
  br label %82

82:                                               ; preds = %91, %75
  %83 = phi ptr [ %93, %91 ], [ %81, %75 ]
  %84 = icmp ne ptr %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
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
  br label %82, !llvm.loop !31

94:                                               ; preds = %82
  store ptr %83, ptr %10, align 8
  %95 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %95)
  br label %96

96:                                               ; preds = %94, %70, %45, %0
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
