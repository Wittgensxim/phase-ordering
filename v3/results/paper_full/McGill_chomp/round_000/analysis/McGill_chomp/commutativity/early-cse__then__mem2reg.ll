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
  br label %3

3:                                                ; preds = %12, %1
  %.01 = phi i32 [ %2, %1 ], [ %9, %12 ]
  %.0 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %4 = load i32, ptr @ncol, align 4
  %5 = icmp ne i32 %.0, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %.01
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %14

12:                                               ; preds = %6
  %13 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !12

14:                                               ; preds = %11, %3
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp eq i32 %.0, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
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

7:                                                ; preds = %13, %2
  %.0 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %8 = icmp ne i32 %.0, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = load i32, ptr @nrow, align 4
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds i32, ptr %6, i64 %11
  store i32 %10, ptr %12, align 4
  br label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %.0, 1
  br label %7, !llvm.loop !18

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %22, %15
  %.1 = phi i32 [ %.0, %15 ], [ %23, %22 ]
  %17 = load i32, ptr @ncol, align 4
  %18 = icmp ne i32 %.1, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = sext i32 %.1 to i64
  %21 = getelementptr inbounds i32, ptr %6, i64 %20
  store i32 %0, ptr %21, align 4
  br label %22

22:                                               ; preds = %19
  %23 = add nsw i32 %.1, 1
  br label %16, !llvm.loop !19

24:                                               ; preds = %16
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 1, ptr %1, align 4
  %4 = call ptr @malloc(i64 noundef 16) #3
  %5 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  store ptr null, ptr %5, align 8
  br label %6

