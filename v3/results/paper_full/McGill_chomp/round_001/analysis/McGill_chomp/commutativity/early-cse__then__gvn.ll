; ModuleID = 'results\paper_full\McGill_chomp\round_000\output.ll'
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
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds i32, ptr %5, i64 %11
  store i32 %13, ptr %14, align 4
  br label %7, !llvm.loop !7

15:                                               ; preds = %7
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %20, %1
  %.01 = phi i32 [ 0, %1 ], [ %.12, %20 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %20 ]
  %3 = load i32, ptr @ncol, align 4
  %4 = icmp ne i32 %.01, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp ne i32 %.0, 0
  %7 = xor i1 %6, true
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i1 [ false, %2 ], [ %7, %5 ]
  br i1 %9, label %10, label %21

10:                                               ; preds = %8
  %11 = sext i32 %.01 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @nrow, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  store i32 0, ptr %12, align 4
  %17 = add nsw i32 %.01, 1
  br label %20

18:                                               ; preds = %10
  %19 = add nsw i32 %13, 1
  store i32 %19, ptr %12, align 4
  br label %20

20:                                               ; preds = %18, %16
  %.12 = phi i32 [ %17, %16 ], [ %.01, %18 ]
  %.1 = phi i32 [ %.0, %16 ], [ 1, %18 ]
  br label %2, !llvm.loop !9

21:                                               ; preds = %8
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %15, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %15 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp ne i32 %.0, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i32, ptr %1, i64 %8
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 %12, ptr %9, align 4
  br label %15

15:                                               ; preds = %14, %7
  br label %4, !llvm.loop !10

16:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %16, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %16 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp ne i32 %.0, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i32, ptr %1, i64 %8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br label %14

14:                                               ; preds = %7, %4
  %15 = phi i1 [ false, %4 ], [ %13, %7 ]
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %4, !llvm.loop !11

17:                                               ; preds = %14
  %18 = icmp slt i32 %5, 0
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %.pre = load i32, ptr @ncol, align 4
  br label %3

3:                                                ; preds = %11, %1
  %.01 = phi i32 [ %2, %1 ], [ %8, %11 ]
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %4 = icmp ne i32 %.0, %.pre
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, %.01
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %13

11:                                               ; preds = %5
  %12 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !12

13:                                               ; preds = %10, %3
  %14 = icmp eq i32 %.0, %.pre
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(ptr noundef %0) #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @dump_list(ptr noundef %5)
  %6 = load ptr, ptr %0, align 8
  call void @free(ptr noundef %6)
  call void @free(ptr noundef %0)
  br label %7

7:                                                ; preds = %3, %1
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
  %13 = load i32, ptr %.0, align 8
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %.pre1 = load i32, ptr @ncol, align 4
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi i32 [ %.pre1, %1 ], [ %16, %15 ]
  %.0 = phi i32 [ 0, %1 ], [ %6, %15 ]
  %4 = icmp ne i32 %.0, %3
  br i1 %4, label %5, label %17

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
  %.pre = load i32, ptr @ncol, align 4
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i32 [ %.pre, %13 ], [ %6, %5 ]
  br label %2, !llvm.loop !14

17:                                               ; preds = %2
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
  %.0 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %3 = icmp ne ptr %.0, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = load ptr, ptr %.0, align 8
  call void @show_move(ptr noundef %5)
  %6 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  br label %2, !llvm.loop !15

8:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi ptr [ %0, %1 ], [ %14, %4 ]
  %3 = icmp ne ptr %.0, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %6 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  call void @show_data(ptr noundef %7)
  %8 = load i32, ptr %.0, align 8
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %8)
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %11 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  call void @show_list(ptr noundef %12)
  %13 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  br label %2, !llvm.loop !16

15:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = load ptr, ptr @wanted, align 8
  br label %3

3:                                                ; preds = %10, %1
  %.01 = phi ptr [ %2, %1 ], [ %12, %10 ]
  %4 = icmp ne ptr %.01, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = load ptr, ptr %.01, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  br label %3, !llvm.loop !17

13:                                               ; preds = %9, %3
  %14 = icmp eq ptr %.01, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %17

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %15
  %.0 = phi i32 [ 0, %15 ], [ 1, %16 ]
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

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %18, %14
  %.1 = phi i32 [ %1, %14 ], [ %21, %18 ]
  %16 = load i32, ptr @ncol, align 4
  %17 = icmp ne i32 %.1, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = sext i32 %.1 to i64
  %20 = getelementptr inbounds i32, ptr %6, i64 %19
  store i32 %0, ptr %20, align 4
  %21 = add nsw i32 %.1, 1
  br label %15, !llvm.loop !19

