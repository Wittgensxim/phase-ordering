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
  %10 = load i32, ptr %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %4, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %1
  %13 = load ptr, ptr %2, align 8
  %14 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %4, align 4
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi i32 [ %.promoted, %.lr.ph ], [ %22, %15 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %13, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds i32, ptr %14, i64 %20
  store i32 %19, ptr %21, align 4
  %22 = add nsw i32 %16, -1
  %23 = icmp ne i32 %16, 0
  br i1 %23, label %15, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %15
  %.lcssa = phi i32 [ %22, %15 ]
  store i32 %.lcssa, ptr %4, align 4
  br label %24

24:                                               ; preds = %._crit_edge, %1
  %25 = load ptr, ptr %3, align 8
  ret ptr %25
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
  %7 = load i32, ptr %5, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %5, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %2
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %5, align 4
  br label %14

14:                                               ; preds = %.lr.ph, %29
  %15 = phi i32 [ %.promoted, %.lr.ph ], [ %30, %29 ]
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %10, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds i32, ptr %11, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = sext i32 %15 to i64
  %25 = getelementptr inbounds i32, ptr %12, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %15 to i64
  %28 = getelementptr inbounds i32, ptr %13, i64 %27
  store i32 %26, ptr %28, align 4
  br label %29

29:                                               ; preds = %23, %14
  %30 = add nsw i32 %15, -1
  %31 = icmp ne i32 %15, 0
  br i1 %31, label %14, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %29
  %.lcssa = phi i32 [ %30, %29 ]
  store i32 %.lcssa, ptr %5, align 4
  br label %32

32:                                               ; preds = %._crit_edge, %2
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
  %6 = load i32, ptr %4, align 4
  %7 = load i32, ptr @ncol, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr @ncol, align 4
  %.promoted = load i32, ptr %4, align 4
  %.promoted2 = load i32, ptr %3, align 4
  br label %12

12:                                               ; preds = %.lr.ph, %20
  %13 = phi i32 [ %.promoted2, %.lr.ph ], [ %23, %20 ]
  %14 = phi i32 [ %.promoted, %.lr.ph ], [ %24, %20 ]
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, %13
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  %.lcssa3 = phi i32 [ %13, %12 ]
  %.lcssa = phi i32 [ %14, %12 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa3, ptr %3, align 4
  br label %26

20:                                               ; preds = %12
  %21 = sext i32 %14 to i64
  %22 = getelementptr inbounds i32, ptr %10, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %14, 1
  %25 = icmp ne i32 %24, %11
  br i1 %25, label %12, label %..loopexit_crit_edge, !llvm.loop !12

..loopexit_crit_edge:                             ; preds = %20
  %.lcssa4 = phi i32 [ %23, %20 ]
  %.lcssa1 = phi i32 [ %24, %20 ]
  store i32 %.lcssa1, ptr %4, align 4
  store i32 %.lcssa4, ptr %3, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  br label %26

26:                                               ; preds = %.loopexit, %19
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
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = call i32 @equal_data(ptr noundef %7, ptr noundef %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %1
  %12 = load ptr, ptr %2, align 8
  %.promoted = load ptr, ptr %3, align 8
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = phi ptr [ %.promoted, %.lr.ph ], [ %16, %13 ]
  %15 = getelementptr inbounds nuw %struct._play, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds nuw %struct._play, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @equal_data(ptr noundef %18, ptr noundef %12)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %13, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %13
  %.lcssa = phi ptr [ %16, %13 ]
  store ptr %.lcssa, ptr %3, align 8
  br label %22

22:                                               ; preds = %._crit_edge, %1
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds nuw %struct._play, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 8
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr @ncol, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %.promoted = load i32, ptr %3, align 4
  br label %8

8:                                                ; preds = %.lr.ph, %19
  %9 = phi i32 [ %.promoted, %.lr.ph ], [ %10, %19 ]
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i32, ptr %7, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13)
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 %10, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = call i32 @putchar(i32 noundef 44)
  br label %19

19:                                               ; preds = %17, %8
  %20 = load i32, ptr @ncol, align 4
  %21 = icmp ne i32 %10, %20
  br i1 %21, label %8, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %19
  %.lcssa = phi i32 [ %10, %19 ]
  store i32 %.lcssa, ptr %3, align 4
  br label %22

22:                                               ; preds = %._crit_edge, %1
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
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %1
  %.promoted = load ptr, ptr %2, align 8
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %6 = phi ptr [ %.promoted, %.lr.ph ], [ %10, %5 ]
  %7 = getelementptr inbounds nuw %struct._list, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  call void @show_move(ptr noundef %8)
  %9 = getelementptr inbounds nuw %struct._list, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %5, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %5
  %.lcssa = phi ptr [ %10, %5 ]
  store ptr %.lcssa, ptr %2, align 8
  br label %12

12:                                               ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %1
  %.promoted = load ptr, ptr %2, align 8
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %6 = phi ptr [ %.promoted, %.lr.ph ], [ %17, %5 ]
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %8 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @show_data(ptr noundef %9)
  %10 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 0
  %11 = load i32, ptr %10, align 8
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %11)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %14 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  call void @show_list(ptr noundef %15)
  %16 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %5, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %5
  %.lcssa = phi ptr [ %17, %5 ]
  store ptr %.lcssa, ptr %2, align 8
  br label %19

19:                                               ; preds = %._crit_edge, %1
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
  %6 = load ptr, ptr %4, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %.promoted = load ptr, ptr %4, align 8
  br label %9

9:                                                ; preds = %.lr.ph, %16
  %10 = phi ptr [ %.promoted, %.lr.ph ], [ %18, %16 ]
  %11 = getelementptr inbounds nuw %struct._list, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  %.lcssa = phi ptr [ %10, %9 ]
  store ptr %.lcssa, ptr %4, align 8
  br label %20

16:                                               ; preds = %9
  %17 = getelementptr inbounds nuw %struct._list, ptr %10, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %9, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %16
  %.lcssa1 = phi ptr [ %18, %16 ]
  store ptr %.lcssa1, ptr %4, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  br label %20

20:                                               ; preds = %.loopexit, %15
  %21 = load ptr, ptr %4, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, ptr %2, align 4
  br label %25

24:                                               ; preds = %20
  store i32 1, ptr %2, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, ptr %2, align 4
  ret i32 %26
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
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr %4, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %2
  %14 = load ptr, ptr %6, align 8
  %15 = load i32, ptr %4, align 4
  %.promoted = load i32, ptr %5, align 4
  br label %16

16:                                               ; preds = %.lr.ph, %21
  %17 = phi i32 [ %.promoted, %.lr.ph ], [ %22, %21 ]
  %18 = load i32, ptr @nrow, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, ptr %14, i64 %19
  store i32 %18, ptr %20, align 4
  br label %21

21:                                               ; preds = %16
  %22 = add nsw i32 %17, 1
  %23 = icmp ne i32 %22, %15
  br i1 %23, label %16, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %21
  %.lcssa = phi i32 [ %22, %21 ]
  store i32 %.lcssa, ptr %5, align 4
  br label %24

24:                                               ; preds = %._crit_edge, %2
  %25 = load i32, ptr %5, align 4
  %26 = load i32, ptr @ncol, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %.lr.ph2, label %38

.lr.ph2:                                          ; preds = %24
  %28 = load i32, ptr %3, align 4
  %29 = load ptr, ptr %6, align 8
  %.promoted4 = load i32, ptr %5, align 4
  br label %30

30:                                               ; preds = %.lr.ph2, %34
  %31 = phi i32 [ %.promoted4, %.lr.ph2 ], [ %35, %34 ]
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %29, i64 %32
  store i32 %28, ptr %33, align 4
  br label %34

34:                                               ; preds = %30
  %35 = add nsw i32 %31, 1
  %36 = load i32, ptr @ncol, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %30, label %._crit_edge3, !llvm.loop !19

._crit_edge3:                                     ; preds = %34
  %.lcssa5 = phi i32 [ %35, %34 ]
  store i32 %.lcssa5, ptr %5, align 4
  br label %38

38:                                               ; preds = %._crit_edge3, %24
  %39 = load ptr, ptr %6, align 8
  ret ptr %39
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
  %17 = load i32, ptr %7, align 4
  %18 = load i32, ptr @nrow, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %.lr.ph2, label %93

.lr.ph2:                                          ; preds = %3
  %20 = load ptr, ptr %4, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = load ptr, ptr %6, align 8
  %.promoted12 = load i32, ptr %7, align 4
  %.promoted = load ptr, ptr %11, align 8
  %.promoted18 = load ptr, ptr %9, align 1
  br label %27

27:                                               ; preds = %.lr.ph2, %89
  %.lcssa719 = phi ptr [ %.promoted18, %.lr.ph2 ], [ %.lcssa720, %89 ]
  %.lcssa917 = phi ptr [ %.promoted, %.lr.ph2 ], [ %.lcssa916, %89 ]
  %.lcssa13 = phi i32 [ %.promoted12, %.lr.ph2 ], [ %90, %89 ]
  %28 = load i32, ptr @ncol, align 4
  %29 = icmp ne i32 0, %28
  br i1 %29, label %.lr.ph, label %88

.lr.ph:                                           ; preds = %27
  br label %30

30:                                               ; preds = %.lr.ph, %84
  %31 = phi ptr [ %.lcssa917, %.lr.ph ], [ %81, %84 ]
  %32 = phi i32 [ 0, %.lr.ph ], [ %85, %84 ]
  %33 = phi i32 [ %.lcssa13, %.lr.ph ], [ %83, %84 ]
  %34 = call ptr @make_data(i32 noundef %33, i32 noundef %32)
  call void @melt_data(ptr noundef %34, ptr noundef %20)
  %35 = call i32 @equal_data(ptr noundef %34, ptr noundef %21)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %30
  %38 = call ptr @malloc(i64 noundef 16) #3
  %39 = getelementptr inbounds nuw %struct._list, ptr %31, i32 0, i32 1
  store ptr %38, ptr %39, align 8
  %40 = call ptr @copy_data(ptr noundef %34)
  %41 = getelementptr inbounds nuw %struct._list, ptr %31, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds nuw %struct._list, ptr %42, i32 0, i32 0
  store ptr %40, ptr %43, align 8
  %44 = getelementptr inbounds nuw %struct._list, ptr %31, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds nuw %struct._list, ptr %45, i32 0, i32 1
  store ptr null, ptr %46, align 8
  %47 = getelementptr inbounds nuw %struct._list, ptr %31, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = load i32, ptr %22, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = call i32 @get_value(ptr noundef %34)
  store i32 %52, ptr %23, align 4
  br label %53

53:                                               ; preds = %51, %37
  %54 = load i32, ptr %24, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %25, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, ptr @ncol, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, ptr @nrow, align 4
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @in_wanted(ptr noundef %34)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 2, ptr %26, align 4
  br label %67

67:                                               ; preds = %66, %59
  br label %68

68:                                               ; preds = %67, %56, %53
  %69 = phi i32 [ %61, %67 ], [ %32, %56 ], [ %32, %53 ]
  %70 = phi i32 [ %63, %67 ], [ %33, %56 ], [ %33, %53 ]
  br label %80

71:                                               ; preds = %30
  %72 = icmp eq i32 %32, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i32, ptr @nrow, align 4
  %75 = sub nsw i32 %74, 1
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi i32 [ %75, %73 ], [ %33, %71 ]
  %78 = load i32, ptr @ncol, align 4
  %79 = sub nsw i32 %78, 1
  br label %80

80:                                               ; preds = %76, %68
  %81 = phi ptr [ %31, %76 ], [ %48, %68 ]
  %82 = phi i32 [ %79, %76 ], [ %69, %68 ]
  %83 = phi i32 [ %77, %76 ], [ %70, %68 ]
  call void @free(ptr noundef %34)
  br label %84

84:                                               ; preds = %80
  %85 = add nsw i32 %82, 1
  %86 = load i32, ptr @ncol, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %30, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %84
  %.lcssa9 = phi ptr [ %81, %84 ]
  %.lcssa7 = phi ptr [ %34, %84 ]
  %.lcssa5 = phi i32 [ %85, %84 ]
  %.lcssa = phi i32 [ %83, %84 ]
  br label %88

88:                                               ; preds = %._crit_edge, %27
  %.lcssa720 = phi ptr [ %.lcssa7, %._crit_edge ], [ %.lcssa719, %27 ]
  %.lcssa916 = phi ptr [ %.lcssa9, %._crit_edge ], [ %.lcssa917, %27 ]
  %.lcssa14 = phi i32 [ %.lcssa, %._crit_edge ], [ %.lcssa13, %27 ]
  %.lcssa511 = phi i32 [ %.lcssa5, %._crit_edge ], [ 0, %27 ]
  br label %89

89:                                               ; preds = %88
  %90 = add nsw i32 %.lcssa14, 1
  %91 = load i32, ptr @nrow, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %27, label %._crit_edge3, !llvm.loop !21

._crit_edge3:                                     ; preds = %89
  %.lcssa720.lcssa = phi ptr [ %.lcssa720, %89 ]
  %.lcssa916.lcssa = phi ptr [ %.lcssa916, %89 ]
  %.lcssa15 = phi i32 [ %90, %89 ]
  %.lcssa511.lcssa = phi i32 [ %.lcssa511, %89 ]
  store i32 %.lcssa511.lcssa, ptr %8, align 4
  store i32 %.lcssa15, ptr %7, align 4
  store ptr %.lcssa916.lcssa, ptr %11, align 8
  store ptr %.lcssa720.lcssa, ptr %9, align 1
  br label %93

93:                                               ; preds = %._crit_edge3, %3
  %94 = load ptr, ptr %10, align 8
  %95 = getelementptr inbounds nuw %struct._list, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8
  store ptr %96, ptr %11, align 8
  %97 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %97)
  %98 = load ptr, ptr %11, align 8
  %99 = icmp ne ptr %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load ptr, ptr %5, align 8
  %102 = load i32, ptr %101, align 4
  %103 = sub nsw i32 1, %102
  %104 = load ptr, ptr %5, align 8
  store i32 %103, ptr %104, align 4
  br label %105

