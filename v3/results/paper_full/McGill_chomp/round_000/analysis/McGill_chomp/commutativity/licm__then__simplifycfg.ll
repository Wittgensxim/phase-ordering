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
  %10 = load ptr, ptr %2, align 8
  %11 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %16, %1
  %13 = phi i32 [ %14, %16 ], [ %.promoted, %1 ]
  %14 = add nsw i32 %13, -1
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds i32, ptr %10, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %14 to i64
  %21 = getelementptr inbounds i32, ptr %11, i64 %20
  store i32 %19, ptr %21, align 4
  br label %12, !llvm.loop !7

22:                                               ; preds = %12
  %.lcssa = phi i32 [ %14, %12 ]
  store i32 %.lcssa, ptr %4, align 4
  %23 = load ptr, ptr %3, align 8
  ret ptr %23
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
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = load ptr, ptr %2, align 8
  %.promoted = load i32, ptr %3, align 4
  %.promoted1 = load i32, ptr %4, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = phi i32 [ %31, %30 ], [ %.promoted1, %1 ]
  %10 = phi i32 [ %32, %30 ], [ %.promoted, %1 ]
  %11 = load i32, ptr @ncol, align 4
  %12 = icmp ne i32 %10, %11
  %13 = icmp ne i32 %9, 0
  %14 = xor i1 %13, true
  %or.cond = select i1 %12, i1 %14, i1 false
  br i1 %or.cond, label %15, label %.critedge

15:                                               ; preds = %8
  %16 = sext i32 %10 to i64
  %17 = getelementptr inbounds i32, ptr %5, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr @nrow, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = sext i32 %10 to i64
  %23 = getelementptr inbounds i32, ptr %7, i64 %22
  store i32 0, ptr %23, align 4
  %24 = add nsw i32 %10, 1
  br label %30

25:                                               ; preds = %15
  %26 = sext i32 %10 to i64
  %27 = getelementptr inbounds i32, ptr %6, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ 1, %25 ], [ %9, %21 ]
  %32 = phi i32 [ %10, %25 ], [ %24, %21 ]
  br label %8, !llvm.loop !9

.critedge:                                        ; preds = %8
  store i32 %10, ptr %3, align 4
  store i32 %9, ptr %4, align 4
  %33 = load i32, ptr %4, align 4
  ret i32 %33
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
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %5, align 4
  br label %11

11:                                               ; preds = %29, %2
  %12 = phi i32 [ %13, %29 ], [ %.promoted, %2 ]
  %13 = add nsw i32 %12, -1
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i32, ptr %7, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %13 to i64
  %20 = getelementptr inbounds i32, ptr %8, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = sext i32 %13 to i64
  %25 = getelementptr inbounds i32, ptr %9, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %13 to i64
  %28 = getelementptr inbounds i32, ptr %10, i64 %27
  store i32 %26, ptr %28, align 4
  br label %29

29:                                               ; preds = %23, %15
  br label %11, !llvm.loop !10

30:                                               ; preds = %11
  %.lcssa = phi i32 [ %13, %11 ]
  store i32 %.lcssa, ptr %5, align 4
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
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %5, align 4
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi i32 [ %.promoted, %2 ], [ %11, %13 ]
  %11 = add nsw i32 %10, -1
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %.critedge

13:                                               ; preds = %9
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds i32, ptr %7, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %11 to i64
  %18 = getelementptr inbounds i32, ptr %8, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %9, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %9, %13
  %.lcssa = phi i32 [ %11, %13 ], [ %11, %9 ]
  store i32 %.lcssa, ptr %5, align 4
  %21 = load i32, ptr %5, align 4
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i32
  ret i32 %23
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
  %6 = load i32, ptr @ncol, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr %2, align 8
  %.promoted = load i32, ptr %4, align 4
  %.promoted2 = load i32, ptr %3, align 4
  br label %9

