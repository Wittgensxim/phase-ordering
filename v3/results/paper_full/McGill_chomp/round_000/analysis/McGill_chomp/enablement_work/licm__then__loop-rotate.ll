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
  %12 = add nsw i32 %.promoted, -1
  %13 = icmp ne i32 %.promoted, 0
  br i1 %13, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %1
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = phi i32 [ %12, %.lr.ph ], [ %21, %14 ]
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %10, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds i32, ptr %11, i64 %19
  store i32 %18, ptr %20, align 4
  %21 = add nsw i32 %15, -1
  %22 = icmp ne i32 %15, 0
  br i1 %22, label %14, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %14
  %split = phi i32 [ %21, %14 ]
  br label %23

23:                                               ; preds = %._crit_edge, %1
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %12, %1 ]
  store i32 %.lcssa, ptr %4, align 4
  %24 = load ptr, ptr %3, align 8
  ret ptr %24
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
  %11 = add nsw i32 %.promoted, -1
  %12 = icmp ne i32 %.promoted, 0
  br i1 %12, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %28
  %14 = phi i32 [ %11, %.lr.ph ], [ %29, %28 ]
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %7, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds i32, ptr %8, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = sext i32 %14 to i64
  %24 = getelementptr inbounds i32, ptr %9, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %14 to i64
  %27 = getelementptr inbounds i32, ptr %10, i64 %26
  store i32 %25, ptr %27, align 4
  br label %28

28:                                               ; preds = %22, %13
  %29 = add nsw i32 %14, -1
  %30 = icmp ne i32 %14, 0
  br i1 %30, label %13, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %28
  %split = phi i32 [ %29, %28 ]
  br label %31

31:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %11, %2 ]
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

9:                                                ; preds = %21, %2
  %10 = phi i32 [ %11, %21 ], [ %.promoted, %2 ]
  %11 = add nsw i32 %10, -1
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds i32, ptr %7, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %11 to i64
  %18 = getelementptr inbounds i32, ptr %8, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %16, %19
  br label %21

21:                                               ; preds = %13, %9
  %22 = phi i1 [ false, %9 ], [ %20, %13 ]
  br i1 %22, label %9, label %23, !llvm.loop !11

23:                                               ; preds = %21
  %.lcssa = phi i32 [ %11, %21 ]
  store i32 %.lcssa, ptr %5, align 4
  %24 = load i32, ptr %5, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  ret i32 %26
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
  %9 = icmp ne i32 %.promoted, %6
  br i1 %9, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %1
  br label %10

10:                                               ; preds = %.lr.ph, %18
  %11 = phi i32 [ %.promoted, %.lr.ph ], [ %22, %18 ]
  %12 = phi i32 [ %.promoted2, %.lr.ph ], [ %21, %18 ]
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32, ptr %7, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, %12
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  %.lcssa4 = phi i32 [ %12, %10 ]
  %.lcssa1 = phi i32 [ %11, %10 ]
  store i32 %.lcssa1, ptr %4, align 4
  store i32 %.lcssa4, ptr %3, align 4
  br label %24

18:                                               ; preds = %10
  %19 = sext i32 %11 to i64
  %20 = getelementptr inbounds i32, ptr %8, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %11, 1
  %23 = icmp ne i32 %22, %6
  br i1 %23, label %10, label %..loopexit_crit_edge, !llvm.loop !12

