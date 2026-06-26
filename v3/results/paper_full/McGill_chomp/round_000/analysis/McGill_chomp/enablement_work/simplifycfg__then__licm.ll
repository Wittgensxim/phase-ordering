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

8:                                                ; preds = %31, %1
  %9 = phi i32 [ %32, %31 ], [ %.promoted1, %1 ]
  %10 = phi i32 [ %33, %31 ], [ %.promoted, %1 ]
  %11 = load i32, ptr @ncol, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %.critedge

13:                                               ; preds = %8
  %14 = icmp ne i32 %9, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %.critedge

16:                                               ; preds = %13
  %17 = sext i32 %10 to i64
  %18 = getelementptr inbounds i32, ptr %5, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr @nrow, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = sext i32 %10 to i64
  %24 = getelementptr inbounds i32, ptr %7, i64 %23
  store i32 0, ptr %24, align 4
  %25 = add nsw i32 %10, 1
  br label %31

26:                                               ; preds = %16
  %27 = sext i32 %10 to i64
  %28 = getelementptr inbounds i32, ptr %6, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ 1, %26 ], [ %9, %22 ]
  %33 = phi i32 [ %10, %26 ], [ %25, %22 ]
  br label %8, !llvm.loop !9

.critedge:                                        ; preds = %8, %13
  %.lcssa2 = phi i32 [ %9, %8 ], [ %9, %13 ]
  %.lcssa = phi i32 [ %10, %8 ], [ %10, %13 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 4
  %34 = load i32, ptr %4, align 4
  ret i32 %34
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
  %10 = phi i32 [ %11, %13 ], [ %.promoted, %2 ]
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
  %.lcssa = phi i32 [ %11, %9 ], [ %11, %13 ]
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
  %.promoted1 = load i32, ptr %3, align 4
  br label %9

9:                                                ; preds = %18, %1
  %10 = phi i32 [ %21, %18 ], [ %.promoted1, %1 ]
  %11 = phi i32 [ %22, %18 ], [ %.promoted, %1 ]
  %12 = icmp ne i32 %11, %6
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds i32, ptr %7, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, %10
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = sext i32 %11 to i64
  %20 = getelementptr inbounds i32, ptr %8, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %11, 1
  br label %9, !llvm.loop !12

23:                                               ; preds = %13, %9
  %.lcssa2 = phi i32 [ %10, %13 ], [ %10, %9 ]
  %.lcssa = phi i32 [ %11, %13 ], [ %11, %9 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa2, ptr %3, align 4
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr @ncol, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  ret i32 %27
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

7:                                                ; preds = %15, %1
  %8 = phi ptr [ %17, %15 ], [ %.promoted, %1 ]
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  br label %7, !llvm.loop !17

18:                                               ; preds = %10, %7
  %.lcssa = phi ptr [ %8, %10 ], [ %8, %7 ]
  store ptr %.lcssa, ptr %4, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, ptr %2, align 4
  br label %23

22:                                               ; preds = %18
  store i32 1, ptr %2, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, ptr %2, align 4
  ret i32 %24
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

13:                                               ; preds = %18, %2
  %14 = phi i32 [ %22, %18 ], [ %.promoted, %2 ]
  %15 = icmp ne i32 %14, %11
  br i1 %15, label %18, label %.preheader

.preheader:                                       ; preds = %13
  %.lcssa = phi i32 [ %14, %13 ]
  store i32 %.lcssa, ptr %5, align 4
  %16 = load i32, ptr %3, align 4
  %17 = load ptr, ptr %6, align 8
  %.promoted1 = load i32, ptr %5, align 4
  br label %23

18:                                               ; preds = %13
  %19 = load i32, ptr @nrow, align 4
  %20 = sext i32 %14 to i64
  %21 = getelementptr inbounds i32, ptr %12, i64 %20
  store i32 %19, ptr %21, align 4
  %22 = add nsw i32 %14, 1
  br label %13, !llvm.loop !18

23:                                               ; preds = %.preheader, %27
  %24 = phi i32 [ %.promoted1, %.preheader ], [ %30, %27 ]
  %25 = load i32, ptr @ncol, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds i32, ptr %17, i64 %28
  store i32 %16, ptr %29, align 4
  %30 = add nsw i32 %24, 1
  br label %23, !llvm.loop !19

31:                                               ; preds = %23
  %.lcssa2 = phi i32 [ %24, %23 ]
  store i32 %.lcssa2, ptr %5, align 4
  %32 = load ptr, ptr %6, align 8
  ret ptr %32
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

24:                                               ; preds = %83, %3
  %.lcssa613 = phi ptr [ %.lcssa6, %83 ], [ %.promoted12, %3 ]
  %.lcssa411 = phi ptr [ %.lcssa4, %83 ], [ %.promoted, %3 ]
  %.lcssa10 = phi i32 [ %.lcssa, %83 ], [ %.promoted9, %3 ]
  %.lcssa28 = phi i32 [ %84, %83 ], [ %.promoted7, %3 ]
  %25 = load i32, ptr @nrow, align 4
  %26 = icmp ne i32 %.lcssa28, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %78, %27
  %29 = phi ptr [ %79, %78 ], [ %.lcssa613, %27 ]
  %30 = phi ptr [ %36, %78 ], [ %.lcssa411, %27 ]
  %31 = phi i32 [ %80, %78 ], [ %.lcssa28, %27 ]
  %32 = phi i32 [ %82, %78 ], [ 0, %27 ]
  %33 = load i32, ptr @ncol, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %28
  %36 = call ptr @make_data(i32 noundef %31, i32 noundef %32)
  call void @melt_data(ptr noundef %36, ptr noundef %17)
  %37 = call i32 @equal_data(ptr noundef %36, ptr noundef %18)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %69, label %39

39:                                               ; preds = %35
  %40 = call ptr @malloc(i64 noundef 16) #3
  %41 = getelementptr inbounds nuw %struct._list, ptr %29, i32 0, i32 1
  store ptr %40, ptr %41, align 8
  %42 = call ptr @copy_data(ptr noundef %36)
  %43 = getelementptr inbounds nuw %struct._list, ptr %29, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw %struct._list, ptr %44, i32 0, i32 0
  store ptr %42, ptr %45, align 8
  %46 = getelementptr inbounds nuw %struct._list, ptr %29, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds nuw %struct._list, ptr %47, i32 0, i32 1
  store ptr null, ptr %48, align 8
  %49 = getelementptr inbounds nuw %struct._list, ptr %29, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = load i32, ptr %19, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = call i32 @get_value(ptr noundef %36)
  store i32 %54, ptr %20, align 4
  br label %55

55:                                               ; preds = %53, %39
  %56 = load i32, ptr %21, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %22, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i32, ptr @ncol, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i32, ptr @nrow, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @in_wanted(ptr noundef %36)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  store i32 2, ptr %23, align 4
  br label %78

69:                                               ; preds = %35
  %70 = icmp eq i32 %32, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i32, ptr @nrow, align 4
  %73 = sub nsw i32 %72, 1
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i32 [ %73, %71 ], [ %31, %69 ]
  %76 = load i32, ptr @ncol, align 4
  %77 = sub nsw i32 %76, 1
  br label %78

78:                                               ; preds = %55, %58, %68, %61, %74
  %79 = phi ptr [ %50, %55 ], [ %50, %58 ], [ %50, %68 ], [ %50, %61 ], [ %29, %74 ]
  %80 = phi i32 [ %31, %55 ], [ %31, %58 ], [ %65, %68 ], [ %65, %61 ], [ %75, %74 ]
  %81 = phi i32 [ %32, %55 ], [ %32, %58 ], [ %63, %68 ], [ %63, %61 ], [ %77, %74 ]
  call void @free(ptr noundef %36)
  %82 = add nsw i32 %81, 1
  br label %28, !llvm.loop !20

83:                                               ; preds = %28
  %.lcssa6 = phi ptr [ %29, %28 ]
  %.lcssa4 = phi ptr [ %30, %28 ]
  %.lcssa2 = phi i32 [ %31, %28 ]
  %.lcssa = phi i32 [ %32, %28 ]
  %84 = add nsw i32 %.lcssa2, 1
  br label %24, !llvm.loop !21

85:                                               ; preds = %24
  %.lcssa613.lcssa = phi ptr [ %.lcssa613, %24 ]
  %.lcssa411.lcssa = phi ptr [ %.lcssa411, %24 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %24 ]
  %.lcssa28.lcssa = phi i32 [ %.lcssa28, %24 ]
  store i32 %.lcssa28.lcssa, ptr %7, align 4
  store i32 %.lcssa10.lcssa, ptr %8, align 4
  store ptr %.lcssa411.lcssa, ptr %9, align 8
  store ptr %.lcssa613.lcssa, ptr %11, align 8
  %86 = load ptr, ptr %10, align 8
  %87 = getelementptr inbounds nuw %struct._list, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8
  store ptr %88, ptr %11, align 8
  %89 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %89)
  %90 = load ptr, ptr %11, align 8
  %91 = icmp ne ptr %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load ptr, ptr %5, align 8
  %94 = load i32, ptr %93, align 4
  %95 = sub nsw i32 1, %94
  %96 = load ptr, ptr %5, align 8
  store i32 %95, ptr %96, align 4
  br label %97

97:                                               ; preds = %92, %85
  %98 = load ptr, ptr %11, align 8
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
  %55 = phi ptr [ %47, %30 ], [ %47, %50 ], [ %15, %19 ]
  %56 = phi ptr [ %16, %30 ], [ %53, %50 ], [ %16, %19 ]
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

14:                                               ; preds = %55, %1
  %.lcssa613 = phi ptr [ %.lcssa6, %55 ], [ %.promoted12, %1 ]
  %.lcssa411 = phi ptr [ %.lcssa4, %55 ], [ %.promoted, %1 ]
  %.lcssa10 = phi i32 [ %.lcssa, %55 ], [ %.promoted9, %1 ]
  %.lcssa28 = phi i32 [ %56, %55 ], [ %.promoted7, %1 ]
  %15 = load i32, ptr @nrow, align 4
  %16 = icmp ne i32 %.lcssa28, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %50, %17
  %19 = phi ptr [ %51, %50 ], [ %.lcssa613, %17 ]
  %20 = phi ptr [ %26, %50 ], [ %.lcssa411, %17 ]
  %21 = phi i32 [ %52, %50 ], [ %.lcssa28, %17 ]
  %22 = phi i32 [ %54, %50 ], [ 0, %17 ]
  %23 = load i32, ptr @ncol, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %18
  %26 = call ptr @make_data(i32 noundef %21, i32 noundef %22)
  call void @melt_data(ptr noundef %26, ptr noundef %12)
  %27 = call i32 @equal_data(ptr noundef %26, ptr noundef %13)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = call ptr @malloc(i64 noundef 16) #3
  %31 = getelementptr inbounds nuw %struct._list, ptr %19, i32 0, i32 1
  store ptr %30, ptr %31, align 8
  %32 = call ptr @copy_data(ptr noundef %26)
  %33 = getelementptr inbounds nuw %struct._list, ptr %19, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds nuw %struct._list, ptr %34, i32 0, i32 0
  store ptr %32, ptr %35, align 8
  %36 = getelementptr inbounds nuw %struct._list, ptr %19, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds nuw %struct._list, ptr %37, i32 0, i32 1
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds nuw %struct._list, ptr %19, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  br label %50

41:                                               ; preds = %25
  %42 = icmp eq i32 %22, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, ptr @nrow, align 4
  %45 = sub nsw i32 %44, 1
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %45, %43 ], [ %21, %41 ]
  %48 = load i32, ptr @ncol, align 4
  %49 = sub nsw i32 %48, 1
  br label %50