9:                                                ; preds = %19, %1
  %10 = phi i32 [ %22, %19 ], [ %.promoted2, %1 ]
  %11 = phi i32 [ %23, %19 ], [ %.promoted, %1 ]
  %12 = icmp ne i32 %11, %6
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %9
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds i32, ptr %7, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, %10
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  %.lcssa4 = phi i32 [ %10, %13 ]
  %.lcssa1 = phi i32 [ %11, %13 ]
  store i32 %.lcssa1, ptr %4, align 4
  store i32 %.lcssa4, ptr %3, align 4
  br label %24

19:                                               ; preds = %13
  %20 = sext i32 %11 to i64
  %21 = getelementptr inbounds i32, ptr %8, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %11, 1
  br label %9, !llvm.loop !12

.loopexit:                                        ; preds = %9
  %.lcssa3 = phi i32 [ %10, %9 ]
  %.lcssa = phi i32 [ %11, %9 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa3, ptr %3, align 4
  br label %24

24:                                               ; preds = %.loopexit, %18
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr @ncol, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  ret i32 %28
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
  %5 = load ptr, ptr %2, align 8
  %.promoted = load ptr, ptr %3, align 8
  br label %6

6:                                                ; preds = %13, %1
  %7 = phi ptr [ %15, %13 ], [ %.promoted, %1 ]
  %8 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @equal_data(ptr noundef %9, ptr noundef %5)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  br label %6, !llvm.loop !13

16:                                               ; preds = %6
  %.lcssa = phi ptr [ %7, %6 ]
  store ptr %.lcssa, ptr %3, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds nuw %struct._play, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr %2, align 8
  %.promoted = load i32, ptr %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = phi i32 [ %10, %19 ], [ %.promoted, %1 ]
  %7 = load i32, ptr @ncol, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = add nsw i32 %6, 1
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %4, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13)
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 %10, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = call i32 @putchar(i32 noundef 44)
  br label %19

19:                                               ; preds = %17, %9
  br label %5, !llvm.loop !14

20:                                               ; preds = %5
  %.lcssa = phi i32 [ %6, %5 ]
  store i32 %.lcssa, ptr %3, align 4
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
  %.promoted = load ptr, ptr %2, align 8
  br label %3

3:                                                ; preds = %6, %1
  %4 = phi ptr [ %10, %6 ], [ %.promoted, %1 ]
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  call void @show_move(ptr noundef %8)
  %9 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %3, !llvm.loop !15

11:                                               ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  store ptr %.lcssa, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.promoted = load ptr, ptr %2, align 8
  br label %3

3:                                                ; preds = %6, %1
  %4 = phi ptr [ %17, %6 ], [ %.promoted, %1 ]
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %8 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @show_data(ptr noundef %9)
  %10 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 0
  %11 = load i32, ptr %10, align 8
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %11)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %14 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  call void @show_list(ptr noundef %15)
  %16 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  br label %3, !llvm.loop !16

18:                                               ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  store ptr %.lcssa, ptr %2, align 8
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
  %6 = load ptr, ptr %3, align 8
  %.promoted = load ptr, ptr %4, align 8
  br label %7

7:                                                ; preds = %16, %1
  %8 = phi ptr [ %18, %16 ], [ %.promoted, %1 ]
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  %.lcssa1 = phi ptr [ %8, %10 ]
  store ptr %.lcssa1, ptr %4, align 8
  br label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  br label %7, !llvm.loop !17

.loopexit:                                        ; preds = %7
  %.lcssa = phi ptr [ %8, %7 ]
  store ptr %.lcssa, ptr %4, align 8
  br label %19

19:                                               ; preds = %.loopexit, %15
  %20 = load ptr, ptr %4, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, ptr %2, align 4
  br label %24

23:                                               ; preds = %19
  store i32 1, ptr %2, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, ptr %2, align 4
  ret i32 %25
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
  %11 = load i32, ptr %4, align 4
  %12 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %5, align 4
  br label %13

13:                                               ; preds = %16, %2
  %14 = phi i32 [ %20, %16 ], [ %.promoted, %2 ]
  %15 = icmp ne i32 %14, %11
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, ptr @nrow, align 4
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds i32, ptr %12, i64 %18
  store i32 %17, ptr %19, align 4
  %20 = add nsw i32 %14, 1
  br label %13, !llvm.loop !18