..loopexit_crit_edge:                             ; preds = %18
  %split = phi i32 [ %21, %18 ]
  %split5 = phi i32 [ %22, %18 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  %.lcssa3 = phi i32 [ %split, %..loopexit_crit_edge ], [ %.promoted2, %1 ]
  %.lcssa = phi i32 [ %split5, %..loopexit_crit_edge ], [ %.promoted, %1 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa3, ptr %3, align 4
  br label %24

24:                                               ; preds = %.loopexit, %17
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
  %6 = getelementptr inbounds nuw %struct._play, ptr %.promoted, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @equal_data(ptr noundef %7, ptr noundef %5)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %1
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %.promoted, %.lr.ph ], [ %14, %11 ]
  %13 = getelementptr inbounds nuw %struct._play, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds nuw %struct._play, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @equal_data(ptr noundef %16, ptr noundef %5)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %11
  %split = phi ptr [ %14, %11 ]
  br label %20

20:                                               ; preds = %._crit_edge, %1
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %1 ]
  store ptr %.lcssa, ptr %3, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds nuw %struct._play, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr %2, align 8
  %.promoted = load i32, ptr %3, align 4
  %5 = load i32, ptr @ncol, align 4
  %6 = icmp ne i32 %.promoted, %5
  br i1 %6, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %18
  %8 = phi i32 [ %.promoted, %.lr.ph ], [ %9, %18 ]
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i32, ptr %4, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  %14 = load i32, ptr @ncol, align 4
  %15 = icmp ne i32 %9, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = call i32 @putchar(i32 noundef 44)
  br label %18

18:                                               ; preds = %16, %7
  %19 = load i32, ptr @ncol, align 4
  %20 = icmp ne i32 %9, %19
  br i1 %20, label %7, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %18
  %split = phi i32 [ %9, %18 ]
  br label %21

21:                                               ; preds = %._crit_edge, %1
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %1 ]
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
  %3 = icmp ne ptr %.promoted, null
  br i1 %3, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %5 = phi ptr [ %.promoted, %.lr.ph ], [ %9, %4 ]
  %6 = getelementptr inbounds nuw %struct._list, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  call void @show_move(ptr noundef %7)
  %8 = getelementptr inbounds nuw %struct._list, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %4, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %4
  %split = phi ptr [ %9, %4 ]
  br label %11

11:                                               ; preds = %._crit_edge, %1
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %1 ]
  store ptr %.lcssa, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.promoted = load ptr, ptr %2, align 8
  %3 = icmp ne ptr %.promoted, null
  br i1 %3, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %5 = phi ptr [ %.promoted, %.lr.ph ], [ %16, %4 ]
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %7 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @show_data(ptr noundef %8)
  %9 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %10)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %13 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  call void @show_list(ptr noundef %14)
  %15 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %4, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %4
  %split = phi ptr [ %16, %4 ]
  br label %18

