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
  %12 = sext i32 %.promoted to i64
  br label %13

13:                                               ; preds = %15, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ %12, %1 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %14 = icmp ne i64 %indvars.iv, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv.next
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i32, ptr %11, i64 %indvars.iv.next
  store i32 %17, ptr %18, align 4
  br label %13, !llvm.loop !7

19:                                               ; preds = %13
  %.lcssa.wide = phi i64 [ %indvars.iv.next, %13 ]
  %20 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %20, ptr %4, align 4
  %21 = load ptr, ptr %3, align 8
  ret ptr %21
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

8:                                                ; preds = %33, %1
  %9 = phi i32 [ %34, %33 ], [ %.promoted1, %1 ]
  %10 = phi i32 [ %35, %33 ], [ %.promoted, %1 ]
  %11 = load i32, ptr @ncol, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = icmp ne i32 %9, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i1 [ false, %8 ], [ %15, %13 ]
  br i1 %17, label %18, label %36

18:                                               ; preds = %16
  %19 = sext i32 %10 to i64
  %20 = getelementptr inbounds i32, ptr %5, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr @nrow, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = sext i32 %10 to i64
  %26 = getelementptr inbounds i32, ptr %7, i64 %25
  store i32 0, ptr %26, align 4
  %27 = add nsw i32 %10, 1
  br label %33

28:                                               ; preds = %18
  %29 = sext i32 %10 to i64
  %30 = getelementptr inbounds i32, ptr %6, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ 1, %28 ], [ %9, %24 ]
  %35 = phi i32 [ %10, %28 ], [ %27, %24 ]
  br label %8, !llvm.loop !9

36:                                               ; preds = %16
  %.lcssa2 = phi i32 [ %9, %16 ]
  %.lcssa = phi i32 [ %10, %16 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 4
  %37 = load i32, ptr %4, align 4
  ret i32 %37
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
  %11 = sext i32 %.promoted to i64
  br label %12

12:                                               ; preds = %24, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ %11, %2 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %13 = icmp ne i64 %indvars.iv, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %12
  %15 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv.next
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv.next
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds i32, ptr %9, i64 %indvars.iv.next
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv.next
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %14
  br label %12, !llvm.loop !10

25:                                               ; preds = %12
  %.lcssa.wide = phi i64 [ %indvars.iv.next, %12 ]
  %26 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %26, ptr %5, align 4
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
  %9 = sext i32 %.promoted to i64
  br label %10

10:                                               ; preds = %20, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %20 ], [ %9, %2 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %11 = icmp ne i64 %indvars.iv, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv.next
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv.next
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br label %18

18:                                               ; preds = %12, %10
  %19 = phi i1 [ false, %10 ], [ %17, %12 ]
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %10, !llvm.loop !11

21:                                               ; preds = %18
  %.lcssa.wide = phi i64 [ %indvars.iv.next, %18 ]
  %22 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %22, ptr %5, align 4
  %23 = load i32, ptr %5, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  ret i32 %25
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
  %9 = sext i32 %.promoted to i64
  %sext = sext i32 %6 to i64
  %10 = sub i32 %6, %.promoted
  %11 = zext i32 %10 to i64
  %12 = add i64 %9, %11
  br label %13

13:                                               ; preds = %22, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %22 ], [ %9, %1 ]
  %14 = phi i32 [ %24, %22 ], [ %.promoted2, %1 ]
  %15 = icmp ne i64 %indvars.iv, %sext
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %13
  %17 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, %14
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %.lcssa4 = phi i32 [ %14, %16 ]
  %.lcssa1.wide = phi i64 [ %indvars.iv, %16 ]
  %21 = trunc nsw i64 %.lcssa1.wide to i32
  store i32 %21, ptr %4, align 4
  store i32 %.lcssa4, ptr %3, align 4
  br label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv
  %24 = load i32, ptr %23, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %13, !llvm.loop !12

.loopexit:                                        ; preds = %13
  %.lcssa3 = phi i32 [ %14, %13 ]
  %25 = trunc nsw i64 %12 to i32
  store i32 %25, ptr %4, align 4
  store i32 %.lcssa3, ptr %3, align 4
  br label %26

