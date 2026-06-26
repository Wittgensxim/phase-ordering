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
  %4 = mul nsw i64 %3, 4
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
define dso_local range(i32 0, 2) i32 @next_data(ptr noundef %0) #0 {
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
  %.0.lcssa = phi i32 [ %.0, %8 ]
  ret i32 %.0.lcssa
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
define dso_local range(i32 0, 2) i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
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
  %.lcssa = phi i32 [ %5, %14 ]
  %18 = icmp slt i32 %.lcssa, 0
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %12, %1
  %.01 = phi i32 [ %2, %1 ], [ %9, %12 ]
  %.0 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %5 = icmp ne i32 %.0, %3
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %.01
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  %.0.lcssa3 = phi i32 [ %.0, %6 ]
  br label %14

12:                                               ; preds = %6
  %13 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !12

.loopexit:                                        ; preds = %4
  %.0.lcssa = phi i32 [ %.0, %4 ]
  br label %14

14:                                               ; preds = %.loopexit, %11
  %.04 = phi i32 [ %.0.lcssa, %.loopexit ], [ %.0.lcssa3, %11 ]
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp eq i32 %.04, %15
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
  %.0.lcssa = phi ptr [ %.0, %3 ]
  %13 = load i32, ptr %.0.lcssa, align 8
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
define dso_local range(i32 0, 2) i32 @in_wanted(ptr noundef %0) #0 {
  %2 = load ptr, ptr @wanted, align 8
  br label %3

3:                                                ; preds = %10, %1
  %.01 = phi ptr [ %2, %1 ], [ %12, %10 ]
  %4 = icmp ne ptr %.01, null
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = load ptr, ptr %.01, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  %.01.lcssa1 = phi ptr [ %.01, %5 ]
  br label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  br label %3, !llvm.loop !17

.loopexit:                                        ; preds = %3
  %.01.lcssa = phi ptr [ %.01, %3 ]
  br label %13

13:                                               ; preds = %.loopexit, %9
  %.012 = phi ptr [ %.01.lcssa, %.loopexit ], [ %.01.lcssa1, %9 ]
  %14 = icmp eq ptr %.012, null
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
  %5 = mul nsw i64 %4, 4
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
  %.0.lcssa = phi i32 [ %.0, %7 ]
  br label %16

16:                                               ; preds = %22, %15
  %.1 = phi i32 [ %.0.lcssa, %15 ], [ %23, %22 ]
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

6:                                                ; preds = %57, %3
  %.04 = phi i32 [ 0, %3 ], [ %58, %57 ]
  %.0 = phi ptr [ %4, %3 ], [ %.1.lcssa, %57 ]
  %7 = load i32, ptr @nrow, align 4
  %8 = icmp ne i32 %.04, %7
  br i1 %8, label %9, label %59

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %54, %9
  %.15 = phi i32 [ %.04, %9 ], [ %.3, %54 ]
  %.01 = phi i32 [ 0, %9 ], [ %55, %54 ]
  %.1 = phi ptr [ %.0, %9 ], [ %.2, %54 ]
  %11 = load i32, ptr @ncol, align 4
  %12 = icmp ne i32 %.01, %11
  br i1 %12, label %13, label %56

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
  %30 = load i32, ptr %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %1, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
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

44:                                               ; preds = %43, %32, %29
  %.26 = phi i32 [ %.15, %29 ], [ %39, %43 ], [ %.15, %32 ]
  %.12 = phi i32 [ %.01, %29 ], [ %37, %43 ], [ %.01, %32 ]
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
  br label %54

54:                                               ; preds = %53
  %55 = add nsw i32 %.23, 1
  br label %10, !llvm.loop !20

56:                                               ; preds = %10
  %.15.lcssa = phi i32 [ %.15, %10 ]
  %.1.lcssa = phi ptr [ %.1, %10 ]
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %.15.lcssa, 1
  br label %6, !llvm.loop !21