18:                                               ; preds = %._crit_edge, %1
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %1 ]
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
  %7 = icmp ne ptr %.promoted, null
  br i1 %7, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %15
  %9 = phi ptr [ %.promoted, %.lr.ph ], [ %17, %15 ]
  %10 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @equal_data(ptr noundef %11, ptr noundef %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  %.lcssa1 = phi ptr [ %9, %8 ]
  store ptr %.lcssa1, ptr %4, align 8
  br label %19

15:                                               ; preds = %8
  %16 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %8, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %15
  %split = phi ptr [ %17, %15 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  %.lcssa = phi ptr [ %split, %..loopexit_crit_edge ], [ %.promoted, %1 ]
  store ptr %.lcssa, ptr %4, align 8
  br label %19

19:                                               ; preds = %.loopexit, %14
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
  %13 = icmp ne i32 %.promoted, %11
  br i1 %13, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %2
  br label %14

14:                                               ; preds = %.lr.ph, %19
  %15 = phi i32 [ %.promoted, %.lr.ph ], [ %20, %19 ]
  %16 = load i32, ptr @nrow, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i32, ptr %12, i64 %17
  store i32 %16, ptr %18, align 4
  br label %19

19:                                               ; preds = %14
  %20 = add nsw i32 %15, 1
  %21 = icmp ne i32 %20, %11
  br i1 %21, label %14, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %19
  %split = phi i32 [ %20, %19 ]
  br label %22

22:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %2 ]
  store i32 %.lcssa, ptr %5, align 4
  %23 = load i32, ptr %3, align 4
  %24 = load ptr, ptr %6, align 8
  %.promoted1 = load i32, ptr %5, align 4
  %25 = load i32, ptr @ncol, align 4
  %26 = icmp ne i32 %.promoted1, %25
  br i1 %26, label %.lr.ph4, label %35

.lr.ph4:                                          ; preds = %22
  br label %27

27:                                               ; preds = %.lr.ph4, %31
  %28 = phi i32 [ %.promoted1, %.lr.ph4 ], [ %32, %31 ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %24, i64 %29
  store i32 %23, ptr %30, align 4
  br label %31

31:                                               ; preds = %27
  %32 = add nsw i32 %28, 1
  %33 = load i32, ptr @ncol, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %27, label %._crit_edge5, !llvm.loop !19

._crit_edge5:                                     ; preds = %31
  %split6 = phi i32 [ %32, %31 ]
  br label %35

35:                                               ; preds = %._crit_edge5, %22
  %.lcssa2 = phi i32 [ %split6, %._crit_edge5 ], [ %.promoted1, %22 ]
  store i32 %.lcssa2, ptr %5, align 4
  %36 = load ptr, ptr %6, align 8
  ret ptr %36
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
  %24 = load i32, ptr @nrow, align 4
  %25 = icmp ne i32 %.promoted7, %24
  br i1 %25, label %.lr.ph21, label %92

.lr.ph21:                                         ; preds = %3
  br label %26

26:                                               ; preds = %.lr.ph21, %88
  %.lcssa2819 = phi i32 [ %.promoted7, %.lr.ph21 ], [ %89, %88 ]
  %.lcssa41118 = phi ptr [ %.promoted, %.lr.ph21 ], [ %.lcssa4, %88 ]
  %.lcssa61317 = phi ptr [ %.promoted12, %.lr.ph21 ], [ %.lcssa6, %88 ]
  %27 = load i32, ptr @ncol, align 4
  %28 = icmp ne i32 0, %27
  br i1 %28, label %.lr.ph, label %87

.lr.ph:                                           ; preds = %26
  br label %29

29:                                               ; preds = %.lr.ph, %83
  %30 = phi i32 [ 0, %.lr.ph ], [ %84, %83 ]
  %31 = phi i32 [ %.lcssa2819, %.lr.ph ], [ %81, %83 ]
  %32 = phi ptr [ %.lcssa61317, %.lr.ph ], [ %80, %83 ]
  %33 = call ptr @make_data(i32 noundef %31, i32 noundef %30)
  call void @melt_data(ptr noundef %33, ptr noundef %17)
  %34 = call i32 @equal_data(ptr noundef %33, ptr noundef %18)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %29
  %37 = call ptr @malloc(i64 noundef 16) #3
  %38 = getelementptr inbounds nuw %struct._list, ptr %32, i32 0, i32 1
  store ptr %37, ptr %38, align 8
  %39 = call ptr @copy_data(ptr noundef %33)
  %40 = getelementptr inbounds nuw %struct._list, ptr %32, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds nuw %struct._list, ptr %41, i32 0, i32 0
  store ptr %39, ptr %42, align 8
  %43 = getelementptr inbounds nuw %struct._list, ptr %32, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw %struct._list, ptr %44, i32 0, i32 1
  store ptr null, ptr %45, align 8
  %46 = getelementptr inbounds nuw %struct._list, ptr %32, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = load i32, ptr %19, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = call i32 @get_value(ptr noundef %33)
  store i32 %51, ptr %20, align 4
  br label %52

52:                                               ; preds = %50, %36
  %53 = load i32, ptr %21, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %22, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, ptr @ncol, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, ptr @nrow, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @in_wanted(ptr noundef %33)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 2, ptr %23, align 4
  br label %66

66:                                               ; preds = %65, %58
  br label %67

67:                                               ; preds = %66, %55, %52
  %68 = phi i32 [ %62, %66 ], [ %31, %55 ], [ %31, %52 ]
  %69 = phi i32 [ %60, %66 ], [ %30, %55 ], [ %30, %52 ]
  br label %79

70:                                               ; preds = %29
  %71 = icmp eq i32 %30, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i32, ptr @nrow, align 4
  %74 = sub nsw i32 %73, 1
  br label %75

75:                                               ; preds = %72, %70
  %76 = phi i32 [ %74, %72 ], [ %31, %70 ]
  %77 = load i32, ptr @ncol, align 4
  %78 = sub nsw i32 %77, 1
  br label %79

79:                                               ; preds = %75, %67
  %80 = phi ptr [ %32, %75 ], [ %47, %67 ]
  %81 = phi i32 [ %76, %75 ], [ %68, %67 ]
  %82 = phi i32 [ %78, %75 ], [ %69, %67 ]
  call void @free(ptr noundef %33)
  br label %83

83:                                               ; preds = %79
  %84 = add nsw i32 %82, 1
  %85 = load i32, ptr @ncol, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %29, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %83
  %split = phi ptr [ %80, %83 ]
  %split14 = phi ptr [ %33, %83 ]
  %split15 = phi i32 [ %81, %83 ]
  %split16 = phi i32 [ %84, %83 ]
  br label %87

87:                                               ; preds = %._crit_edge, %26
  %.lcssa6 = phi ptr [ %split, %._crit_edge ], [ %.lcssa61317, %26 ]
  %.lcssa4 = phi ptr [ %split14, %._crit_edge ], [ %.lcssa41118, %26 ]
  %.lcssa2 = phi i32 [ %split15, %._crit_edge ], [ %.lcssa2819, %26 ]
  %.lcssa = phi i32 [ %split16, %._crit_edge ], [ 0, %26 ]
  br label %88

88:                                               ; preds = %87
  %89 = add nsw i32 %.lcssa2, 1
  %90 = load i32, ptr @nrow, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %26, label %._crit_edge22, !llvm.loop !21

._crit_edge22:                                    ; preds = %88
  %split23 = phi ptr [ %.lcssa6, %88 ]
  %split24 = phi ptr [ %.lcssa4, %88 ]
  %split25 = phi i32 [ %.lcssa, %88 ]
  %split26 = phi i32 [ %89, %88 ]
  br label %92

92:                                               ; preds = %._crit_edge22, %3
  %.lcssa613.lcssa = phi ptr [ %split23, %._crit_edge22 ], [ %.promoted12, %3 ]
  %.lcssa411.lcssa = phi ptr [ %split24, %._crit_edge22 ], [ %.promoted, %3 ]
  %.lcssa10.lcssa = phi i32 [ %split25, %._crit_edge22 ], [ %.promoted9, %3 ]
  %.lcssa28.lcssa = phi i32 [ %split26, %._crit_edge22 ], [ %.promoted7, %3 ]
  store i32 %.lcssa28.lcssa, ptr %7, align 4
  store i32 %.lcssa10.lcssa, ptr %8, align 4
  store ptr %.lcssa411.lcssa, ptr %9, align 8
  store ptr %.lcssa613.lcssa, ptr %11, align 8
  %93 = load ptr, ptr %10, align 8
  %94 = getelementptr inbounds nuw %struct._list, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8
  store ptr %95, ptr %11, align 8
  %96 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %96)
  %97 = load ptr, ptr %11, align 8
  %98 = icmp ne ptr %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load ptr, ptr %5, align 8
  %101 = load i32, ptr %100, align 4
  %102 = sub nsw i32 1, %101
  %103 = load ptr, ptr %5, align 8
  store i32 %102, ptr %103, align 4
  br label %104

104:                                              ; preds = %99, %92
  %105 = load ptr, ptr %11, align 8
  ret ptr %105
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
  %14 = call i32 @next_data(ptr noundef %.promoted)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %.lr.ph, label %60

.lr.ph:                                           ; preds = %1
  br label %16

16:                                               ; preds = %.lr.ph, %55
  %17 = phi ptr [ %.promoted, %.lr.ph ], [ %57, %55 ]
  %18 = phi ptr [ %.promoted1, %.lr.ph ], [ %56, %55 ]
  %19 = call i32 @valid_data(ptr noundef %17)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %16
  %22 = call ptr @malloc(i64 noundef 32) #3
  %23 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  store ptr %22, ptr %23, align 8
  %24 = load ptr, ptr @game_tree, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr @game_tree, align 8
  br label %29

29:                                               ; preds = %26, %21
  %30 = call ptr @copy_data(ptr noundef %17)
  %31 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds nuw %struct._play, ptr %32, i32 0, i32 1
  store ptr %30, ptr %33, align 8
  %34 = call ptr @make_list(ptr noundef %17, ptr noundef %3, ptr noundef %2)
  %35 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw %struct._play, ptr %36, i32 0, i32 2
  store ptr %34, ptr %37, align 8
  %38 = load i32, ptr %3, align 4
  %39 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds nuw %struct._play, ptr %40, i32 0, i32 0
  store i32 %38, ptr %41, align 8
  %42 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds nuw %struct._play, ptr %43, i32 0, i32 3
  store ptr null, ptr %44, align 8
  %45 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = load i32, ptr %2, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %29
  call void @free(ptr noundef %17)
  %50 = load i32, ptr @nrow, align 4
  %51 = load i32, ptr @ncol, align 4
  %52 = call ptr @make_data(i32 noundef %50, i32 noundef %51)
  br label %53

53:                                               ; preds = %49, %29
  %54 = phi ptr [ %52, %49 ], [ %17, %29 ]
  br label %55

55:                                               ; preds = %53, %16
  %56 = phi ptr [ %46, %53 ], [ %18, %16 ]
  %57 = phi ptr [ %54, %53 ], [ %17, %16 ]
  %58 = call i32 @next_data(ptr noundef %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %16, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %55
  %split = phi ptr [ %56, %55 ]
  %split3 = phi ptr [ %57, %55 ]
  br label %60

60:                                               ; preds = %._crit_edge, %1
  %.lcssa2 = phi ptr [ %split, %._crit_edge ], [ %.promoted1, %1 ]
  %.lcssa = phi ptr [ %split3, %._crit_edge ], [ %.promoted, %1 ]
  store ptr %.lcssa, ptr %4, align 8
  store ptr %.lcssa2, ptr %6, align 8
  %61 = load ptr, ptr %5, align 8
  %62 = getelementptr inbounds nuw %struct._play, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8
  store ptr %63, ptr %6, align 8
  %64 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %64)
  %65 = load ptr, ptr %6, align 8
  ret ptr %65
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
  %14 = load i32, ptr @nrow, align 4
  %15 = icmp ne i32 %.promoted7, %14
  br i1 %15, label %.lr.ph21, label %60

.lr.ph21:                                         ; preds = %1
  br label %16

16:                                               ; preds = %.lr.ph21, %56
  %.lcssa2819 = phi i32 [ %.promoted7, %.lr.ph21 ], [ %57, %56 ]
  %.lcssa41118 = phi ptr [ %.promoted, %.lr.ph21 ], [ %.lcssa4, %56 ]
  %.lcssa61317 = phi ptr [ %.promoted12, %.lr.ph21 ], [ %.lcssa6, %56 ]
  %17 = load i32, ptr @ncol, align 4
  %18 = icmp ne i32 0, %17
  br i1 %18, label %.lr.ph, label %55

.lr.ph:                                           ; preds = %16
  br label %19

19:                                               ; preds = %.lr.ph, %51
  %20 = phi i32 [ 0, %.lr.ph ], [ %52, %51 ]
  %21 = phi i32 [ %.lcssa2819, %.lr.ph ], [ %49, %51 ]
  %22 = phi ptr [ %.lcssa61317, %.lr.ph ], [ %48, %51 ]
  %23 = call ptr @make_data(i32 noundef %21, i32 noundef %20)
  call void @melt_data(ptr noundef %23, ptr noundef %12)
  %24 = call i32 @equal_data(ptr noundef %23, ptr noundef %13)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %19
  %27 = call ptr @malloc(i64 noundef 16) #3
  %28 = getelementptr inbounds nuw %struct._list, ptr %22, i32 0, i32 1
  store ptr %27, ptr %28, align 8
  %29 = call ptr @copy_data(ptr noundef %23)
  %30 = getelementptr inbounds nuw %struct._list, ptr %22, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds nuw %struct._list, ptr %31, i32 0, i32 0
  store ptr %29, ptr %32, align 8
  %33 = getelementptr inbounds nuw %struct._list, ptr %22, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds nuw %struct._list, ptr %34, i32 0, i32 1
  store ptr null, ptr %35, align 8
  %36 = getelementptr inbounds nuw %struct._list, ptr %22, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  br label %47

38:                                               ; preds = %19
  %39 = icmp eq i32 %20, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, ptr @nrow, align 4
  %42 = sub nsw i32 %41, 1
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ %42, %40 ], [ %21, %38 ]
  %45 = load i32, ptr @ncol, align 4
  %46 = sub nsw i32 %45, 1
  br label %47

