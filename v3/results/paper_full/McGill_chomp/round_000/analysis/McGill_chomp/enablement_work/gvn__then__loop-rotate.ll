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
  %.lcssa = phi i32 [ %8, %14 ]
  ret i32 %.lcssa
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
  %10 = phi i32 [ %7, %.lr.ph ], [ %26, %23 ]
  %11 = phi ptr [ %0, %.lr.ph ], [ %25, %23 ]
  %12 = phi ptr [ %1, %.lr.ph ], [ %24, %23 ]
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i32, ptr %12, i64 %13
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
  %24 = phi ptr [ %1, %19 ], [ %12, %9 ]
  %25 = phi ptr [ %0, %19 ], [ %11, %9 ]
  %26 = add nsw i32 %10, -1
  store i32 %26, ptr %5, align 4
  %27 = icmp ne i32 %10, 0
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
  %.lcssa = phi i32 [ %9, %18 ]
  %21 = icmp slt i32 %.lcssa, 0
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
  %.pre = load i32, ptr @ncol, align 4
  %6 = icmp ne i32 0, %.pre
  br i1 %6, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %15
  %8 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %9 = phi i32 [ %5, %.lr.ph ], [ %12, %15 ]
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %9
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  %.lcssa1 = phi i32 [ %8, %7 ]
  br label %18

15:                                               ; preds = %7
  store i32 %12, ptr %3, align 4
  %16 = add nsw i32 %8, 1
  store i32 %16, ptr %4, align 4
  %17 = icmp ne i32 %16, %.pre
  br i1 %17, label %7, label %..loopexit_crit_edge, !llvm.loop !12

..loopexit_crit_edge:                             ; preds = %15
  %split = phi i32 [ %16, %15 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  %.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ 0, %1 ]
  br label %18

18:                                               ; preds = %.loopexit, %14
  %19 = phi i32 [ %.lcssa, %.loopexit ], [ %.lcssa1, %14 ]
  %20 = icmp eq i32 %19, %.pre
  %21 = zext i1 %20 to i32
  ret i32 %21
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
  %split = phi ptr [ %13, %10 ]
  br label %19

