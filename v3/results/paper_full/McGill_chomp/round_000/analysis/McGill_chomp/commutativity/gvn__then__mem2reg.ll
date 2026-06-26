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
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i32, ptr %5, i64 %12
  store i32 %14, ptr %15, align 4
  br label %7, !llvm.loop !7

16:                                               ; preds = %7
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %24, %1
  %3 = phi i32 [ %25, %24 ], [ 0, %1 ]
  %4 = phi ptr [ %26, %24 ], [ %0, %1 ]
  %5 = phi i32 [ %27, %24 ], [ 0, %1 ]
  %6 = load i32, ptr @ncol, align 4
  %7 = icmp ne i32 %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = icmp ne i32 %5, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  br i1 %12, label %13, label %28

13:                                               ; preds = %11
  %14 = sext i32 %3 to i64
  %15 = getelementptr inbounds i32, ptr %4, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr @nrow, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds i32, ptr %0, i64 %14
  store i32 0, ptr %20, align 4
  %21 = add nsw i32 %3, 1
  br label %24

22:                                               ; preds = %13
  %23 = add nsw i32 %16, 1
  store i32 %23, ptr %15, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %3, %22 ], [ %21, %19 ]
  %26 = phi ptr [ %4, %22 ], [ %0, %19 ]
  %27 = phi i32 [ 1, %22 ], [ %5, %19 ]
  br label %2, !llvm.loop !9

28:                                               ; preds = %11
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %21, %2
  %5 = phi ptr [ %22, %21 ], [ %1, %2 ]
  %6 = phi ptr [ %23, %21 ], [ %0, %2 ]
  %7 = phi i32 [ %8, %21 ], [ %3, %2 ]
  %8 = add nsw i32 %7, -1
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds i32, ptr %6, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds i32, ptr %5, i64 %11
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds i32, ptr %1, i64 %11
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i32, ptr %0, i64 %11
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi ptr [ %1, %17 ], [ %5, %10 ]
  %23 = phi ptr [ %0, %17 ], [ %6, %10 ]
  br label %4, !llvm.loop !10

24:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %17, %2
  %5 = phi i32 [ %6, %17 ], [ %3, %2 ]
  %6 = add nsw i32 %5, -1
  %7 = icmp ne i32 %5, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds i32, ptr %1, i64 %9
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi i1 [ false, %4 ], [ %14, %8 ]
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %4, !llvm.loop !11

18:                                               ; preds = %15
  %19 = icmp slt i32 %6, 0
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %.pre = load i32, ptr @ncol, align 4
  br label %3

3:                                                ; preds = %13, %1
  %4 = phi i32 [ %10, %13 ], [ %2, %1 ]
  %5 = phi i32 [ %14, %13 ], [ 0, %1 ]
  %6 = icmp ne i32 %5, %.pre
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, %4
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %15

13:                                               ; preds = %7
  %14 = add nsw i32 %5, 1
  br label %3, !llvm.loop !12

15:                                               ; preds = %12, %3
  %16 = icmp eq i32 %5, %.pre
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
  %14 = load i32, ptr %4, align 8
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %.pre1 = load i32, ptr @ncol, align 4
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi i32 [ %17, %16 ], [ %.pre1, %1 ]
  %4 = phi i32 [ %7, %16 ], [ 0, %1 ]
  %5 = icmp ne i32 %4, %3
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = add nsw i32 %4, 1
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  %12 = load i32, ptr @ncol, align 4
  %13 = icmp ne i32 %7, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = call i32 @putchar(i32 noundef 44)
  %.pre = load i32, ptr @ncol, align 4
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %.pre, %14 ], [ %7, %6 ]
  br label %2, !llvm.loop !14

18:                                               ; preds = %2
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
  %3 = phi ptr [ %8, %5 ], [ %0, %1 ]
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8
  call void @show_move(ptr noundef %6)
  %7 = getelementptr inbounds nuw %struct._list, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  br label %2, !llvm.loop !15

9:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi ptr [ %15, %5 ], [ %0, %1 ]
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %7 = getelementptr inbounds nuw %struct._play, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @show_data(ptr noundef %8)
  %9 = load i32, ptr %3, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %9)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %12 = getelementptr inbounds nuw %struct._play, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  call void @show_list(ptr noundef %13)
  %14 = getelementptr inbounds nuw %struct._play, ptr %3, i32 0, i32 3
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
  %4 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @equal_data(ptr noundef %7, ptr noundef %0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  br label %3, !llvm.loop !17

14:                                               ; preds = %10, %3
  %15 = icmp eq ptr %4, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %18

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17, %16
  %19 = phi i32 [ 1, %17 ], [ 0, %16 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = call ptr @malloc(i64 noundef %5) #3
  br label %7

7:                                                ; preds = %10, %2
  %8 = phi i32 [ %14, %10 ], [ 0, %2 ]
  %9 = icmp ne i32 %8, %1
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, ptr @nrow, align 4
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds i32, ptr %6, i64 %12
  store i32 %11, ptr %13, align 4
  %14 = add nsw i32 %8, 1
  br label %7, !llvm.loop !18

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %20, %15
  %17 = phi i32 [ %23, %20 ], [ %1, %15 ]
  %18 = load i32, ptr @ncol, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds i32, ptr %6, i64 %21
  store i32 %0, ptr %22, align 4
  %23 = add nsw i32 %17, 1
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

6:                                                ; preds = %77, %3
  %.0 = phi ptr [ %4, %3 ], [ %.1, %77 ]
  %7 = phi ptr [ %16, %77 ], [ %1, %3 ]
  %8 = phi ptr [ %17, %77 ], [ %1, %3 ]
  %9 = phi ptr [ %18, %77 ], [ %0, %3 ]
  %10 = phi ptr [ %21, %77 ], [ %1, %3 ]
  %11 = phi i32 [ %78, %77 ], [ 0, %3 ]
  %12 = load i32, ptr @nrow, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %79

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %69, %14
  %.05 = phi i32 [ 0, %14 ], [ %76, %69 ]
  %.1 = phi ptr [ %.0, %14 ], [ %.2, %69 ]
  %16 = phi ptr [ %72, %69 ], [ %7, %14 ]
  %17 = phi ptr [ %73, %69 ], [ %8, %14 ]
  %18 = phi ptr [ %0, %69 ], [ %9, %14 ]
  %19 = phi i32 [ %74, %69 ], [ %11, %14 ]
  %20 = phi i32 [ %76, %69 ], [ 0, %14 ]
  %21 = phi ptr [ %75, %69 ], [ %10, %14 ]
  %22 = load i32, ptr @ncol, align 4
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %77

24:                                               ; preds = %15
  %25 = call ptr @make_data(i32 noundef %19, i32 noundef %20)
  call void @melt_data(ptr noundef %25, ptr noundef %18)
  %26 = call i32 @equal_data(ptr noundef %25, ptr noundef %0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %60, label %28

28:                                               ; preds = %24
  %29 = call ptr @malloc(i64 noundef 16) #3
  %30 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %29, ptr %30, align 8
  %31 = call ptr @copy_data(ptr noundef %25)
  %32 = load ptr, ptr %30, align 8
  store ptr %31, ptr %32, align 8
  %33 = load ptr, ptr %30, align 8
  %34 = getelementptr inbounds nuw %struct._list, ptr %33, i32 0, i32 1
  store ptr null, ptr %34, align 8
  %35 = load ptr, ptr %30, align 8
  %36 = load i32, ptr %17, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 @get_value(ptr noundef %25)
  store i32 %39, ptr %16, align 4
  br label %40

40:                                               ; preds = %38, %28
  %41 = phi ptr [ %16, %38 ], [ %17, %28 ]
  %42 = load i32, ptr %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %._crit_edge, label %44

._crit_edge:                                      ; preds = %40
  br label %56

44:                                               ; preds = %40
  %45 = load i32, ptr %1, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, ptr @ncol, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, ptr @nrow, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @in_wanted(ptr noundef %25)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 2, ptr %2, align 4
  br label %55

55:                                               ; preds = %54, %47
  br label %56

56:                                               ; preds = %._crit_edge, %55, %44
  %.16 = phi i32 [ %.05, %._crit_edge ], [ %49, %55 ], [ %.05, %44 ]
  %.pre1 = phi ptr [ %25, %55 ], [ %25, %44 ], [ %25, %._crit_edge ]
  %57 = phi ptr [ %1, %55 ], [ %1, %44 ], [ %16, %._crit_edge ]
  %58 = phi ptr [ %1, %55 ], [ %1, %44 ], [ %41, %._crit_edge ]
  %59 = phi i32 [ %51, %55 ], [ %19, %44 ], [ %19, %._crit_edge ]
  br label %69

60:                                               ; preds = %24
  %61 = icmp eq i32 %.05, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i32, ptr @nrow, align 4
  %64 = sub nsw i32 %63, 1
  br label %65

65:                                               ; preds = %62, %60
  %66 = phi i32 [ %64, %62 ], [ %19, %60 ]
  %67 = load i32, ptr @ncol, align 4
  %68 = sub nsw i32 %67, 1
  br label %69

69:                                               ; preds = %65, %56
  %.2 = phi ptr [ %.1, %65 ], [ %35, %56 ]
  %70 = phi i32 [ %68, %65 ], [ %.16, %56 ]
  %71 = phi ptr [ %25, %65 ], [ %.pre1, %56 ]
  %72 = phi ptr [ %16, %65 ], [ %57, %56 ]
  %73 = phi ptr [ %17, %65 ], [ %58, %56 ]
  %74 = phi i32 [ %66, %65 ], [ %59, %56 ]
  %75 = phi ptr [ %21, %65 ], [ %58, %56 ]
  call void @free(ptr noundef %71)
  %76 = add nsw i32 %70, 1
  br label %15, !llvm.loop !20

77:                                               ; preds = %15
  %78 = add nsw i32 %19, 1
  br label %6, !llvm.loop !21

79:                                               ; preds = %6
  %80 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %4)
  %81 = icmp ne ptr %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, ptr %10, align 4
  %84 = sub nsw i32 1, %83
  store i32 %84, ptr %10, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi ptr [ %80, %82 ], [ null, %79 ]
  ret ptr %86
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

8:                                                ; preds = %41, %1
  %.01 = phi ptr [ %4, %1 ], [ %.12, %41 ]
  %.0 = phi ptr [ %5, %1 ], [ %.1, %41 ]
  %9 = phi ptr [ %42, %41 ], [ %5, %1 ]
  %10 = call i32 @next_data(ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = call i32 @valid_data(ptr noundef %.0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = call ptr @malloc(i64 noundef 32) #3
  %17 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  store ptr %16, ptr %17, align 8
  %18 = load ptr, ptr @game_tree, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store ptr %16, ptr @game_tree, align 8
  br label %21

21:                                               ; preds = %20, %15
  %22 = call ptr @copy_data(ptr noundef %.0)
  %23 = load ptr, ptr %17, align 8
  %24 = getelementptr inbounds nuw %struct._play, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 8
  %25 = call ptr @make_list(ptr noundef %.0, ptr noundef %3, ptr noundef %2)
  %26 = load ptr, ptr %17, align 8
  %27 = getelementptr inbounds nuw %struct._play, ptr %26, i32 0, i32 2
  store ptr %25, ptr %27, align 8
  %28 = load i32, ptr %3, align 4
  %29 = load ptr, ptr %17, align 8
  store i32 %28, ptr %29, align 8
  %30 = load ptr, ptr %17, align 8
  %31 = getelementptr inbounds nuw %struct._play, ptr %30, i32 0, i32 3
  store ptr null, ptr %31, align 8
  %32 = load ptr, ptr %17, align 8
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  call void @free(ptr noundef %.0)
  %36 = load i32, ptr @nrow, align 4
  %37 = load i32, ptr @ncol, align 4
  %38 = call ptr @make_data(i32 noundef %36, i32 noundef %37)
  br label %39

39:                                               ; preds = %35, %21
  %.2 = phi ptr [ %38, %35 ], [ %.0, %21 ]
  %40 = phi ptr [ %38, %35 ], [ %.0, %21 ]
  br label %41

41:                                               ; preds = %39, %12
  %.12 = phi ptr [ %32, %39 ], [ %.01, %12 ]
  %.1 = phi ptr [ %.2, %39 ], [ %.0, %12 ]
  %42 = phi ptr [ %40, %39 ], [ %.0, %12 ]
  br label %8, !llvm.loop !22

43:                                               ; preds = %8
  %44 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  call void @free(ptr noundef %4)
  ret ptr %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef 16) #3
  %3 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 8
  br label %4

4:                                                ; preds = %41, %1
  %.0 = phi ptr [ %2, %1 ], [ %.1, %41 ]
  %5 = phi ptr [ %11, %41 ], [ %0, %1 ]
  %6 = phi i32 [ %42, %41 ], [ 0, %1 ]
  %7 = load i32, ptr @nrow, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %37, %9
  %.01 = phi i32 [ 0, %9 ], [ %40, %37 ]
  %.1 = phi ptr [ %.0, %9 ], [ %.2, %37 ]
  %11 = phi ptr [ %0, %37 ], [ %5, %9 ]
  %12 = phi i32 [ %39, %37 ], [ %6, %9 ]
  %13 = phi i32 [ %40, %37 ], [ 0, %9 ]
  %14 = load i32, ptr @ncol, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %10
  %17 = call ptr @make_data(i32 noundef %12, i32 noundef %13)
  call void @melt_data(ptr noundef %17, ptr noundef %11)
  %18 = call i32 @equal_data(ptr noundef %17, ptr noundef %0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = call ptr @malloc(i64 noundef 16) #3
  %22 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %21, ptr %22, align 8
  %23 = call ptr @copy_data(ptr noundef %17)
  %24 = load ptr, ptr %22, align 8
  store ptr %23, ptr %24, align 8
  %25 = load ptr, ptr %22, align 8
  %26 = getelementptr inbounds nuw %struct._list, ptr %25, i32 0, i32 1
  store ptr null, ptr %26, align 8
  %27 = load ptr, ptr %22, align 8
  br label %37

28:                                               ; preds = %16
  %29 = icmp eq i32 %.01, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i32, ptr @nrow, align 4
  %32 = sub nsw i32 %31, 1
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %32, %30 ], [ %12, %28 ]
  %35 = load i32, ptr @ncol, align 4
  %36 = sub nsw i32 %35, 1
  br label %37

37:                                               ; preds = %33, %20
  %.2 = phi ptr [ %.1, %33 ], [ %27, %20 ]
  %38 = phi i32 [ %36, %33 ], [ %.01, %20 ]
  %39 = phi i32 [ %34, %33 ], [ %12, %20 ]
  call void @free(ptr noundef %17)
  %40 = add nsw i32 %38, 1
  br label %10, !llvm.loop !23

41:                                               ; preds = %10
  %42 = add nsw i32 %12, 1
  br label %4, !llvm.loop !24

43:                                               ; preds = %4
  %44 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %2)
  store ptr %44, ptr @wanted, align 8
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

5:                                                ; preds = %16, %4
  %6 = phi ptr [ %17, %16 ], [ %0, %4 ]
  %7 = getelementptr inbounds nuw %struct._list, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8
  %12 = call i32 @get_value(ptr noundef %11)
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i1 [ false, %5 ], [ %13, %10 ]
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = load ptr, ptr %7, align 8
  br label %5, !llvm.loop !25

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 8
  %20 = call ptr @copy_data(ptr noundef %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi ptr [ %20, %18 ], [ null, %3 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %5, %7 ], [ %0, %1 ]
  %4 = getelementptr inbounds nuw %struct._play, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %2, !llvm.loop !26

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw %struct._play, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = call ptr @get_good_move(ptr noundef %10)
  ret ptr %11
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
  %14 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  ret ptr %15
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
  switch i32 2, label %81 [
    i32 1, label %8
    i32 2, label %36
    i32 3, label %61
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
  br label %81

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

43:                                               ; preds = %56, %36
  %44 = phi i32 [ %57, %56 ], [ 0, %36 ]
  %45 = phi ptr [ %49, %56 ], [ %42, %36 ]
  %46 = icmp ne ptr %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = call ptr @where(ptr noundef %45, ptr noundef %39)
  %49 = call ptr @get_good_move(ptr noundef %48)
  %50 = icmp ne ptr %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  call void @get_real_move(ptr noundef %49, ptr noundef %45, ptr noundef %1, ptr noundef %2)
  %52 = load i32, ptr %1, align 4
  %53 = load i32, ptr %2, align 4
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %44, i32 noundef %52, i32 noundef %53)
  %55 = sub nsw i32 1, %44
  call void @free(ptr noundef %45)
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i32 [ %55, %51 ], [ %44, %47 ]
  br label %43, !llvm.loop !30

58:                                               ; preds = %43
  call void @dump_play(ptr noundef %39)
  %59 = sub nsw i32 1, %44
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
  %69 = phi ptr [ %79, %77 ], [ %67, %61 ]
  %70 = icmp ne ptr %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, ptr %69, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds nuw %struct._play, ptr %69, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  call void @show_move(ptr noundef %76)
  br label %77

77:                                               ; preds = %74, %71
  %78 = getelementptr inbounds nuw %struct._play, ptr %69, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8
  br label %68, !llvm.loop !31

80:                                               ; preds = %68
  call void @dump_play(ptr noundef %67)
  br label %81

81:                                               ; preds = %80, %58, %35, %0
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
