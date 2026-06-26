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

7:                                                ; preds = %10, %1
  %.0 = phi i32 [ %6, %1 ], [ %8, %10 ]
  %8 = add nsw i32 %.0, -1
  %9 = icmp ne i32 %.0, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %8 to i64
  %15 = getelementptr inbounds i32, ptr %5, i64 %14
  store i32 %13, ptr %15, align 4
  br label %7, !llvm.loop !7

16:                                               ; preds = %7
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %22, %1
  %.01 = phi i32 [ 0, %1 ], [ %.12, %22 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %22 ]
  %3 = load i32, ptr @ncol, align 4
  %4 = icmp ne i32 %.01, %3
  %5 = icmp ne i32 %.0, 0
  %6 = xor i1 %5, true
  %or.cond = select i1 %4, i1 %6, i1 false
  br i1 %or.cond, label %7, label %.critedge

7:                                                ; preds = %2
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @nrow, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = sext i32 %.01 to i64
  %15 = getelementptr inbounds i32, ptr %0, i64 %14
  store i32 0, ptr %15, align 4
  %16 = add nsw i32 %.01, 1
  br label %22

17:                                               ; preds = %7
  %18 = sext i32 %.01 to i64
  %19 = getelementptr inbounds i32, ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %17, %13
  %.12 = phi i32 [ %16, %13 ], [ %.01, %17 ]
  %.1 = phi i32 [ %.0, %13 ], [ 1, %17 ]
  br label %2, !llvm.loop !9

.critedge:                                        ; preds = %2
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %21, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %21 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp ne i32 %.0, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = sext i32 %5 to i64
  %17 = getelementptr inbounds i32, ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds i32, ptr %0, i64 %19
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

4:                                                ; preds = %7, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %7 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp ne i32 %.0, 0
  br i1 %6, label %7, label %.critedge

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %4, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %4, %7
  %15 = icmp slt i32 %5, 0
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  br label %3

3:                                                ; preds = %11, %1
  %.01 = phi i32 [ %2, %1 ], [ %14, %11 ]
  %.0 = phi i32 [ 0, %1 ], [ %15, %11 ]
  %4 = load i32, ptr @ncol, align 4
  %5 = icmp ne i32 %.0, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %.01
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !12

16:                                               ; preds = %6, %3
  %17 = load i32, ptr @ncol, align 4
  %18 = icmp eq i32 %.0, %17
  %19 = zext i1 %18 to i32
  ret i32 %19
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

3:                                                ; preds = %9, %1
  %.0 = phi ptr [ %2, %1 ], [ %11, %9 ]
  %4 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @equal_data(ptr noundef %5, ptr noundef %0)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  br label %3, !llvm.loop !13

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 0
  %14 = load i32, ptr %13, align 8
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %15, %1
  %.0 = phi i32 [ 0, %1 ], [ %6, %15 ]
  %3 = load i32, ptr @ncol, align 4
  %4 = icmp ne i32 %.0, %3
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = add nsw i32 %.0, 1
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %9)
  %11 = load i32, ptr @ncol, align 4
  %12 = icmp ne i32 %6, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = call i32 @putchar(i32 noundef 44)
  br label %15

15:                                               ; preds = %13, %5
  br label %2, !llvm.loop !14

16:                                               ; preds = %2
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

2:                                                ; preds = %4, %1
  %.0 = phi ptr [ %0, %1 ], [ %8, %4 ]
  %3 = icmp ne ptr %.0, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  call void @show_move(ptr noundef %6)
  %7 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  br label %2, !llvm.loop !15

9:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi ptr [ %0, %1 ], [ %15, %4 ]
  %3 = icmp ne ptr %.0, null
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %6 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  call void @show_data(ptr noundef %7)
  %8 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %9)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %12 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  call void @show_list(ptr noundef %13)
  %14 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  br label %2, !llvm.loop !16

16:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = load ptr, ptr @wanted, align 8
  br label %3

3:                                                ; preds = %9, %1
  %.01 = phi ptr [ %2, %1 ], [ %11, %9 ]
  %magicptr = ptrtoint ptr %.01 to i64
  %cond = icmp eq i64 %magicptr, 0
  br i1 %cond, label %14, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  br label %3, !llvm.loop !17

12:                                               ; preds = %4
  %13 = icmp eq ptr %.01, null
  %spec.select = select i1 %13, i32 0, i32 1
  br label %14

