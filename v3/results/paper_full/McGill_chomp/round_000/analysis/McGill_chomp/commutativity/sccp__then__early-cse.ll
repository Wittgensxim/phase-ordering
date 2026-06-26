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
  %7 = mul nsw i64 %6, 4
  %8 = call ptr @malloc(i64 noundef %7) #3
  store ptr %8, ptr %3, align 8
  %9 = load i32, ptr @ncol, align 4
  store i32 %9, ptr %4, align 4
  br label %10

10:                                               ; preds = %14, %1
  %11 = load i32, ptr %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %4, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds i32, ptr %19, i64 %16
  store i32 %18, ptr %20, align 4
  br label %10, !llvm.loop !7

21:                                               ; preds = %10
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
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr @ncol, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, ptr %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %29

15:                                               ; preds = %13
  %16 = load ptr, ptr %2, align 8
  %17 = load i32, ptr %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr @nrow, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  store i32 0, ptr %19, align 4
  %24 = load i32, ptr %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %3, align 4
  br label %28

26:                                               ; preds = %15
  %27 = add nsw i32 %20, 1
  store i32 %27, ptr %19, align 4
  store i32 1, ptr %4, align 4
  br label %28

28:                                               ; preds = %26, %23
  br label %5, !llvm.loop !9

29:                                               ; preds = %13
  %30 = load i32, ptr %4, align 4
  ret i32 %30
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

7:                                                ; preds = %21, %2
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i32, ptr %16, i64 %13
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 %18, ptr %14, align 4
  br label %21

21:                                               ; preds = %20, %11
  br label %7, !llvm.loop !10

22:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load i32, ptr @ncol, align 4
  store i32 %6, ptr %5, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i32, ptr %16, i64 %13
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %15, %18
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi i1 [ false, %7 ], [ %19, %11 ]
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %7, !llvm.loop !11

23:                                               ; preds = %20
  %24 = load i32, ptr %5, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @valid_data(ptr noundef %0) #0 {
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
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds i32, ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %3, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %21

18:                                               ; preds = %10
  store i32 %14, ptr %3, align 4
  %19 = load i32, ptr %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %4, align 4
  br label %6, !llvm.loop !12

21:                                               ; preds = %17, %6
  %22 = load i32, ptr %4, align 4
  %23 = load i32, ptr @ncol, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  ret i32 %25
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
  br label %5

5:                                                ; preds = %13, %1
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = call i32 @equal_data(ptr noundef %8, ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds nuw %struct._play, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %3, align 8
  br label %5, !llvm.loop !13

17:                                               ; preds = %5
  %18 = load ptr, ptr %3, align 8
  %19 = load i32, ptr %18, align 8
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr @ncol, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 8
  %10 = add nsw i32 %5, 1
  store i32 %10, ptr %3, align 4
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds i32, ptr %9, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13)
  %15 = load i32, ptr %3, align 4
  %16 = load i32, ptr @ncol, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = call i32 @putchar(i32 noundef 44)
  br label %20

20:                                               ; preds = %18, %8
  br label %4, !llvm.loop !14

21:                                               ; preds = %4
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
  %4 = load ptr, ptr %2, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8
  call void @show_move(ptr noundef %7)
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  br label %3, !llvm.loop !15

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %3

3:                                                ; preds = %6, %1
  %4 = load ptr, ptr %2, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct._play, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  call void @show_data(ptr noundef %10)
  %11 = load ptr, ptr %2, align 8
  %12 = load i32, ptr %11, align 8
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %12)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  call void @show_list(ptr noundef %17)
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %2, align 8
  br label %3, !llvm.loop !16

21:                                               ; preds = %3
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

