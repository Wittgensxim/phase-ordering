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
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %15, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %3, align 8
  %21 = load i32, ptr %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %20, i64 %22
  store i32 %19, ptr %23, align 4
  br label %10, !llvm.loop !7

24:                                               ; preds = %10
  %25 = load ptr, ptr %3, align 8
  ret ptr %25
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

5:                                                ; preds = %35, %1
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr @ncol, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %.critedge

9:                                                ; preds = %5
  %10 = load i32, ptr %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %.critedge

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8
  %15 = load i32, ptr %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr @nrow, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load ptr, ptr %2, align 8
  %23 = load i32, ptr %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  store i32 0, ptr %25, align 4
  %26 = load i32, ptr %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %3, align 4
  br label %35

28:                                               ; preds = %13
  %29 = load ptr, ptr %2, align 8
  %30 = load i32, ptr %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %29, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
  store i32 1, ptr %4, align 4
  br label %35

35:                                               ; preds = %28, %21
  br label %5, !llvm.loop !9

.critedge:                                        ; preds = %5, %9
  %36 = load i32, ptr %4, align 4
  ret i32 %36
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

7:                                                ; preds = %33, %2
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = load i32, ptr %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %16, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %11
  %24 = load ptr, ptr %4, align 8
  %25 = load i32, ptr %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %3, align 8
  %30 = load i32, ptr %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %29, i64 %31
  store i32 %28, ptr %32, align 4
  br label %33

33:                                               ; preds = %23, %11
  br label %7, !llvm.loop !10

34:                                               ; preds = %7
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

7:                                                ; preds = %11, %2
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %.critedge

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = load i32, ptr %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %7, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %7, %11
  %23 = load i32, ptr %5, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  ret i32 %25
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
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8
  %12 = load i32, ptr %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %3, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %3, align 4
  %24 = load i32, ptr %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %4, align 4
  br label %6, !llvm.loop !12

26:                                               ; preds = %10, %6
  %27 = load i32, ptr %4, align 4
  %28 = load i32, ptr @ncol, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct._list, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @dump_list(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %11)
  %12 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %12)
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  call void @dump_play(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct._play, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  call void @dump_list(ptr noundef %11)
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds nuw %struct._play, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %14)
  %15 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %15)
  br label %16

16:                                               ; preds = %5, %1
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
  %19 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr @ncol, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 8
  %10 = load i32, ptr %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %3, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i32, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %14)
  %16 = load i32, ptr %3, align 4
  %17 = load i32, ptr @ncol, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %8
  %20 = call i32 @putchar(i32 noundef 44)
  br label %21

21:                                               ; preds = %19, %8
  br label %4, !llvm.loop !14

22:                                               ; preds = %4
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
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct._list, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  call void @show_move(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct._list, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %2, align 8
  br label %3, !llvm.loop !15

13:                                               ; preds = %3
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
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct._play, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  call void @show_data(ptr noundef %10)
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct._play, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %13)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds nuw %struct._play, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  call void @show_list(ptr noundef %18)
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds nuw %struct._play, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %2, align 8
  br label %3, !llvm.loop !16

22:                                               ; preds = %3
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

