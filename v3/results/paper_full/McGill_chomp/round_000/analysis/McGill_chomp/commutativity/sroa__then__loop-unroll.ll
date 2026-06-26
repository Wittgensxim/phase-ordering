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

2:                                                ; preds = %25, %1
  %.09 = phi i32 [ 0, %1 ], [ %.110, %25 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %25 ]
  %3 = load i32, ptr @ncol, align 4
  %4 = icmp ne i32 %.09, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp ne i32 %.0, 0
  %7 = xor i1 %6, true
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i1 [ false, %2 ], [ %7, %5 ]
  br i1 %9, label %10, label %26

10:                                               ; preds = %8
  %11 = sext i32 %.09 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @nrow, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = sext i32 %.09 to i64
  %18 = getelementptr inbounds i32, ptr %0, i64 %17
  store i32 0, ptr %18, align 4
  %19 = add nsw i32 %.09, 1
  br label %25

20:                                               ; preds = %10
  %21 = sext i32 %.09 to i64
  %22 = getelementptr inbounds i32, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %20, %16
  %.110 = phi i32 [ %19, %16 ], [ %.09, %20 ]
  %.1 = phi i32 [ %.0, %16 ], [ 1, %20 ]
  br label %2, !llvm.loop !9

26:                                               ; preds = %8
  %.0.lcssa = phi i32 [ %.0, %8 ]
  ret i32 %.0.lcssa
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

4:                                                ; preds = %17, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %17 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp ne i32 %.0, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %10, %13
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi i1 [ false, %4 ], [ %14, %7 ]
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %4, !llvm.loop !11

18:                                               ; preds = %15
  %.lcssa = phi i32 [ %5, %15 ]
  %19 = icmp slt i32 %.lcssa, 0
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  br label %3

3:                                                ; preds = %12, %1
  %.07 = phi i32 [ %2, %1 ], [ %15, %12 ]
  %.0 = phi i32 [ 0, %1 ], [ %16, %12 ]
  %4 = load i32, ptr @ncol, align 4
  %5 = icmp ne i32 %.0, %4
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %3
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %.07
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  %.0.lcssa8 = phi i32 [ %.0, %6 ]
  br label %17

12:                                               ; preds = %6
  %13 = sext i32 %.0 to i64
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !12

.loopexit:                                        ; preds = %3
  %.0.lcssa = phi i32 [ %.0, %3 ]
  br label %17

17:                                               ; preds = %.loopexit, %11
  %.09 = phi i32 [ %.0.lcssa, %.loopexit ], [ %.0.lcssa8, %11 ]
  %18 = load i32, ptr @ncol, align 4
  %19 = icmp eq i32 %.09, %18
  %20 = zext i1 %19 to i32
  ret i32 %20
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
  %.0.lcssa = phi ptr [ %.0, %3 ]
  %13 = getelementptr inbounds nuw %struct._play, ptr %.0.lcssa, i32 0, i32 0
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