19:                                               ; preds = %._crit_edge, %1
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %4, %1 ]
  %20 = load i32, ptr %.lcssa, align 8
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %.pre1 = load i32, ptr @ncol, align 4
  %4 = icmp ne i32 0, %.pre1
  br i1 %4, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %16
  %6 = phi i32 [ 0, %.lr.ph ], [ %7, %16 ]
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %3, align 4
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  %12 = load i32, ptr @ncol, align 4
  %13 = icmp ne i32 %7, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call i32 @putchar(i32 noundef 44)
  %.pre = load i32, ptr @ncol, align 4
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ %.pre, %14 ], [ %7, %5 ]
  %18 = icmp ne i32 %7, %17
  br i1 %18, label %5, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge, %1
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
  %.lcssa1 = phi ptr [ %8, %7 ]
  br label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %4, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %7, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %13
  %split = phi ptr [ %15, %13 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  %.lcssa = phi ptr [ %split, %..loopexit_crit_edge ], [ %5, %1 ]
  br label %17

17:                                               ; preds = %.loopexit, %12
  %18 = phi ptr [ %.lcssa, %.loopexit ], [ %.lcssa1, %12 ]
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
  br i1 %11, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = phi i32 [ 0, %.lr.ph ], [ %17, %12 ]
  %14 = load i32, ptr @nrow, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32, ptr %10, i64 %15
  store i32 %14, ptr %16, align 4
  %17 = add nsw i32 %13, 1
  store i32 %17, ptr %5, align 4
  %18 = icmp ne i32 %17, %1
  br i1 %18, label %12, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %12
  br label %19

19:                                               ; preds = %._crit_edge, %2
  %20 = load i32, ptr @ncol, align 4
  %21 = icmp ne i32 %1, %20
  br i1 %21, label %.lr.ph2, label %29

.lr.ph2:                                          ; preds = %19
  br label %22

22:                                               ; preds = %.lr.ph2, %22
  %23 = phi i32 [ %1, %.lr.ph2 ], [ %26, %22 ]
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

29:                                               ; preds = %._crit_edge3, %19
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
  br i1 %15, label %.lr.ph17, label %94

.lr.ph17:                                         ; preds = %3
  br label %16

16:                                               ; preds = %.lr.ph17, %90
  %17 = phi i32 [ 0, %.lr.ph17 ], [ %91, %90 ]
  %18 = phi ptr [ %1, %.lr.ph17 ], [ %.lcssa, %90 ]
  %19 = phi ptr [ %0, %.lr.ph17 ], [ %.lcssa6, %90 ]
  %20 = phi ptr [ %1, %.lr.ph17 ], [ %.lcssa7, %90 ]
  %21 = phi ptr [ %1, %.lr.ph17 ], [ %.lcssa8, %90 ]
  store i32 0, ptr %8, align 4
  %22 = load i32, ptr @ncol, align 4
  %23 = icmp ne i32 0, %22
  br i1 %23, label %.lr.ph, label %90

.lr.ph:                                           ; preds = %16
  br label %24

24:                                               ; preds = %.lr.ph, %80
  %25 = phi ptr [ %18, %.lr.ph ], [ %86, %80 ]
  %26 = phi i32 [ 0, %.lr.ph ], [ %87, %80 ]
  %27 = phi i32 [ %17, %.lr.ph ], [ %85, %80 ]
  %28 = phi ptr [ %19, %.lr.ph ], [ %33, %80 ]
  %29 = phi ptr [ %20, %.lr.ph ], [ %84, %80 ]
  %30 = phi ptr [ %21, %.lr.ph ], [ %83, %80 ]
  %31 = call ptr @make_data(i32 noundef %27, i32 noundef %26)
  store ptr %31, ptr %9, align 8
  call void @melt_data(ptr noundef %31, ptr noundef %28)
  %32 = load ptr, ptr %9, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = call i32 @equal_data(ptr noundef %32, ptr noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %24
  %37 = call ptr @malloc(i64 noundef 16) #3
  %38 = load ptr, ptr %11, align 8
  %39 = getelementptr inbounds nuw %struct._list, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 8
  %40 = call ptr @copy_data(ptr noundef %32)
  %41 = load ptr, ptr %39, align 8
  store ptr %40, ptr %41, align 8
  %42 = load ptr, ptr %39, align 8
  %43 = getelementptr inbounds nuw %struct._list, ptr %42, i32 0, i32 1
  store ptr null, ptr %43, align 8
  %44 = load ptr, ptr %39, align 8
  store ptr %44, ptr %11, align 8
  %45 = load i32, ptr %29, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = call i32 @get_value(ptr noundef %32)
  store i32 %48, ptr %30, align 4
  br label %49

49:                                               ; preds = %47, %36
  %50 = phi ptr [ %30, %47 ], [ %29, %36 ]
  %51 = load ptr, ptr %6, align 8
  %52 = load i32, ptr %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %._crit_edge, label %54

._crit_edge:                                      ; preds = %49
  %.pre1.pre = load ptr, ptr %9, align 8
  br label %66

54:                                               ; preds = %49
  %55 = load i32, ptr %1, align 4
  %56 = icmp eq i32 %55, 0
  %.pre1.pre3 = load ptr, ptr %9, align 8
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, ptr @ncol, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, ptr %8, align 4
  %60 = load i32, ptr @nrow, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, ptr %7, align 4
  %62 = call i32 @in_wanted(ptr noundef %.pre1.pre3)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 2, ptr %51, align 4
  br label %65

65:                                               ; preds = %64, %57
  br label %66

66:                                               ; preds = %._crit_edge, %65, %54
  %.pre1 = phi ptr [ %.pre1.pre3, %65 ], [ %.pre1.pre3, %54 ], [ %.pre1.pre, %._crit_edge ]
  %67 = phi ptr [ %1, %65 ], [ %1, %54 ], [ %30, %._crit_edge ]
  %68 = phi ptr [ %1, %65 ], [ %1, %54 ], [ %50, %._crit_edge ]
  %69 = phi i32 [ %61, %65 ], [ %27, %54 ], [ %27, %._crit_edge ]
  %.pre2 = load i32, ptr %8, align 4
  br label %80

70:                                               ; preds = %24
  %71 = load i32, ptr %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, ptr @nrow, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, ptr %7, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i32 [ %75, %73 ], [ %27, %70 ]
  %78 = load i32, ptr @ncol, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, ptr %8, align 4
  br label %80

80:                                               ; preds = %76, %66
  %81 = phi i32 [ %79, %76 ], [ %.pre2, %66 ]
  %82 = phi ptr [ %32, %76 ], [ %.pre1, %66 ]
  %83 = phi ptr [ %30, %76 ], [ %67, %66 ]
  %84 = phi ptr [ %29, %76 ], [ %68, %66 ]
  %85 = phi i32 [ %77, %76 ], [ %69, %66 ]
  %86 = phi ptr [ %25, %76 ], [ %68, %66 ]
  call void @free(ptr noundef %82)
  %87 = add nsw i32 %81, 1
  store i32 %87, ptr %8, align 4
  %88 = load i32, ptr @ncol, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %24, label %._crit_edge11, !llvm.loop !20

._crit_edge11:                                    ; preds = %80
  %split = phi ptr [ %83, %80 ]
  %split12 = phi ptr [ %84, %80 ]
  %split13 = phi ptr [ %33, %80 ]
  %split14 = phi i32 [ %85, %80 ]
  %split15 = phi ptr [ %86, %80 ]
  br label %90

90:                                               ; preds = %._crit_edge11, %16
  %.lcssa8 = phi ptr [ %split, %._crit_edge11 ], [ %21, %16 ]
  %.lcssa7 = phi ptr [ %split12, %._crit_edge11 ], [ %20, %16 ]
  %.lcssa6 = phi ptr [ %split13, %._crit_edge11 ], [ %19, %16 ]
  %.lcssa5 = phi i32 [ %split14, %._crit_edge11 ], [ %17, %16 ]
  %.lcssa = phi ptr [ %split15, %._crit_edge11 ], [ %18, %16 ]
  %91 = add nsw i32 %.lcssa5, 1
  store i32 %91, ptr %7, align 4
  %92 = load i32, ptr @nrow, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %16, label %._crit_edge18, !llvm.loop !21

._crit_edge18:                                    ; preds = %90
  %split19 = phi ptr [ %.lcssa, %90 ]
  br label %94

94:                                               ; preds = %._crit_edge18, %3
  %.lcssa9 = phi ptr [ %split19, %._crit_edge18 ], [ %1, %3 ]
  %95 = load ptr, ptr %13, align 8
  store ptr %95, ptr %11, align 8
  call void @free(ptr noundef %12)
  %96 = icmp ne ptr %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, ptr %.lcssa9, align 4
  %99 = sub nsw i32 1, %98
  store i32 %99, ptr %.lcssa9, align 4
  %.pre = load ptr, ptr %11, align 8
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi ptr [ %.pre, %97 ], [ null, %94 ]
  ret ptr %101
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
  br i1 %12, label %.lr.ph, label %48

.lr.ph:                                           ; preds = %1
  br label %13

13:                                               ; preds = %.lr.ph, %44
  %14 = load ptr, ptr %4, align 8
  %15 = call i32 @valid_data(ptr noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = call ptr @malloc(i64 noundef 32) #3
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds nuw %struct._play, ptr %19, i32 0, i32 3
  store ptr %18, ptr %20, align 8
  %21 = load ptr, ptr @game_tree, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store ptr %18, ptr @game_tree, align 8
  br label %24

24:                                               ; preds = %23, %17
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
  %46 = call i32 @next_data(ptr noundef %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %13, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %44
  br label %48

48:                                               ; preds = %._crit_edge, %1
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds nuw %struct._play, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  store ptr %51, ptr %6, align 8
  call void @free(ptr noundef %49)
  ret ptr %51
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
  br i1 %11, label %.lr.ph4, label %55

.lr.ph4:                                          ; preds = %1
  br label %12

12:                                               ; preds = %.lr.ph4, %51
  %13 = phi i32 [ 0, %.lr.ph4 ], [ %52, %51 ]
  %14 = phi ptr [ %0, %.lr.ph4 ], [ %.lcssa1, %51 ]
  store i32 0, ptr %4, align 4
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 0, %15
  br i1 %16, label %.lr.ph, label %51

.lr.ph:                                           ; preds = %12
  br label %17

17:                                               ; preds = %.lr.ph, %45
  %18 = phi i32 [ 0, %.lr.ph ], [ %48, %45 ]
  %19 = phi i32 [ %13, %.lr.ph ], [ %47, %45 ]
  %20 = phi ptr [ %14, %.lr.ph ], [ %23, %45 ]
  %21 = call ptr @make_data(i32 noundef %19, i32 noundef %18)
  store ptr %21, ptr %5, align 8
  call void @melt_data(ptr noundef %21, ptr noundef %20)
  %22 = load ptr, ptr %5, align 8
  %23 = load ptr, ptr %2, align 8
  %24 = call i32 @equal_data(ptr noundef %22, ptr noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = call ptr @malloc(i64 noundef 16) #3
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds nuw %struct._list, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 8
  %30 = call ptr @copy_data(ptr noundef %22)
  %31 = load ptr, ptr %29, align 8
  store ptr %30, ptr %31, align 8
  %32 = load ptr, ptr %29, align 8
  %33 = getelementptr inbounds nuw %struct._list, ptr %32, i32 0, i32 1
  store ptr null, ptr %33, align 8
  %34 = load ptr, ptr %29, align 8
  store ptr %34, ptr %7, align 8
  %.pre = load i32, ptr %4, align 4
  br label %45

35:                                               ; preds = %17
  %36 = load i32, ptr %4, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, ptr @nrow, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, ptr %3, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %40, %38 ], [ %19, %35 ]
  %43 = load i32, ptr @ncol, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, ptr %4, align 4
  br label %45

45:                                               ; preds = %41, %26
  %46 = phi i32 [ %44, %41 ], [ %.pre, %26 ]
  %47 = phi i32 [ %42, %41 ], [ %19, %26 ]
  call void @free(ptr noundef %22)
  %48 = add nsw i32 %46, 1
  store i32 %48, ptr %4, align 4
  %49 = load i32, ptr @ncol, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %17, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %45
  %split = phi ptr [ %23, %45 ]
  %split2 = phi i32 [ %47, %45 ]
  br label %51

51:                                               ; preds = %._crit_edge, %12
  %.lcssa1 = phi ptr [ %split, %._crit_edge ], [ %14, %12 ]
  %.lcssa = phi i32 [ %split2, %._crit_edge ], [ %13, %12 ]
  %52 = add nsw i32 %.lcssa, 1
  store i32 %52, ptr %3, align 4
  %53 = load i32, ptr @nrow, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %12, label %._crit_edge5, !llvm.loop !24

._crit_edge5:                                     ; preds = %51
  br label %55

55:                                               ; preds = %._crit_edge5, %1
  %56 = load ptr, ptr %9, align 8
  store ptr %56, ptr %7, align 8
  call void @free(ptr noundef %8)
  store ptr %56, ptr @wanted, align 8
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
  %.lcssa = phi ptr [ %8, %16 ]
  %21 = load ptr, ptr %.lcssa, align 8
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
  br i1 %6, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %8 = phi ptr [ %5, %.lr.ph ], [ %10, %7 ]
  store ptr %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct._play, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %7, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %7
  %split = phi ptr [ %8, %7 ]
  br label %12

12:                                               ; preds = %._crit_edge, %1
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %0, %1 ]
  %13 = getelementptr inbounds nuw %struct._play, ptr %.lcssa, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = call ptr @get_good_move(ptr noundef %14)
  store ptr %15, ptr %3, align 8
  ret ptr %15
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
  %split = phi ptr [ %13, %10 ]
  br label %19

19:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %1, %2 ]
  %20 = getelementptr inbounds nuw %struct._play, ptr %.lcssa, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  ret ptr %21
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
  br i1 %11, label %.lr.ph, label %21

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
  %split = phi i32 [ %17, %12 ]
  br label %21

21:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %9, %4 ]
  store i32 %.lcssa, ptr %2, align 4
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
  switch i32 2, label %89 [
    i32 1, label %15
    i32 2, label %44
    i32 3, label %69
  ]

15:                                               ; preds = %0
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %17 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %19 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %21 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %4)
  %.pre = load i32, ptr @nrow, align 4
  %22 = load i32, ptr %4, align 4
  %23 = icmp sle i32 %.pre, %22
  br i1 %23, label %.lr.ph5, label %43