14:                                               ; preds = %12, %3
  %.0 = phi i32 [ %spec.select, %12 ], [ 0, %3 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = call ptr @malloc(i64 noundef %5) #3
  br label %7

7:                                                ; preds = %9, %2
  %.0 = phi i32 [ 0, %2 ], [ %13, %9 ]
  %8 = icmp ne i32 %.0, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = load i32, ptr @nrow, align 4
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds i32, ptr %6, i64 %11
  store i32 %10, ptr %12, align 4
  %13 = add nsw i32 %.0, 1
  br label %7, !llvm.loop !18

14:                                               ; preds = %7, %17
  %.1 = phi i32 [ %20, %17 ], [ %.0, %7 ]
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 %.1, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = sext i32 %.1 to i64
  %19 = getelementptr inbounds i32, ptr %6, i64 %18
  store i32 %0, ptr %19, align 4
  %20 = add nsw i32 %.1, 1
  br label %14, !llvm.loop !19

21:                                               ; preds = %14
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 1, ptr %1, align 4
  %4 = call ptr @malloc(i64 noundef 16) #3
  %5 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  store ptr null, ptr %5, align 8
  br label %6

6:                                                ; preds = %54, %3
  %.04 = phi i32 [ 0, %3 ], [ %55, %54 ]
  %.0 = phi ptr [ %4, %3 ], [ %.1, %54 ]
  %7 = load i32, ptr @nrow, align 4
  %8 = icmp ne i32 %.04, %7
  br i1 %8, label %9, label %56

9:                                                ; preds = %6, %52
  %.15 = phi i32 [ %.3, %52 ], [ %.04, %6 ]
  %.01 = phi i32 [ %53, %52 ], [ 0, %6 ]
  %.1 = phi ptr [ %.2, %52 ], [ %.0, %6 ]
  %10 = load i32, ptr @ncol, align 4
  %11 = icmp ne i32 %.01, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = call ptr @make_data(i32 noundef %.15, i32 noundef %.01)
  call void @melt_data(ptr noundef %13, ptr noundef %0)
  %14 = call i32 @equal_data(ptr noundef %13, ptr noundef %0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %12
  %17 = call ptr @malloc(i64 noundef 16) #3
  %18 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %17, ptr %18, align 8
  %19 = call ptr @copy_data(ptr noundef %13)
  %20 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds nuw %struct._list, ptr %21, i32 0, i32 0
  store ptr %19, ptr %22, align 8
  %23 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds nuw %struct._list, ptr %24, i32 0, i32 1
  store ptr null, ptr %25, align 8
  %26 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = load i32, ptr %1, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = call i32 @get_value(ptr noundef %13)
  store i32 %31, ptr %1, align 4
  br label %32

32:                                               ; preds = %30, %16
  %33 = load i32, ptr %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %1, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32, ptr @ncol, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, ptr @nrow, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @in_wanted(ptr noundef %13)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  store i32 2, ptr %2, align 4
  br label %52

46:                                               ; preds = %12
  %47 = icmp eq i32 %.01, 0
  %48 = load i32, ptr @nrow, align 4
  %49 = sub nsw i32 %48, 1
  %.4 = select i1 %47, i32 %49, i32 %.15
  %50 = load i32, ptr @ncol, align 4
  %51 = sub nsw i32 %50, 1
  br label %52

52:                                               ; preds = %32, %35, %45, %38, %46
  %.3 = phi i32 [ %.4, %46 ], [ %.15, %32 ], [ %.15, %35 ], [ %42, %45 ], [ %42, %38 ]
  %.23 = phi i32 [ %51, %46 ], [ %.01, %32 ], [ %.01, %35 ], [ %40, %45 ], [ %40, %38 ]
  %.2 = phi ptr [ %.1, %46 ], [ %27, %38 ], [ %27, %45 ], [ %27, %35 ], [ %27, %32 ]
  call void @free(ptr noundef %13)
  %53 = add nsw i32 %.23, 1
  br label %9, !llvm.loop !20

54:                                               ; preds = %9
  %55 = add nsw i32 %.15, 1
  br label %6, !llvm.loop !21

56:                                               ; preds = %6
  %57 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  call void @free(ptr noundef %4)
  %59 = icmp ne ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, ptr %1, align 4
  %62 = sub nsw i32 1, %61
  store i32 %62, ptr %1, align 4
  br label %63

63:                                               ; preds = %60, %56
  ret ptr %58
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

9:                                                ; preds = %47, %1
  %.01 = phi ptr [ %4, %1 ], [ %.12, %47 ]
  %.0 = phi ptr [ %5, %1 ], [ %.1, %47 ]
  %10 = call i32 @next_data(ptr noundef %.0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = call i32 @valid_data(ptr noundef %.0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = call ptr @malloc(i64 noundef 32) #3
  %17 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  store ptr %16, ptr %17, align 8
  %18 = load ptr, ptr @game_tree, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr @game_tree, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = call ptr @copy_data(ptr noundef %.0)
  %25 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds nuw %struct._play, ptr %26, i32 0, i32 1
  store ptr %24, ptr %27, align 8
  %28 = call ptr @make_list(ptr noundef %.0, ptr noundef %3, ptr noundef %2)
  %29 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds nuw %struct._play, ptr %30, i32 0, i32 2
  store ptr %28, ptr %31, align 8
  %32 = load i32, ptr %3, align 4
  %33 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds nuw %struct._play, ptr %34, i32 0, i32 0
  store i32 %32, ptr %35, align 8
  %36 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds nuw %struct._play, ptr %37, i32 0, i32 3
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = load i32, ptr %2, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %47

43:                                               ; preds = %23
  call void @free(ptr noundef %.0)
  %44 = load i32, ptr @nrow, align 4
  %45 = load i32, ptr @ncol, align 4
  %46 = call ptr @make_data(i32 noundef %44, i32 noundef %45)
  br label %47

47:                                               ; preds = %23, %43, %12
  %.12 = phi ptr [ %.01, %12 ], [ %40, %43 ], [ %40, %23 ]
  %.1 = phi ptr [ %.0, %12 ], [ %46, %43 ], [ %.0, %23 ]
  br label %9, !llvm.loop !22

48:                                               ; preds = %9
  %49 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  call void @free(ptr noundef %4)
  ret ptr %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef 16) #3
  %3 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 8
  br label %4

4:                                                ; preds = %34, %1
  %.01 = phi i32 [ 0, %1 ], [ %35, %34 ]
  %.0 = phi ptr [ %2, %1 ], [ %.1, %34 ]
  %5 = load i32, ptr @nrow, align 4
  %6 = icmp ne i32 %.01, %5
  br i1 %6, label %7, label %36

7:                                                ; preds = %4, %32
  %.04 = phi i32 [ %33, %32 ], [ 0, %4 ]
  %.12 = phi i32 [ %.23, %32 ], [ %.01, %4 ]
  %.1 = phi ptr [ %.2, %32 ], [ %.0, %4 ]
  %8 = load i32, ptr @ncol, align 4
  %9 = icmp ne i32 %.04, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = call ptr @make_data(i32 noundef %.12, i32 noundef %.04)
  call void @melt_data(ptr noundef %11, ptr noundef %0)
  %12 = call i32 @equal_data(ptr noundef %11, ptr noundef %0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = call ptr @malloc(i64 noundef 16) #3
  %16 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %15, ptr %16, align 8
  %17 = call ptr @copy_data(ptr noundef %11)
  %18 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds nuw %struct._list, ptr %19, i32 0, i32 0
  store ptr %17, ptr %20, align 8
  %21 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw %struct._list, ptr %22, i32 0, i32 1
  store ptr null, ptr %23, align 8
  %24 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  br label %32

26:                                               ; preds = %10
  %27 = icmp eq i32 %.04, 0
  %28 = load i32, ptr @nrow, align 4
  %29 = sub nsw i32 %28, 1
  %.3 = select i1 %27, i32 %29, i32 %.12
  %30 = load i32, ptr @ncol, align 4
  %31 = sub nsw i32 %30, 1
  br label %32

32:                                               ; preds = %26, %14
  %.15 = phi i32 [ %31, %26 ], [ %.04, %14 ]
  %.23 = phi i32 [ %.3, %26 ], [ %.12, %14 ]
  %.2 = phi ptr [ %.1, %26 ], [ %25, %14 ]
  call void @free(ptr noundef %11)
  %33 = add nsw i32 %.15, 1
  br label %7, !llvm.loop !23

34:                                               ; preds = %7
  %35 = add nsw i32 %.12, 1
  br label %4, !llvm.loop !24

36:                                               ; preds = %4
  %37 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  call void @free(ptr noundef %2)
  store ptr %38, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1, %12
  %.01 = phi ptr [ %14, %12 ], [ %0, %1 ]
  %4 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %.critedge

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @get_value(ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %.critedge

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  br label %3, !llvm.loop !25

.critedge:                                        ; preds = %3, %7
  %15 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = call ptr @copy_data(ptr noundef %16)
  br label %18

18:                                               ; preds = %1, %.critedge
  %.0 = phi ptr [ %17, %.critedge ], [ null, %1 ]
  ret ptr %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %6, %1
  %.0 = phi ptr [ %0, %1 ], [ %8, %6 ]
  %3 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  br label %2, !llvm.loop !26

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = call ptr @get_good_move(ptr noundef %11)
  ret ptr %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %9, %2
  %.0 = phi ptr [ %1, %2 ], [ %11, %9 ]
  %4 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @equal_data(ptr noundef %5, ptr noundef %0)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  br label %3, !llvm.loop !27

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  ret ptr %14
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
  switch i32 %8, label %79 [
    i32 1, label %9
    i32 2, label %37
    i32 3, label %59
  ]

9:                                                ; preds = %0
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %11 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %13 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %15 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %3)
  br label %16

16:                                               ; preds = %20, %9
  %17 = load i32, ptr @nrow, align 4
  %18 = load i32, ptr %3, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %16
  %21 = load i32, ptr @nrow, align 4
  %22 = load i32, ptr @ncol, align 4
  %23 = call ptr @make_data(i32 noundef %21, i32 noundef %22)
  call void @make_wanted(ptr noundef %23)
  %24 = call ptr @make_play(i32 noundef 0)
  %25 = call ptr @get_winning_move(ptr noundef %24)
  %26 = load i32, ptr @nrow, align 4
  %27 = load i32, ptr @ncol, align 4
  %28 = call ptr @make_data(i32 noundef %26, i32 noundef %27)
  call void @get_real_move(ptr noundef %25, ptr noundef %28, ptr noundef %1, ptr noundef %2)
  %29 = load i32, ptr @nrow, align 4
  %30 = load i32, ptr @ncol, align 4
  %31 = load i32, ptr %1, align 4
  %32 = load i32, ptr %2, align 4
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32)
  call void @dump_play(ptr noundef %24)
  %34 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %34)
  %35 = load i32, ptr @nrow, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @nrow, align 4
  br label %16, !llvm.loop !29

37:                                               ; preds = %0
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %40 = call ptr @make_play(i32 noundef 1)
  %41 = load i32, ptr @nrow, align 4
  %42 = load i32, ptr @ncol, align 4
  %43 = call ptr @make_data(i32 noundef %41, i32 noundef %42)
  br label %44

44:                                               ; preds = %55, %37
  %.02 = phi ptr [ %43, %37 ], [ %48, %55 ]
  %.01 = phi i32 [ 0, %37 ], [ %.1, %55 ]
  %45 = icmp ne ptr %.02, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %44
  %47 = call ptr @where(ptr noundef %.02, ptr noundef %40)
  %48 = call ptr @get_good_move(ptr noundef %47)
  %49 = icmp ne ptr %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  call void @get_real_move(ptr noundef %48, ptr noundef %.02, ptr noundef %1, ptr noundef %2)
  %51 = load i32, ptr %1, align 4
  %52 = load i32, ptr %2, align 4
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %.01, i32 noundef %51, i32 noundef %52)
  %54 = sub nsw i32 1, %.01
  call void @free(ptr noundef %.02)
  br label %55

55:                                               ; preds = %50, %46
  %.1 = phi i32 [ %54, %50 ], [ %.01, %46 ]
  br label %44, !llvm.loop !30

56:                                               ; preds = %44
  call void @dump_play(ptr noundef %40)
  %57 = sub nsw i32 1, %.01
  %58 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %57)
  br label %79

59:                                               ; preds = %0
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %61 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %63 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %64 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %65 = call ptr @make_play(i32 noundef 1)
  br label %66

66:                                               ; preds = %75, %59
  %.0 = phi ptr [ %65, %59 ], [ %77, %75 ]
  %67 = icmp ne ptr %.0, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %66
  %69 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 0
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8
  call void @show_move(ptr noundef %74)
  br label %75

75:                                               ; preds = %72, %68
  %76 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  br label %66, !llvm.loop !31

78:                                               ; preds = %66
  call void @dump_play(ptr noundef %65)
  br label %79

79:                                               ; preds = %16, %78, %56, %0
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
