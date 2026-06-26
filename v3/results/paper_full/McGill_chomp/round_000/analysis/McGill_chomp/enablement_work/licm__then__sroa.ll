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
  %2 = load i32, ptr @ncol, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 4
  %5 = call ptr @malloc(i64 noundef %4) #3
  %6 = load i32, ptr @ncol, align 4
  br label %7

7:                                                ; preds = %11, %1
  %8 = phi i32 [ %9, %11 ], [ %6, %1 ]
  %9 = add nsw i32 %8, -1
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds i32, ptr %5, i64 %15
  store i32 %14, ptr %16, align 4
  br label %7, !llvm.loop !7

17:                                               ; preds = %7
  %.lcssa = phi i32 [ %9, %7 ]
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %27, %1
  %3 = phi i32 [ %28, %27 ], [ 0, %1 ]
  %4 = phi i32 [ %29, %27 ], [ 0, %1 ]
  %5 = load i32, ptr @ncol, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = icmp ne i32 %3, 0
  %9 = xor i1 %8, true
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ false, %2 ], [ %9, %7 ]
  br i1 %11, label %12, label %30

12:                                               ; preds = %10
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr @nrow, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = sext i32 %4 to i64
  %20 = getelementptr inbounds i32, ptr %0, i64 %19
  store i32 0, ptr %20, align 4
  %21 = add nsw i32 %4, 1
  br label %27

22:                                               ; preds = %12
  %23 = sext i32 %4 to i64
  %24 = getelementptr inbounds i32, ptr %0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i32 [ 1, %22 ], [ %3, %18 ]
  %29 = phi i32 [ %4, %22 ], [ %21, %18 ]
  br label %2, !llvm.loop !9

30:                                               ; preds = %10
  %.lcssa2 = phi i32 [ %3, %10 ]
  %.lcssa = phi i32 [ %4, %10 ]
  ret i32 %.lcssa2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %22, %2
  %5 = phi i32 [ %6, %22 ], [ %3, %2 ]
  %6 = add nsw i32 %5, -1
  %7 = icmp ne i32 %5, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds i32, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = sext i32 %6 to i64
  %18 = getelementptr inbounds i32, ptr %1, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %6 to i64
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  store i32 %19, ptr %21, align 4
  br label %22

22:                                               ; preds = %16, %8
  br label %4, !llvm.loop !10

23:                                               ; preds = %4
  %.lcssa = phi i32 [ %6, %4 ]
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %18, %2
  %5 = phi i32 [ %6, %18 ], [ %3, %2 ]
  %6 = add nsw i32 %5, -1
  %7 = icmp ne i32 %5, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds i32, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %11, %14
  br label %16

16:                                               ; preds = %8, %4
  %17 = phi i1 [ false, %4 ], [ %15, %8 ]
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %4, !llvm.loop !11

19:                                               ; preds = %16
  %.lcssa = phi i32 [ %6, %16 ]
  %20 = icmp slt i32 %.lcssa, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = phi i32 [ %17, %14 ], [ %2, %1 ]
  %6 = phi i32 [ %18, %14 ], [ 0, %1 ]
  %7 = icmp ne i32 %6, %3
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %4
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, %5
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  %.lcssa4 = phi i32 [ %5, %8 ]
  %.lcssa1 = phi i32 [ %6, %8 ]
  br label %19

14:                                               ; preds = %8
  %15 = sext i32 %6 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = add nsw i32 %6, 1
  br label %4, !llvm.loop !12

.loopexit:                                        ; preds = %4
  %.lcssa3 = phi i32 [ %5, %4 ]
  %.lcssa = phi i32 [ %6, %4 ]
  br label %19

19:                                               ; preds = %.loopexit, %13
  %.0 = phi i32 [ %.lcssa1, %13 ], [ %.lcssa, %.loopexit ]
  %20 = load i32, ptr @ncol, align 4
  %21 = icmp eq i32 %.0, %20
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(ptr noundef %0) #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @dump_list(ptr noundef %5)
  %6 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %7)
  call void @free(ptr noundef %0)
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_play(ptr noundef %0) #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  call void @dump_play(ptr noundef %5)
  %6 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  call void @dump_list(ptr noundef %7)
  %8 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %9)
  call void @free(ptr noundef %0)
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_value(ptr noundef %0) #0 {
  %2 = load ptr, ptr @game_tree, align 8
  br label %3