47:                                               ; preds = %43, %26
  %48 = phi ptr [ %22, %43 ], [ %37, %26 ]
  %49 = phi i32 [ %44, %43 ], [ %21, %26 ]
  %50 = phi i32 [ %46, %43 ], [ %20, %26 ]
  call void @free(ptr noundef %23)
  br label %51

51:                                               ; preds = %47
  %52 = add nsw i32 %50, 1
  %53 = load i32, ptr @ncol, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %19, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %51
  %split = phi ptr [ %48, %51 ]
  %split14 = phi ptr [ %23, %51 ]
  %split15 = phi i32 [ %49, %51 ]
  %split16 = phi i32 [ %52, %51 ]
  br label %55

55:                                               ; preds = %._crit_edge, %16
  %.lcssa6 = phi ptr [ %split, %._crit_edge ], [ %.lcssa61317, %16 ]
  %.lcssa4 = phi ptr [ %split14, %._crit_edge ], [ %.lcssa41118, %16 ]
  %.lcssa2 = phi i32 [ %split15, %._crit_edge ], [ %.lcssa2819, %16 ]
  %.lcssa = phi i32 [ %split16, %._crit_edge ], [ 0, %16 ]
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %.lcssa2, 1
  %58 = load i32, ptr @nrow, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %16, label %._crit_edge22, !llvm.loop !24