26:                                               ; preds = %.loopexit, %20
  %27 = load i32, ptr %4, align 4
  %28 = load i32, ptr @ncol, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  ret i32 %30
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
  %5 = sext i32 %.promoted to i64
  br label %6

6:                                                ; preds = %19, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ %5, %1 ]
  %7 = load i32, ptr @ncol, align 4
  %8 = trunc nsw i64 %indvars.iv to i32
  %9 = icmp ne i32 %8, %7
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %11 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  %14 = load i32, ptr @ncol, align 4
  %15 = trunc nsw i64 %indvars.iv.next to i32
  %16 = icmp ne i32 %15, %14
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 @putchar(i32 noundef 44)
  br label %19

19:                                               ; preds = %17, %10
  br label %6, !llvm.loop !14

20:                                               ; preds = %6
  %.lcssa.wide = phi i64 [ %indvars.iv, %6 ]
  %21 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %21, ptr %3, align 4
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
  %4 = phi ptr [ %9, %6 ], [ %.promoted, %1 ]
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8
  call void @show_move(ptr noundef %7)
  %8 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  br label %3, !llvm.loop !15

10:                                               ; preds = %3
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
  %4 = phi ptr [ %16, %6 ], [ %.promoted, %1 ]
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %8 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @show_data(ptr noundef %9)
  %10 = load i32, ptr %4, align 8
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %10)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %13 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  call void @show_list(ptr noundef %14)
  %15 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  br label %3, !llvm.loop !16

17:                                               ; preds = %3
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
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8
  %12 = call i32 @equal_data(ptr noundef %11, ptr noundef %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  %.lcssa1 = phi ptr [ %8, %10 ]
  store ptr %.lcssa1, ptr %4, align 8
  br label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  br label %7, !llvm.loop !17

.loopexit:                                        ; preds = %7
  %.lcssa = phi ptr [ %8, %7 ]
  store ptr %.lcssa, ptr %4, align 8
  br label %18

18:                                               ; preds = %.loopexit, %14
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
  %13 = sext i32 %.promoted to i64
  %sext = sext i32 %11 to i64
  br label %14

14:                                               ; preds = %19, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ %13, %2 ]
  %15 = icmp ne i64 %indvars.iv, %sext
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = load i32, ptr @nrow, align 4
  %18 = getelementptr inbounds i32, ptr %12, i64 %indvars.iv
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %14, !llvm.loop !18

20:                                               ; preds = %14
  %.lcssa.wide = phi i64 [ %indvars.iv, %14 ]
  %21 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %21, ptr %5, align 4
  %22 = load i32, ptr %3, align 4
  %23 = load ptr, ptr %6, align 8
  %.promoted1 = load i32, ptr %5, align 4
  %24 = sext i32 %.promoted1 to i64
  br label %25

25:                                               ; preds = %31, %20
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %31 ], [ %24, %20 ]
  %26 = load i32, ptr @ncol, align 4
  %27 = trunc nsw i64 %indvars.iv4 to i32
  %28 = icmp ne i32 %27, %26
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds i32, ptr %23, i64 %indvars.iv4
  store i32 %22, ptr %30, align 4
  br label %31

31:                                               ; preds = %29
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, 1
  br label %25, !llvm.loop !19

32:                                               ; preds = %25
  %.lcssa2.wide = phi i64 [ %indvars.iv4, %25 ]
  %33 = trunc nsw i64 %.lcssa2.wide to i32
  store i32 %33, ptr %5, align 4
  %34 = load ptr, ptr %6, align 8
  ret ptr %34
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