3:                                                ; preds = %11, %1
  %.0 = phi ptr [ %2, %1 ], [ %13, %11 ]
  %4 = icmp ne ptr %.0, null
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @equal_data(ptr noundef %7, ptr noundef %0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  %.0.lcssa6 = phi ptr [ %.0, %5 ]
  br label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  br label %3, !llvm.loop !17

.loopexit:                                        ; preds = %3
  %.0.lcssa = phi ptr [ %.0, %3 ]
  br label %14

14:                                               ; preds = %.loopexit, %10
  %.07 = phi ptr [ %.0.lcssa, %.loopexit ], [ %.0.lcssa6, %10 ]
  %15 = icmp eq ptr %.07, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %18

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17, %16
  %.05 = phi i32 [ 0, %16 ], [ 1, %17 ]
  ret i32 %.05
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

6:                                                ; preds = %61, %3
  %.032 = phi i32 [ 0, %3 ], [ %62, %61 ]
  %.0 = phi ptr [ %4, %3 ], [ %.1.lcssa, %61 ]
  %7 = load i32, ptr @nrow, align 4
  %8 = icmp ne i32 %.032, %7
  br i1 %8, label %9, label %63

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %58, %9
  %.035 = phi i32 [ 0, %9 ], [ %59, %58 ]
  %.133 = phi i32 [ %.032, %9 ], [ %.3, %58 ]
  %.1 = phi ptr [ %.0, %9 ], [ %.2, %58 ]
  %11 = load i32, ptr @ncol, align 4
  %12 = icmp ne i32 %.035, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %10
  %14 = call ptr @make_data(i32 noundef %.133, i32 noundef %.035)
  call void @melt_data(ptr noundef %14, ptr noundef %0)
  %15 = call i32 @equal_data(ptr noundef %14, ptr noundef %0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = call ptr @malloc(i64 noundef 16) #3
  %19 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %18, ptr %19, align 8
  %20 = call ptr @copy_data(ptr noundef %14)
  %21 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw %struct._list, ptr %22, i32 0, i32 0
  store ptr %20, ptr %23, align 8
  %24 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw %struct._list, ptr %25, i32 0, i32 1
  store ptr null, ptr %26, align 8
  %27 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %1, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = call i32 @get_value(ptr noundef %14)
  store i32 %32, ptr %1, align 4
  br label %33

33:                                               ; preds = %31, %17
  %34 = load i32, ptr %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %1, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, ptr @ncol, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, ptr @nrow, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call i32 @in_wanted(ptr noundef %14)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 2, ptr %2, align 4
  br label %47

47:                                               ; preds = %46, %39
  br label %48

48:                                               ; preds = %47, %36, %33
  %.136 = phi i32 [ %.035, %33 ], [ %41, %47 ], [ %.035, %36 ]
  %.234 = phi i32 [ %.133, %33 ], [ %43, %47 ], [ %.133, %36 ]
  br label %57

49:                                               ; preds = %13
  %50 = icmp eq i32 %.035, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i32, ptr @nrow, align 4
  %53 = sub nsw i32 %52, 1
  br label %54

54:                                               ; preds = %51, %49
  %.4 = phi i32 [ %53, %51 ], [ %.133, %49 ]
  %55 = load i32, ptr @ncol, align 4
  %56 = sub nsw i32 %55, 1
  br label %57

57:                                               ; preds = %54, %48
  %.237 = phi i32 [ %56, %54 ], [ %.136, %48 ]
  %.3 = phi i32 [ %.4, %54 ], [ %.234, %48 ]
  %.2 = phi ptr [ %.1, %54 ], [ %28, %48 ]
  call void @free(ptr noundef %14)
  br label %58

58:                                               ; preds = %57
  %59 = add nsw i32 %.237, 1
  br label %10, !llvm.loop !20

60:                                               ; preds = %10
  %.133.lcssa = phi i32 [ %.133, %10 ]
  %.1.lcssa = phi ptr [ %.1, %10 ]
  br label %61

61:                                               ; preds = %60
  %62 = add nsw i32 %.133.lcssa, 1
  br label %6, !llvm.loop !21

63:                                               ; preds = %6
  %64 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  call void @free(ptr noundef %4)
  %66 = icmp ne ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, ptr %1, align 4
  %69 = sub nsw i32 1, %68
  store i32 %69, ptr %1, align 4
  br label %70

70:                                               ; preds = %67, %63
  ret ptr %65
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

9:                                                ; preds = %48, %1
  %.017 = phi ptr [ %5, %1 ], [ %.118, %48 ]
  %.0 = phi ptr [ %4, %1 ], [ %.1, %48 ]
  %10 = call i32 @next_data(ptr noundef %.017)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = call i32 @valid_data(ptr noundef %.017)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %12
  %16 = call ptr @malloc(i64 noundef 32) #3
  %17 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  store ptr %16, ptr %17, align 8
  %18 = load ptr, ptr @game_tree, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr @game_tree, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = call ptr @copy_data(ptr noundef %.017)
  %25 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds nuw %struct._play, ptr %26, i32 0, i32 1
  store ptr %24, ptr %27, align 8
  %28 = call ptr @make_list(ptr noundef %.017, ptr noundef %3, ptr noundef %2)
  %29 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds nuw %struct._play, ptr %30, i32 0, i32 2
  store ptr %28, ptr %31, align 8
  %32 = load i32, ptr %3, align 4
  %33 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds nuw %struct._play, ptr %34, i32 0, i32 0
  store i32 %32, ptr %35, align 8
  %36 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds nuw %struct._play, ptr %37, i32 0, i32 3
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = load i32, ptr %2, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %47

43:                                               ; preds = %23
  call void @free(ptr noundef %.017)
  %44 = load i32, ptr @nrow, align 4
  %45 = load i32, ptr @ncol, align 4
  %46 = call ptr @make_data(i32 noundef %44, i32 noundef %45)
  br label %47

47:                                               ; preds = %43, %23
  %.2 = phi ptr [ %46, %43 ], [ %.017, %23 ]
  br label %48

48:                                               ; preds = %47, %12
  %.118 = phi ptr [ %.2, %47 ], [ %.017, %12 ]
  %.1 = phi ptr [ %40, %47 ], [ %.0, %12 ]
  br label %9, !llvm.loop !22

49:                                               ; preds = %9
  %50 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  call void @free(ptr noundef %4)
  ret ptr %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef 16) #3
  %3 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 8
  br label %4

4:                                                ; preds = %39, %1
  %.021 = phi i32 [ 0, %1 ], [ %40, %39 ]
  %.0 = phi ptr [ %2, %1 ], [ %.1.lcssa, %39 ]
  %5 = load i32, ptr @nrow, align 4
  %6 = icmp ne i32 %.021, %5
  br i1 %6, label %7, label %41

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %36, %7
  %.024 = phi i32 [ 0, %7 ], [ %37, %36 ]
  %.122 = phi i32 [ %.021, %7 ], [ %.223, %36 ]
  %.1 = phi ptr [ %.0, %7 ], [ %.2, %36 ]
  %9 = load i32, ptr @ncol, align 4
  %10 = icmp ne i32 %.024, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %8
  %12 = call ptr @make_data(i32 noundef %.122, i32 noundef %.024)
  call void @melt_data(ptr noundef %12, ptr noundef %0)
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = call ptr @malloc(i64 noundef 16) #3
  %17 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %16, ptr %17, align 8
  %18 = call ptr @copy_data(ptr noundef %12)
  %19 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds nuw %struct._list, ptr %20, i32 0, i32 0
  store ptr %18, ptr %21, align 8
  %22 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds nuw %struct._list, ptr %23, i32 0, i32 1
  store ptr null, ptr %24, align 8
  %25 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  br label %35

27:                                               ; preds = %11
  %28 = icmp eq i32 %.024, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32, ptr @nrow, align 4
  %31 = sub nsw i32 %30, 1
  br label %32

32:                                               ; preds = %29, %27
  %.3 = phi i32 [ %31, %29 ], [ %.122, %27 ]
  %33 = load i32, ptr @ncol, align 4
  %34 = sub nsw i32 %33, 1
  br label %35

35:                                               ; preds = %32, %15
  %.125 = phi i32 [ %34, %32 ], [ %.024, %15 ]
  %.223 = phi i32 [ %.3, %32 ], [ %.122, %15 ]
  %.2 = phi ptr [ %.1, %32 ], [ %26, %15 ]
  call void @free(ptr noundef %12)
  br label %36

36:                                               ; preds = %35
  %37 = add nsw i32 %.125, 1
  br label %8, !llvm.loop !23

38:                                               ; preds = %8
  %.122.lcssa = phi i32 [ %.122, %8 ]
  %.1.lcssa = phi ptr [ %.1, %8 ]
  br label %39

39:                                               ; preds = %38
  %40 = add nsw i32 %.122.lcssa, 1
  br label %4, !llvm.loop !24

41:                                               ; preds = %4
  %42 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  call void @free(ptr noundef %2)
  store ptr %43, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %23

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %16, %4
  %.0 = phi ptr [ %0, %4 ], [ %18, %16 ]
  %6 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @get_value(ptr noundef %11)
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i1 [ false, %5 ], [ %13, %9 ]
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  br label %5, !llvm.loop !25

19:                                               ; preds = %14
  %.0.lcssa = phi ptr [ %.0, %14 ]
  %20 = getelementptr inbounds nuw %struct._list, ptr %.0.lcssa, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = call ptr @copy_data(ptr noundef %21)
  br label %23

23:                                               ; preds = %19, %3
  %.06 = phi ptr [ null, %3 ], [ %22, %19 ]
  ret ptr %.06
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
  %.0.lcssa = phi ptr [ %.0, %2 ]
  %10 = getelementptr inbounds nuw %struct._play, ptr %.0.lcssa, i32 0, i32 2
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
  %.0.lcssa = phi ptr [ %.0, %3 ]
  %13 = getelementptr inbounds nuw %struct._play, ptr %.0.lcssa, i32 0, i32 2
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
  switch i32 %8, label %81 [
    i32 1, label %9
    i32 2, label %39
    i32 3, label %61
  ]

9:                                                ; preds = %0
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %11 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %13 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %15 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %3)
  br label %16