.lr.ph5:                                          ; preds = %15
  br label %24

24:                                               ; preds = %.lr.ph5, %24
  %25 = phi i32 [ %.pre, %.lr.ph5 ], [ %40, %24 ]
  %26 = load i32, ptr @ncol, align 4
  %27 = call ptr @make_data(i32 noundef %25, i32 noundef %26)
  call void @make_wanted(ptr noundef %27)
  %28 = call ptr @make_play(i32 noundef 0)
  store ptr %28, ptr %9, align 8
  %29 = call ptr @get_winning_move(ptr noundef %28)
  store ptr %29, ptr %6, align 8
  %30 = load i32, ptr @nrow, align 4
  %31 = load i32, ptr @ncol, align 4
  %32 = call ptr @make_data(i32 noundef %30, i32 noundef %31)
  call void @get_real_move(ptr noundef %29, ptr noundef %32, ptr noundef %2, ptr noundef %3)
  %33 = load i32, ptr @nrow, align 4
  %34 = load i32, ptr @ncol, align 4
  %35 = load i32, ptr %2, align 4
  %36 = load i32, ptr %3, align 4
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36)
  call void @dump_play(ptr noundef %28)
  %38 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %38)
  %39 = load i32, ptr @nrow, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr @nrow, align 4
  %41 = load i32, ptr %4, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %24, label %._crit_edge6, !llvm.loop !29