21:                                               ; preds = %13
  %.lcssa = phi i32 [ %14, %13 ]
  store i32 %.lcssa, ptr %5, align 4
  %22 = load i32, ptr %3, align 4
  %23 = load ptr, ptr %6, align 8
  %.promoted1 = load i32, ptr %5, align 4
  br label %24

24:                                               ; preds = %28, %21
  %25 = phi i32 [ %31, %28 ], [ %.promoted1, %21 ]
  %26 = load i32, ptr @ncol, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = sext i32 %25 to i64
  %30 = getelementptr inbounds i32, ptr %23, i64 %29
  store i32 %22, ptr %30, align 4
  %31 = add nsw i32 %25, 1
  br label %24, !llvm.loop !19

32:                                               ; preds = %24
  %.lcssa2 = phi i32 [ %25, %24 ]
  store i32 %.lcssa2, ptr %5, align 4
  %33 = load ptr, ptr %6, align 8
  ret ptr %33
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
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %6, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = load ptr, ptr %6, align 8
  %.promoted7 = load i32, ptr %7, align 4
  %.promoted9 = load i32, ptr %8, align 4
  %.promoted = load ptr, ptr %9, align 8
  %.promoted12 = load ptr, ptr %11, align 8
  br label %24

24:                                               ; preds = %80, %3
  %.lcssa613 = phi ptr [ %.lcssa6, %80 ], [ %.promoted12, %3 ]
  %.lcssa411 = phi ptr [ %.lcssa4, %80 ], [ %.promoted, %3 ]
  %.lcssa10 = phi i32 [ %.lcssa, %80 ], [ %.promoted9, %3 ]
  %.lcssa28 = phi i32 [ %81, %80 ], [ %.promoted7, %3 ]
  %25 = load i32, ptr @nrow, align 4
  %26 = icmp ne i32 %.lcssa28, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %24, %75
  %28 = phi ptr [ %76, %75 ], [ %.lcssa613, %24 ]
  %29 = phi ptr [ %35, %75 ], [ %.lcssa411, %24 ]
  %30 = phi i32 [ %77, %75 ], [ %.lcssa28, %24 ]
  %31 = phi i32 [ %79, %75 ], [ 0, %24 ]
  %32 = load i32, ptr @ncol, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %27
  %35 = call ptr @make_data(i32 noundef %30, i32 noundef %31)
  call void @melt_data(ptr noundef %35, ptr noundef %17)
  %36 = call i32 @equal_data(ptr noundef %35, ptr noundef %18)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %34
  %39 = call ptr @malloc(i64 noundef 16) #3
  %40 = getelementptr inbounds nuw %struct._list, ptr %28, i32 0, i32 1
  store ptr %39, ptr %40, align 8
  %41 = call ptr @copy_data(ptr noundef %35)
  %42 = getelementptr inbounds nuw %struct._list, ptr %28, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds nuw %struct._list, ptr %43, i32 0, i32 0
  store ptr %41, ptr %44, align 8
  %45 = getelementptr inbounds nuw %struct._list, ptr %28, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds nuw %struct._list, ptr %46, i32 0, i32 1
  store ptr null, ptr %47, align 8
  %48 = getelementptr inbounds nuw %struct._list, ptr %28, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = load i32, ptr %19, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = call i32 @get_value(ptr noundef %35)
  store i32 %53, ptr %20, align 4
  br label %54

54:                                               ; preds = %52, %38
  %55 = load i32, ptr %21, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %22, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i32, ptr @ncol, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load i32, ptr @nrow, align 4
  %64 = sub nsw i32 %63, 1
  %65 = call i32 @in_wanted(ptr noundef %35)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  store i32 2, ptr %23, align 4
  br label %75