50:                                               ; preds = %46, %29
  %51 = phi ptr [ %19, %46 ], [ %40, %29 ]
  %52 = phi i32 [ %47, %46 ], [ %21, %29 ]
  %53 = phi i32 [ %49, %46 ], [ %22, %29 ]
  call void @free(ptr noundef %26)
  %54 = add nsw i32 %53, 1
  br label %18, !llvm.loop !23

55:                                               ; preds = %18
  %.lcssa6 = phi ptr [ %19, %18 ]
  %.lcssa4 = phi ptr [ %20, %18 ]
  %.lcssa2 = phi i32 [ %21, %18 ]
  %.lcssa = phi i32 [ %22, %18 ]
  %56 = add nsw i32 %.lcssa2, 1
  br label %14, !llvm.loop !24

57:                                               ; preds = %14
  %.lcssa613.lcssa = phi ptr [ %.lcssa613, %14 ]
  %.lcssa411.lcssa = phi ptr [ %.lcssa411, %14 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %14 ]
  %.lcssa28.lcssa = phi i32 [ %.lcssa28, %14 ]
  store i32 %.lcssa28.lcssa, ptr %3, align 4
  store i32 %.lcssa10.lcssa, ptr %4, align 4
  store ptr %.lcssa411.lcssa, ptr %5, align 8
  store ptr %.lcssa613.lcssa, ptr %7, align 8
  %58 = load ptr, ptr %6, align 8
  %59 = getelementptr inbounds nuw %struct._list, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  store ptr %60, ptr %7, align 8
  %61 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %61)
  %62 = load ptr, ptr %7, align 8
  store ptr %62, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %.preheader