._crit_edge6:                                     ; preds = %24
  br label %43

43:                                               ; preds = %._crit_edge6, %15
  br label %89

44:                                               ; preds = %0
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %47 = call ptr @make_play(i32 noundef 1)
  store ptr %47, ptr %9, align 8
  store i32 0, ptr %5, align 4
  %48 = load i32, ptr @nrow, align 4
  %49 = load i32, ptr @ncol, align 4
  %50 = call ptr @make_data(i32 noundef %48, i32 noundef %49)
  store ptr %50, ptr %7, align 8
  %51 = icmp ne ptr %50, null
  br i1 %51, label %.lr.ph2, label %66

.lr.ph2:                                          ; preds = %44
  br label %52

52:                                               ; preds = %.lr.ph2, %63
  %53 = phi ptr [ %50, %.lr.ph2 ], [ %56, %63 ]
  %54 = phi i32 [ 0, %.lr.ph2 ], [ %64, %63 ]
  %55 = call ptr @where(ptr noundef %53, ptr noundef %47)
  %56 = call ptr @get_good_move(ptr noundef %55)
  store ptr %56, ptr %8, align 8
  %57 = icmp ne ptr %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  call void @get_real_move(ptr noundef %56, ptr noundef %53, ptr noundef %2, ptr noundef %3)
  %59 = load i32, ptr %2, align 4
  %60 = load i32, ptr %3, align 4
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %54, i32 noundef %59, i32 noundef %60)
  %62 = sub nsw i32 1, %54
  store i32 %62, ptr %5, align 4
  call void @free(ptr noundef %53)
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi i32 [ %62, %58 ], [ %54, %52 ]
  store ptr %56, ptr %7, align 8
  %65 = icmp ne ptr %56, null
  br i1 %65, label %52, label %._crit_edge3, !llvm.loop !30