68:                                               ; preds = %34
  %69 = icmp eq i32 %31, 0
  %70 = load i32, ptr @nrow, align 4
  %71 = sub nsw i32 %70, 1
  %72 = select i1 %69, i32 %71, i32 %30
  %73 = load i32, ptr @ncol, align 4
  %74 = sub nsw i32 %73, 1
  br label %75

75:                                               ; preds = %54, %57, %67, %60, %68
  %76 = phi ptr [ %28, %68 ], [ %49, %60 ], [ %49, %67 ], [ %49, %57 ], [ %49, %54 ]
  %77 = phi i32 [ %72, %68 ], [ %30, %54 ], [ %30, %57 ], [ %64, %67 ], [ %64, %60 ]
  %78 = phi i32 [ %74, %68 ], [ %31, %54 ], [ %31, %57 ], [ %62, %67 ], [ %62, %60 ]
  call void @free(ptr noundef %35)
  %79 = add nsw i32 %78, 1
  br label %27, !llvm.loop !20

80:                                               ; preds = %27
  %.lcssa6 = phi ptr [ %28, %27 ]
  %.lcssa4 = phi ptr [ %29, %27 ]
  %.lcssa2 = phi i32 [ %30, %27 ]
  %.lcssa = phi i32 [ %31, %27 ]
  %81 = add nsw i32 %.lcssa2, 1
  br label %24, !llvm.loop !21

82:                                               ; preds = %24
  %.lcssa613.lcssa = phi ptr [ %.lcssa613, %24 ]
  %.lcssa411.lcssa = phi ptr [ %.lcssa411, %24 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %24 ]
  %.lcssa28.lcssa = phi i32 [ %.lcssa28, %24 ]
  store i32 %.lcssa28.lcssa, ptr %7, align 4
  store i32 %.lcssa10.lcssa, ptr %8, align 4
  store ptr %.lcssa411.lcssa, ptr %9, align 8
  store ptr %.lcssa613.lcssa, ptr %11, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds nuw %struct._list, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8
  store ptr %85, ptr %11, align 8
  %86 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %86)
  %87 = load ptr, ptr %11, align 8
  %88 = icmp ne ptr %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load ptr, ptr %5, align 8
  %91 = load i32, ptr %90, align 4
  %92 = sub nsw i32 1, %91
  %93 = load ptr, ptr %5, align 8
  store i32 %92, ptr %93, align 4
  br label %94

94:                                               ; preds = %89, %82
  %95 = load ptr, ptr %11, align 8
  ret ptr %95
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
  %11 = getelementptr inbounds i32, ptr %10, i64 0
  %12 = load i32, ptr %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr %11, align 4
  %.promoted = load ptr, ptr %4, align 8
  %.promoted1 = load ptr, ptr %6, align 8
  br label %14

14:                                               ; preds = %54, %1
  %15 = phi ptr [ %55, %54 ], [ %.promoted1, %1 ]
  %16 = phi ptr [ %56, %54 ], [ %.promoted, %1 ]
  %17 = call i32 @next_data(ptr noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %14
  %20 = call i32 @valid_data(ptr noundef %16)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = call ptr @malloc(i64 noundef 32) #3
  %24 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 3
  store ptr %23, ptr %24, align 8
  %25 = load ptr, ptr @game_tree, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  store ptr %29, ptr @game_tree, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = call ptr @copy_data(ptr noundef %16)
  %32 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw %struct._play, ptr %33, i32 0, i32 1
  store ptr %31, ptr %34, align 8
  %35 = call ptr @make_list(ptr noundef %16, ptr noundef %3, ptr noundef %2)
  %36 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds nuw %struct._play, ptr %37, i32 0, i32 2
  store ptr %35, ptr %38, align 8
  %39 = load i32, ptr %3, align 4
  %40 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds nuw %struct._play, ptr %41, i32 0, i32 0
  store i32 %39, ptr %42, align 8
  %43 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw %struct._play, ptr %44, i32 0, i32 3
  store ptr null, ptr %45, align 8
  %46 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = load i32, ptr %2, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  call void @free(ptr noundef %16)
  %51 = load i32, ptr @nrow, align 4
  %52 = load i32, ptr @ncol, align 4
  %53 = call ptr @make_data(i32 noundef %51, i32 noundef %52)
  br label %54

54:                                               ; preds = %30, %50, %19
  %55 = phi ptr [ %15, %19 ], [ %47, %50 ], [ %47, %30 ]
  %56 = phi ptr [ %16, %19 ], [ %53, %50 ], [ %16, %30 ]
  br label %14, !llvm.loop !22

57:                                               ; preds = %14
  %.lcssa2 = phi ptr [ %15, %14 ]
  %.lcssa = phi ptr [ %16, %14 ]
  store ptr %.lcssa, ptr %4, align 8
  store ptr %.lcssa2, ptr %6, align 8
  %58 = load ptr, ptr %5, align 8
  %59 = getelementptr inbounds nuw %struct._play, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  store ptr %60, ptr %6, align 8
  %61 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %61)
  %62 = load ptr, ptr %6, align 8
  ret ptr %62
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
  %12 = load ptr, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  %.promoted7 = load i32, ptr %3, align 4
  %.promoted9 = load i32, ptr %4, align 4
  %.promoted = load ptr, ptr %5, align 8
  %.promoted12 = load ptr, ptr %7, align 8
  br label %14