3:                                                ; preds = %10, %1
  %4 = phi ptr [ %12, %10 ], [ %2, %1 ]
  %5 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  br label %3, !llvm.loop !13

13:                                               ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  %14 = getelementptr inbounds nuw %struct._play, ptr %.lcssa, i32 0, i32 0
  %15 = load i32, ptr %14, align 8
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi i32 [ %7, %16 ], [ 0, %1 ]
  %4 = load i32, ptr @ncol, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = add nsw i32 %3, 1
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  %12 = load i32, ptr @ncol, align 4
  %13 = icmp ne i32 %7, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = call i32 @putchar(i32 noundef 44)
  br label %16

16:                                               ; preds = %14, %6
  br label %2, !llvm.loop !14

17:                                               ; preds = %2
  %.lcssa = phi i32 [ %3, %2 ]
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

declare dso_local i32 @putchar(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_move(ptr noundef %0) #0 {
  %2 = call i32 @putchar(i32 noundef 40)
  call void @show_data(ptr noundef %0)
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_list(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi ptr [ %9, %5 ], [ %0, %1 ]
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw %struct._list, ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  call void @show_move(ptr noundef %7)
  %8 = getelementptr inbounds nuw %struct._list, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  br label %2, !llvm.loop !15

10:                                               ; preds = %2
  %.lcssa = phi ptr [ %3, %2 ]
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi ptr [ %16, %5 ], [ %0, %1 ]
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %7 = getelementptr inbounds nuw %struct._play, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @show_data(ptr noundef %8)
  %9 = getelementptr inbounds nuw %struct._play, ptr %3, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %10)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %13 = getelementptr inbounds nuw %struct._play, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  call void @show_list(ptr noundef %14)
  %15 = getelementptr inbounds nuw %struct._play, ptr %3, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  br label %2, !llvm.loop !16

17:                                               ; preds = %2
  %.lcssa = phi ptr [ %3, %2 ]
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = load ptr, ptr @wanted, align 8
  br label %3

3:                                                ; preds = %12, %1
  %4 = phi ptr [ %14, %12 ], [ %2, %1 ]
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @equal_data(ptr noundef %8, ptr noundef %0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  %.lcssa1 = phi ptr [ %4, %6 ]
  br label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  br label %3, !llvm.loop !17

.loopexit:                                        ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  br label %15

15:                                               ; preds = %.loopexit, %11
  %.0 = phi ptr [ %.lcssa1, %11 ], [ %.lcssa, %.loopexit ]
  %16 = icmp eq ptr %.0, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %19

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %17
  %.03 = phi i32 [ 0, %17 ], [ 1, %18 ]
  ret i32 %.03
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = call ptr @malloc(i64 noundef %5) #3
  br label %7

7:                                                ; preds = %14, %2
  %8 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %9 = icmp ne i32 %8, %1
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, ptr @nrow, align 4
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds i32, ptr %6, i64 %12
  store i32 %11, ptr %13, align 4
  br label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %8, 1
  br label %7, !llvm.loop !18

16:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  br label %17

17:                                               ; preds = %24, %16
  %18 = phi i32 [ %25, %24 ], [ %.lcssa, %16 ]
  %19 = load i32, ptr @ncol, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds i32, ptr %6, i64 %22
  store i32 %0, ptr %23, align 4
  br label %24

24:                                               ; preds = %21
  %25 = add nsw i32 %18, 1
  br label %17, !llvm.loop !19

26:                                               ; preds = %17
  %.lcssa2 = phi i32 [ %18, %17 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 1, ptr %1, align 4
  %4 = call ptr @malloc(i64 noundef 16) #3
  %5 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  store ptr null, ptr %5, align 8
  br label %6

6:                                                ; preds = %71, %3
  %.lcssa613 = phi ptr [ %.lcssa6, %71 ], [ %4, %3 ]
  %.lcssa411 = phi ptr [ %.lcssa4, %71 ], [ undef, %3 ]
  %.lcssa10 = phi i32 [ %.lcssa, %71 ], [ undef, %3 ]
  %.lcssa28 = phi i32 [ %72, %71 ], [ 0, %3 ]
  %7 = load i32, ptr @nrow, align 4
  %8 = icmp ne i32 %.lcssa28, %7
  br i1 %8, label %9, label %73

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %68, %9
  %11 = phi ptr [ %65, %68 ], [ %.lcssa613, %9 ]
  %12 = phi ptr [ %18, %68 ], [ %.lcssa411, %9 ]
  %13 = phi i32 [ %66, %68 ], [ %.lcssa28, %9 ]
  %14 = phi i32 [ %69, %68 ], [ 0, %9 ]
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %10
  %18 = call ptr @make_data(i32 noundef %13, i32 noundef %14)
  call void @melt_data(ptr noundef %18, ptr noundef %0)
  %19 = call i32 @equal_data(ptr noundef %18, ptr noundef %0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %55, label %21

21:                                               ; preds = %17
  %22 = call ptr @malloc(i64 noundef 16) #3
  %23 = getelementptr inbounds nuw %struct._list, ptr %11, i32 0, i32 1
  store ptr %22, ptr %23, align 8
  %24 = call ptr @copy_data(ptr noundef %18)
  %25 = getelementptr inbounds nuw %struct._list, ptr %11, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds nuw %struct._list, ptr %26, i32 0, i32 0
  store ptr %24, ptr %27, align 8
  %28 = getelementptr inbounds nuw %struct._list, ptr %11, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds nuw %struct._list, ptr %29, i32 0, i32 1
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds nuw %struct._list, ptr %11, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %1, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = call i32 @get_value(ptr noundef %18)
  store i32 %36, ptr %1, align 4
  br label %37

37:                                               ; preds = %35, %21
  %38 = load i32, ptr %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %1, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32, ptr @ncol, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, ptr @nrow, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @in_wanted(ptr noundef %18)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 2, ptr %2, align 4
  br label %51

51:                                               ; preds = %50, %43
  br label %52

52:                                               ; preds = %51, %40, %37
  %53 = phi i32 [ %47, %51 ], [ %13, %40 ], [ %13, %37 ]
  %54 = phi i32 [ %45, %51 ], [ %14, %40 ], [ %14, %37 ]
  br label %64

55:                                               ; preds = %17
  %56 = icmp eq i32 %14, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, ptr @nrow, align 4
  %59 = sub nsw i32 %58, 1
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i32 [ %59, %57 ], [ %13, %55 ]
  %62 = load i32, ptr @ncol, align 4
  %63 = sub nsw i32 %62, 1
  br label %64

64:                                               ; preds = %60, %52
  %65 = phi ptr [ %11, %60 ], [ %32, %52 ]
  %66 = phi i32 [ %61, %60 ], [ %53, %52 ]
  %67 = phi i32 [ %63, %60 ], [ %54, %52 ]
  call void @free(ptr noundef %18)
  br label %68

68:                                               ; preds = %64
  %69 = add nsw i32 %67, 1
  br label %10, !llvm.loop !20

70:                                               ; preds = %10
  %.lcssa6 = phi ptr [ %11, %10 ]
  %.lcssa4 = phi ptr [ %12, %10 ]
  %.lcssa2 = phi i32 [ %13, %10 ]
  %.lcssa = phi i32 [ %14, %10 ]
  br label %71

71:                                               ; preds = %70
  %72 = add nsw i32 %.lcssa2, 1
  br label %6, !llvm.loop !21

73:                                               ; preds = %6
  %.lcssa613.lcssa = phi ptr [ %.lcssa613, %6 ]
  %.lcssa411.lcssa = phi ptr [ %.lcssa411, %6 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %6 ]
  %.lcssa28.lcssa = phi i32 [ %.lcssa28, %6 ]
  %74 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8
  call void @free(ptr noundef %4)
  %76 = icmp ne ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, ptr %1, align 4
  %79 = sub nsw i32 1, %78
  store i32 %79, ptr %1, align 4
  br label %80

80:                                               ; preds = %77, %73
  ret ptr %75
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_play(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = call ptr @malloc(i64 noundef 32) #3
  store ptr null, ptr @game_tree, align 8
  %5 = call ptr @make_data(i32 noundef 0, i32 noundef 0)
  %6 = getelementptr inbounds i32, ptr %5, i64 0
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 4
  br label %9

9:                                                ; preds = %51, %1
  %10 = phi ptr [ %52, %51 ], [ %4, %1 ]
  %11 = phi ptr [ %53, %51 ], [ %5, %1 ]
  %12 = call i32 @next_data(ptr noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %9
  %15 = call i32 @valid_data(ptr noundef %11)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = call ptr @malloc(i64 noundef 32) #3
  %19 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 3
  store ptr %18, ptr %19, align 8
  %20 = load ptr, ptr @game_tree, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr @game_tree, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = call ptr @copy_data(ptr noundef %11)
  %27 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds nuw %struct._play, ptr %28, i32 0, i32 1
  store ptr %26, ptr %29, align 8
  %30 = call ptr @make_list(ptr noundef %11, ptr noundef %3, ptr noundef %2)
  %31 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds nuw %struct._play, ptr %32, i32 0, i32 2
  store ptr %30, ptr %33, align 8
  %34 = load i32, ptr %3, align 4
  %35 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw %struct._play, ptr %36, i32 0, i32 0
  store i32 %34, ptr %37, align 8
  %38 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds nuw %struct._play, ptr %39, i32 0, i32 3
  store ptr null, ptr %40, align 8
  %41 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = load i32, ptr %2, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %49

45:                                               ; preds = %25
  call void @free(ptr noundef %11)
  %46 = load i32, ptr @nrow, align 4
  %47 = load i32, ptr @ncol, align 4
  %48 = call ptr @make_data(i32 noundef %46, i32 noundef %47)
  br label %49

49:                                               ; preds = %45, %25
  %50 = phi ptr [ %48, %45 ], [ %11, %25 ]
  br label %51

51:                                               ; preds = %49, %14
  %52 = phi ptr [ %42, %49 ], [ %10, %14 ]
  %53 = phi ptr [ %50, %49 ], [ %11, %14 ]
  br label %9, !llvm.loop !22

54:                                               ; preds = %9
  %.lcssa2 = phi ptr [ %10, %9 ]
  %.lcssa = phi ptr [ %11, %9 ]
  %55 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  call void @free(ptr noundef %4)
  ret ptr %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef 16) #3
  %3 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 8
  br label %4

4:                                                ; preds = %47, %1
  %.lcssa613 = phi ptr [ %.lcssa6, %47 ], [ %2, %1 ]
  %.lcssa411 = phi ptr [ %.lcssa4, %47 ], [ undef, %1 ]
  %.lcssa10 = phi i32 [ %.lcssa, %47 ], [ undef, %1 ]
  %.lcssa28 = phi i32 [ %48, %47 ], [ 0, %1 ]
  %5 = load i32, ptr @nrow, align 4
  %6 = icmp ne i32 %.lcssa28, %5
  br i1 %6, label %7, label %49

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %44, %7
  %9 = phi ptr [ %41, %44 ], [ %.lcssa613, %7 ]
  %10 = phi ptr [ %16, %44 ], [ %.lcssa411, %7 ]
  %11 = phi i32 [ %42, %44 ], [ %.lcssa28, %7 ]
  %12 = phi i32 [ %45, %44 ], [ 0, %7 ]
  %13 = load i32, ptr @ncol, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %8
  %16 = call ptr @make_data(i32 noundef %11, i32 noundef %12)
  call void @melt_data(ptr noundef %16, ptr noundef %0)
  %17 = call i32 @equal_data(ptr noundef %16, ptr noundef %0)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = call ptr @malloc(i64 noundef 16) #3
  %21 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  store ptr %20, ptr %21, align 8
  %22 = call ptr @copy_data(ptr noundef %16)
  %23 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds nuw %struct._list, ptr %24, i32 0, i32 0
  store ptr %22, ptr %25, align 8
  %26 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds nuw %struct._list, ptr %27, i32 0, i32 1
  store ptr null, ptr %28, align 8
  %29 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  br label %40

31:                                               ; preds = %15
  %32 = icmp eq i32 %12, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i32, ptr @nrow, align 4
  %35 = sub nsw i32 %34, 1
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %35, %33 ], [ %11, %31 ]
  %38 = load i32, ptr @ncol, align 4
  %39 = sub nsw i32 %38, 1
  br label %40

40:                                               ; preds = %36, %19
  %41 = phi ptr [ %9, %36 ], [ %30, %19 ]
  %42 = phi i32 [ %37, %36 ], [ %11, %19 ]
  %43 = phi i32 [ %39, %36 ], [ %12, %19 ]
  call void @free(ptr noundef %16)
  br label %44

44:                                               ; preds = %40
  %45 = add nsw i32 %43, 1
  br label %8, !llvm.loop !23

46:                                               ; preds = %8
  %.lcssa6 = phi ptr [ %9, %8 ]
  %.lcssa4 = phi ptr [ %10, %8 ]
  %.lcssa2 = phi i32 [ %11, %8 ]
  %.lcssa = phi i32 [ %12, %8 ]
  br label %47

47:                                               ; preds = %46
  %48 = add nsw i32 %.lcssa2, 1
  br label %4, !llvm.loop !24

49:                                               ; preds = %4
  %.lcssa613.lcssa = phi ptr [ %.lcssa613, %4 ]
  %.lcssa411.lcssa = phi ptr [ %.lcssa411, %4 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %4 ]
  %.lcssa28.lcssa = phi i32 [ %.lcssa28, %4 ]
  %50 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  call void @free(ptr noundef %2)
  store ptr %51, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %24

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %17, %4
  %6 = phi ptr [ %19, %17 ], [ %0, %4 ]
  %7 = getelementptr inbounds nuw %struct._list, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw %struct._list, ptr %6, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @get_value(ptr noundef %12)
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %10, %5
  %16 = phi i1 [ false, %5 ], [ %14, %10 ]
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds nuw %struct._list, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  br label %5, !llvm.loop !25

20:                                               ; preds = %15
  %.lcssa = phi ptr [ %6, %15 ]
  %21 = getelementptr inbounds nuw %struct._list, ptr %.lcssa, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8
  %23 = call ptr @copy_data(ptr noundef %22)
  br label %24

24:                                               ; preds = %20, %3
  %.0 = phi ptr [ null, %3 ], [ %23, %20 ]
  ret ptr %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %4 = getelementptr inbounds nuw %struct._play, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw %struct._play, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  br label %2, !llvm.loop !26

10:                                               ; preds = %2
  %.lcssa = phi ptr [ %3, %2 ]
  %11 = getelementptr inbounds nuw %struct._play, ptr %.lcssa, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @get_good_move(ptr noundef %12)
  ret ptr %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %12, %10 ], [ %1, %2 ]
  %5 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  br label %3, !llvm.loop !27

13:                                               ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  %14 = getelementptr inbounds nuw %struct._play, ptr %.lcssa, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  ret ptr %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_real_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  store i32 0, ptr %3, align 4
  br label %5

5:                                                ; preds = %15, %4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %9, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, ptr %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %3, align 4
  br label %5, !llvm.loop !28

18:                                               ; preds = %5
  %19 = load i32, ptr %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 2, ptr %1, align 4
  %8 = load i32, ptr %1, align 4
  switch i32 %8, label %88 [
    i32 1, label %9
    i32 2, label %41
    i32 3, label %67
  ]

9:                                                ; preds = %0
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %11 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %13 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %15 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %3)
  br label %16

16:                                               ; preds = %37, %9
  %17 = phi ptr [ %27, %37 ], [ undef, %9 ]
  %18 = phi ptr [ %26, %37 ], [ undef, %9 ]
  %19 = load i32, ptr @nrow, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load i32, ptr @nrow, align 4
  %24 = load i32, ptr @ncol, align 4
  %25 = call ptr @make_data(i32 noundef %23, i32 noundef %24)
  call void @make_wanted(ptr noundef %25)
  %26 = call ptr @make_play(i32 noundef 0)
  %27 = call ptr @get_winning_move(ptr noundef %26)
  %28 = load i32, ptr @nrow, align 4
  %29 = load i32, ptr @ncol, align 4
  %30 = call ptr @make_data(i32 noundef %28, i32 noundef %29)
  call void @get_real_move(ptr noundef %27, ptr noundef %30, ptr noundef %1, ptr noundef %2)
  %31 = load i32, ptr @nrow, align 4
  %32 = load i32, ptr @ncol, align 4
  %33 = load i32, ptr %1, align 4
  %34 = load i32, ptr %2, align 4
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34)
  call void @dump_play(ptr noundef %26)
  %36 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %36)
  br label %37