6:                                                ; preds = %60, %3
  %.04 = phi i32 [ 0, %3 ], [ %61, %60 ]
  %.0 = phi ptr [ %4, %3 ], [ %.1, %60 ]
  %7 = load i32, ptr @nrow, align 4
  %8 = icmp ne i32 %.04, %7
  br i1 %8, label %9, label %62

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %57, %9
  %.15 = phi i32 [ %.04, %9 ], [ %.3, %57 ]
  %.01 = phi i32 [ 0, %9 ], [ %58, %57 ]
  %.1 = phi ptr [ %.0, %9 ], [ %.2, %57 ]
  %11 = load i32, ptr @ncol, align 4
  %12 = icmp ne i32 %.01, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  %14 = call ptr @make_data(i32 noundef %.15, i32 noundef %.01)
  call void @melt_data(ptr noundef %14, ptr noundef %0)
  %15 = call i32 @equal_data(ptr noundef %14, ptr noundef %0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = call ptr @malloc(i64 noundef 16) #3
  %19 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %18, ptr %19, align 8
  %20 = call ptr @copy_data(ptr noundef %14)
  %21 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  store ptr %20, ptr %22, align 8
  %23 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds nuw %struct._list, ptr %24, i32 0, i32 1
  store ptr null, ptr %25, align 8
  %26 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = load i32, ptr %1, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = call i32 @get_value(ptr noundef %14)
  store i32 %31, ptr %1, align 4
  br label %32

32:                                               ; preds = %30, %17
  %33 = load i32, ptr %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %1, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, ptr @ncol, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, ptr @nrow, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @in_wanted(ptr noundef %14)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 2, ptr %2, align 4
  br label %46

46:                                               ; preds = %45, %38
  br label %47

47:                                               ; preds = %46, %35, %32
  %.26 = phi i32 [ %.15, %32 ], [ %42, %46 ], [ %.15, %35 ]
  %.12 = phi i32 [ %.01, %32 ], [ %40, %46 ], [ %.01, %35 ]
  br label %56

48:                                               ; preds = %13
  %49 = icmp eq i32 %.01, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i32, ptr @nrow, align 4
  %52 = sub nsw i32 %51, 1
  br label %53

53:                                               ; preds = %50, %48
  %.4 = phi i32 [ %52, %50 ], [ %.15, %48 ]
  %54 = load i32, ptr @ncol, align 4
  %55 = sub nsw i32 %54, 1
  br label %56

56:                                               ; preds = %53, %47
  %.3 = phi i32 [ %.4, %53 ], [ %.26, %47 ]
  %.23 = phi i32 [ %55, %53 ], [ %.12, %47 ]
  %.2 = phi ptr [ %.1, %53 ], [ %27, %47 ]
  call void @free(ptr noundef %14)
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %.23, 1
  br label %10, !llvm.loop !20

59:                                               ; preds = %10
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %.15, 1
  br label %6, !llvm.loop !21

62:                                               ; preds = %6
  %63 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8
  call void @free(ptr noundef %4)
  %65 = icmp ne ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, ptr %1, align 4
  %68 = sub nsw i32 1, %67
  store i32 %68, ptr %1, align 4
  br label %69

69:                                               ; preds = %66, %62
  ret ptr %64
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

8:                                                ; preds = %46, %1
  %.01 = phi ptr [ %4, %1 ], [ %.12, %46 ]
  %.0 = phi ptr [ %5, %1 ], [ %.1, %46 ]
  %9 = call i32 @next_data(ptr noundef %.0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %8
  %12 = call i32 @valid_data(ptr noundef %.0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = call ptr @malloc(i64 noundef 32) #3
  %16 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  store ptr %15, ptr %16, align 8
  %17 = load ptr, ptr @game_tree, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr @game_tree, align 8
  br label %22

22:                                               ; preds = %19, %14
  %23 = call ptr @copy_data(ptr noundef %.0)
  %24 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw %struct._play, ptr %25, i32 0, i32 1
  store ptr %23, ptr %26, align 8
  %27 = call ptr @make_list(ptr noundef %.0, ptr noundef %3, ptr noundef %2)
  %28 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds nuw %struct._play, ptr %29, i32 0, i32 2
  store ptr %27, ptr %30, align 8
  %31 = load i32, ptr %3, align 4
  %32 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  store i32 %31, ptr %33, align 8
  %34 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds nuw %struct._play, ptr %35, i32 0, i32 3
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = load i32, ptr %2, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %22
  call void @free(ptr noundef %.0)
  %42 = load i32, ptr @nrow, align 4
  %43 = load i32, ptr @ncol, align 4
  %44 = call ptr @make_data(i32 noundef %42, i32 noundef %43)
  br label %45

45:                                               ; preds = %41, %22
  %.2 = phi ptr [ %44, %41 ], [ %.0, %22 ]
  br label %46

46:                                               ; preds = %45, %11
  %.12 = phi ptr [ %38, %45 ], [ %.01, %11 ]
  %.1 = phi ptr [ %.2, %45 ], [ %.0, %11 ]
  br label %8, !llvm.loop !22

47:                                               ; preds = %8
  %48 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  call void @free(ptr noundef %4)
  ret ptr %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef 16) #3
  %3 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 8
  br label %4

4:                                                ; preds = %38, %1
  %.01 = phi i32 [ 0, %1 ], [ %39, %38 ]
  %.0 = phi ptr [ %2, %1 ], [ %.1, %38 ]
  %5 = load i32, ptr @nrow, align 4
  %6 = icmp ne i32 %.01, %5
  br i1 %6, label %7, label %40

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %35, %7
  %.04 = phi i32 [ 0, %7 ], [ %36, %35 ]
  %.12 = phi i32 [ %.01, %7 ], [ %.23, %35 ]
  %.1 = phi ptr [ %.0, %7 ], [ %.2, %35 ]
  %9 = load i32, ptr @ncol, align 4
  %10 = icmp ne i32 %.04, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = call ptr @make_data(i32 noundef %.12, i32 noundef %.04)
  call void @melt_data(ptr noundef %12, ptr noundef %0)
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = call ptr @malloc(i64 noundef 16) #3
  %17 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %16, ptr %17, align 8
  %18 = call ptr @copy_data(ptr noundef %12)
  %19 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  store ptr %18, ptr %20, align 8
  %21 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw %struct._list, ptr %22, i32 0, i32 1
  store ptr null, ptr %23, align 8
  %24 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  br label %34

26:                                               ; preds = %11
  %27 = icmp eq i32 %.04, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i32, ptr @nrow, align 4
  %30 = sub nsw i32 %29, 1
  br label %31

31:                                               ; preds = %28, %26
  %.3 = phi i32 [ %30, %28 ], [ %.12, %26 ]
  %32 = load i32, ptr @ncol, align 4
  %33 = sub nsw i32 %32, 1
  br label %34

34:                                               ; preds = %31, %15
  %.15 = phi i32 [ %33, %31 ], [ %.04, %15 ]
  %.23 = phi i32 [ %.3, %31 ], [ %.12, %15 ]
  %.2 = phi ptr [ %.1, %31 ], [ %25, %15 ]
  call void @free(ptr noundef %12)
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %.15, 1
  br label %8, !llvm.loop !23

37:                                               ; preds = %8
  br label %38

38:                                               ; preds = %37
  %39 = add nsw i32 %.12, 1
  br label %4, !llvm.loop !24

40:                                               ; preds = %4
  %41 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  call void @free(ptr noundef %2)
  store ptr %42, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %21

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %15, %4
  %.01 = phi ptr [ %0, %4 ], [ %17, %15 ]
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
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  br label %5, !llvm.loop !25

18:                                               ; preds = %13
  %19 = load ptr, ptr %.01, align 8
  %20 = call ptr @copy_data(ptr noundef %19)
  br label %21

21:                                               ; preds = %18, %3
  %.0 = phi ptr [ null, %3 ], [ %20, %18 ]
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
  %6 = load i32, ptr %3, align 4
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
  switch i32 2, label %78 [
    i32 1, label %8
    i32 2, label %37
    i32 3, label %59
  ]

8:                                                ; preds = %0
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %10 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %12 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %14 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %3)
  br label %15

15:                                               ; preds = %33, %8
  %16 = load i32, ptr @nrow, align 4
  %17 = load i32, ptr %3, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %36

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
  br label %33

33:                                               ; preds = %19
  %34 = load i32, ptr @nrow, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @nrow, align 4
  br label %15, !llvm.loop !29

36:                                               ; preds = %15
  br label %78

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
  br label %78

59:                                               ; preds = %0
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %61 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %63 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %64 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %65 = call ptr @make_play(i32 noundef 1)
  br label %66

66:                                               ; preds = %74, %59
  %.0 = phi ptr [ %65, %59 ], [ %76, %74 ]
  %67 = icmp ne ptr %.0, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %66
  %69 = load i32, ptr %.0, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8
  call void @show_move(ptr noundef %73)
  br label %74

74:                                               ; preds = %71, %68
  %75 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %76 = load ptr, ptr %75, align 8
  br label %66, !llvm.loop !31

77:                                               ; preds = %66
  call void @dump_play(ptr noundef %65)
  br label %78

78:                                               ; preds = %77, %56, %36, %0
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