14:                                               ; preds = %52, %1
  %.lcssa613 = phi ptr [ %.lcssa6, %52 ], [ %.promoted12, %1 ]
  %.lcssa411 = phi ptr [ %.lcssa4, %52 ], [ %.promoted, %1 ]
  %.lcssa10 = phi i32 [ %.lcssa, %52 ], [ %.promoted9, %1 ]
  %.lcssa28 = phi i32 [ %53, %52 ], [ %.promoted7, %1 ]
  %15 = load i32, ptr @nrow, align 4
  %16 = icmp ne i32 %.lcssa28, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %14, %47
  %18 = phi ptr [ %48, %47 ], [ %.lcssa613, %14 ]
  %19 = phi ptr [ %25, %47 ], [ %.lcssa411, %14 ]
  %20 = phi i32 [ %49, %47 ], [ %.lcssa28, %14 ]
  %21 = phi i32 [ %51, %47 ], [ 0, %14 ]
  %22 = load i32, ptr @ncol, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  %25 = call ptr @make_data(i32 noundef %20, i32 noundef %21)
  call void @melt_data(ptr noundef %25, ptr noundef %12)
  %26 = call i32 @equal_data(ptr noundef %25, ptr noundef %13)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = call ptr @malloc(i64 noundef 16) #3
  %30 = getelementptr inbounds nuw %struct._list, ptr %18, i32 0, i32 1
  store ptr %29, ptr %30, align 8
  %31 = call ptr @copy_data(ptr noundef %25)
  %32 = getelementptr inbounds nuw %struct._list, ptr %18, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw %struct._list, ptr %33, i32 0, i32 0
  store ptr %31, ptr %34, align 8
  %35 = getelementptr inbounds nuw %struct._list, ptr %18, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw %struct._list, ptr %36, i32 0, i32 1
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds nuw %struct._list, ptr %18, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  br label %47

40:                                               ; preds = %24
  %41 = icmp eq i32 %21, 0
  %42 = load i32, ptr @nrow, align 4
  %43 = sub nsw i32 %42, 1
  %44 = select i1 %41, i32 %43, i32 %20
  %45 = load i32, ptr @ncol, align 4
  %46 = sub nsw i32 %45, 1
  br label %47

47:                                               ; preds = %40, %28
  %48 = phi ptr [ %18, %40 ], [ %39, %28 ]
  %49 = phi i32 [ %44, %40 ], [ %20, %28 ]
  %50 = phi i32 [ %46, %40 ], [ %21, %28 ]
  call void @free(ptr noundef %25)
  %51 = add nsw i32 %50, 1
  br label %17, !llvm.loop !23

