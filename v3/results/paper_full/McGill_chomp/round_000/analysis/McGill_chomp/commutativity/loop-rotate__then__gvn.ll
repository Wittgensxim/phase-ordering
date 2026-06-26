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
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %4, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %1
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = phi i32 [ %10, %.lr.ph ], [ %18, %12 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i32, ptr %8, i64 %14
  store i32 %16, ptr %17, align 4
  %18 = add nsw i32 %13, -1
  store i32 %18, ptr %4, align 4
  %19 = icmp ne i32 %13, 0
  br i1 %19, label %12, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %12
  br label %20

20:                                               ; preds = %._crit_edge, %1
  ret ptr %8
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
  br label %5

5:                                                ; preds = %27, %1
  %6 = phi i32 [ %28, %27 ], [ 0, %1 ]
  %7 = phi ptr [ %29, %27 ], [ %0, %1 ]
  %8 = phi i32 [ %30, %27 ], [ 0, %1 ]
  %9 = load i32, ptr @ncol, align 4
  %10 = icmp ne i32 %6, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = icmp ne i32 %8, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  br i1 %15, label %16, label %31

16:                                               ; preds = %14
  %17 = sext i32 %6 to i64
  %18 = getelementptr inbounds i32, ptr %7, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr @nrow, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds i32, ptr %0, i64 %17
  store i32 0, ptr %23, align 4
  %24 = add nsw i32 %6, 1
  store i32 %24, ptr %3, align 4
  br label %27

25:                                               ; preds = %16
  %26 = add nsw i32 %19, 1
  store i32 %26, ptr %18, align 4
  store i32 1, ptr %4, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %6, %25 ], [ %24, %22 ]
  %29 = phi ptr [ %7, %25 ], [ %0, %22 ]
  %30 = phi i32 [ 1, %25 ], [ %8, %22 ]
  br label %5, !llvm.loop !9

31:                                               ; preds = %14
  ret i32 %8
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
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %23
  %10 = phi ptr [ %1, %.lr.ph ], [ %24, %23 ]
  %11 = phi i32 [ %7, %.lr.ph ], [ %26, %23 ]
  %12 = phi ptr [ %0, %.lr.ph ], [ %25, %23 ]
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i32, ptr %10, i64 %13
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds i32, ptr %1, i64 %13
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds i32, ptr %0, i64 %13
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %19, %9
  %24 = phi ptr [ %1, %19 ], [ %10, %9 ]
  %25 = phi ptr [ %0, %19 ], [ %12, %9 ]
  %26 = add nsw i32 %11, -1
  store i32 %26, ptr %5, align 4
  %27 = icmp ne i32 %11, 0
  br i1 %27, label %9, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %23
  br label %28

28:                                               ; preds = %._crit_edge, %2
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
  br label %7

7:                                                ; preds = %18, %2
  %8 = phi i32 [ %9, %18 ], [ %6, %2 ]
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i32, ptr %1, i64 %12
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi i1 [ false, %7 ], [ %17, %11 ]
  br i1 %19, label %7, label %20, !llvm.loop !11

20:                                               ; preds = %18
  %21 = icmp slt i32 %9, 0
  %22 = zext i1 %21 to i32
  ret i32 %22
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
  %7 = icmp ne i32 0, %6
  br i1 %7, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %16
  %9 = phi i32 [ %5, %.lr.ph ], [ %13, %16 ]
  %10 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %9
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %20

16:                                               ; preds = %8
  store i32 %13, ptr %3, align 4
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %4, align 4
  %18 = icmp ne i32 %17, %6
  br i1 %18, label %8, label %..loopexit_crit_edge, !llvm.loop !12

..loopexit_crit_edge:                             ; preds = %16
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  %19 = phi i32 [ %6, %..loopexit_crit_edge ], [ 0, %1 ]
  br label %20