59:                                               ; preds = %6
  %60 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %4)
  %61 = icmp ne ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, ptr %1, align 4
  %64 = sub nsw i32 1, %63
  store i32 %64, ptr %1, align 4
  br label %65

65:                                               ; preds = %62, %59
  ret ptr %60
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

4:                                                ; preds = %35, %1
  %.01 = phi i32 [ 0, %1 ], [ %36, %35 ]
  %.0 = phi ptr [ %2, %1 ], [ %.1.lcssa, %35 ]
  %5 = load i32, ptr @nrow, align 4
  %6 = icmp ne i32 %.01, %5
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %32, %7
  %.04 = phi i32 [ 0, %7 ], [ %33, %32 ]
  %.12 = phi i32 [ %.01, %7 ], [ %.23, %32 ]
  %.1 = phi ptr [ %.0, %7 ], [ %.2, %32 ]
  %9 = load i32, ptr @ncol, align 4
  %10 = icmp ne i32 %.04, %9
  br i1 %10, label %11, label %34

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
  br label %32

32:                                               ; preds = %31
  %33 = add nsw i32 %.15, 1
  br label %8, !llvm.loop !23

34:                                               ; preds = %8
  %.12.lcssa = phi i32 [ %.12, %8 ]
  %.1.lcssa = phi ptr [ %.1, %8 ]
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %.12.lcssa, 1
  br label %4, !llvm.loop !24

37:                                               ; preds = %4
  %38 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %2)
  store ptr %38, ptr @wanted, align 8
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
  %.01.lcssa = phi ptr [ %.01, %13 ]
  %18 = load ptr, ptr %.01.lcssa, align 8
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
  %.0.lcssa = phi ptr [ %.0, %2 ]
  %8 = getelementptr inbounds nuw %struct._play, ptr %.0.lcssa, i32 0, i32 2
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
  %.0.lcssa = phi ptr [ %.0, %3 ]
  %13 = getelementptr inbounds nuw %struct._play, ptr %.0.lcssa, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_real_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  store i32 0, ptr %3, align 4
  %.promoted = load i32, ptr %3, align 4
  br label %5

5:                                                ; preds = %13, %4
  %6 = phi i32 [ %14, %13 ], [ %.promoted, %4 ]
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
  %.lcssa = phi i32 [ %9, %5 ]
  store i32 %.lcssa, ptr %2, align 4
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
  br label %8

8:                                                ; preds = %0
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %11 = call ptr @make_play(i32 noundef 1)
  %12 = load i32, ptr @nrow, align 4
  %13 = load i32, ptr @ncol, align 4
  %14 = call ptr @make_data(i32 noundef %12, i32 noundef %13)
  br label %15

15:                                               ; preds = %26, %8
  %.02 = phi ptr [ %14, %8 ], [ %19, %26 ]
  %.01 = phi i32 [ 0, %8 ], [ %.1, %26 ]
  %16 = icmp ne ptr %.02, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %15
  %18 = call ptr @where(ptr noundef %.02, ptr noundef %11)
  %19 = call ptr @get_good_move(ptr noundef %18)
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  call void @get_real_move(ptr noundef %19, ptr noundef %.02, ptr noundef %1, ptr noundef %2)
  %22 = load i32, ptr %1, align 4
  %23 = load i32, ptr %2, align 4
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %.01, i32 noundef %22, i32 noundef %23)
  %25 = sub nuw nsw i32 1, %.01
  call void @free(ptr noundef %.02)
  br label %26

26:                                               ; preds = %21, %17
  %.1 = phi i32 [ %25, %21 ], [ %.01, %17 ]
  br label %15, !llvm.loop !29

27:                                               ; preds = %15
  %.01.lcssa = phi i32 [ %.01, %15 ]
  call void @dump_play(ptr noundef %11)
  %28 = sub nuw nsw i32 1, %.01.lcssa
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %28)
  br label %30

30:                                               ; preds = %27
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