6:                                                ; preds = %16, %1
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds nuw %struct._list, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = call i32 @equal_data(ptr noundef %12, ptr noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct._list, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %4, align 8
  br label %6, !llvm.loop !17

20:                                               ; preds = %9, %6
  %21 = load ptr, ptr %4, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, ptr %2, align 4
  br label %25

24:                                               ; preds = %20
  store i32 1, ptr %2, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, ptr %2, align 4
  ret i32 %26
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

11:                                               ; preds = %15, %2
  %12 = load i32, ptr %5, align 4
  %13 = load i32, ptr %4, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, ptr @nrow, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  store i32 %16, ptr %20, align 4
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %5, align 4
  br label %11, !llvm.loop !18

23:                                               ; preds = %11, %27
  %24 = load i32, ptr %5, align 4
  %25 = load i32, ptr @ncol, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, ptr %3, align 4
  %29 = load ptr, ptr %6, align 8
  %30 = load i32, ptr %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %29, i64 %31
  store i32 %28, ptr %32, align 4
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
  %12 = load ptr, ptr %5, align 8
  store i32 1, ptr %12, align 4
  %13 = call ptr @malloc(i64 noundef 16) #3
  store ptr %13, ptr %10, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = getelementptr inbounds nuw %struct._list, ptr %14, i32 0, i32 1
  store ptr null, ptr %15, align 8
  %16 = load ptr, ptr %10, align 8
  store ptr %16, ptr %11, align 8
  store i32 0, ptr %7, align 4
  br label %17

17:                                               ; preds = %91, %3
  %18 = load i32, ptr %7, align 4
  %19 = load i32, ptr @nrow, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %94

21:                                               ; preds = %17
  store i32 0, ptr %8, align 4
  br label %22

22:                                               ; preds = %87, %21
  %23 = load i32, ptr %8, align 4
  %24 = load i32, ptr @ncol, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %91

26:                                               ; preds = %22
  %27 = load i32, ptr %7, align 4
  %28 = load i32, ptr %8, align 4
  %29 = call ptr @make_data(i32 noundef %27, i32 noundef %28)
  store ptr %29, ptr %9, align 8
  %30 = load ptr, ptr %9, align 8
  %31 = load ptr, ptr %4, align 8
  call void @melt_data(ptr noundef %30, ptr noundef %31)
  %32 = load ptr, ptr %9, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = call i32 @equal_data(ptr noundef %32, ptr noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %78, label %36

36:                                               ; preds = %26
  %37 = call ptr @malloc(i64 noundef 16) #3
  %38 = load ptr, ptr %11, align 8
  %39 = getelementptr inbounds nuw %struct._list, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 8
  %40 = load ptr, ptr %9, align 8
  %41 = call ptr @copy_data(ptr noundef %40)
  %42 = load ptr, ptr %11, align 8
  %43 = getelementptr inbounds nuw %struct._list, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw %struct._list, ptr %44, i32 0, i32 0
  store ptr %41, ptr %45, align 8
  %46 = load ptr, ptr %11, align 8
  %47 = getelementptr inbounds nuw %struct._list, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds nuw %struct._list, ptr %48, i32 0, i32 1
  store ptr null, ptr %49, align 8
  %50 = load ptr, ptr %11, align 8
  %51 = getelementptr inbounds nuw %struct._list, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  store ptr %52, ptr %11, align 8
  %53 = load ptr, ptr %5, align 8
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %36
  %57 = load ptr, ptr %9, align 8
  %58 = call i32 @get_value(ptr noundef %57)
  %59 = load ptr, ptr %5, align 8
  store i32 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %56, %36
  %61 = load ptr, ptr %6, align 8
  %62 = load i32, ptr %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %5, align 8
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load i32, ptr @ncol, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, ptr %8, align 4
  %71 = load i32, ptr @nrow, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, ptr %7, align 4
  %73 = load ptr, ptr %9, align 8
  %74 = call i32 @in_wanted(ptr noundef %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %68
  %77 = load ptr, ptr %6, align 8
  store i32 2, ptr %77, align 4
  br label %87

78:                                               ; preds = %26
  %79 = load i32, ptr %8, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, ptr @nrow, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, ptr %7, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, ptr @ncol, align 4
  %86 = sub nsw i32 %85, 1
  store i32 %86, ptr %8, align 4
  br label %87

87:                                               ; preds = %60, %64, %76, %68, %84
  %88 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %88)
  %89 = load i32, ptr %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %8, align 4
  br label %22, !llvm.loop !20

91:                                               ; preds = %22
  %92 = load i32, ptr %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %7, align 4
  br label %17, !llvm.loop !21

94:                                               ; preds = %17
  %95 = load ptr, ptr %10, align 8
  %96 = getelementptr inbounds nuw %struct._list, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8
  store ptr %97, ptr %11, align 8
  %98 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %98)
  %99 = load ptr, ptr %11, align 8
  %100 = icmp ne ptr %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load ptr, ptr %5, align 8
  %103 = load i32, ptr %102, align 4
  %104 = sub nsw i32 1, %103
  %105 = load ptr, ptr %5, align 8
  store i32 %104, ptr %105, align 4
  br label %106

106:                                              ; preds = %101, %94
  %107 = load ptr, ptr %11, align 8
  ret ptr %107
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
  %8 = load ptr, ptr %5, align 8
  store ptr %8, ptr %6, align 8
  store ptr null, ptr @game_tree, align 8
  %9 = call ptr @make_data(i32 noundef 0, i32 noundef 0)
  store ptr %9, ptr %4, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds nuw i32, ptr %10, i64 0
  %12 = load i32, ptr %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %64, %1
  %15 = load ptr, ptr %4, align 8
  %16 = call i32 @next_data(ptr noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 8
  %20 = call i32 @valid_data(ptr noundef %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = call ptr @malloc(i64 noundef 32) #3
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds nuw %struct._play, ptr %24, i32 0, i32 3
  store ptr %23, ptr %25, align 8
  %26 = load ptr, ptr @game_tree, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds nuw %struct._play, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr @game_tree, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load ptr, ptr %4, align 8
  %34 = call ptr @copy_data(ptr noundef %33)
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds nuw %struct._play, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds nuw %struct._play, ptr %37, i32 0, i32 1
  store ptr %34, ptr %38, align 8
  %39 = load ptr, ptr %4, align 8
  %40 = call ptr @make_list(ptr noundef %39, ptr noundef %3, ptr noundef %2)
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds nuw %struct._play, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds nuw %struct._play, ptr %43, i32 0, i32 2
  store ptr %40, ptr %44, align 8
  %45 = load i32, ptr %3, align 4
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds nuw %struct._play, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds nuw %struct._play, ptr %48, i32 0, i32 0
  store i32 %45, ptr %49, align 8
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds nuw %struct._play, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds nuw %struct._play, ptr %52, i32 0, i32 3
  store ptr null, ptr %53, align 8
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds nuw %struct._play, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  store ptr %56, ptr %6, align 8
  %57 = load i32, ptr %2, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %64

59:                                               ; preds = %32
  %60 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %60)
  %61 = load i32, ptr @nrow, align 4
  %62 = load i32, ptr @ncol, align 4
  %63 = call ptr @make_data(i32 noundef %61, i32 noundef %62)
  store ptr %63, ptr %4, align 8
  br label %64

64:                                               ; preds = %32, %59, %18
  br label %14, !llvm.loop !22

65:                                               ; preds = %14
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds nuw %struct._play, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8
  store ptr %68, ptr %6, align 8
  %69 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %69)
  %70 = load ptr, ptr %6, align 8
  ret ptr %70
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
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  store ptr null, ptr %10, align 8
  %11 = load ptr, ptr %6, align 8
  store ptr %11, ptr %7, align 8
  store i32 0, ptr %3, align 4
  br label %12

12:                                               ; preds = %61, %1
  %13 = load i32, ptr %3, align 4
  %14 = load i32, ptr @nrow, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %12
  store i32 0, ptr %4, align 4
  br label %17

17:                                               ; preds = %57, %16
  %18 = load i32, ptr %4, align 4
  %19 = load i32, ptr @ncol, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load i32, ptr %3, align 4
  %23 = load i32, ptr %4, align 4
  %24 = call ptr @make_data(i32 noundef %22, i32 noundef %23)
  store ptr %24, ptr %5, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = load ptr, ptr %2, align 8
  call void @melt_data(ptr noundef %25, ptr noundef %26)
  %27 = load ptr, ptr %5, align 8
  %28 = load ptr, ptr %2, align 8
  %29 = call i32 @equal_data(ptr noundef %27, ptr noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %21
  %32 = call ptr @malloc(i64 noundef 16) #3
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds nuw %struct._list, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 8
  %35 = load ptr, ptr %5, align 8
  %36 = call ptr @copy_data(ptr noundef %35)
  %37 = load ptr, ptr %7, align 8
  %38 = getelementptr inbounds nuw %struct._list, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds nuw %struct._list, ptr %39, i32 0, i32 0
  store ptr %36, ptr %40, align 8
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds nuw %struct._list, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds nuw %struct._list, ptr %43, i32 0, i32 1
  store ptr null, ptr %44, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds nuw %struct._list, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  store ptr %47, ptr %7, align 8
  br label %57

48:                                               ; preds = %21
  %49 = load i32, ptr %4, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, ptr @nrow, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, ptr %3, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, ptr @ncol, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, ptr %4, align 4
  br label %57

57:                                               ; preds = %54, %31
  %58 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %58)
  %59 = load i32, ptr %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %4, align 4
  br label %17, !llvm.loop !23

61:                                               ; preds = %17
  %62 = load i32, ptr %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %3, align 4
  br label %12, !llvm.loop !24

64:                                               ; preds = %12
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds nuw %struct._list, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8
  store ptr %67, ptr %7, align 8
  %68 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %68)
  %69 = load ptr, ptr %7, align 8
  store ptr %69, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %26