52:                                               ; preds = %17
  %.lcssa6 = phi ptr [ %18, %17 ]
  %.lcssa4 = phi ptr [ %19, %17 ]
  %.lcssa2 = phi i32 [ %20, %17 ]
  %.lcssa = phi i32 [ %21, %17 ]
  %53 = add nsw i32 %.lcssa2, 1
  br label %14, !llvm.loop !24

54:                                               ; preds = %14
  %.lcssa613.lcssa = phi ptr [ %.lcssa613, %14 ]
  %.lcssa411.lcssa = phi ptr [ %.lcssa411, %14 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %14 ]
  %.lcssa28.lcssa = phi i32 [ %.lcssa28, %14 ]
  store i32 %.lcssa28.lcssa, ptr %3, align 4
  store i32 %.lcssa10.lcssa, ptr %4, align 4
  store ptr %.lcssa411.lcssa, ptr %5, align 8
  store ptr %.lcssa613.lcssa, ptr %7, align 8
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr inbounds nuw %struct._list, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  store ptr %57, ptr %7, align 8
  %58 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %58)
  %59 = load ptr, ptr %7, align 8
  store ptr %59, ptr @wanted, align 8
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
  br label %25

7:                                                ; preds = %1
  %.promoted = load ptr, ptr %3, align 8
  br label %8

8:                                                ; preds = %18, %7
  %9 = phi ptr [ %20, %18 ], [ %.promoted, %7 ]
  %10 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %.critedge

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @get_value(ptr noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %.critedge

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  br label %8, !llvm.loop !25

.critedge:                                        ; preds = %8, %13
  %.lcssa = phi ptr [ %9, %13 ], [ %9, %8 ]
  store ptr %.lcssa, ptr %3, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds nuw %struct._list, ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = call ptr @copy_data(ptr noundef %23)
  store ptr %24, ptr %2, align 8
  br label %25

25:                                               ; preds = %.critedge, %6
  %26 = load ptr, ptr %2, align 8
  ret ptr %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.promoted = load ptr, ptr %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = phi ptr [ %11, %9 ], [ %.promoted, %1 ]
  %6 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  br label %4, !llvm.loop !26

12:                                               ; preds = %4
  %.lcssa = phi ptr [ %5, %4 ]
  store ptr %.lcssa, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct._play, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = call ptr @get_good_move(ptr noundef %15)
  store ptr %16, ptr %3, align 8
  %17 = load ptr, ptr %3, align 8
  ret ptr %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %.promoted = load ptr, ptr %4, align 8
  br label %6

6:                                                ; preds = %13, %2
  %7 = phi ptr [ %15, %13 ], [ %.promoted, %2 ]
  %8 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @equal_data(ptr noundef %9, ptr noundef %5)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  br label %6, !llvm.loop !27

16:                                               ; preds = %6
  %.lcssa = phi ptr [ %7, %6 ]
  store ptr %.lcssa, ptr %4, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct._play, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  ret ptr %19
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
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = load ptr, ptr %8, align 8
  br label %15

15:                                               ; preds = %25, %4
  %16 = load i32, ptr %11, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %10, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %13, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %12, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, ptr %14, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %14, align 4
  br label %15, !llvm.loop !28

28:                                               ; preds = %15
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
  switch i32 %15, label %99 [
    i32 1, label %16
    i32 2, label %47
    i32 3, label %76
  ]

16:                                               ; preds = %0
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %18 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %20 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %22 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %4)
  %.promoted7 = load ptr, ptr %9, align 8
  %.promoted9 = load ptr, ptr %6, align 8
  br label %23