24:                                               ; preds = %89, %3
  %.lcssa613 = phi ptr [ %.lcssa6, %89 ], [ %.promoted12, %3 ]
  %.lcssa411 = phi ptr [ %.lcssa4, %89 ], [ %.promoted, %3 ]
  %.lcssa10 = phi i32 [ %.lcssa, %89 ], [ %.promoted9, %3 ]
  %.lcssa28 = phi i32 [ %90, %89 ], [ %.promoted7, %3 ]
  %25 = load i32, ptr @nrow, align 4
  %26 = icmp ne i32 %.lcssa28, %25
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %86, %27
  %29 = phi ptr [ %83, %86 ], [ %.lcssa613, %27 ]
  %30 = phi ptr [ %36, %86 ], [ %.lcssa411, %27 ]
  %31 = phi i32 [ %84, %86 ], [ %.lcssa28, %27 ]
  %32 = phi i32 [ %87, %86 ], [ 0, %27 ]
  %33 = load i32, ptr @ncol, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %28
  %36 = call ptr @make_data(i32 noundef %31, i32 noundef %32)
  call void @melt_data(ptr noundef %36, ptr noundef %17)
  %37 = call i32 @equal_data(ptr noundef %36, ptr noundef %18)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %73, label %39

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
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %22, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32, ptr @ncol, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i32, ptr @nrow, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @in_wanted(ptr noundef %36)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 2, ptr %23, align 4
  br label %69

69:                                               ; preds = %68, %61
  br label %70

70:                                               ; preds = %69, %58, %55
  %71 = phi i32 [ %65, %69 ], [ %31, %58 ], [ %31, %55 ]
  %72 = phi i32 [ %63, %69 ], [ %32, %58 ], [ %32, %55 ]
  br label %82

73:                                               ; preds = %35
  %74 = icmp eq i32 %32, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i32, ptr @nrow, align 4
  %77 = sub nsw i32 %76, 1
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi i32 [ %77, %75 ], [ %31, %73 ]
  %80 = load i32, ptr @ncol, align 4
  %81 = sub nsw i32 %80, 1
  br label %82

82:                                               ; preds = %78, %70
  %83 = phi ptr [ %29, %78 ], [ %50, %70 ]
  %84 = phi i32 [ %79, %78 ], [ %71, %70 ]
  %85 = phi i32 [ %81, %78 ], [ %72, %70 ]
  call void @free(ptr noundef %36)
  br label %86

86:                                               ; preds = %82
  %87 = add nsw i32 %85, 1
  br label %28, !llvm.loop !20

88:                                               ; preds = %28
  %.lcssa6 = phi ptr [ %29, %28 ]
  %.lcssa4 = phi ptr [ %30, %28 ]
  %.lcssa2 = phi i32 [ %31, %28 ]
  %.lcssa = phi i32 [ %32, %28 ]
  br label %89

89:                                               ; preds = %88
  %90 = add nsw i32 %.lcssa2, 1
  br label %24, !llvm.loop !21

91:                                               ; preds = %24
  %.lcssa613.lcssa = phi ptr [ %.lcssa613, %24 ]
  %.lcssa411.lcssa = phi ptr [ %.lcssa411, %24 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %24 ]
  %.lcssa28.lcssa = phi i32 [ %.lcssa28, %24 ]
  store i32 %.lcssa28.lcssa, ptr %7, align 4
  store i32 %.lcssa10.lcssa, ptr %8, align 4
  store ptr %.lcssa411.lcssa, ptr %9, align 8
  store ptr %.lcssa613.lcssa, ptr %11, align 8
  %92 = load ptr, ptr %10, align 8
  %93 = getelementptr inbounds nuw %struct._list, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8
  store ptr %94, ptr %11, align 8
  %95 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %95)
  %96 = load ptr, ptr %11, align 8
  %97 = icmp ne ptr %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load ptr, ptr %5, align 8
  %100 = load i32, ptr %99, align 4
  %101 = sub nsw i32 1, %100
  %102 = load ptr, ptr %5, align 8
  store i32 %101, ptr %102, align 4
  br label %103

103:                                              ; preds = %98, %91
  %104 = load ptr, ptr %11, align 8
  ret ptr %104
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