7:                                                ; preds = %1, %18
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %.critedge

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct._list, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @get_value(ptr noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %.critedge

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %struct._list, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %3, align 8
  br label %7, !llvm.loop !25

.critedge:                                        ; preds = %7, %12
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds nuw %struct._list, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @copy_data(ptr noundef %24)
  store ptr %25, ptr %2, align 8
  br label %26

26:                                               ; preds = %.critedge, %6
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
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %2, align 8
  br label %4, !llvm.loop !26

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw %struct._play, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call ptr @get_good_move(ptr noundef %16)
  store ptr %17, ptr %3, align 8
  %18 = load ptr, ptr %3, align 8
  ret ptr %18
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
  %9 = load ptr, ptr %8, align 8
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %24, %4
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %17, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %10
  %25 = load ptr, ptr %8, align 8
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4
  br label %10, !llvm.loop !28

28:                                               ; preds = %10
  %29 = load ptr, ptr %5, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = load i32, ptr %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %29, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %7, align 8
  store i32 %34, ptr %35, align 4
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
  %15 = load i32, ptr %2, align 4
  switch i32 %15, label %107 [
    i32 1, label %16
    i32 2, label %47
    i32 3, label %81
  ]

16:                                               ; preds = %0
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %18 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %20 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %22 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %4)
  br label %23