105:                                              ; preds = %100, %93
  %106 = load ptr, ptr %11, align 8
  ret ptr %106
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
  %14 = load ptr, ptr %4, align 8
  %15 = call i32 @next_data(ptr noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %.lr.ph, label %61

.lr.ph:                                           ; preds = %1
  %.promoted = load ptr, ptr %4, align 8
  %.promoted1 = load ptr, ptr %6, align 8
  br label %17

17:                                               ; preds = %.lr.ph, %56
  %18 = phi ptr [ %.promoted1, %.lr.ph ], [ %57, %56 ]
  %19 = phi ptr [ %.promoted, %.lr.ph ], [ %58, %56 ]
  %20 = call i32 @valid_data(ptr noundef %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %17
  %23 = call ptr @malloc(i64 noundef 32) #3
  %24 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  store ptr %23, ptr %24, align 8
  %25 = load ptr, ptr @game_tree, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  store ptr %29, ptr @game_tree, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = call ptr @copy_data(ptr noundef %19)
  %32 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw %struct._play, ptr %33, i32 0, i32 1
  store ptr %31, ptr %34, align 8
  %35 = call ptr @make_list(ptr noundef %19, ptr noundef %3, ptr noundef %2)
  %36 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds nuw %struct._play, ptr %37, i32 0, i32 2
  store ptr %35, ptr %38, align 8
  %39 = load i32, ptr %3, align 4
  %40 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds nuw %struct._play, ptr %41, i32 0, i32 0
  store i32 %39, ptr %42, align 8
  %43 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw %struct._play, ptr %44, i32 0, i32 3
  store ptr null, ptr %45, align 8
  %46 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = load i32, ptr %2, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  call void @free(ptr noundef %19)
  %51 = load i32, ptr @nrow, align 4
  %52 = load i32, ptr @ncol, align 4
  %53 = call ptr @make_data(i32 noundef %51, i32 noundef %52)
  br label %54

54:                                               ; preds = %50, %30
  %55 = phi ptr [ %53, %50 ], [ %19, %30 ]
  br label %56

56:                                               ; preds = %54, %17
  %57 = phi ptr [ %47, %54 ], [ %18, %17 ]
  %58 = phi ptr [ %55, %54 ], [ %19, %17 ]
  %59 = call i32 @next_data(ptr noundef %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %17, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %56
  %.lcssa2 = phi ptr [ %57, %56 ]
  %.lcssa = phi ptr [ %58, %56 ]
  store ptr %.lcssa, ptr %4, align 8
  store ptr %.lcssa2, ptr %6, align 8
  br label %61

61:                                               ; preds = %._crit_edge, %1
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds nuw %struct._play, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8
  store ptr %64, ptr %6, align 8
  %65 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %65)
  %66 = load ptr, ptr %6, align 8
  ret ptr %66
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
  %12 = load i32, ptr %3, align 4
  %13 = load i32, ptr @nrow, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %.lr.ph2, label %61

.lr.ph2:                                          ; preds = %1
  %15 = load ptr, ptr %2, align 8
  %16 = load ptr, ptr %2, align 8
  %.promoted12 = load i32, ptr %3, align 4
  %.promoted = load ptr, ptr %7, align 8
  %.promoted18 = load ptr, ptr %5, align 1
  br label %17

17:                                               ; preds = %.lr.ph2, %57
  %.lcssa719 = phi ptr [ %.promoted18, %.lr.ph2 ], [ %.lcssa720, %57 ]
  %.lcssa917 = phi ptr [ %.promoted, %.lr.ph2 ], [ %.lcssa916, %57 ]
  %.lcssa13 = phi i32 [ %.promoted12, %.lr.ph2 ], [ %58, %57 ]
  %18 = load i32, ptr @ncol, align 4
  %19 = icmp ne i32 0, %18
  br i1 %19, label %.lr.ph, label %56

.lr.ph:                                           ; preds = %17
  br label %20

20:                                               ; preds = %.lr.ph, %52
  %21 = phi ptr [ %.lcssa917, %.lr.ph ], [ %49, %52 ]
  %22 = phi i32 [ 0, %.lr.ph ], [ %53, %52 ]
  %23 = phi i32 [ %.lcssa13, %.lr.ph ], [ %51, %52 ]
  %24 = call ptr @make_data(i32 noundef %23, i32 noundef %22)
  call void @melt_data(ptr noundef %24, ptr noundef %15)
  %25 = call i32 @equal_data(ptr noundef %24, ptr noundef %16)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %20
  %28 = call ptr @malloc(i64 noundef 16) #3
  %29 = getelementptr inbounds nuw %struct._list, ptr %21, i32 0, i32 1
  store ptr %28, ptr %29, align 8
  %30 = call ptr @copy_data(ptr noundef %24)
  %31 = getelementptr inbounds nuw %struct._list, ptr %21, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds nuw %struct._list, ptr %32, i32 0, i32 0
  store ptr %30, ptr %33, align 8
  %34 = getelementptr inbounds nuw %struct._list, ptr %21, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds nuw %struct._list, ptr %35, i32 0, i32 1
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds nuw %struct._list, ptr %21, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  br label %48

39:                                               ; preds = %20
  %40 = icmp eq i32 %22, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, ptr @nrow, align 4
  %43 = sub nsw i32 %42, 1
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %43, %41 ], [ %23, %39 ]
  %46 = load i32, ptr @ncol, align 4
  %47 = sub nsw i32 %46, 1
  br label %48

48:                                               ; preds = %44, %27
  %49 = phi ptr [ %21, %44 ], [ %38, %27 ]
  %50 = phi i32 [ %47, %44 ], [ %22, %27 ]
  %51 = phi i32 [ %45, %44 ], [ %23, %27 ]
  call void @free(ptr noundef %24)
  br label %52

52:                                               ; preds = %48
  %53 = add nsw i32 %50, 1
  %54 = load i32, ptr @ncol, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %20, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %52
  %.lcssa9 = phi ptr [ %49, %52 ]
  %.lcssa7 = phi ptr [ %24, %52 ]
  %.lcssa5 = phi i32 [ %53, %52 ]
  %.lcssa = phi i32 [ %51, %52 ]
  br label %56

56:                                               ; preds = %._crit_edge, %17
  %.lcssa720 = phi ptr [ %.lcssa7, %._crit_edge ], [ %.lcssa719, %17 ]
  %.lcssa916 = phi ptr [ %.lcssa9, %._crit_edge ], [ %.lcssa917, %17 ]
  %.lcssa14 = phi i32 [ %.lcssa, %._crit_edge ], [ %.lcssa13, %17 ]
  %.lcssa511 = phi i32 [ %.lcssa5, %._crit_edge ], [ 0, %17 ]
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %.lcssa14, 1
  %59 = load i32, ptr @nrow, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %17, label %._crit_edge3, !llvm.loop !24

._crit_edge3:                                     ; preds = %57
  %.lcssa720.lcssa = phi ptr [ %.lcssa720, %57 ]
  %.lcssa916.lcssa = phi ptr [ %.lcssa916, %57 ]
  %.lcssa15 = phi i32 [ %58, %57 ]
  %.lcssa511.lcssa = phi i32 [ %.lcssa511, %57 ]
  store i32 %.lcssa511.lcssa, ptr %4, align 4
  store i32 %.lcssa15, ptr %3, align 4
  store ptr %.lcssa916.lcssa, ptr %7, align 8
  store ptr %.lcssa720.lcssa, ptr %5, align 1
  br label %61

61:                                               ; preds = %._crit_edge3, %1
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr inbounds nuw %struct._list, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8
  store ptr %64, ptr %7, align 8
  %65 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %65)
  %66 = load ptr, ptr %7, align 8
  store ptr %66, ptr @wanted, align 8
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
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %1
  %.promoted = load ptr, ptr %2, align 8
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %9 = phi ptr [ %.promoted, %.lr.ph ], [ %11, %8 ]
  %10 = getelementptr inbounds nuw %struct._play, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %struct._play, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %8
  %.lcssa = phi ptr [ %11, %8 ]
  store ptr %.lcssa, ptr %2, align 8
  br label %15