22:                                               ; preds = %15
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 1, ptr %1, align 4
  %4 = call ptr @malloc(i64 noundef 16) #3
  %5 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  store ptr null, ptr %5, align 8
  br label %6

6:                                                ; preds = %55, %3
  %.04 = phi i32 [ 0, %3 ], [ %56, %55 ]
  %.0 = phi ptr [ %4, %3 ], [ %.1, %55 ]
  %7 = load i32, ptr @nrow, align 4
  %8 = icmp ne i32 %.04, %7
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %53, %9
  %.15 = phi i32 [ %.04, %9 ], [ %.3, %53 ]
  %.01 = phi i32 [ 0, %9 ], [ %54, %53 ]
  %.1 = phi ptr [ %.0, %9 ], [ %.2, %53 ]
  %11 = load i32, ptr @ncol, align 4
  %12 = icmp ne i32 %.01, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %10
  %14 = call ptr @make_data(i32 noundef %.15, i32 noundef %.01)
  call void @melt_data(ptr noundef %14, ptr noundef %0)
  %15 = call i32 @equal_data(ptr noundef %14, ptr noundef %0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %13
  %18 = call ptr @malloc(i64 noundef 16) #3
  %19 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %18, ptr %19, align 8
  %20 = call ptr @copy_data(ptr noundef %14)
  %21 = load ptr, ptr %19, align 8
  store ptr %20, ptr %21, align 8
  %22 = load ptr, ptr %19, align 8
  %23 = getelementptr inbounds nuw %struct._list, ptr %22, i32 0, i32 1
  store ptr null, ptr %23, align 8
  %24 = load ptr, ptr %19, align 8
  %25 = load i32, ptr %1, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 @get_value(ptr noundef %14)
  store i32 %28, ptr %1, align 4
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi i32 [ %28, %27 ], [ %25, %17 ]
  %31 = load i32, ptr %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %33
  %36 = load i32, ptr @ncol, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, ptr @nrow, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @in_wanted(ptr noundef %14)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 2, ptr %2, align 4
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %33, %29
  %.26 = phi i32 [ %.15, %29 ], [ %39, %43 ], [ %.15, %33 ]
  %.12 = phi i32 [ %.01, %29 ], [ %37, %43 ], [ %.01, %33 ]
  br label %53

45:                                               ; preds = %13
  %46 = icmp eq i32 %.01, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, ptr @nrow, align 4
  %49 = sub nsw i32 %48, 1
  br label %50

50:                                               ; preds = %47, %45
  %.4 = phi i32 [ %49, %47 ], [ %.15, %45 ]
  %51 = load i32, ptr @ncol, align 4
  %52 = sub nsw i32 %51, 1
  br label %53

53:                                               ; preds = %50, %44
  %.3 = phi i32 [ %.4, %50 ], [ %.26, %44 ]
  %.23 = phi i32 [ %52, %50 ], [ %.12, %44 ]
  %.2 = phi ptr [ %.1, %50 ], [ %24, %44 ]
  call void @free(ptr noundef %14)
  %54 = add nsw i32 %.23, 1
  br label %10, !llvm.loop !20

55:                                               ; preds = %10
  %56 = add nsw i32 %.15, 1
  br label %6, !llvm.loop !21

57:                                               ; preds = %6
  %58 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %4)
  %59 = icmp ne ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, ptr %1, align 4
  %62 = sub nsw i32 1, %61
  store i32 %62, ptr %1, align 4
  br label %63

63:                                               ; preds = %60, %57
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
  %6 = load i32, ptr %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4
  br label %8