6:                                                ; preds = %15, %1
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = call i32 @equal_data(ptr noundef %10, ptr noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %19

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds nuw %struct._list, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %4, align 8
  br label %6, !llvm.loop !17

19:                                               ; preds = %14, %6
  %20 = load ptr, ptr %4, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, ptr %2, align 4
  br label %24

23:                                               ; preds = %19
  store i32 1, ptr %2, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, ptr %2, align 4
  ret i32 %25
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
  %9 = mul nsw i64 %8, 4
  %10 = call ptr @malloc(i64 noundef %9) #3
  store ptr %10, ptr %6, align 8
  store i32 0, ptr %5, align 4
  br label %11

11:                                               ; preds = %20, %2
  %12 = load i32, ptr %5, align 4
  %13 = load i32, ptr %4, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, ptr @nrow, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  store i32 %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %5, align 4
  br label %11, !llvm.loop !18

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %33, %23
  %25 = load i32, ptr %5, align 4
  %26 = load i32, ptr @ncol, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, ptr %3, align 4
  %30 = load ptr, ptr %6, align 8
  %31 = sext i32 %25 to i64
  %32 = getelementptr inbounds i32, ptr %30, i64 %31
  store i32 %29, ptr %32, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %5, align 4
  br label %24, !llvm.loop !19

36:                                               ; preds = %24
  %37 = load ptr, ptr %6, align 8
  ret ptr %37
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
  br label %16

16:                                               ; preds = %91, %3
  %17 = load i32, ptr %7, align 4
  %18 = load i32, ptr @nrow, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %94

20:                                               ; preds = %16
  store i32 0, ptr %8, align 4
  br label %21

21:                                               ; preds = %87, %20
  %22 = load i32, ptr %8, align 4
  %23 = load i32, ptr @ncol, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %21
  %26 = load i32, ptr %7, align 4
  %27 = call ptr @make_data(i32 noundef %26, i32 noundef %22)
  store ptr %27, ptr %9, align 8
  %28 = load ptr, ptr %4, align 8
  call void @melt_data(ptr noundef %27, ptr noundef %28)
  %29 = load ptr, ptr %9, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = call i32 @equal_data(ptr noundef %29, ptr noundef %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %76, label %33

33:                                               ; preds = %25
  %34 = call ptr @malloc(i64 noundef 16) #3
  %35 = load ptr, ptr %11, align 8
  %36 = getelementptr inbounds nuw %struct._list, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = call ptr @copy_data(ptr noundef %37)
  %39 = load ptr, ptr %11, align 8
  %40 = getelementptr inbounds nuw %struct._list, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  store ptr %38, ptr %41, align 8
  %42 = load ptr, ptr %11, align 8
  %43 = getelementptr inbounds nuw %struct._list, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw %struct._list, ptr %44, i32 0, i32 1
  store ptr null, ptr %45, align 8
  %46 = load ptr, ptr %11, align 8
  %47 = getelementptr inbounds nuw %struct._list, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  store ptr %48, ptr %11, align 8
  %49 = load ptr, ptr %5, align 8
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %33
  %53 = load ptr, ptr %9, align 8
  %54 = call i32 @get_value(ptr noundef %53)
  %55 = load ptr, ptr %5, align 8
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %52, %33
  %57 = load ptr, ptr %6, align 8
  %58 = load i32, ptr %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %5, align 8
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, ptr @ncol, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, ptr %8, align 4
  %67 = load i32, ptr @nrow, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, ptr %7, align 4
  %69 = load ptr, ptr %9, align 8
  %70 = call i32 @in_wanted(ptr noundef %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load ptr, ptr %6, align 8
  store i32 2, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %64
  br label %75

75:                                               ; preds = %74, %60, %56
  br label %85

76:                                               ; preds = %25
  %77 = load i32, ptr %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, ptr @nrow, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, ptr %7, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, ptr @ncol, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, ptr %8, align 4
  br label %85

85:                                               ; preds = %82, %75
  %86 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %86)
  br label %87

87:                                               ; preds = %85
  %88 = load i32, ptr %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %8, align 4
  br label %21, !llvm.loop !20

90:                                               ; preds = %21
  br label %91

91:                                               ; preds = %90
  %92 = load i32, ptr %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %7, align 4
  br label %16, !llvm.loop !21

94:                                               ; preds = %16
  %95 = load ptr, ptr %10, align 8
  %96 = getelementptr inbounds nuw %struct._list, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8
  store ptr %97, ptr %11, align 8
  %98 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %98)
  %99 = load ptr, ptr %11, align 8
  %100 = icmp ne ptr %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load ptr, ptr %5, align 8
  %103 = load i32, ptr %102, align 4
  %104 = sub nsw i32 1, %103
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %101, %94
  %106 = load ptr, ptr %11, align 8
  ret ptr %106
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

11:                                               ; preds = %61, %1
  %12 = load ptr, ptr %4, align 8
  %13 = call i32 @next_data(ptr noundef %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 8
  %17 = call i32 @valid_data(ptr noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  %20 = call ptr @malloc(i64 noundef 32) #3
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds nuw %struct._play, ptr %21, i32 0, i32 3
  store ptr %20, ptr %22, align 8
  %23 = load ptr, ptr @game_tree, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds nuw %struct._play, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr @game_tree, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = load ptr, ptr %4, align 8
  %31 = call ptr @copy_data(ptr noundef %30)
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds nuw %struct._play, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds nuw %struct._play, ptr %34, i32 0, i32 1
  store ptr %31, ptr %35, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = call ptr @make_list(ptr noundef %36, ptr noundef %3, ptr noundef %2)
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds nuw %struct._play, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds nuw %struct._play, ptr %40, i32 0, i32 2
  store ptr %37, ptr %41, align 8
  %42 = load i32, ptr %3, align 4
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds nuw %struct._play, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  store i32 %42, ptr %45, align 8
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds nuw %struct._play, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds nuw %struct._play, ptr %48, i32 0, i32 3
  store ptr null, ptr %49, align 8
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds nuw %struct._play, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  store ptr %52, ptr %6, align 8
  %53 = load i32, ptr %2, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %60

55:                                               ; preds = %29
  %56 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %56)
  %57 = load i32, ptr @nrow, align 4
  %58 = load i32, ptr @ncol, align 4
  %59 = call ptr @make_data(i32 noundef %57, i32 noundef %58)
  store ptr %59, ptr %4, align 8
  br label %60

60:                                               ; preds = %55, %29
  br label %61

61:                                               ; preds = %60, %15
  br label %11, !llvm.loop !22

62:                                               ; preds = %11
  %63 = load ptr, ptr %5, align 8
  %64 = getelementptr inbounds nuw %struct._play, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  store ptr %65, ptr %6, align 8
  %66 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %66)
  %67 = load ptr, ptr %6, align 8
  ret ptr %67
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
  br label %11

11:                                               ; preds = %59, %1
  %12 = load i32, ptr %3, align 4
  %13 = load i32, ptr @nrow, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %11
  store i32 0, ptr %4, align 4
  br label %16

16:                                               ; preds = %55, %15
  %17 = load i32, ptr %4, align 4
  %18 = load i32, ptr @ncol, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %16
  %21 = load i32, ptr %3, align 4
  %22 = call ptr @make_data(i32 noundef %21, i32 noundef %17)
  store ptr %22, ptr %5, align 8
  %23 = load ptr, ptr %2, align 8
  call void @melt_data(ptr noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %5, align 8
  %25 = load ptr, ptr %2, align 8
  %26 = call i32 @equal_data(ptr noundef %24, ptr noundef %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %20
  %29 = call ptr @malloc(i64 noundef 16) #3
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds nuw %struct._list, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 8
  %32 = load ptr, ptr %5, align 8
  %33 = call ptr @copy_data(ptr noundef %32)
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds nuw %struct._list, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  store ptr %33, ptr %36, align 8
  %37 = load ptr, ptr %7, align 8
  %38 = getelementptr inbounds nuw %struct._list, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds nuw %struct._list, ptr %39, i32 0, i32 1
  store ptr null, ptr %40, align 8
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds nuw %struct._list, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  store ptr %43, ptr %7, align 8
  br label %53

44:                                               ; preds = %20
  %45 = load i32, ptr %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, ptr @nrow, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, ptr %3, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, ptr @ncol, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, ptr %4, align 4
  br label %53

53:                                               ; preds = %50, %28
  %54 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %54)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %4, align 4
  br label %16, !llvm.loop !23

58:                                               ; preds = %16
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %3, align 4
  br label %11, !llvm.loop !24

62:                                               ; preds = %11
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds nuw %struct._list, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  store ptr %65, ptr %7, align 8
  %66 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %66)
  %67 = load ptr, ptr %7, align 8
  store ptr %67, ptr @wanted, align 8
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
  br label %26

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %18, %6
  %8 = load ptr, ptr %3, align 8
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
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %struct._list, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %3, align 8
  br label %7, !llvm.loop !25

22:                                               ; preds = %16
  %23 = load ptr, ptr %3, align 8
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @copy_data(ptr noundef %24)
  store ptr %25, ptr %2, align 8
  br label %26

26:                                               ; preds = %22, %5
  %27 = load ptr, ptr %2, align 8
  ret ptr %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store ptr %7, ptr %2, align 8
  br label %4, !llvm.loop !26

10:                                               ; preds = %4
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

5:                                                ; preds = %13, %2
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = call i32 @equal_data(ptr noundef %8, ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw %struct._play, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %4, align 8
  br label %5, !llvm.loop !27

17:                                               ; preds = %5
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  ret ptr %20
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
  %14 = getelementptr inbounds i32, ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds i32, ptr %16, i64 %13
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
  switch i32 2, label %98 [
    i32 1, label %15
    i32 2, label %45
    i32 3, label %76
  ]

15:                                               ; preds = %0
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %17 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %19 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %21 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %4)
  br label %22

22:                                               ; preds = %41, %15
  %23 = load i32, ptr @nrow, align 4
  %24 = load i32, ptr %4, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load i32, ptr @ncol, align 4
  %28 = call ptr @make_data(i32 noundef %23, i32 noundef %27)
  call void @make_wanted(ptr noundef %28)
  %29 = call ptr @make_play(i32 noundef 0)
  store ptr %29, ptr %9, align 8
  %30 = call ptr @get_winning_move(ptr noundef %29)
  store ptr %30, ptr %6, align 8
  %31 = load i32, ptr @nrow, align 4
  %32 = load i32, ptr @ncol, align 4
  %33 = call ptr @make_data(i32 noundef %31, i32 noundef %32)
  call void @get_real_move(ptr noundef %30, ptr noundef %33, ptr noundef %2, ptr noundef %3)
  %34 = load i32, ptr @nrow, align 4
  %35 = load i32, ptr @ncol, align 4
  %36 = load i32, ptr %2, align 4
  %37 = load i32, ptr %3, align 4
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37)
  %39 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %39)
  %40 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %40)
  br label %41