.preheader:                                       ; preds = %1
  %.promoted = load ptr, ptr %3, align 8
  br label %7

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %24

7:                                                ; preds = %.preheader, %17
  %8 = phi ptr [ %.promoted, %.preheader ], [ %19, %17 ]
  %9 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %.critedge

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @get_value(ptr noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %.critedge

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  br label %7, !llvm.loop !25

.critedge:                                        ; preds = %7, %12
  %.lcssa = phi ptr [ %8, %7 ], [ %8, %12 ]
  store ptr %.lcssa, ptr %3, align 8
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds nuw %struct._list, ptr %20, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8
  %23 = call ptr @copy_data(ptr noundef %22)
  store ptr %23, ptr %2, align 8
  br label %24

24:                                               ; preds = %.critedge, %6
  %25 = load ptr, ptr %2, align 8
  ret ptr %25
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
  switch i32 %15, label %98 [
    i32 1, label %16
    i32 2, label %46
    i32 3, label %75
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
  br i1 %28, label %29, label %.loopexit

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

46:                                               ; preds = %0
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %49 = call ptr @make_play(i32 noundef 1)
  store ptr %49, ptr %9, align 8
  store i32 0, ptr %5, align 4
  %50 = load i32, ptr @nrow, align 4
  %51 = load i32, ptr @ncol, align 4
  %52 = call ptr @make_data(i32 noundef %50, i32 noundef %51)
  store ptr %52, ptr %7, align 8
  %53 = load ptr, ptr %9, align 8
  %.promoted1 = load ptr, ptr %7, align 8
  %.promoted3 = load ptr, ptr %8, align 8
  %.promoted5 = load i32, ptr %5, align 4
  br label %54

54:                                               ; preds = %68, %46
  %55 = phi i32 [ %69, %68 ], [ %.promoted5, %46 ]
  %56 = phi ptr [ %61, %68 ], [ %.promoted3, %46 ]
  %57 = phi ptr [ %61, %68 ], [ %.promoted1, %46 ]
  %58 = icmp ne ptr %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = call ptr @where(ptr noundef %57, ptr noundef %53)
  %61 = call ptr @get_good_move(ptr noundef %60)
  %62 = icmp ne ptr %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  call void @get_real_move(ptr noundef %61, ptr noundef %57, ptr noundef %2, ptr noundef %3)
  %64 = load i32, ptr %2, align 4
  %65 = load i32, ptr %3, align 4
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %55, i32 noundef %64, i32 noundef %65)
  %67 = sub nsw i32 1, %55
  call void @free(ptr noundef %57)
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i32 [ %67, %63 ], [ %55, %59 ]
  br label %54, !llvm.loop !30

70:                                               ; preds = %54
  %.lcssa6 = phi i32 [ %55, %54 ]
  %.lcssa4 = phi ptr [ %56, %54 ]
  %.lcssa2 = phi ptr [ %57, %54 ]
  store ptr %.lcssa2, ptr %7, align 8
  store ptr %.lcssa4, ptr %8, align 8
  store i32 %.lcssa6, ptr %5, align 4
  %71 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %71)
  %72 = load i32, ptr %5, align 4
  %73 = sub nsw i32 1, %72
  %74 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %73)
  br label %98