8:                                                ; preds = %39, %1
  %.01 = phi ptr [ %4, %1 ], [ %.12, %39 ]
  %.0 = phi ptr [ %5, %1 ], [ %.1, %39 ]
  %9 = call i32 @next_data(ptr noundef %.0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = call i32 @valid_data(ptr noundef %.0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = call ptr @malloc(i64 noundef 32) #3
  %16 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  store ptr %15, ptr %16, align 8
  %17 = load ptr, ptr @game_tree, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store ptr %15, ptr @game_tree, align 8
  br label %20

20:                                               ; preds = %19, %14
  %21 = call ptr @copy_data(ptr noundef %.0)
  %22 = load ptr, ptr %16, align 8
  %23 = getelementptr inbounds nuw %struct._play, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 8
  %24 = call ptr @make_list(ptr noundef %.0, ptr noundef %3, ptr noundef %2)
  %25 = load ptr, ptr %16, align 8
  %26 = getelementptr inbounds nuw %struct._play, ptr %25, i32 0, i32 2
  store ptr %24, ptr %26, align 8
  %27 = load i32, ptr %3, align 4
  %28 = load ptr, ptr %16, align 8
  store i32 %27, ptr %28, align 8
  %29 = load ptr, ptr %16, align 8
  %30 = getelementptr inbounds nuw %struct._play, ptr %29, i32 0, i32 3
  store ptr null, ptr %30, align 8
  %31 = load ptr, ptr %16, align 8
  %32 = load i32, ptr %2, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  call void @free(ptr noundef %.0)
  %35 = load i32, ptr @nrow, align 4
  %36 = load i32, ptr @ncol, align 4
  %37 = call ptr @make_data(i32 noundef %35, i32 noundef %36)
  br label %38

38:                                               ; preds = %34, %20
  %.2 = phi ptr [ %37, %34 ], [ %.0, %20 ]
  br label %39

39:                                               ; preds = %38, %11
  %.12 = phi ptr [ %31, %38 ], [ %.01, %11 ]
  %.1 = phi ptr [ %.2, %38 ], [ %.0, %11 ]
  br label %8, !llvm.loop !22

40:                                               ; preds = %8
  %41 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  call void @free(ptr noundef %4)
  ret ptr %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef 16) #3
  %3 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 8
  br label %4

4:                                                ; preds = %33, %1
  %.01 = phi i32 [ 0, %1 ], [ %34, %33 ]
  %.0 = phi ptr [ %2, %1 ], [ %.1, %33 ]
  %5 = load i32, ptr @nrow, align 4
  %6 = icmp ne i32 %.01, %5
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %31, %7
  %.04 = phi i32 [ 0, %7 ], [ %32, %31 ]
  %.12 = phi i32 [ %.01, %7 ], [ %.23, %31 ]
  %.1 = phi ptr [ %.0, %7 ], [ %.2, %31 ]
  %9 = load i32, ptr @ncol, align 4
  %10 = icmp ne i32 %.04, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = call ptr @make_data(i32 noundef %.12, i32 noundef %.04)
  call void @melt_data(ptr noundef %12, ptr noundef %0)
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = call ptr @malloc(i64 noundef 16) #3
  %17 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %16, ptr %17, align 8
  %18 = call ptr @copy_data(ptr noundef %12)
  %19 = load ptr, ptr %17, align 8
  store ptr %18, ptr %19, align 8
  %20 = load ptr, ptr %17, align 8
  %21 = getelementptr inbounds nuw %struct._list, ptr %20, i32 0, i32 1
  store ptr null, ptr %21, align 8
  %22 = load ptr, ptr %17, align 8
  br label %31

23:                                               ; preds = %11
  %24 = icmp eq i32 %.04, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i32, ptr @nrow, align 4
  %27 = sub nsw i32 %26, 1
  br label %28

28:                                               ; preds = %25, %23
  %.3 = phi i32 [ %27, %25 ], [ %.12, %23 ]
  %29 = load i32, ptr @ncol, align 4
  %30 = sub nsw i32 %29, 1
  br label %31

31:                                               ; preds = %28, %15
  %.15 = phi i32 [ %30, %28 ], [ %.04, %15 ]
  %.23 = phi i32 [ %.3, %28 ], [ %.12, %15 ]
  %.2 = phi ptr [ %.1, %28 ], [ %22, %15 ]
  call void @free(ptr noundef %12)
  %32 = add nsw i32 %.15, 1
  br label %8, !llvm.loop !23

33:                                               ; preds = %8
  %34 = add nsw i32 %.12, 1
  br label %4, !llvm.loop !24

35:                                               ; preds = %4
  %36 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %2)
  store ptr %36, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %20

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %15, %4
  %.01 = phi ptr [ %0, %4 ], [ %16, %15 ]
  %6 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr %.01, align 8
  %11 = call i32 @get_value(ptr noundef %10)
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8
  br label %5, !llvm.loop !25