14:                                               ; preds = %56, %1
  %15 = phi ptr [ %57, %56 ], [ %.promoted1, %1 ]
  %16 = phi ptr [ %58, %56 ], [ %.promoted, %1 ]
  %17 = call i32 @next_data(ptr noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %14
  %20 = call i32 @valid_data(ptr noundef %16)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

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

54:                                               ; preds = %50, %30
  %55 = phi ptr [ %53, %50 ], [ %16, %30 ]
  br label %56

56:                                               ; preds = %54, %19
  %57 = phi ptr [ %47, %54 ], [ %15, %19 ]
  %58 = phi ptr [ %55, %54 ], [ %16, %19 ]
  br label %14, !llvm.loop !22

59:                                               ; preds = %14
  %.lcssa2 = phi ptr [ %15, %14 ]
  %.lcssa = phi ptr [ %16, %14 ]
  store ptr %.lcssa, ptr %4, align 8
  store ptr %.lcssa2, ptr %6, align 8
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds nuw %struct._play, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  store ptr %62, ptr %6, align 8
  %63 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %63)
  %64 = load ptr, ptr %6, align 8
  ret ptr %64
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

14:                                               ; preds = %57, %1
  %.lcssa613 = phi ptr [ %.lcssa6, %57 ], [ %.promoted12, %1 ]
  %.lcssa411 = phi ptr [ %.lcssa4, %57 ], [ %.promoted, %1 ]
  %.lcssa10 = phi i32 [ %.lcssa, %57 ], [ %.promoted9, %1 ]
  %.lcssa28 = phi i32 [ %58, %57 ], [ %.promoted7, %1 ]
  %15 = load i32, ptr @nrow, align 4
  %16 = icmp ne i32 %.lcssa28, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %54, %17
  %19 = phi ptr [ %51, %54 ], [ %.lcssa613, %17 ]
  %20 = phi ptr [ %26, %54 ], [ %.lcssa411, %17 ]
  %21 = phi i32 [ %52, %54 ], [ %.lcssa28, %17 ]
  %22 = phi i32 [ %55, %54 ], [ 0, %17 ]
  %23 = load i32, ptr @ncol, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %56

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
  br label %54

54:                                               ; preds = %50
  %55 = add nsw i32 %53, 1
  br label %18, !llvm.loop !23

56:                                               ; preds = %18
  %.lcssa6 = phi ptr [ %19, %18 ]
  %.lcssa4 = phi ptr [ %20, %18 ]
  %.lcssa2 = phi i32 [ %21, %18 ]
  %.lcssa = phi i32 [ %22, %18 ]
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %.lcssa2, 1
  br label %14, !llvm.loop !24

59:                                               ; preds = %14
  %.lcssa613.lcssa = phi ptr [ %.lcssa613, %14 ]
  %.lcssa411.lcssa = phi ptr [ %.lcssa411, %14 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %14 ]
  %.lcssa28.lcssa = phi i32 [ %.lcssa28, %14 ]
  store i32 %.lcssa28.lcssa, ptr %3, align 4
  store i32 %.lcssa10.lcssa, ptr %4, align 4
  store ptr %.lcssa411.lcssa, ptr %5, align 8
  store ptr %.lcssa613.lcssa, ptr %7, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = getelementptr inbounds nuw %struct._list, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  store ptr %62, ptr %7, align 8
  %63 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %63)
  %64 = load ptr, ptr %7, align 8
  store ptr %64, ptr @wanted, align 8
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
  br label %27

7:                                                ; preds = %1
  %.promoted = load ptr, ptr %3, align 8
  br label %8

8:                                                ; preds = %19, %7
  %9 = phi ptr [ %21, %19 ], [ %.promoted, %7 ]
  %10 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 8
  %15 = call i32 @get_value(ptr noundef %14)
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i1 [ false, %8 ], [ %16, %13 ]
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  br label %8, !llvm.loop !25

22:                                               ; preds = %17
  %.lcssa = phi ptr [ %9, %17 ]
  store ptr %.lcssa, ptr %3, align 8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds nuw %struct._list, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @copy_data(ptr noundef %25)
  store ptr %26, ptr %2, align 8
  br label %27

27:                                               ; preds = %22, %6
  %28 = load ptr, ptr %2, align 8
  ret ptr %28
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
    i32 2, label %48
    i32 3, label %77
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

