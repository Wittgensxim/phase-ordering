; ModuleID = 'results\paper_full\McGill_chomp\round_001\output.ll'
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

2:                                                ; preds = %17, %1
  %.01 = phi i32 [ 0, %1 ], [ %.12, %17 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %17 ]
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
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  store i32 0, ptr %9, align 4
  %14 = add nsw i32 %.01, 1
  br label %17

15:                                               ; preds = %7
  %16 = add nsw i32 %10, 1
  store i32 %16, ptr %9, align 4
  br label %17

17:                                               ; preds = %15, %13
  %.12 = phi i32 [ %14, %13 ], [ %.01, %15 ]
  %.1 = phi i32 [ %.0, %13 ], [ 1, %15 ]
  br label %2, !llvm.loop !9

.critedge:                                        ; preds = %2
  %.0.lcssa = phi i32 [ %.0, %2 ]
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
  %11 = getelementptr inbounds i32, ptr %1, i64 %8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %4, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %7, %4
  %.lcssa = phi i32 [ %5, %7 ], [ %5, %4 ]
  %14 = icmp slt i32 %.lcssa, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  br label %3

3:                                                ; preds = %11, %1
  %.01 = phi i32 [ %2, %1 ], [ %9, %11 ]
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %4 = load i32, ptr @ncol, align 4
  %5 = icmp ne i32 %.0, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %.01
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !12

13:                                               ; preds = %6, %3
  %.0.lcssa = phi i32 [ %.0, %6 ], [ %.0, %3 ]
  %14 = load i32, ptr @ncol, align 4
  %15 = icmp eq i32 %.0.lcssa, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
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
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = load ptr, ptr @wanted, align 8
  br label %3

3:                                                ; preds = %8, %1
  %.01 = phi ptr [ %2, %1 ], [ %10, %8 ]
  %magicptr = ptrtoint ptr %.01 to i64
  %cond = icmp eq i64 %magicptr, 0
  br i1 %cond, label %.loopexit, label %4

4:                                                ; preds = %3
  %5 = load ptr, ptr %.01, align 8
  %6 = call i32 @equal_data(ptr noundef %5, ptr noundef %0)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %3, !llvm.loop !17

11:                                               ; preds = %4
  br label %12

.loopexit:                                        ; preds = %3
  br label %12

12:                                               ; preds = %.loopexit, %11
  %.0 = phi i32 [ 1, %11 ], [ 0, %.loopexit ]
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
  br i1 %8, label %9, label %.preheader

.preheader:                                       ; preds = %7
  %.0.lcssa = phi i32 [ %.0, %7 ]
  br label %14

9:                                                ; preds = %7
  %10 = load i32, ptr @nrow, align 4
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds i32, ptr %6, i64 %11
  store i32 %10, ptr %12, align 4
  %13 = add nsw i32 %.0, 1
  br label %7, !llvm.loop !18

14:                                               ; preds = %.preheader, %17
  %.1 = phi i32 [ %20, %17 ], [ %.0.lcssa, %.preheader ]
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

6:                                                ; preds = %50, %3
  %.04 = phi i32 [ 0, %3 ], [ %51, %50 ]
  %.0 = phi ptr [ %4, %3 ], [ %.1.lcssa, %50 ]
  %7 = load i32, ptr @nrow, align 4
  %8 = icmp ne i32 %.04, %7
  br i1 %8, label %.preheader, label %52

.preheader:                                       ; preds = %6
  br label %9