75:                                               ; preds = %0
  %76 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %77 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %78 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %79 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %81 = call ptr @make_play(i32 noundef 1)
  store ptr %81, ptr %9, align 8
  %82 = load ptr, ptr %9, align 8
  store ptr %82, ptr %10, align 8
  %.promoted = load ptr, ptr %10, align 8
  br label %83

83:                                               ; preds = %93, %75
  %84 = phi ptr [ %95, %93 ], [ %.promoted, %75 ]
  %85 = icmp ne ptr %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = getelementptr inbounds nuw %struct._play, ptr %84, i32 0, i32 0
  %88 = load i32, ptr %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = getelementptr inbounds nuw %struct._play, ptr %84, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8
  call void @show_move(ptr noundef %92)
  br label %93

93:                                               ; preds = %90, %86
  %94 = getelementptr inbounds nuw %struct._play, ptr %84, i32 0, i32 3
  %95 = load ptr, ptr %94, align 8
  br label %83, !llvm.loop !31

96:                                               ; preds = %83
  %.lcssa = phi ptr [ %84, %83 ]
  store ptr %.lcssa, ptr %10, align 8
  %97 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %97)
  br label %98

.loopexit:                                        ; preds = %23
  %.lcssa10 = phi ptr [ %24, %23 ]
  %.lcssa8 = phi ptr [ %25, %23 ]
  store ptr %.lcssa8, ptr %9, align 8
  store ptr %.lcssa10, ptr %6, align 8
  br label %98

98:                                               ; preds = %.loopexit, %96, %70, %0
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