._crit_edge22:                                    ; preds = %56
  %split23 = phi ptr [ %.lcssa6, %56 ]
  %split24 = phi ptr [ %.lcssa4, %56 ]
  %split25 = phi i32 [ %.lcssa, %56 ]
  %split26 = phi i32 [ %57, %56 ]
  br label %60

60:                                               ; preds = %._crit_edge22, %1
  %.lcssa613.lcssa = phi ptr [ %split23, %._crit_edge22 ], [ %.promoted12, %1 ]
  %.lcssa411.lcssa = phi ptr [ %split24, %._crit_edge22 ], [ %.promoted, %1 ]
  %.lcssa10.lcssa = phi i32 [ %split25, %._crit_edge22 ], [ %.promoted9, %1 ]
  %.lcssa28.lcssa = phi i32 [ %split26, %._crit_edge22 ], [ %.promoted7, %1 ]
  store i32 %.lcssa28.lcssa, ptr %3, align 4
  store i32 %.lcssa10.lcssa, ptr %4, align 4
  store ptr %.lcssa411.lcssa, ptr %5, align 8
  store ptr %.lcssa613.lcssa, ptr %7, align 8
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds nuw %struct._list, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8
  store ptr %63, ptr %7, align 8
  %64 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %64)
  %65 = load ptr, ptr %7, align 8
  store ptr %65, ptr @wanted, align 8
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
  br label %28