37:                                               ; preds = %22
  %38 = load i32, ptr @nrow, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr @nrow, align 4
  br label %16, !llvm.loop !29

40:                                               ; preds = %16
  %.lcssa10 = phi ptr [ %17, %16 ]
  %.lcssa8 = phi ptr [ %18, %16 ]
  br label %88

41:                                               ; preds = %0
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %44 = call ptr @make_play(i32 noundef 1)
  %45 = load i32, ptr @nrow, align 4
  %46 = load i32, ptr @ncol, align 4
  %47 = call ptr @make_data(i32 noundef %45, i32 noundef %46)
  br label %48

48:                                               ; preds = %62, %41
  %49 = phi i32 [ %63, %62 ], [ 0, %41 ]
  %50 = phi ptr [ %55, %62 ], [ undef, %41 ]
  %51 = phi ptr [ %55, %62 ], [ %47, %41 ]
  %52 = icmp ne ptr %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = call ptr @where(ptr noundef %51, ptr noundef %44)
  %55 = call ptr @get_good_move(ptr noundef %54)
  %56 = icmp ne ptr %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  call void @get_real_move(ptr noundef %55, ptr noundef %51, ptr noundef %1, ptr noundef %2)
  %58 = load i32, ptr %1, align 4
  %59 = load i32, ptr %2, align 4
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %49, i32 noundef %58, i32 noundef %59)
  %61 = sub nsw i32 1, %49
  call void @free(ptr noundef %51)
  br label %62