16:                                               ; preds = %35, %9
  %17 = load i32, ptr @nrow, align 4
  %18 = load i32, ptr %3, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %38

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
  br label %35

35:                                               ; preds = %20
  %36 = load i32, ptr @nrow, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @nrow, align 4
  br label %16, !llvm.loop !29

38:                                               ; preds = %16
  br label %81

39:                                               ; preds = %0
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %42 = call ptr @make_play(i32 noundef 1)
  %43 = load i32, ptr @nrow, align 4
  %44 = load i32, ptr @ncol, align 4
  %45 = call ptr @make_data(i32 noundef %43, i32 noundef %44)
  br label %46

46:                                               ; preds = %57, %39
  %.021 = phi ptr [ %45, %39 ], [ %50, %57 ]
  %.020 = phi i32 [ 0, %39 ], [ %.1, %57 ]
  %47 = icmp ne ptr %.021, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %46
  %49 = call ptr @where(ptr noundef %.021, ptr noundef %42)
  %50 = call ptr @get_good_move(ptr noundef %49)
  %51 = icmp ne ptr %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  call void @get_real_move(ptr noundef %50, ptr noundef %.021, ptr noundef %1, ptr noundef %2)
  %53 = load i32, ptr %1, align 4
  %54 = load i32, ptr %2, align 4
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %.020, i32 noundef %53, i32 noundef %54)
  %56 = sub nsw i32 1, %.020
  call void @free(ptr noundef %.021)
  br label %57

57:                                               ; preds = %52, %48
  %.1 = phi i32 [ %56, %52 ], [ %.020, %48 ]
  br label %46, !llvm.loop !30

58:                                               ; preds = %46
  %.020.lcssa = phi i32 [ %.020, %46 ]
  call void @dump_play(ptr noundef %42)
  %59 = sub nsw i32 1, %.020.lcssa
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %59)
  br label %81

61:                                               ; preds = %0
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %63 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %64 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %65 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %67 = call ptr @make_play(i32 noundef 1)
  br label %68

68:                                               ; preds = %77, %61
  %.0 = phi ptr [ %67, %61 ], [ %79, %77 ]
  %69 = icmp ne ptr %.0, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %68
  %71 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 0
  %72 = load i32, ptr %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  call void @show_move(ptr noundef %76)
  br label %77

77:                                               ; preds = %74, %70
  %78 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8
  br label %68, !llvm.loop !31

80:                                               ; preds = %68
  call void @dump_play(ptr noundef %67)
  br label %81

81:                                               ; preds = %80, %58, %38, %0
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
