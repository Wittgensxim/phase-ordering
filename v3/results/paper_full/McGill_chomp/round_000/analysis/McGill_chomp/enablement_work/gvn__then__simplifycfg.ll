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
  store i32 %12, ptr %4, align 4
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

5:                                                ; preds = %24, %1
  %6 = phi i32 [ %25, %24 ], [ 0, %1 ]
  %7 = phi ptr [ %26, %24 ], [ %0, %1 ]
  %8 = phi i32 [ %27, %24 ], [ 0, %1 ]
  %9 = load i32, ptr @ncol, align 4
  %10 = icmp ne i32 %6, %9
  %11 = icmp ne i32 %8, 0
  %12 = xor i1 %11, true
  %or.cond = select i1 %10, i1 %12, i1 false
  br i1 %or.cond, label %13, label %.critedge

13:                                               ; preds = %5
  %14 = sext i32 %6 to i64
  %15 = getelementptr inbounds i32, ptr %7, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr @nrow, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds i32, ptr %0, i64 %14
  store i32 0, ptr %20, align 4
  %21 = add nsw i32 %6, 1
  store i32 %21, ptr %3, align 4
  br label %24

22:                                               ; preds = %13
  %23 = add nsw i32 %16, 1
  store i32 %23, ptr %15, align 4
  store i32 1, ptr %4, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %6, %22 ], [ %21, %19 ]
  %26 = phi ptr [ %7, %22 ], [ %0, %19 ]
  %27 = phi i32 [ 1, %22 ], [ %8, %19 ]
  br label %5, !llvm.loop !9

.critedge:                                        ; preds = %5
  ret i32 %8
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

7:                                                ; preds = %11, %2
  %8 = phi i32 [ %6, %2 ], [ %9, %11 ]
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %.critedge

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i32, ptr %1, i64 %12
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %7, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %7, %11
  %18 = icmp slt i32 %9, 0
  %19 = zext i1 %18 to i32
  ret i32 %19
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
  br label %6

6:                                                ; preds = %15, %1
  %7 = phi i32 [ %13, %15 ], [ %5, %1 ]
  %8 = phi i32 [ %16, %15 ], [ 0, %1 ]
  %9 = icmp ne i32 %8, %.pre
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %7
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  store i32 %13, ptr %3, align 4
  %16 = add nsw i32 %8, 1
  store i32 %16, ptr %4, align 4
  br label %6, !llvm.loop !12

17:                                               ; preds = %10, %6
  %18 = icmp eq i32 %8, %.pre
  %19 = zext i1 %18 to i32
  ret i32 %19
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
  store ptr %14, ptr %3, align 8
  br label %5, !llvm.loop !13

15:                                               ; preds = %5
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
  store i32 %9, ptr %3, align 4
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
  store ptr %9, ptr %2, align 8
  br label %3, !llvm.loop !15

10:                                               ; preds = %3
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
  store ptr %16, ptr %2, align 8
  br label %3, !llvm.loop !16

17:                                               ; preds = %3
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