._crit_edge3:                                     ; preds = %63
  %split = phi i32 [ %64, %63 ]
  br label %66

66:                                               ; preds = %._crit_edge3, %44
  %.lcssa = phi i32 [ %split, %._crit_edge3 ], [ 0, %44 ]
  call void @dump_play(ptr noundef %47)
  %67 = sub nsw i32 1, %.lcssa
  %68 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %67)
  br label %89

69:                                               ; preds = %0
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %71 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %72 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %73 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %74 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %75 = call ptr @make_play(i32 noundef 1)
  store ptr %75, ptr %9, align 8
  store ptr %75, ptr %10, align 8
  %76 = icmp ne ptr %75, null
  br i1 %76, label %.lr.ph, label %88

.lr.ph:                                           ; preds = %69
  br label %77

77:                                               ; preds = %.lr.ph, %84
  %78 = phi ptr [ %75, %.lr.ph ], [ %86, %84 ]
  %79 = load i32, ptr %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = getelementptr inbounds nuw %struct._play, ptr %78, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  call void @show_move(ptr noundef %83)
  br label %84

84:                                               ; preds = %81, %77
  %85 = getelementptr inbounds nuw %struct._play, ptr %78, i32 0, i32 3
  %86 = load ptr, ptr %85, align 8
  store ptr %86, ptr %10, align 8
  %87 = icmp ne ptr %86, null
  br i1 %87, label %77, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %84
  br label %88

88:                                               ; preds = %._crit_edge, %69
  call void @dump_play(ptr noundef %75)
  br label %89

89:                                               ; preds = %88, %66, %43, %0
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