20:                                               ; preds = %.loopexit, %15
  %21 = phi i32 [ %19, %.loopexit ], [ %10, %15 ]
  %22 = icmp eq i32 %21, %6
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp ne ptr %0, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  call void @dump_list(ptr noundef %6)
  %7 = load ptr, ptr %0, align 8
  call void @free(ptr noundef %7)
  call void @free(ptr noundef %0)
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp ne ptr %0, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  call void @dump_play(ptr noundef %6)
  %7 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  call void @dump_list(ptr noundef %8)
  %9 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %10)
  call void @free(ptr noundef %0)
  br label %11

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_value(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr @game_tree, align 8
  store ptr %4, ptr %3, align 8
  %5 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %1
  br label %10

10:                                               ; preds = %.lr.ph, %10
  %11 = phi ptr [ %4, %.lr.ph ], [ %13, %10 ]
  %12 = getelementptr inbounds nuw %struct._play, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct._play, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @equal_data(ptr noundef %15, ptr noundef %0)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %10, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %10
  br label %19

19:                                               ; preds = %._crit_edge, %1
  %20 = phi ptr [ %13, %._crit_edge ], [ %4, %1 ]
  %21 = load i32, ptr %20, align 8
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %4 = load i32, ptr @ncol, align 4
  %5 = icmp ne i32 0, %4
  br i1 %5, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %1
  br label %6

6:                                                ; preds = %.lr.ph, %17
  %7 = phi i32 [ 0, %.lr.ph ], [ %8, %17 ]
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %3, align 4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11)
  %13 = load i32, ptr @ncol, align 4
  %14 = icmp ne i32 %8, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = call i32 @putchar(i32 noundef 44)
  %.pre = load i32, ptr @ncol, align 4
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %.pre, %15 ], [ %8, %6 ]
  %19 = icmp ne i32 %8, %18
  br i1 %19, label %6, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %17
  br label %20

20:                                               ; preds = %._crit_edge, %1
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