17:                                               ; preds = %13
  %18 = load ptr, ptr %.01, align 8
  %19 = call ptr @copy_data(ptr noundef %18)
  br label %20

20:                                               ; preds = %17, %3
  %.0 = phi ptr [ null, %3 ], [ %19, %17 ]
  ret ptr %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %6, %1
  %.0 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %3 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %2, !llvm.loop !26

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = call ptr @get_good_move(ptr noundef %9)
  ret ptr %10
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

5:                                                ; preds = %13, %4
  %6 = phi i32 [ %14, %13 ], [ 0, %4 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i32, ptr %1, i64 %7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = add nsw i32 %6, 1
  store i32 %14, ptr %3, align 4
  br label %5, !llvm.loop !28

15:                                               ; preds = %5
  store i32 %9, ptr %2, align 4
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
  switch i32 2, label %77 [
    i32 1, label %8
    i32 2, label %36
    i32 3, label %58
  ]

8:                                                ; preds = %0
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %10 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %12 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %14 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %3)
  %.pre = load i32, ptr @nrow, align 4
  br label %15

15:                                               ; preds = %19, %8
  %16 = phi i32 [ %34, %19 ], [ %.pre, %8 ]
  %17 = load i32, ptr %3, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32, ptr @ncol, align 4
  %21 = call ptr @make_data(i32 noundef %16, i32 noundef %20)
  call void @make_wanted(ptr noundef %21)
  %22 = call ptr @make_play(i32 noundef 0)
  %23 = call ptr @get_winning_move(ptr noundef %22)
  %24 = load i32, ptr @nrow, align 4
  %25 = load i32, ptr @ncol, align 4
  %26 = call ptr @make_data(i32 noundef %24, i32 noundef %25)
  call void @get_real_move(ptr noundef %23, ptr noundef %26, ptr noundef %1, ptr noundef %2)
  %27 = load i32, ptr @nrow, align 4
  %28 = load i32, ptr @ncol, align 4
  %29 = load i32, ptr %1, align 4
  %30 = load i32, ptr %2, align 4
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30)
  call void @dump_play(ptr noundef %22)
  %32 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %32)
  %33 = load i32, ptr @nrow, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @nrow, align 4
  br label %15, !llvm.loop !29

35:                                               ; preds = %15
  br label %77

36:                                               ; preds = %0
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %39 = call ptr @make_play(i32 noundef 1)
  %40 = load i32, ptr @nrow, align 4
  %41 = load i32, ptr @ncol, align 4
  %42 = call ptr @make_data(i32 noundef %40, i32 noundef %41)
  br label %43

43:                                               ; preds = %54, %36
  %.02 = phi ptr [ %42, %36 ], [ %47, %54 ]
  %.01 = phi i32 [ 0, %36 ], [ %.1, %54 ]
  %44 = icmp ne ptr %.02, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %43
  %46 = call ptr @where(ptr noundef %.02, ptr noundef %39)
  %47 = call ptr @get_good_move(ptr noundef %46)
  %48 = icmp ne ptr %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  call void @get_real_move(ptr noundef %47, ptr noundef %.02, ptr noundef %1, ptr noundef %2)
  %50 = load i32, ptr %1, align 4
  %51 = load i32, ptr %2, align 4
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %.01, i32 noundef %50, i32 noundef %51)
  %53 = sub nsw i32 1, %.01
  call void @free(ptr noundef %.02)
  br label %54

54:                                               ; preds = %49, %45
  %.1 = phi i32 [ %53, %49 ], [ %.01, %45 ]
  br label %43, !llvm.loop !30

55:                                               ; preds = %43
  call void @dump_play(ptr noundef %39)
  %56 = sub nsw i32 1, %.01
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %56)
  br label %77

58:                                               ; preds = %0
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %60 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %62 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %64 = call ptr @make_play(i32 noundef 1)
  br label %65

65:                                               ; preds = %73, %58
  %.0 = phi ptr [ %64, %58 ], [ %75, %73 ]
  %66 = icmp ne ptr %.0, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %65
  %68 = load i32, ptr %.0, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  call void @show_move(ptr noundef %72)
  br label %73

73:                                               ; preds = %70, %67
  %74 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  br label %65, !llvm.loop !31

76:                                               ; preds = %65
  call void @dump_play(ptr noundef %64)
  br label %77

77:                                               ; preds = %76, %55, %35, %0
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
