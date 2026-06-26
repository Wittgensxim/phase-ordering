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
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = phi i32 [ %11, %.lr.ph ], [ %22, %13 ]
  %15 = load ptr, ptr %2, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds i32, ptr %19, i64 %16
  store i32 %18, ptr %20, align 4
  %21 = load i32, ptr %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %4, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %13, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %13
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
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr @ncol, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, ptr %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %29

15:                                               ; preds = %13
  %16 = load ptr, ptr %2, align 8
  %17 = load i32, ptr %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr @nrow, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  store i32 0, ptr %19, align 4
  %24 = load i32, ptr %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %3, align 4
  br label %28

26:                                               ; preds = %15
  %27 = add nsw i32 %20, 1
  store i32 %27, ptr %19, align 4
  store i32 1, ptr %4, align 4
  br label %28

28:                                               ; preds = %26, %23
  br label %5, !llvm.loop !9

29:                                               ; preds = %13
  %30 = load i32, ptr %4, align 4
  ret i32 %30
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
  br i1 %9, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %21
  %11 = phi i32 [ %8, %.lr.ph ], [ %23, %21 ]
  %12 = load ptr, ptr %3, align 8
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i32, ptr %16, i64 %13
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 %18, ptr %14, align 4
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %5, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %10, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %21
  br label %25

25:                                               ; preds = %._crit_edge, %2
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

7:                                                ; preds = %20, %2
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i32, ptr %16, i64 %13
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %15, %18
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi i1 [ false, %7 ], [ %19, %11 ]
  br i1 %21, label %7, label %22, !llvm.loop !11

22:                                               ; preds = %20
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
  %6 = load i32, ptr %4, align 4
  %7 = load i32, ptr @ncol, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %1
  br label %9

9:                                                ; preds = %.lr.ph, %18
  %10 = phi i32 [ %6, %.lr.ph ], [ %21, %18 ]
  %11 = load ptr, ptr %2, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i32, ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %3, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %24

18:                                               ; preds = %9
  store i32 %14, ptr %3, align 4
  %19 = load i32, ptr %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %4, align 4
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr @ncol, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %9, label %..loopexit_crit_edge, !llvm.loop !12

..loopexit_crit_edge:                             ; preds = %18
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
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
  %3 = icmp ne ptr %0, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  call void @dump_list(ptr noundef %6)
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %9)
  br label %10

10:                                               ; preds = %4, %1
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp ne ptr %0, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  call void @dump_play(ptr noundef %6)
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  call void @dump_list(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %12)
  %13 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %13)
  br label %14

14:                                               ; preds = %4, %1
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
  br i1 %11, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %1
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct._play, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %3, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct._play, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %2, align 8
  %20 = call i32 @equal_data(ptr noundef %18, ptr noundef %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %12, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %12
  br label %23

23:                                               ; preds = %._crit_edge, %1
  %24 = load ptr, ptr %3, align 8
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
  br i1 %6, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %20
  %8 = phi i32 [ %4, %.lr.ph ], [ %21, %20 ]
  %9 = load ptr, ptr %2, align 8
  %10 = add nsw i32 %8, 1
  store i32 %10, ptr %3, align 4
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds i32, ptr %9, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13)
  %15 = load i32, ptr %3, align 4
  %16 = load i32, ptr @ncol, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = call i32 @putchar(i32 noundef 44)
  br label %20

20:                                               ; preds = %18, %7
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr @ncol, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %7, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %20
  br label %24

24:                                               ; preds = %._crit_edge, %1
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
  br i1 %4, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %6 = phi ptr [ %3, %.lr.ph ], [ %11, %5 ]
  %7 = load ptr, ptr %6, align 8
  call void @show_move(ptr noundef %7)
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct._list, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %5, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %5
  br label %13

13:                                               ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @show_data(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %10, align 8
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %11)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw %struct._play, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  call void @show_list(ptr noundef %16)
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds nuw %struct._play, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %2, align 8
  %20 = load ptr, ptr %2, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %5, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %5
  br label %22

22:                                               ; preds = %._crit_edge, %1
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
  br label %8