9:                                                ; preds = %.preheader, %48
  %.15 = phi i32 [ %.3, %48 ], [ %.04, %.preheader ]
  %.01 = phi i32 [ %49, %48 ], [ 0, %.preheader ]
  %.1 = phi ptr [ %.2, %48 ], [ %.0, %.preheader ]
  %10 = load i32, ptr @ncol, align 4
  %11 = icmp ne i32 %.01, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = call ptr @make_data(i32 noundef %.15, i32 noundef %.01)
  call void @melt_data(ptr noundef %13, ptr noundef %0)
  %14 = call i32 @equal_data(ptr noundef %13, ptr noundef %0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  %17 = call ptr @malloc(i64 noundef 16) #3
  %18 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %17, ptr %18, align 8
  %19 = call ptr @copy_data(ptr noundef %13)
  %20 = load ptr, ptr %18, align 8
  store ptr %19, ptr %20, align 8
  %21 = load ptr, ptr %18, align 8
  %22 = getelementptr inbounds nuw %struct._list, ptr %21, i32 0, i32 1
  store ptr null, ptr %22, align 8
  %23 = load ptr, ptr %18, align 8
  %24 = load i32, ptr %1, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 @get_value(ptr noundef %13)
  store i32 %27, ptr %1, align 4
  br label %28

28:                                               ; preds = %26, %16
  %29 = load i32, ptr %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %1, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i32, ptr @ncol, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, ptr @nrow, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @in_wanted(ptr noundef %13)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  store i32 2, ptr %2, align 4
  br label %48

42:                                               ; preds = %12
  %43 = icmp eq i32 %.01, 0
  %44 = load i32, ptr @nrow, align 4
  %45 = sub nsw i32 %44, 1
  %.4 = select i1 %43, i32 %45, i32 %.15
  %46 = load i32, ptr @ncol, align 4
  %47 = sub nsw i32 %46, 1
  br label %48

48:                                               ; preds = %42, %41, %34, %31, %28
  %.3 = phi i32 [ %.4, %42 ], [ %.15, %28 ], [ %.15, %31 ], [ %38, %41 ], [ %38, %34 ]
  %.23 = phi i32 [ %47, %42 ], [ %.01, %28 ], [ %.01, %31 ], [ %36, %41 ], [ %36, %34 ]
  %.2 = phi ptr [ %.1, %42 ], [ %23, %34 ], [ %23, %41 ], [ %23, %31 ], [ %23, %28 ]
  call void @free(ptr noundef %13)
  %49 = add nsw i32 %.23, 1
  br label %9, !llvm.loop !20

50:                                               ; preds = %9
  %.15.lcssa = phi i32 [ %.15, %9 ]
  %.1.lcssa = phi ptr [ %.1, %9 ]
  %51 = add nsw i32 %.15.lcssa, 1
  br label %6, !llvm.loop !21

52:                                               ; preds = %6
  %53 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %4)
  %54 = icmp ne ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, ptr %1, align 4
  %57 = sub nsw i32 1, %56
  store i32 %57, ptr %1, align 4
  br label %58

58:                                               ; preds = %55, %52
  ret ptr %53
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