23:                                               ; preds = %29, %16
  %24 = phi ptr [ %34, %29 ], [ %.promoted9, %16 ]
  %25 = phi ptr [ %33, %29 ], [ %.promoted7, %16 ]
  %26 = load i32, ptr @nrow, align 4
  %27 = load i32, ptr %4, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load i32, ptr @nrow, align 4
  %31 = load i32, ptr @ncol, align 4
  %32 = call ptr @make_data(i32 noundef %30, i32 noundef %31)
  call void @make_wanted(ptr noundef %32)
  %33 = call ptr @make_play(i32 noundef 0)
  %34 = call ptr @get_winning_move(ptr noundef %33)
  %35 = load i32, ptr @nrow, align 4
  %36 = load i32, ptr @ncol, align 4
  %37 = call ptr @make_data(i32 noundef %35, i32 noundef %36)
  call void @get_real_move(ptr noundef %34, ptr noundef %37, ptr noundef %2, ptr noundef %3)
  %38 = load i32, ptr @nrow, align 4
  %39 = load i32, ptr @ncol, align 4
  %40 = load i32, ptr %2, align 4
  %41 = load i32, ptr %3, align 4
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41)
  call void @dump_play(ptr noundef %33)
  %43 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %43)
  %44 = load i32, ptr @nrow, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr @nrow, align 4
  br label %23, !llvm.loop !29

46:                                               ; preds = %23
  %.lcssa10 = phi ptr [ %24, %23 ]
  %.lcssa8 = phi ptr [ %25, %23 ]
  store ptr %.lcssa8, ptr %9, align 8
  store ptr %.lcssa10, ptr %6, align 8
  br label %99

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
  %54 = load ptr, ptr %9, align 8
  %.promoted1 = load ptr, ptr %7, align 8
  %.promoted3 = load ptr, ptr %8, align 8
  %.promoted5 = load i32, ptr %5, align 4
  br label %55

55:                                               ; preds = %69, %47
  %56 = phi i32 [ %70, %69 ], [ %.promoted5, %47 ]
  %57 = phi ptr [ %62, %69 ], [ %.promoted3, %47 ]
  %58 = phi ptr [ %62, %69 ], [ %.promoted1, %47 ]
  %59 = icmp ne ptr %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = call ptr @where(ptr noundef %58, ptr noundef %54)
  %62 = call ptr @get_good_move(ptr noundef %61)
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  call void @get_real_move(ptr noundef %62, ptr noundef %58, ptr noundef %2, ptr noundef %3)
  %65 = load i32, ptr %2, align 4
  %66 = load i32, ptr %3, align 4
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %56, i32 noundef %65, i32 noundef %66)
  %68 = sub nsw i32 1, %56
  call void @free(ptr noundef %58)
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i32 [ %68, %64 ], [ %56, %60 ]
  br label %55, !llvm.loop !30

71:                                               ; preds = %55
  %.lcssa6 = phi i32 [ %56, %55 ]
  %.lcssa4 = phi ptr [ %57, %55 ]
  %.lcssa2 = phi ptr [ %58, %55 ]
  store ptr %.lcssa2, ptr %7, align 8
  store ptr %.lcssa4, ptr %8, align 8
  store i32 %.lcssa6, ptr %5, align 4
  %72 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %72)
  %73 = load i32, ptr %5, align 4
  %74 = sub nsw i32 1, %73
  %75 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %74)
  br label %99

76:                                               ; preds = %0
  %77 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %78 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %80 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %81 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %82 = call ptr @make_play(i32 noundef 1)
  store ptr %82, ptr %9, align 8
  %83 = load ptr, ptr %9, align 8
  store ptr %83, ptr %10, align 8
  %.promoted = load ptr, ptr %10, align 8
  br label %84

84:                                               ; preds = %94, %76
  %85 = phi ptr [ %96, %94 ], [ %.promoted, %76 ]
  %86 = icmp ne ptr %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = getelementptr inbounds nuw %struct._play, ptr %85, i32 0, i32 0
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = getelementptr inbounds nuw %struct._play, ptr %85, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8
  call void @show_move(ptr noundef %93)
  br label %94

94:                                               ; preds = %91, %87
  %95 = getelementptr inbounds nuw %struct._play, ptr %85, i32 0, i32 3
  %96 = load ptr, ptr %95, align 8
  br label %84, !llvm.loop !31

97:                                               ; preds = %84
  %.lcssa = phi ptr [ %85, %84 ]
  store ptr %.lcssa, ptr %10, align 8
  %98 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %98)
  br label %99

99:                                               ; preds = %97, %71, %46, %0
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