23:                                               ; preds = %44, %16
  %24 = phi ptr [ %34, %44 ], [ %.promoted9, %16 ]
  %25 = phi ptr [ %33, %44 ], [ %.promoted7, %16 ]
  %26 = load i32, ptr @nrow, align 4
  %27 = load i32, ptr %4, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %47

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
  br label %44

44:                                               ; preds = %29
  %45 = load i32, ptr @nrow, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @nrow, align 4
  br label %23, !llvm.loop !29

47:                                               ; preds = %23
  %.lcssa10 = phi ptr [ %24, %23 ]
  %.lcssa8 = phi ptr [ %25, %23 ]
  store ptr %.lcssa8, ptr %9, align 8
  store ptr %.lcssa10, ptr %6, align 8
  br label %99

48:                                               ; preds = %0
  %49 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %51 = call ptr @make_play(i32 noundef 1)
  store ptr %51, ptr %9, align 8
  store i32 0, ptr %5, align 4
  %52 = load i32, ptr @nrow, align 4
  %53 = load i32, ptr @ncol, align 4
  %54 = call ptr @make_data(i32 noundef %52, i32 noundef %53)
  store ptr %54, ptr %7, align 8
  %55 = load ptr, ptr %9, align 8
  %.promoted1 = load ptr, ptr %7, align 8
  %.promoted3 = load ptr, ptr %8, align 8
  %.promoted5 = load i32, ptr %5, align 4
  br label %56

56:                                               ; preds = %70, %48
  %57 = phi i32 [ %71, %70 ], [ %.promoted5, %48 ]
  %58 = phi ptr [ %63, %70 ], [ %.promoted3, %48 ]
  %59 = phi ptr [ %63, %70 ], [ %.promoted1, %48 ]
  %60 = icmp ne ptr %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = call ptr @where(ptr noundef %59, ptr noundef %55)
  %63 = call ptr @get_good_move(ptr noundef %62)
  %64 = icmp ne ptr %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  call void @get_real_move(ptr noundef %63, ptr noundef %59, ptr noundef %2, ptr noundef %3)
  %66 = load i32, ptr %2, align 4
  %67 = load i32, ptr %3, align 4
  %68 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %57, i32 noundef %66, i32 noundef %67)
  %69 = sub nsw i32 1, %57
  call void @free(ptr noundef %59)
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i32 [ %69, %65 ], [ %57, %61 ]
  br label %56, !llvm.loop !30

72:                                               ; preds = %56
  %.lcssa6 = phi i32 [ %57, %56 ]
  %.lcssa4 = phi ptr [ %58, %56 ]
  %.lcssa2 = phi ptr [ %59, %56 ]
  store ptr %.lcssa2, ptr %7, align 8
  store ptr %.lcssa4, ptr %8, align 8
  store i32 %.lcssa6, ptr %5, align 4
  %73 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %73)
  %74 = load i32, ptr %5, align 4
  %75 = sub nsw i32 1, %74
  %76 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %75)
  br label %99

77:                                               ; preds = %0
  %78 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %79 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %81 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %83 = call ptr @make_play(i32 noundef 1)
  store ptr %83, ptr %9, align 8
  %84 = load ptr, ptr %9, align 8
  store ptr %84, ptr %10, align 8
  %.promoted = load ptr, ptr %10, align 8
  br label %85

85:                                               ; preds = %94, %77
  %86 = phi ptr [ %96, %94 ], [ %.promoted, %77 ]
  %87 = icmp ne ptr %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, ptr %86, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = getelementptr inbounds nuw %struct._play, ptr %86, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8
  call void @show_move(ptr noundef %93)
  br label %94

94:                                               ; preds = %91, %88
  %95 = getelementptr inbounds nuw %struct._play, ptr %86, i32 0, i32 3
  %96 = load ptr, ptr %95, align 8
  br label %85, !llvm.loop !31

97:                                               ; preds = %85
  %.lcssa = phi ptr [ %86, %85 ]
  store ptr %.lcssa, ptr %10, align 8
  %98 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %98)
  br label %99

99:                                               ; preds = %97, %72, %47, %0
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