8:                                                ; preds = %.lr.ph, %15
  %9 = phi ptr [ %6, %.lr.ph ], [ %19, %15 ]
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = call i32 @equal_data(ptr noundef %10, ptr noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %21

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds nuw %struct._list, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %4, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %8, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %15
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  br label %21

21:                                               ; preds = %.loopexit, %14
  %22 = load ptr, ptr %4, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, ptr %2, align 4
  br label %26

25:                                               ; preds = %21
  store i32 1, ptr %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, ptr %2, align 4
  ret i32 %27
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
  br i1 %13, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %2
  br label %14

14:                                               ; preds = %.lr.ph, %20
  %15 = phi i32 [ %11, %.lr.ph ], [ %23, %20 ]
  %16 = load i32, ptr @nrow, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  store i32 %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %5, align 4
  %23 = load i32, ptr %5, align 4
  %24 = load i32, ptr %4, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %14, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %20
  br label %26

26:                                               ; preds = %._crit_edge, %2
  %27 = load i32, ptr %5, align 4
  %28 = load i32, ptr @ncol, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %.lr.ph2, label %42

.lr.ph2:                                          ; preds = %26
  br label %30

30:                                               ; preds = %.lr.ph2, %36
  %31 = phi i32 [ %27, %.lr.ph2 ], [ %39, %36 ]
  %32 = load i32, ptr %3, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds i32, ptr %33, i64 %34
  store i32 %32, ptr %35, align 4
  br label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %5, align 4
  %39 = load i32, ptr %5, align 4
  %40 = load i32, ptr @ncol, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %30, label %._crit_edge3, !llvm.loop !19

._crit_edge3:                                     ; preds = %36
  br label %42

42:                                               ; preds = %._crit_edge3, %26
  %43 = load ptr, ptr %6, align 8
  ret ptr %43
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
  %14 = getelementptr inbounds nuw %struct._list, ptr %13, i32 0, i32 1
  store ptr null, ptr %14, align 8
  %15 = load ptr, ptr %10, align 8
  store ptr %15, ptr %11, align 8
  store i32 0, ptr %7, align 4
  %16 = load i32, ptr %7, align 4
  %17 = load i32, ptr @nrow, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %.lr.ph2, label %99

.lr.ph2:                                          ; preds = %3
  br label %19

19:                                               ; preds = %.lr.ph2, %93
  store i32 0, ptr %8, align 4
  %20 = load i32, ptr %8, align 4
  %21 = load i32, ptr @ncol, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %.lr.ph, label %92

.lr.ph:                                           ; preds = %19
  br label %23

23:                                               ; preds = %.lr.ph, %86
  %24 = phi i32 [ %20, %.lr.ph ], [ %89, %86 ]
  %25 = load i32, ptr %7, align 4
  %26 = call ptr @make_data(i32 noundef %25, i32 noundef %24)
  store ptr %26, ptr %9, align 8
  %27 = load ptr, ptr %4, align 8
  call void @melt_data(ptr noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %9, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = call i32 @equal_data(ptr noundef %28, ptr noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %75, label %32

32:                                               ; preds = %23
  %33 = call ptr @malloc(i64 noundef 16) #3
  %34 = load ptr, ptr %11, align 8
  %35 = getelementptr inbounds nuw %struct._list, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 8
  %36 = load ptr, ptr %9, align 8
  %37 = call ptr @copy_data(ptr noundef %36)
  %38 = load ptr, ptr %11, align 8
  %39 = getelementptr inbounds nuw %struct._list, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  store ptr %37, ptr %40, align 8
  %41 = load ptr, ptr %11, align 8
  %42 = getelementptr inbounds nuw %struct._list, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds nuw %struct._list, ptr %43, i32 0, i32 1
  store ptr null, ptr %44, align 8
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr inbounds nuw %struct._list, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  store ptr %47, ptr %11, align 8
  %48 = load ptr, ptr %5, align 8
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %32
  %52 = load ptr, ptr %9, align 8
  %53 = call i32 @get_value(ptr noundef %52)
  %54 = load ptr, ptr %5, align 8
  store i32 %53, ptr %54, align 4
  br label %55

55:                                               ; preds = %51, %32
  %56 = load ptr, ptr %6, align 8
  %57 = load i32, ptr %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %5, align 8
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i32, ptr @ncol, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, ptr %8, align 4
  %66 = load i32, ptr @nrow, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, ptr %7, align 4
  %68 = load ptr, ptr %9, align 8
  %69 = call i32 @in_wanted(ptr noundef %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load ptr, ptr %6, align 8
  store i32 2, ptr %72, align 4
  br label %73

73:                                               ; preds = %71, %63
  br label %74

74:                                               ; preds = %73, %59, %55
  br label %84

75:                                               ; preds = %23
  %76 = load i32, ptr %8, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, ptr @nrow, align 4
  %80 = sub nsw i32 %79, 1
  store i32 %80, ptr %7, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, ptr @ncol, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, ptr %8, align 4
  br label %84

84:                                               ; preds = %81, %74
  %85 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %85)
  br label %86

86:                                               ; preds = %84
  %87 = load i32, ptr %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %8, align 4
  %89 = load i32, ptr %8, align 4
  %90 = load i32, ptr @ncol, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %23, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %86
  br label %92

92:                                               ; preds = %._crit_edge, %19
  br label %93

93:                                               ; preds = %92
  %94 = load i32, ptr %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %7, align 4
  %96 = load i32, ptr %7, align 4
  %97 = load i32, ptr @nrow, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %19, label %._crit_edge3, !llvm.loop !21

._crit_edge3:                                     ; preds = %93
  br label %99

99:                                               ; preds = %._crit_edge3, %3
  %100 = load ptr, ptr %10, align 8
  %101 = getelementptr inbounds nuw %struct._list, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 8
  store ptr %102, ptr %11, align 8
  %103 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %103)
  %104 = load ptr, ptr %11, align 8
  %105 = icmp ne ptr %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load ptr, ptr %5, align 8
  %108 = load i32, ptr %107, align 4
  %109 = sub nsw i32 1, %108
  store i32 %109, ptr %107, align 4
  br label %110

110:                                              ; preds = %106, %99
  %111 = load ptr, ptr %11, align 8
  ret ptr %111
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
  %11 = load ptr, ptr %4, align 8
  %12 = call i32 @next_data(ptr noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %.lr.ph, label %64

.lr.ph:                                           ; preds = %1
  br label %14

14:                                               ; preds = %.lr.ph, %60
  %15 = load ptr, ptr %4, align 8
  %16 = call i32 @valid_data(ptr noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  %19 = call ptr @malloc(i64 noundef 32) #3
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds nuw %struct._play, ptr %20, i32 0, i32 3
  store ptr %19, ptr %21, align 8
  %22 = load ptr, ptr @game_tree, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds nuw %struct._play, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  store ptr %27, ptr @game_tree, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load ptr, ptr %4, align 8
  %30 = call ptr @copy_data(ptr noundef %29)
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds nuw %struct._play, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw %struct._play, ptr %33, i32 0, i32 1
  store ptr %30, ptr %34, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = call ptr @make_list(ptr noundef %35, ptr noundef %3, ptr noundef %2)
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds nuw %struct._play, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds nuw %struct._play, ptr %39, i32 0, i32 2
  store ptr %36, ptr %40, align 8
  %41 = load i32, ptr %3, align 4
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds nuw %struct._play, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  store i32 %41, ptr %44, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr inbounds nuw %struct._play, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds nuw %struct._play, ptr %47, i32 0, i32 3
  store ptr null, ptr %48, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds nuw %struct._play, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  store ptr %51, ptr %6, align 8
  %52 = load i32, ptr %2, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %28
  %55 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %55)
  %56 = load i32, ptr @nrow, align 4
  %57 = load i32, ptr @ncol, align 4
  %58 = call ptr @make_data(i32 noundef %56, i32 noundef %57)
  store ptr %58, ptr %4, align 8
  br label %59

59:                                               ; preds = %54, %28
  br label %60

60:                                               ; preds = %59, %14
  %61 = load ptr, ptr %4, align 8
  %62 = call i32 @next_data(ptr noundef %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %14, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %60
  br label %64

64:                                               ; preds = %._crit_edge, %1
  %65 = load ptr, ptr %5, align 8
  %66 = getelementptr inbounds nuw %struct._play, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 8
  store ptr %67, ptr %6, align 8
  %68 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %68)
  %69 = load ptr, ptr %6, align 8
  ret ptr %69
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
  %10 = load ptr, ptr %6, align 8
  store ptr %10, ptr %7, align 8
  store i32 0, ptr %3, align 4
  %11 = load i32, ptr %3, align 4
  %12 = load i32, ptr @nrow, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %.lr.ph2, label %67

.lr.ph2:                                          ; preds = %1
  br label %14

14:                                               ; preds = %.lr.ph2, %61
  store i32 0, ptr %4, align 4
  %15 = load i32, ptr %4, align 4
  %16 = load i32, ptr @ncol, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %.lr.ph, label %60

.lr.ph:                                           ; preds = %14
  br label %18

18:                                               ; preds = %.lr.ph, %54
  %19 = phi i32 [ %15, %.lr.ph ], [ %57, %54 ]
  %20 = load i32, ptr %3, align 4
  %21 = call ptr @make_data(i32 noundef %20, i32 noundef %19)
  store ptr %21, ptr %5, align 8
  %22 = load ptr, ptr %2, align 8
  call void @melt_data(ptr noundef %21, ptr noundef %22)
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %2, align 8
  %25 = call i32 @equal_data(ptr noundef %23, ptr noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %18
  %28 = call ptr @malloc(i64 noundef 16) #3
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds nuw %struct._list, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = call ptr @copy_data(ptr noundef %31)
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds nuw %struct._list, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  store ptr %32, ptr %35, align 8
  %36 = load ptr, ptr %7, align 8
  %37 = getelementptr inbounds nuw %struct._list, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds nuw %struct._list, ptr %38, i32 0, i32 1
  store ptr null, ptr %39, align 8
  %40 = load ptr, ptr %7, align 8
  %41 = getelementptr inbounds nuw %struct._list, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  store ptr %42, ptr %7, align 8
  br label %52

43:                                               ; preds = %18
  %44 = load i32, ptr %4, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, ptr @nrow, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, ptr %3, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, ptr @ncol, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, ptr %4, align 4
  br label %52

52:                                               ; preds = %49, %27
  %53 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %53)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %4, align 4
  %57 = load i32, ptr %4, align 4
  %58 = load i32, ptr @ncol, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %18, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %54
  br label %60

60:                                               ; preds = %._crit_edge, %14
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %3, align 4
  %64 = load i32, ptr %3, align 4
  %65 = load i32, ptr @nrow, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %14, label %._crit_edge3, !llvm.loop !24

._crit_edge3:                                     ; preds = %61
  br label %67

67:                                               ; preds = %._crit_edge3, %1
  %68 = load ptr, ptr %6, align 8
  %69 = getelementptr inbounds nuw %struct._list, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  store ptr %70, ptr %7, align 8
  %71 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %71)
  %72 = load ptr, ptr %7, align 8
  store ptr %72, ptr @wanted, align 8
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
  br label %26

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %18, %6
  %8 = load ptr, ptr %3, align 8
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
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %struct._list, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %3, align 8
  br label %7, !llvm.loop !25

22:                                               ; preds = %16
  %23 = load ptr, ptr %3, align 8
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @copy_data(ptr noundef %24)
  store ptr %25, ptr %2, align 8
  br label %26

26:                                               ; preds = %22, %5
  %27 = load ptr, ptr %2, align 8
  ret ptr %27
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
  br i1 %7, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %9 = phi ptr [ %6, %.lr.ph ], [ %12, %8 ]
  store ptr %9, ptr %2, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %8, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %8
  %split = phi ptr [ %10, %8 ]
  br label %14

14:                                               ; preds = %._crit_edge, %1
  %.lcssa = phi ptr [ %split, %._crit_edge ], [ %4, %1 ]
  %15 = getelementptr inbounds nuw %struct._play, ptr %.lcssa, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call ptr @get_good_move(ptr noundef %16)
  store ptr %17, ptr %3, align 8
  ret ptr %17
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
  br i1 %11, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds nuw %struct._play, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds nuw %struct._play, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = call i32 @equal_data(ptr noundef %18, ptr noundef %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %12, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %12
  br label %23

23:                                               ; preds = %._crit_edge, %2
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds nuw %struct._play, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  ret ptr %26
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
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 %12
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %4
  br label %19

19:                                               ; preds = %.lr.ph, %19
  %20 = phi i32 [ %11, %.lr.ph ], [ %25, %19 ]
  %21 = phi ptr [ %10, %.lr.ph ], [ %24, %19 ]
  %22 = add nsw i32 %20, 1
  store i32 %22, ptr %21, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %23, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds i32, ptr %29, i64 %26
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %19, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %19
  %split = phi i32 [ %28, %19 ]
  br label %33

33:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %14, %4 ]
  %34 = load ptr, ptr %7, align 8
  store i32 %.lcssa, ptr %34, align 4
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
  switch i32 2, label %105 [
    i32 1, label %15
    i32 2, label %48
    i32 3, label %81
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
  br i1 %24, label %.lr.ph5, label %47

.lr.ph5:                                          ; preds = %15
  br label %25

25:                                               ; preds = %.lr.ph5, %41
  %26 = phi i32 [ %22, %.lr.ph5 ], [ %44, %41 ]
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
  %39 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %39)
  %40 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %40)
  br label %41

41:                                               ; preds = %25
  %42 = load i32, ptr @nrow, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @nrow, align 4
  %44 = load i32, ptr @nrow, align 4
  %45 = load i32, ptr %4, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %25, label %._crit_edge6, !llvm.loop !29

._crit_edge6:                                     ; preds = %41
  br label %47

47:                                               ; preds = %._crit_edge6, %15
  br label %105

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
  br i1 %56, label %.lr.ph2, label %76

.lr.ph2:                                          ; preds = %48
  br label %57

57:                                               ; preds = %.lr.ph2, %72
  %58 = phi ptr [ %55, %.lr.ph2 ], [ %74, %72 ]
  %59 = load ptr, ptr %9, align 8
  %60 = call ptr @where(ptr noundef %58, ptr noundef %59)
  %61 = call ptr @get_good_move(ptr noundef %60)
  store ptr %61, ptr %8, align 8
  %62 = icmp ne ptr %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load ptr, ptr %7, align 8
  call void @get_real_move(ptr noundef %61, ptr noundef %64, ptr noundef %2, ptr noundef %3)
  %65 = load i32, ptr %5, align 4
  %66 = load i32, ptr %2, align 4
  %67 = load i32, ptr %3, align 4
  %68 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %65, i32 noundef %66, i32 noundef %67)
  %69 = load i32, ptr %5, align 4
  %70 = sub nsw i32 1, %69
  store i32 %70, ptr %5, align 4
  %71 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %71)
  br label %72