7:                                                ; preds = %1
  %.promoted = load ptr, ptr %3, align 8
  br label %8

8:                                                ; preds = %20, %7
  %9 = phi ptr [ %22, %20 ], [ %.promoted, %7 ]
  %10 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @get_value(ptr noundef %15)
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  br label %8, !llvm.loop !25

23:                                               ; preds = %18
  %.lcssa = phi ptr [ %9, %18 ]
  store ptr %.lcssa, ptr %3, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %struct._list, ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = call ptr @copy_data(ptr noundef %26)
  store ptr %27, ptr %2, align 8
  br label %28

28:                                               ; preds = %23, %6
  %29 = load ptr, ptr %2, align 8
  ret ptr %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %.promoted = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct._play, ptr %.promoted, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %8 = phi ptr [ %.promoted, %.lr.ph ], [ %10, %7 ]
  %9 = getelementptr inbounds nuw %struct._play, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %7, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %7
  %split = phi ptr [ %10, %7 ]
  br label %14

14:                                               ; preds = %._crit_edge, %1
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %1 ]
  store ptr %.lcssa, ptr %2, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = call ptr @get_good_move(ptr noundef %17)
  store ptr %18, ptr %3, align 8
  %19 = load ptr, ptr %3, align 8
  ret ptr %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %.promoted = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %struct._play, ptr %.promoted, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @equal_data(ptr noundef %7, ptr noundef %5)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %2
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi ptr [ %.promoted, %.lr.ph ], [ %14, %11 ]
  %13 = getelementptr inbounds nuw %struct._play, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds nuw %struct._play, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @equal_data(ptr noundef %16, ptr noundef %5)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %11
  %split = phi ptr [ %14, %11 ]
  br label %20

20:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %2 ]
  store ptr %.lcssa, ptr %4, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds nuw %struct._play, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  ret ptr %23
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
  %15 = load i32, ptr %11, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %10, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %13, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %12, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %4
  br label %24

24:                                               ; preds = %.lr.ph, %24
  %25 = load i32, ptr %14, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %14, align 4
  %27 = load i32, ptr %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %10, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %12, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %24, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %24
  br label %36

36:                                               ; preds = %._crit_edge, %4
  %37 = load ptr, ptr %5, align 8
  %38 = load ptr, ptr %8, align 8
  %39 = load i32, ptr %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %37, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %7, align 8
  store i32 %42, ptr %43, align 4
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
  %23 = load i32, ptr @nrow, align 4
  %24 = load i32, ptr %4, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %.lr.ph18, label %47

.lr.ph18:                                         ; preds = %16
  br label %26

26:                                               ; preds = %.lr.ph18, %41
  %27 = load i32, ptr @nrow, align 4
  %28 = load i32, ptr @ncol, align 4
  %29 = call ptr @make_data(i32 noundef %27, i32 noundef %28)
  call void @make_wanted(ptr noundef %29)
  %30 = call ptr @make_play(i32 noundef 0)
  %31 = call ptr @get_winning_move(ptr noundef %30)
  %32 = load i32, ptr @nrow, align 4
  %33 = load i32, ptr @ncol, align 4
  %34 = call ptr @make_data(i32 noundef %32, i32 noundef %33)
  call void @get_real_move(ptr noundef %31, ptr noundef %34, ptr noundef %2, ptr noundef %3)
  %35 = load i32, ptr @nrow, align 4
  %36 = load i32, ptr @ncol, align 4
  %37 = load i32, ptr %2, align 4
  %38 = load i32, ptr %3, align 4
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38)
  call void @dump_play(ptr noundef %30)
  %40 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %40)
  br label %41