declare dso_local i32 @putchar(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 @putchar(i32 noundef 40)
  call void @show_data(ptr noundef %0)
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_list(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp ne ptr %0, null
  br i1 %3, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %5 = phi ptr [ %0, %.lr.ph ], [ %8, %4 ]
  %6 = load ptr, ptr %5, align 8
  call void @show_move(ptr noundef %6)
  %7 = getelementptr inbounds nuw %struct._list, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %2, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %4, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %4
  br label %10

10:                                               ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp ne ptr %0, null
  br i1 %3, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %5 = phi ptr [ %0, %.lr.ph ], [ %15, %4 ]
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %7 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @show_data(ptr noundef %8)
  %9 = load i32, ptr %5, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %9)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %12 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  call void @show_list(ptr noundef %13)
  %14 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %2, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %4, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %4
  br label %17

17:                                               ; preds = %._crit_edge, %1
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
  %6 = icmp ne ptr %5, null
  br i1 %6, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %13
  %8 = phi ptr [ %5, %.lr.ph ], [ %15, %13 ]
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @equal_data(ptr noundef %9, ptr noundef %0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %4, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %7, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %13
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  br label %17

17:                                               ; preds = %.loopexit, %12
  %18 = phi ptr [ null, %.loopexit ], [ %8, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, ptr %2, align 4
  br label %22

21:                                               ; preds = %17
  store i32 1, ptr %2, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi i32 [ 1, %21 ], [ 0, %20 ]
  ret i32 %23
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
  %11 = icmp ne i32 0, %1
  br i1 %11, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %2
  %.pre = load i32, ptr @nrow, align 4
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = phi i32 [ 0, %.lr.ph ], [ %16, %12 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %10, i64 %14
  store i32 %.pre, ptr %15, align 4
  %16 = add nsw i32 %13, 1
  store i32 %16, ptr %5, align 4
  %17 = icmp ne i32 %16, %1
  br i1 %17, label %12, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %12
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %19 = phi i32 [ %1, %._crit_edge ], [ 0, %2 ]
  %20 = load i32, ptr @ncol, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %.lr.ph2, label %29

.lr.ph2:                                          ; preds = %18
  br label %22

22:                                               ; preds = %.lr.ph2, %22
  %23 = phi i32 [ %19, %.lr.ph2 ], [ %26, %22 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %10, i64 %24
  store i32 %0, ptr %25, align 4
  %26 = add nsw i32 %23, 1
  store i32 %26, ptr %5, align 4
  %27 = load i32, ptr @ncol, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %22, label %._crit_edge3, !llvm.loop !19

._crit_edge3:                                     ; preds = %22
  br label %29

29:                                               ; preds = %._crit_edge3, %18
  ret ptr %10
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
  store i32 1, ptr %1, align 4
  %12 = call ptr @malloc(i64 noundef 16) #3
  store ptr %12, ptr %10, align 8
  %13 = getelementptr inbounds nuw %struct._list, ptr %12, i32 0, i32 1
  store ptr null, ptr %13, align 8
  store ptr %12, ptr %11, align 8
  store i32 0, ptr %7, align 4
  %14 = load i32, ptr @nrow, align 4
  %15 = icmp ne i32 0, %14
  br i1 %15, label %.lr.ph2, label %86

.lr.ph2:                                          ; preds = %3
  %.pre = load i32, ptr @ncol, align 4
  br label %16

16:                                               ; preds = %.lr.ph2, %79
  %17 = phi i32 [ %14, %.lr.ph2 ], [ %80, %79 ]
  %18 = phi ptr [ %0, %.lr.ph2 ], [ %82, %79 ]
  %19 = phi i32 [ 0, %.lr.ph2 ], [ %84, %79 ]
  %20 = phi i32 [ %.pre, %.lr.ph2 ], [ %83, %79 ]
  store i32 0, ptr %8, align 4
  %21 = icmp ne i32 0, %20
  br i1 %21, label %.lr.ph, label %79

.lr.ph:                                           ; preds = %16
  br label %22

22:                                               ; preds = %.lr.ph, %73
  %23 = phi ptr [ %18, %.lr.ph ], [ %28, %73 ]
  %24 = phi i32 [ 0, %.lr.ph ], [ %76, %73 ]
  %25 = phi i32 [ %19, %.lr.ph ], [ %75, %73 ]
  %26 = call ptr @make_data(i32 noundef %25, i32 noundef %24)
  store ptr %26, ptr %9, align 8
  call void @melt_data(ptr noundef %26, ptr noundef %23)
  %27 = load ptr, ptr %9, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = call i32 @equal_data(ptr noundef %27, ptr noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %22
  %32 = call ptr @malloc(i64 noundef 16) #3
  %33 = load ptr, ptr %11, align 8
  %34 = getelementptr inbounds nuw %struct._list, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 8
  %35 = call ptr @copy_data(ptr noundef %27)
  %36 = load ptr, ptr %34, align 8
  store ptr %35, ptr %36, align 8
  %37 = load ptr, ptr %34, align 8
  %38 = getelementptr inbounds nuw %struct._list, ptr %37, i32 0, i32 1
  store ptr null, ptr %38, align 8
  %39 = load ptr, ptr %34, align 8
  store ptr %39, ptr %11, align 8
  %40 = load ptr, ptr %5, align 8
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = call i32 @get_value(ptr noundef %27)
  store i32 %44, ptr %40, align 4
  br label %45

45:                                               ; preds = %43, %31
  %46 = phi i32 [ %44, %43 ], [ %41, %31 ]
  %47 = load ptr, ptr %6, align 8
  %48 = load i32, ptr %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %45
  %51 = icmp eq i32 %46, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %50
  %53 = load i32, ptr @ncol, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, ptr %8, align 4
  %55 = load i32, ptr @nrow, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, ptr %7, align 4
  %57 = call i32 @in_wanted(ptr noundef %27)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 2, ptr %47, align 4
  br label %60

60:                                               ; preds = %59, %52
  br label %61

61:                                               ; preds = %60, %50, %45
  %62 = phi i32 [ %56, %60 ], [ %25, %50 ], [ %25, %45 ]
  %.pre4 = load i32, ptr %8, align 4
  br label %73

63:                                               ; preds = %22
  %64 = load i32, ptr %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, ptr @nrow, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, ptr %7, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i32 [ %68, %66 ], [ %25, %63 ]
  %71 = load i32, ptr @ncol, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, ptr %8, align 4
  br label %73

73:                                               ; preds = %69, %61
  %74 = phi i32 [ %72, %69 ], [ %.pre4, %61 ]
  %75 = phi i32 [ %70, %69 ], [ %62, %61 ]
  call void @free(ptr noundef %27)
  %76 = add nsw i32 %74, 1
  store i32 %76, ptr %8, align 4
  %77 = load i32, ptr @ncol, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %22, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %73
  %.pre5 = load i32, ptr @nrow, align 4
  br label %79

79:                                               ; preds = %._crit_edge, %16
  %80 = phi i32 [ %.pre5, %._crit_edge ], [ %17, %16 ]
  %81 = phi i32 [ %75, %._crit_edge ], [ %19, %16 ]
  %82 = phi ptr [ %28, %._crit_edge ], [ %18, %16 ]
  %83 = phi i32 [ %76, %._crit_edge ], [ 0, %16 ]
  %84 = add nsw i32 %81, 1
  store i32 %84, ptr %7, align 4
  %85 = icmp ne i32 %84, %80
  br i1 %85, label %16, label %._crit_edge3, !llvm.loop !21

._crit_edge3:                                     ; preds = %79
  %.pre6 = load ptr, ptr %10, align 8
  %.phi.trans.insert = getelementptr inbounds nuw %struct._list, ptr %.pre6, i32 0, i32 1
  %.pre7 = load ptr, ptr %.phi.trans.insert, align 8
  br label %86

86:                                               ; preds = %._crit_edge3, %3
  %87 = phi ptr [ %.pre7, %._crit_edge3 ], [ null, %3 ]
  %88 = phi ptr [ %.pre6, %._crit_edge3 ], [ %12, %3 ]
  %89 = getelementptr inbounds nuw %struct._list, ptr %88, i32 0, i32 1
  store ptr %87, ptr %11, align 8
  call void @free(ptr noundef %88)
  %90 = icmp ne ptr %87, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load ptr, ptr %5, align 8
  %93 = load i32, ptr %92, align 4
  %94 = sub nsw i32 1, %93
  store i32 %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %91, %86
  ret ptr %87
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
  store ptr %7, ptr %6, align 8
  store ptr null, ptr @game_tree, align 8
  %8 = call ptr @make_data(i32 noundef 0, i32 noundef 0)
  store ptr %8, ptr %4, align 8
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4
  %11 = call i32 @next_data(ptr noundef %8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %.lr.ph, label %49

.lr.ph:                                           ; preds = %1
  br label %13

13:                                               ; preds = %.lr.ph, %44
  %14 = phi ptr [ %8, %.lr.ph ], [ %45, %44 ]
  %15 = phi ptr [ %7, %.lr.ph ], [ %46, %44 ]
  %16 = call i32 @valid_data(ptr noundef %14)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = call ptr @malloc(i64 noundef 32) #3
  %20 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 3
  store ptr %19, ptr %20, align 8
  %21 = load ptr, ptr @game_tree, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store ptr %19, ptr @game_tree, align 8
  br label %24

24:                                               ; preds = %23, %18
  %25 = call ptr @copy_data(ptr noundef %14)
  %26 = load ptr, ptr %20, align 8
  %27 = getelementptr inbounds nuw %struct._play, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 8
  %28 = call ptr @make_list(ptr noundef %14, ptr noundef %3, ptr noundef %2)
  %29 = load ptr, ptr %20, align 8
  %30 = getelementptr inbounds nuw %struct._play, ptr %29, i32 0, i32 2
  store ptr %28, ptr %30, align 8
  %31 = load i32, ptr %3, align 4
  %32 = load ptr, ptr %20, align 8
  store i32 %31, ptr %32, align 8
  %33 = load ptr, ptr %20, align 8
  %34 = getelementptr inbounds nuw %struct._play, ptr %33, i32 0, i32 3
  store ptr null, ptr %34, align 8
  %35 = load ptr, ptr %20, align 8
  store ptr %35, ptr %6, align 8
  %36 = load i32, ptr %2, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  call void @free(ptr noundef %14)
  %39 = load i32, ptr @nrow, align 4
  %40 = load i32, ptr @ncol, align 4
  %41 = call ptr @make_data(i32 noundef %39, i32 noundef %40)
  store ptr %41, ptr %4, align 8
  br label %42

42:                                               ; preds = %38, %24
  %43 = phi ptr [ %41, %38 ], [ %14, %24 ]
  br label %44

44:                                               ; preds = %42, %13
  %45 = phi ptr [ %43, %42 ], [ %14, %13 ]
  %46 = phi ptr [ %35, %42 ], [ %15, %13 ]
  %47 = call i32 @next_data(ptr noundef %45)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %13, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %44
  %.pre = load ptr, ptr %5, align 8
  br label %49

49:                                               ; preds = %._crit_edge, %1
  %50 = phi ptr [ %.pre, %._crit_edge ], [ %7, %1 ]
  %51 = getelementptr inbounds nuw %struct._play, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  store ptr %52, ptr %6, align 8
  call void @free(ptr noundef %50)
  ret ptr %52
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
  %9 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  store ptr null, ptr %9, align 8
  store ptr %8, ptr %7, align 8
  store i32 0, ptr %3, align 4
  %10 = load i32, ptr @nrow, align 4
  %11 = icmp ne i32 0, %10
  br i1 %11, label %.lr.ph2, label %59

.lr.ph2:                                          ; preds = %1
  %.pre = load i32, ptr @ncol, align 4
  br label %12

12:                                               ; preds = %.lr.ph2, %52
  %13 = phi i32 [ %10, %.lr.ph2 ], [ %53, %52 ]
  %14 = phi ptr [ %0, %.lr.ph2 ], [ %55, %52 ]
  %15 = phi i32 [ 0, %.lr.ph2 ], [ %57, %52 ]
  %16 = phi i32 [ %.pre, %.lr.ph2 ], [ %56, %52 ]
  store i32 0, ptr %4, align 4
  %17 = icmp ne i32 0, %16
  br i1 %17, label %.lr.ph, label %52

.lr.ph:                                           ; preds = %12
  br label %18

18:                                               ; preds = %.lr.ph, %46
  %19 = phi ptr [ %14, %.lr.ph ], [ %24, %46 ]
  %20 = phi i32 [ 0, %.lr.ph ], [ %49, %46 ]
  %21 = phi i32 [ %15, %.lr.ph ], [ %48, %46 ]
  %22 = call ptr @make_data(i32 noundef %21, i32 noundef %20)
  store ptr %22, ptr %5, align 8
  call void @melt_data(ptr noundef %22, ptr noundef %19)
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %2, align 8
  %25 = call i32 @equal_data(ptr noundef %23, ptr noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %18
  %28 = call ptr @malloc(i64 noundef 16) #3
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds nuw %struct._list, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 8
  %31 = call ptr @copy_data(ptr noundef %23)
  %32 = load ptr, ptr %30, align 8
  store ptr %31, ptr %32, align 8
  %33 = load ptr, ptr %30, align 8
  %34 = getelementptr inbounds nuw %struct._list, ptr %33, i32 0, i32 1
  store ptr null, ptr %34, align 8
  %35 = load ptr, ptr %30, align 8
  store ptr %35, ptr %7, align 8
  %.pre4 = load i32, ptr %4, align 4
  br label %46

36:                                               ; preds = %18
  %37 = load i32, ptr %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, ptr @nrow, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, ptr %3, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i32 [ %41, %39 ], [ %21, %36 ]
  %44 = load i32, ptr @ncol, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, ptr %4, align 4
  br label %46

46:                                               ; preds = %42, %27
  %47 = phi i32 [ %45, %42 ], [ %.pre4, %27 ]
  %48 = phi i32 [ %43, %42 ], [ %21, %27 ]
  call void @free(ptr noundef %23)
  %49 = add nsw i32 %47, 1
  store i32 %49, ptr %4, align 4
  %50 = load i32, ptr @ncol, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %18, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %46
  %.pre5 = load i32, ptr @nrow, align 4
  br label %52

52:                                               ; preds = %._crit_edge, %12
  %53 = phi i32 [ %.pre5, %._crit_edge ], [ %13, %12 ]
  %54 = phi i32 [ %48, %._crit_edge ], [ %15, %12 ]
  %55 = phi ptr [ %24, %._crit_edge ], [ %14, %12 ]
  %56 = phi i32 [ %49, %._crit_edge ], [ 0, %12 ]
  %57 = add nsw i32 %54, 1
  store i32 %57, ptr %3, align 4
  %58 = icmp ne i32 %57, %53
  br i1 %58, label %12, label %._crit_edge3, !llvm.loop !24

._crit_edge3:                                     ; preds = %52
  %.pre6 = load ptr, ptr %6, align 8
  %.phi.trans.insert = getelementptr inbounds nuw %struct._list, ptr %.pre6, i32 0, i32 1
  %.pre7 = load ptr, ptr %.phi.trans.insert, align 8
  br label %59

59:                                               ; preds = %._crit_edge3, %1
  %60 = phi ptr [ %.pre7, %._crit_edge3 ], [ null, %1 ]
  %61 = phi ptr [ %.pre6, %._crit_edge3 ], [ %8, %1 ]
  %62 = getelementptr inbounds nuw %struct._list, ptr %61, i32 0, i32 1
  store ptr %60, ptr %7, align 8
  call void @free(ptr noundef %61)
  store ptr %60, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %23

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %18, %6
  %8 = phi ptr [ %19, %18 ], [ %0, %6 ]
  %9 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8
  %14 = call i32 @get_value(ptr noundef %13)
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i1 [ false, %7 ], [ %15, %12 ]
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = load ptr, ptr %9, align 8
  store ptr %19, ptr %3, align 8
  br label %7, !llvm.loop !25

20:                                               ; preds = %16
  %21 = load ptr, ptr %8, align 8
  %22 = call ptr @copy_data(ptr noundef %21)
  store ptr %22, ptr %2, align 8
  br label %23

23:                                               ; preds = %20, %5
  %24 = phi ptr [ %22, %20 ], [ null, %5 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %8 = phi ptr [ %5, %.lr.ph ], [ %12, %7 ]
  %9 = phi ptr [ %0, %.lr.ph ], [ %8, %7 ]
  %10 = getelementptr inbounds nuw %struct._play, ptr %9, i32 0, i32 3
  store ptr %8, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %7, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %7
  br label %14

14:                                               ; preds = %._crit_edge, %1
  %15 = phi ptr [ %8, %._crit_edge ], [ %0, %1 ]
  %16 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = call ptr @get_good_move(ptr noundef %17)
  store ptr %18, ptr %3, align 8
  ret ptr %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds nuw %struct._play, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %10
  %11 = phi ptr [ %1, %.lr.ph ], [ %13, %10 ]
  %12 = getelementptr inbounds nuw %struct._play, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %4, align 8
  %14 = getelementptr inbounds nuw %struct._play, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @equal_data(ptr noundef %15, ptr noundef %0)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %10, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %10
  br label %19

19:                                               ; preds = %._crit_edge, %2
  %20 = phi ptr [ %13, %._crit_edge ], [ %1, %2 ]
  %21 = getelementptr inbounds nuw %struct._play, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  ret ptr %22
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
  store i32 0, ptr %3, align 4
  %9 = load i32, ptr %0, align 4
  %10 = load i32, ptr %1, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %4
  br label %21

.lr.ph:                                           ; preds = %4
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = phi i32 [ 0, %.lr.ph ], [ %14, %12 ]
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i32, ptr %1, i64 %15
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %12, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %12
  br label %21

21:                                               ; preds = %._crit_edge1, %._crit_edge
  %22 = phi i32 [ %17, %._crit_edge ], [ %9, %._crit_edge1 ]
  %23 = phi i32 [ %14, %._crit_edge ], [ 0, %._crit_edge1 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %0, i64 %24
  store i32 %22, ptr %2, align 4
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
  switch i32 2, label %90 [
    i32 1, label %15
    i32 2, label %45
    i32 3, label %70
  ]

15:                                               ; preds = %0
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %17 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %19 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %21 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %4)
  %22 = load i32, ptr @nrow, align 4
  %23 = load i32, ptr %4, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %.lr.ph5, label %44

.lr.ph5:                                          ; preds = %15
  br label %25

25:                                               ; preds = %.lr.ph5, %25
  %26 = phi i32 [ %22, %.lr.ph5 ], [ %41, %25 ]
  %27 = load i32, ptr @ncol, align 4
  %28 = call ptr @make_data(i32 noundef %26, i32 noundef %27)
  call void @make_wanted(ptr noundef %28)
  %29 = call ptr @make_play(i32 noundef 0)
  store ptr %29, ptr %9, align 8
  %30 = call ptr @get_winning_move(ptr noundef %29)
  store ptr %30, ptr %6, align 8
  %31 = load i32, ptr @nrow, align 4
  %32 = load i32, ptr @ncol, align 4
  %33 = call ptr @make_data(i32 noundef %31, i32 noundef %32)
  call void @get_real_move(ptr noundef %30, ptr noundef %33, ptr noundef %2, ptr noundef %3)
  %34 = load i32, ptr @nrow, align 4
  %35 = load i32, ptr @ncol, align 4
  %36 = load i32, ptr %2, align 4
  %37 = load i32, ptr %3, align 4
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37)
  call void @dump_play(ptr noundef %29)
  %39 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %39)
  %40 = load i32, ptr @nrow, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @nrow, align 4
  %42 = load i32, ptr %4, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %25, label %._crit_edge6, !llvm.loop !29

._crit_edge6:                                     ; preds = %25
  br label %44

44:                                               ; preds = %._crit_edge6, %15
  br label %90

45:                                               ; preds = %0
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %48 = call ptr @make_play(i32 noundef 1)
  store ptr %48, ptr %9, align 8
  store i32 0, ptr %5, align 4
  %49 = load i32, ptr @nrow, align 4
  %50 = load i32, ptr @ncol, align 4
  %51 = call ptr @make_data(i32 noundef %49, i32 noundef %50)
  store ptr %51, ptr %7, align 8
  %52 = icmp ne ptr %51, null
  br i1 %52, label %.lr.ph2, label %66

.lr.ph2:                                          ; preds = %45
  br label %53

53:                                               ; preds = %.lr.ph2, %64
  %54 = phi i32 [ 0, %.lr.ph2 ], [ %65, %64 ]
  %55 = phi ptr [ %51, %.lr.ph2 ], [ %57, %64 ]
  %56 = call ptr @where(ptr noundef %55, ptr noundef %48)
  %57 = call ptr @get_good_move(ptr noundef %56)
  store ptr %57, ptr %8, align 8
  %58 = icmp ne ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  call void @get_real_move(ptr noundef %57, ptr noundef %55, ptr noundef %2, ptr noundef %3)
  %60 = load i32, ptr %2, align 4
  %61 = load i32, ptr %3, align 4
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %54, i32 noundef %60, i32 noundef %61)
  %63 = sub nsw i32 1, %54
  store i32 %63, ptr %5, align 4
  call void @free(ptr noundef %55)
  br label %64

64:                                               ; preds = %59, %53
  %65 = phi i32 [ %63, %59 ], [ %54, %53 ]
  store ptr %57, ptr %7, align 8
  br i1 %58, label %53, label %._crit_edge3, !llvm.loop !30

._crit_edge3:                                     ; preds = %64
  br label %66

66:                                               ; preds = %._crit_edge3, %45
  %67 = phi i32 [ %65, %._crit_edge3 ], [ 0, %45 ]
  call void @dump_play(ptr noundef %48)
  %68 = sub nsw i32 1, %67
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %68)
  br label %90

70:                                               ; preds = %0
  %71 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %72 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %73 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %74 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %75 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %76 = call ptr @make_play(i32 noundef 1)
  store ptr %76, ptr %9, align 8
  store ptr %76, ptr %10, align 8
  %77 = icmp ne ptr %76, null
  br i1 %77, label %.lr.ph, label %89

.lr.ph:                                           ; preds = %70
  br label %78

78:                                               ; preds = %.lr.ph, %85
  %79 = phi ptr [ %76, %.lr.ph ], [ %87, %85 ]
  %80 = load i32, ptr %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw %struct._play, ptr %79, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8
  call void @show_move(ptr noundef %84)
  br label %85

85:                                               ; preds = %82, %78
  %86 = getelementptr inbounds nuw %struct._play, ptr %79, i32 0, i32 3
  %87 = load ptr, ptr %86, align 8
  store ptr %87, ptr %10, align 8
  %88 = icmp ne ptr %87, null
  br i1 %88, label %78, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %85
  br label %89

89:                                               ; preds = %._crit_edge, %70
  call void @dump_play(ptr noundef %76)
  br label %90

90:                                               ; preds = %89, %66, %44, %0
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