72:                                               ; preds = %63, %57
  %73 = load ptr, ptr %8, align 8
  store ptr %73, ptr %7, align 8
  %74 = load ptr, ptr %7, align 8
  %75 = icmp ne ptr %74, null
  br i1 %75, label %57, label %._crit_edge3, !llvm.loop !30

._crit_edge3:                                     ; preds = %72
  br label %76

76:                                               ; preds = %._crit_edge3, %48
  %77 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %77)
  %78 = load i32, ptr %5, align 4
  %79 = sub nsw i32 1, %78
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %79)
  br label %105

81:                                               ; preds = %0
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %83 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %84 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %85 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %86 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %87 = call ptr @make_play(i32 noundef 1)
  store ptr %87, ptr %9, align 8
  store ptr %87, ptr %10, align 8
  %88 = load ptr, ptr %10, align 8
  %89 = icmp ne ptr %88, null
  br i1 %89, label %.lr.ph, label %103

.lr.ph:                                           ; preds = %81
  br label %90

90:                                               ; preds = %.lr.ph, %97
  %91 = phi ptr [ %88, %.lr.ph ], [ %101, %97 ]
  %92 = load i32, ptr %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = getelementptr inbounds nuw %struct._play, ptr %91, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8
  call void @show_move(ptr noundef %96)
  br label %97

97:                                               ; preds = %94, %90
  %98 = load ptr, ptr %10, align 8
  %99 = getelementptr inbounds nuw %struct._play, ptr %98, i32 0, i32 3
  %100 = load ptr, ptr %99, align 8
  store ptr %100, ptr %10, align 8
  %101 = load ptr, ptr %10, align 8
  %102 = icmp ne ptr %101, null
  br i1 %102, label %90, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %97
  br label %103

103:                                              ; preds = %._crit_edge, %81
  %104 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %104)
  br label %105

105:                                              ; preds = %103, %76, %47, %0
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