41:                                               ; preds = %26
  %42 = load i32, ptr @nrow, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @nrow, align 4
  %44 = load i32, ptr @nrow, align 4
  %45 = load i32, ptr %4, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %26, label %._crit_edge19, !llvm.loop !29

._crit_edge19:                                    ; preds = %41
  %split20 = phi ptr [ %31, %41 ]
  %split21 = phi ptr [ %30, %41 ]
  br label %47

47:                                               ; preds = %._crit_edge19, %16
  %.lcssa10 = phi ptr [ %split20, %._crit_edge19 ], [ %.promoted9, %16 ]
  %.lcssa8 = phi ptr [ %split21, %._crit_edge19 ], [ %.promoted7, %16 ]
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
  %56 = icmp ne ptr %.promoted1, null
  br i1 %56, label %.lr.ph12, label %71

.lr.ph12:                                         ; preds = %48
  br label %57

57:                                               ; preds = %.lr.ph12, %68
  %58 = phi ptr [ %.promoted1, %.lr.ph12 ], [ %61, %68 ]
  %59 = phi i32 [ %.promoted5, %.lr.ph12 ], [ %69, %68 ]
  %60 = call ptr @where(ptr noundef %58, ptr noundef %55)
  %61 = call ptr @get_good_move(ptr noundef %60)
  %62 = icmp ne ptr %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  call void @get_real_move(ptr noundef %61, ptr noundef %58, ptr noundef %2, ptr noundef %3)
  %64 = load i32, ptr %2, align 4
  %65 = load i32, ptr %3, align 4
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %59, i32 noundef %64, i32 noundef %65)
  %67 = sub nsw i32 1, %59
  call void @free(ptr noundef %58)
  br label %68

68:                                               ; preds = %63, %57
  %69 = phi i32 [ %67, %63 ], [ %59, %57 ]
  %70 = icmp ne ptr %61, null
  br i1 %70, label %57, label %._crit_edge13, !llvm.loop !30

._crit_edge13:                                    ; preds = %68
  %split14 = phi i32 [ %69, %68 ]
  %split15 = phi ptr [ %61, %68 ]
  %split16 = phi ptr [ %61, %68 ]
  br label %71

71:                                               ; preds = %._crit_edge13, %48
  %.lcssa6 = phi i32 [ %split14, %._crit_edge13 ], [ %.promoted5, %48 ]
  %.lcssa4 = phi ptr [ %split15, %._crit_edge13 ], [ %.promoted3, %48 ]
  %.lcssa2 = phi ptr [ %split16, %._crit_edge13 ], [ %.promoted1, %48 ]
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
  %84 = icmp ne ptr %.promoted, null
  br i1 %84, label %.lr.ph, label %97

.lr.ph:                                           ; preds = %76
  br label %85

85:                                               ; preds = %.lr.ph, %93
  %86 = phi ptr [ %.promoted, %.lr.ph ], [ %95, %93 ]
  %87 = getelementptr inbounds nuw %struct._play, ptr %86, i32 0, i32 0
  %88 = load i32, ptr %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = getelementptr inbounds nuw %struct._play, ptr %86, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8
  call void @show_move(ptr noundef %92)
  br label %93

93:                                               ; preds = %90, %85
  %94 = getelementptr inbounds nuw %struct._play, ptr %86, i32 0, i32 3
  %95 = load ptr, ptr %94, align 8
  %96 = icmp ne ptr %95, null
  br i1 %96, label %85, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %93
  %split = phi ptr [ %95, %93 ]
  br label %97

97:                                               ; preds = %._crit_edge, %76
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %.promoted, %76 ]
  store ptr %.lcssa, ptr %10, align 8
  %98 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %98)
  br label %99

99:                                               ; preds = %97, %71, %47, %0
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