41:                                               ; preds = %26
  %42 = load i32, ptr @nrow, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @nrow, align 4
  br label %22, !llvm.loop !29

44:                                               ; preds = %22
  br label %98

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

52:                                               ; preds = %69, %45
  %53 = load ptr, ptr %7, align 8
  %54 = icmp ne ptr %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load ptr, ptr %9, align 8
  %57 = call ptr @where(ptr noundef %53, ptr noundef %56)
  %58 = call ptr @get_good_move(ptr noundef %57)
  store ptr %58, ptr %8, align 8
  %59 = icmp ne ptr %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load ptr, ptr %7, align 8
  call void @get_real_move(ptr noundef %58, ptr noundef %61, ptr noundef %2, ptr noundef %3)
  %62 = load i32, ptr %5, align 4
  %63 = load i32, ptr %2, align 4
  %64 = load i32, ptr %3, align 4
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %62, i32 noundef %63, i32 noundef %64)
  %66 = load i32, ptr %5, align 4
  %67 = sub nsw i32 1, %66
  store i32 %67, ptr %5, align 4
  %68 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %68)
  br label %69

69:                                               ; preds = %60, %55
  %70 = load ptr, ptr %8, align 8
  store ptr %70, ptr %7, align 8
  br label %52, !llvm.loop !30

71:                                               ; preds = %52
  %72 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %72)
  %73 = load i32, ptr %5, align 4
  %74 = sub nsw i32 1, %73
  %75 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %74)
  br label %98

76:                                               ; preds = %0
  %77 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %78 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %80 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %81 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %82 = call ptr @make_play(i32 noundef 1)
  store ptr %82, ptr %9, align 8
  store ptr %82, ptr %10, align 8
  br label %83

83:                                               ; preds = %92, %76
  %84 = load ptr, ptr %10, align 8
  %85 = icmp ne ptr %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, ptr %84, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = getelementptr inbounds nuw %struct._play, ptr %84, i32 0, i32 1
  %91 = load ptr, ptr %90, align 8
  call void @show_move(ptr noundef %91)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load ptr, ptr %10, align 8
  %94 = getelementptr inbounds nuw %struct._play, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 8
  store ptr %95, ptr %10, align 8
  br label %83, !llvm.loop !31

96:                                               ; preds = %83
  %97 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %97)
  br label %98

98:                                               ; preds = %96, %71, %44, %0
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