62:                                               ; preds = %57, %53
  %63 = phi i32 [ %61, %57 ], [ %49, %53 ]
  br label %48, !llvm.loop !30

64:                                               ; preds = %48
  %.lcssa6 = phi i32 [ %49, %48 ]
  %.lcssa4 = phi ptr [ %50, %48 ]
  %.lcssa2 = phi ptr [ %51, %48 ]
  call void @dump_play(ptr noundef %44)
  %65 = sub nsw i32 1, %.lcssa6
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %65)
  br label %88

67:                                               ; preds = %0
  %68 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %69 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %71 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %72 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %73 = call ptr @make_play(i32 noundef 1)
  br label %74

74:                                               ; preds = %84, %67
  %75 = phi ptr [ %86, %84 ], [ %73, %67 ]
  %76 = icmp ne ptr %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = getelementptr inbounds nuw %struct._play, ptr %75, i32 0, i32 0
  %79 = load i32, ptr %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = getelementptr inbounds nuw %struct._play, ptr %75, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  call void @show_move(ptr noundef %83)
  br label %84

84:                                               ; preds = %81, %77
  %85 = getelementptr inbounds nuw %struct._play, ptr %75, i32 0, i32 3
  %86 = load ptr, ptr %85, align 8
  br label %74, !llvm.loop !31

87:                                               ; preds = %74
  %.lcssa = phi ptr [ %75, %74 ]
  call void @dump_play(ptr noundef %73)
  br label %88

88:                                               ; preds = %87, %64, %40, %0
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