6:                                                ; preds = %12, %1
  %7 = phi ptr [ %14, %12 ], [ %5, %1 ]
  %magicptr = ptrtoint ptr %7 to i64
  %cond = icmp eq i64 %magicptr, 0
  br i1 %cond, label %17, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %7, align 8
  %10 = call i32 @equal_data(ptr noundef %9, ptr noundef %0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw %struct._list, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %4, align 8
  br label %6, !llvm.loop !17

15:                                               ; preds = %8
  %16 = icmp eq ptr %7, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %6, %15
  store i32 0, ptr %2, align 4
  br label %19

18:                                               ; preds = %15
  store i32 1, ptr %2, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi i32 [ 1, %18 ], [ 0, %17 ]
  ret i32 %20
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
  store i32 %18, ptr %5, align 4
  br label %11, !llvm.loop !18

19:                                               ; preds = %11, %23
  %20 = phi i32 [ %26, %23 ], [ %1, %11 ]
  %21 = load i32, ptr @ncol, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds i32, ptr %10, i64 %24
  store i32 %0, ptr %25, align 4
  %26 = add nsw i32 %20, 1
  store i32 %26, ptr %5, align 4
  br label %19, !llvm.loop !19

27:                                               ; preds = %19
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

14:                                               ; preds = %89, %3
  %15 = phi ptr [ %24, %89 ], [ %1, %3 ]
  %16 = phi ptr [ %25, %89 ], [ %1, %3 ]
  %17 = phi ptr [ %26, %89 ], [ %0, %3 ]
  %18 = phi ptr [ %29, %89 ], [ %1, %3 ]
  %19 = phi i32 [ %90, %89 ], [ 0, %3 ]
  %20 = load i32, ptr @nrow, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %91

22:                                               ; preds = %14
  store i32 0, ptr %8, align 4
  br label %23

23:                                               ; preds = %81, %22
  %24 = phi ptr [ %84, %81 ], [ %15, %22 ]
  %25 = phi ptr [ %85, %81 ], [ %16, %22 ]
  %26 = phi ptr [ %35, %81 ], [ %17, %22 ]
  %27 = phi i32 [ %86, %81 ], [ %19, %22 ]
  %28 = phi i32 [ %88, %81 ], [ 0, %22 ]
  %29 = phi ptr [ %87, %81 ], [ %18, %22 ]
  %30 = load i32, ptr @ncol, align 4
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %89

32:                                               ; preds = %23
  %33 = call ptr @make_data(i32 noundef %27, i32 noundef %28)
  store ptr %33, ptr %9, align 8
  call void @melt_data(ptr noundef %33, ptr noundef %26)
  %34 = load ptr, ptr %9, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = call i32 @equal_data(ptr noundef %34, ptr noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %71, label %38

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
  br label %67

56:                                               ; preds = %51
  %57 = load i32, ptr %1, align 4
  %58 = icmp eq i32 %57, 0
  %.pre1.pre3 = load ptr, ptr %9, align 8
  br i1 %58, label %59, label %67

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

67:                                               ; preds = %59, %66, %._crit_edge, %56
  %.pre1 = phi ptr [ %.pre1.pre, %._crit_edge ], [ %.pre1.pre3, %56 ], [ %.pre1.pre3, %66 ], [ %.pre1.pre3, %59 ]
  %68 = phi ptr [ %24, %._crit_edge ], [ %1, %56 ], [ %1, %66 ], [ %1, %59 ]
  %69 = phi ptr [ %52, %._crit_edge ], [ %1, %56 ], [ %1, %66 ], [ %1, %59 ]
  %70 = phi i32 [ %27, %._crit_edge ], [ %27, %56 ], [ %63, %66 ], [ %63, %59 ]
  %.pre2 = load i32, ptr %8, align 4
  br label %81

71:                                               ; preds = %32
  %72 = load i32, ptr %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, ptr @nrow, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, ptr %7, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i32 [ %76, %74 ], [ %27, %71 ]
  %79 = load i32, ptr @ncol, align 4
  %80 = sub nsw i32 %79, 1
  store i32 %80, ptr %8, align 4
  br label %81

81:                                               ; preds = %77, %67
  %82 = phi i32 [ %80, %77 ], [ %.pre2, %67 ]
  %83 = phi ptr [ %34, %77 ], [ %.pre1, %67 ]
  %84 = phi ptr [ %24, %77 ], [ %68, %67 ]
  %85 = phi ptr [ %25, %77 ], [ %69, %67 ]
  %86 = phi i32 [ %78, %77 ], [ %70, %67 ]
  %87 = phi ptr [ %29, %77 ], [ %69, %67 ]
  call void @free(ptr noundef %83)
  %88 = add nsw i32 %82, 1
  store i32 %88, ptr %8, align 4
  br label %23, !llvm.loop !20

89:                                               ; preds = %23
  %90 = add nsw i32 %27, 1
  store i32 %90, ptr %7, align 4
  br label %14, !llvm.loop !21

91:                                               ; preds = %14
  %92 = load ptr, ptr %13, align 8
  store ptr %92, ptr %11, align 8
  call void @free(ptr noundef %12)
  %93 = icmp ne ptr %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, ptr %18, align 4
  %96 = sub nsw i32 1, %95
  store i32 %96, ptr %18, align 4
  %.pre = load ptr, ptr %11, align 8
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi ptr [ %.pre, %94 ], [ null, %91 ]
  ret ptr %98
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

11:                                               ; preds = %44, %1
  %12 = phi ptr [ %45, %44 ], [ %8, %1 ]
  %13 = call i32 @next_data(ptr noundef %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 8
  %17 = call i32 @valid_data(ptr noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

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

44:                                               ; preds = %26, %40, %15
  %45 = phi ptr [ %16, %15 ], [ %43, %40 ], [ %16, %26 ]
  br label %11, !llvm.loop !22

46:                                               ; preds = %11
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds nuw %struct._play, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  store ptr %49, ptr %6, align 8
  call void @free(ptr noundef %47)
  ret ptr %49
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
  %11 = phi ptr [ %17, %51 ], [ %0, %1 ]
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
  %52 = add nsw i32 %18, 1
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
  br label %19

6:                                                ; preds = %1, %15
  %7 = phi ptr [ %16, %15 ], [ %0, %1 ]
  %8 = getelementptr inbounds nuw %struct._list, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %.critedge

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8
  %13 = call i32 @get_value(ptr noundef %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %.critedge

15:                                               ; preds = %11
  %16 = load ptr, ptr %8, align 8
  store ptr %16, ptr %3, align 8
  br label %6, !llvm.loop !25

.critedge:                                        ; preds = %6, %11
  %17 = load ptr, ptr %7, align 8
  %18 = call ptr @copy_data(ptr noundef %17)
  store ptr %18, ptr %2, align 8
  br label %19

19:                                               ; preds = %.critedge, %5
  %20 = phi ptr [ %18, %.critedge ], [ null, %5 ]
  ret ptr %20
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
  store ptr %14, ptr %4, align 8
  br label %5, !llvm.loop !27

15:                                               ; preds = %5
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
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %17 = call ptr @make_play(i32 noundef 1)
  store ptr %17, ptr %9, align 8
  store i32 0, ptr %5, align 4
  %18 = load i32, ptr @nrow, align 4
  %19 = load i32, ptr @ncol, align 4
  %20 = call ptr @make_data(i32 noundef %18, i32 noundef %19)
  store ptr %20, ptr %7, align 8
  br label %21

21:                                               ; preds = %34, %0
  %22 = phi i32 [ %35, %34 ], [ 0, %0 ]
  %23 = phi ptr [ %27, %34 ], [ %20, %0 ]
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = call ptr @where(ptr noundef %23, ptr noundef %17)
  %27 = call ptr @get_good_move(ptr noundef %26)
  store ptr %27, ptr %8, align 8
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  call void @get_real_move(ptr noundef %27, ptr noundef %23, ptr noundef %2, ptr noundef %3)
  %30 = load i32, ptr %2, align 4
  %31 = load i32, ptr %3, align 4
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %22, i32 noundef %30, i32 noundef %31)
  %33 = sub nsw i32 1, %22
  store i32 %33, ptr %5, align 4
  call void @free(ptr noundef %23)
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %33, %29 ], [ %22, %25 ]
  store ptr %27, ptr %7, align 8
  br label %21, !llvm.loop !29

36:                                               ; preds = %21
  call void @dump_play(ptr noundef %17)
  %37 = sub nsw i32 1, %22
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %37)
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