23:                                               ; preds = %27, %16
  %24 = load i32, ptr @nrow, align 4
  %25 = load i32, ptr %4, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %107

27:                                               ; preds = %23
  %28 = load i32, ptr @nrow, align 4
  %29 = load i32, ptr @ncol, align 4
  %30 = call ptr @make_data(i32 noundef %28, i32 noundef %29)
  call void @make_wanted(ptr noundef %30)
  %31 = call ptr @make_play(i32 noundef 0)
  store ptr %31, ptr %9, align 8
  %32 = load ptr, ptr %9, align 8
  %33 = call ptr @get_winning_move(ptr noundef %32)
  store ptr %33, ptr %6, align 8
  %34 = load ptr, ptr %6, align 8
  %35 = load i32, ptr @nrow, align 4
  %36 = load i32, ptr @ncol, align 4
  %37 = call ptr @make_data(i32 noundef %35, i32 noundef %36)
  call void @get_real_move(ptr noundef %34, ptr noundef %37, ptr noundef %2, ptr noundef %3)
  %38 = load i32, ptr @nrow, align 4
  %39 = load i32, ptr @ncol, align 4
  %40 = load i32, ptr %2, align 4
  %41 = load i32, ptr %3, align 4
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41)
  %43 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %43)
  %44 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %44)
  %45 = load i32, ptr @nrow, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @nrow, align 4
  br label %23, !llvm.loop !29

47:                                               ; preds = %0
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %49 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %50 = call ptr @make_play(i32 noundef 1)
  store ptr %50, ptr %9, align 8
  store i32 0, ptr %5, align 4
  %51 = load i32, ptr @nrow, align 4
  %52 = load i32, ptr @ncol, align 4
  %53 = call ptr @make_data(i32 noundef %51, i32 noundef %52)
  store ptr %53, ptr %7, align 8
  br label %54

54:                                               ; preds = %74, %47
  %55 = load ptr, ptr %7, align 8
  %56 = icmp ne ptr %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load ptr, ptr %7, align 8
  %59 = load ptr, ptr %9, align 8
  %60 = call ptr @where(ptr noundef %58, ptr noundef %59)
  %61 = call ptr @get_good_move(ptr noundef %60)
  store ptr %61, ptr %8, align 8
  %62 = load ptr, ptr %8, align 8
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load ptr, ptr %8, align 8
  %66 = load ptr, ptr %7, align 8
  call void @get_real_move(ptr noundef %65, ptr noundef %66, ptr noundef %2, ptr noundef %3)
  %67 = load i32, ptr %5, align 4
  %68 = load i32, ptr %2, align 4
  %69 = load i32, ptr %3, align 4
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %67, i32 noundef %68, i32 noundef %69)
  %71 = load i32, ptr %5, align 4
  %72 = sub nsw i32 1, %71
  store i32 %72, ptr %5, align 4
  %73 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %73)
  br label %74

74:                                               ; preds = %64, %57
  %75 = load ptr, ptr %8, align 8
  store ptr %75, ptr %7, align 8
  br label %54, !llvm.loop !30

76:                                               ; preds = %54
  %77 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %77)
  %78 = load i32, ptr %5, align 4
  %79 = sub nsw i32 1, %78
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %79)
  br label %107

81:                                               ; preds = %0
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %83 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %84 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %85 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %86 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %87 = call ptr @make_play(i32 noundef 1)
  store ptr %87, ptr %9, align 8
  %88 = load ptr, ptr %9, align 8
  store ptr %88, ptr %10, align 8
  br label %89

89:                                               ; preds = %101, %81
  %90 = load ptr, ptr %10, align 8
  %91 = icmp ne ptr %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load ptr, ptr %10, align 8
  %94 = getelementptr inbounds nuw %struct._play, ptr %93, i32 0, i32 0
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load ptr, ptr %10, align 8
  %99 = getelementptr inbounds nuw %struct._play, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 8
  call void @show_move(ptr noundef %100)
  br label %101

101:                                              ; preds = %97, %92
  %102 = load ptr, ptr %10, align 8
  %103 = getelementptr inbounds nuw %struct._play, ptr %102, i32 0, i32 3
  %104 = load ptr, ptr %103, align 8
  store ptr %104, ptr %10, align 8
  br label %89, !llvm.loop !31

105:                                              ; preds = %89
  %106 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %106)
  br label %107

107:                                              ; preds = %23, %105, %76, %0
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