8:                                                ; preds = %38, %1
  %.01 = phi ptr [ %4, %1 ], [ %.12, %38 ]
  %.0 = phi ptr [ %5, %1 ], [ %.1, %38 ]
  %9 = call i32 @next_data(ptr noundef %.0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = call i32 @valid_data(ptr noundef %.0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

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

38:                                               ; preds = %34, %20, %11
  %.12 = phi ptr [ %.01, %11 ], [ %31, %34 ], [ %31, %20 ]
  %.1 = phi ptr [ %.0, %11 ], [ %37, %34 ], [ %.0, %20 ]
  br label %8, !llvm.loop !22

39:                                               ; preds = %8
  %40 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  call void @free(ptr noundef %4)
  ret ptr %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef 16) #3
  %3 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 8
  br label %4

4:                                                ; preds = %30, %1
  %.01 = phi i32 [ 0, %1 ], [ %31, %30 ]
  %.0 = phi ptr [ %2, %1 ], [ %.1.lcssa, %30 ]
  %5 = load i32, ptr @nrow, align 4
  %6 = icmp ne i32 %.01, %5
  br i1 %6, label %.preheader, label %32

.preheader:                                       ; preds = %4
  br label %7

7:                                                ; preds = %.preheader, %28
  %.04 = phi i32 [ %29, %28 ], [ 0, %.preheader ]
  %.12 = phi i32 [ %.23, %28 ], [ %.01, %.preheader ]
  %.1 = phi ptr [ %.2, %28 ], [ %.0, %.preheader ]
  %8 = load i32, ptr @ncol, align 4
  %9 = icmp ne i32 %.04, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = call ptr @make_data(i32 noundef %.12, i32 noundef %.04)
  call void @melt_data(ptr noundef %11, ptr noundef %0)
  %12 = call i32 @equal_data(ptr noundef %11, ptr noundef %0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = call ptr @malloc(i64 noundef 16) #3
  %16 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %15, ptr %16, align 8
  %17 = call ptr @copy_data(ptr noundef %11)
  %18 = load ptr, ptr %16, align 8
  store ptr %17, ptr %18, align 8
  %19 = load ptr, ptr %16, align 8
  %20 = getelementptr inbounds nuw %struct._list, ptr %19, i32 0, i32 1
  store ptr null, ptr %20, align 8
  %21 = load ptr, ptr %16, align 8
  br label %28

22:                                               ; preds = %10
  %23 = icmp eq i32 %.04, 0
  %24 = load i32, ptr @nrow, align 4
  %25 = sub nsw i32 %24, 1
  %.3 = select i1 %23, i32 %25, i32 %.12
  %26 = load i32, ptr @ncol, align 4
  %27 = sub nsw i32 %26, 1
  br label %28

28:                                               ; preds = %22, %14
  %.15 = phi i32 [ %27, %22 ], [ %.04, %14 ]
  %.23 = phi i32 [ %.3, %22 ], [ %.12, %14 ]
  %.2 = phi ptr [ %.1, %22 ], [ %21, %14 ]
  call void @free(ptr noundef %11)
  %29 = add nsw i32 %.15, 1
  br label %7, !llvm.loop !23

30:                                               ; preds = %7
  %.12.lcssa = phi i32 [ %.12, %7 ]
  %.1.lcssa = phi ptr [ %.1, %7 ]
  %31 = add nsw i32 %.12.lcssa, 1
  br label %4, !llvm.loop !24

32:                                               ; preds = %4
  %33 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %2)
  store ptr %33, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %.preheader

.preheader:                                       ; preds = %1
  br label %3

3:                                                ; preds = %.preheader, %11
  %.01 = phi ptr [ %12, %11 ], [ %0, %.preheader ]
  %4 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %.critedge

7:                                                ; preds = %3
  %8 = load ptr, ptr %.01, align 8
  %9 = call i32 @get_value(ptr noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %.critedge

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 8
  br label %3, !llvm.loop !25

.critedge:                                        ; preds = %7, %3
  %.01.lcssa = phi ptr [ %.01, %7 ], [ %.01, %3 ]
  %13 = load ptr, ptr %.01.lcssa, align 8
  %14 = call ptr @copy_data(ptr noundef %13)
  br label %15

15:                                               ; preds = %.critedge, %1
  %.0 = phi ptr [ %14, %.critedge ], [ null, %1 ]
  ret ptr %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %.0 = phi ptr [ %0, %1 ], [ %4, %2 ]
  %3 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %2, label %6, !llvm.loop !26

6:                                                ; preds = %2
  %.0.lcssa = phi ptr [ %.0, %2 ]
  %7 = getelementptr inbounds nuw %struct._play, ptr %.0.lcssa, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = call ptr @get_good_move(ptr noundef %8)
  ret ptr %9
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
  %.lcssa = phi i32 [ %9, %5 ]
  store i32 %.lcssa, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 2, ptr %1, align 4
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %9 = call ptr @make_play(i32 noundef 1)
  %10 = load i32, ptr @nrow, align 4
  %11 = load i32, ptr @ncol, align 4
  %12 = call ptr @make_data(i32 noundef %10, i32 noundef %11)
  br label %13

13:                                               ; preds = %24, %0
  %.02 = phi ptr [ %12, %0 ], [ %17, %24 ]
  %.01 = phi i32 [ 0, %0 ], [ %.1, %24 ]
  %14 = icmp ne ptr %.02, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %13
  %16 = call ptr @where(ptr noundef %.02, ptr noundef %9)
  %17 = call ptr @get_good_move(ptr noundef %16)
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  call void @get_real_move(ptr noundef %17, ptr noundef %.02, ptr noundef %1, ptr noundef %2)
  %20 = load i32, ptr %1, align 4
  %21 = load i32, ptr %2, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %.01, i32 noundef %20, i32 noundef %21)
  %23 = sub nsw i32 1, %.01
  call void @free(ptr noundef %.02)
  br label %24

24:                                               ; preds = %19, %15
  %.1 = phi i32 [ %23, %19 ], [ %.01, %15 ]
  br label %13, !llvm.loop !29

25:                                               ; preds = %13
  %.01.lcssa = phi i32 [ %.01, %13 ]
  call void @dump_play(ptr noundef %9)
  %26 = sub nsw i32 1, %.01.lcssa
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %26)
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