15:                                               ; preds = %._crit_edge, %1
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds nuw %struct._play, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = call ptr @get_good_move(ptr noundef %18)
  store ptr %19, ptr %3, align 8
  %20 = load ptr, ptr %3, align 8
  ret ptr %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %struct._play, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = call i32 @equal_data(ptr noundef %7, ptr noundef %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %2
  %12 = load ptr, ptr %3, align 8
  %.promoted = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = phi ptr [ %.promoted, %.lr.ph ], [ %16, %13 ]
  %15 = getelementptr inbounds nuw %struct._play, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds nuw %struct._play, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @equal_data(ptr noundef %18, ptr noundef %12)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %13, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %13
  %.lcssa = phi ptr [ %16, %13 ]
  store ptr %.lcssa, ptr %4, align 8
  br label %22

22:                                               ; preds = %._crit_edge, %2
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds nuw %struct._play, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  ret ptr %25
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
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %15, %21
  br i1 %22, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %4
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %8, align 8
  br label %28

28:                                               ; preds = %.lr.ph, %28
  %29 = load i32, ptr %23, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %23, align 4
  %31 = load i32, ptr %25, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %24, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %27, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %26, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %28, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %28
  br label %40

40:                                               ; preds = %._crit_edge, %4
  %41 = load ptr, ptr %5, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load i32, ptr %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %41, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %7, align 8
  store i32 %46, ptr %47, align 4
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
  switch i32 %15, label %101 [
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
  %23 = load i32, ptr @nrow, align 4
  %24 = load i32, ptr %4, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %.lr.ph5, label %47

.lr.ph5:                                          ; preds = %16
  br label %26

26:                                               ; preds = %.lr.ph5, %41
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
  br i1 %46, label %26, label %._crit_edge6, !llvm.loop !29

._crit_edge6:                                     ; preds = %41
  %.lcssa16 = phi ptr [ %31, %41 ]
  %.lcssa14 = phi ptr [ %30, %41 ]
  store ptr %.lcssa14, ptr %9, align 8
  store ptr %.lcssa16, ptr %6, align 8
  br label %47

47:                                               ; preds = %._crit_edge6, %16
  br label %101

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
  %55 = load ptr, ptr %7, align 8
  %56 = icmp ne ptr %55, null
  br i1 %56, label %.lr.ph2, label %72

.lr.ph2:                                          ; preds = %48
  %57 = load ptr, ptr %9, align 8
  %.promoted7 = load ptr, ptr %7, align 8
  %.promoted11 = load i32, ptr %5, align 4
  br label %58

58:                                               ; preds = %.lr.ph2, %69
  %59 = phi i32 [ %.promoted11, %.lr.ph2 ], [ %70, %69 ]
  %60 = phi ptr [ %.promoted7, %.lr.ph2 ], [ %62, %69 ]
  %61 = call ptr @where(ptr noundef %60, ptr noundef %57)
  %62 = call ptr @get_good_move(ptr noundef %61)
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  call void @get_real_move(ptr noundef %62, ptr noundef %60, ptr noundef %2, ptr noundef %3)
  %65 = load i32, ptr %2, align 4
  %66 = load i32, ptr %3, align 4
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %59, i32 noundef %65, i32 noundef %66)
  %68 = sub nsw i32 1, %59
  call void @free(ptr noundef %60)
  br label %69

69:                                               ; preds = %64, %58
  %70 = phi i32 [ %68, %64 ], [ %59, %58 ]
  %71 = icmp ne ptr %62, null
  br i1 %71, label %58, label %._crit_edge3, !llvm.loop !30

._crit_edge3:                                     ; preds = %69
  %.lcssa12 = phi i32 [ %70, %69 ]
  %.lcssa10 = phi ptr [ %62, %69 ]
  %.lcssa8 = phi ptr [ %62, %69 ]
  store ptr %.lcssa8, ptr %7, align 8
  store ptr %.lcssa10, ptr %8, align 8
  store i32 %.lcssa12, ptr %5, align 4
  br label %72

72:                                               ; preds = %._crit_edge3, %48
  %73 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %73)
  %74 = load i32, ptr %5, align 4
  %75 = sub nsw i32 1, %74
  %76 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %75)
  br label %101

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
  %85 = load ptr, ptr %10, align 8
  %86 = icmp ne ptr %85, null
  br i1 %86, label %.lr.ph, label %99

.lr.ph:                                           ; preds = %77
  %.promoted = load ptr, ptr %10, align 8
  br label %87

87:                                               ; preds = %.lr.ph, %95
  %88 = phi ptr [ %.promoted, %.lr.ph ], [ %97, %95 ]
  %89 = getelementptr inbounds nuw %struct._play, ptr %88, i32 0, i32 0
  %90 = load i32, ptr %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = getelementptr inbounds nuw %struct._play, ptr %88, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8
  call void @show_move(ptr noundef %94)
  br label %95

95:                                               ; preds = %92, %87
  %96 = getelementptr inbounds nuw %struct._play, ptr %88, i32 0, i32 3
  %97 = load ptr, ptr %96, align 8
  %98 = icmp ne ptr %97, null
  br i1 %98, label %87, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %95
  %.lcssa = phi ptr [ %97, %95 ]
  store ptr %.lcssa, ptr %10, align 8
  br label %99

99:                                               ; preds = %._crit_edge, %77
  %100 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %100)
  br label %101

101:                                              ; preds = %99, %72, %47, %0
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
