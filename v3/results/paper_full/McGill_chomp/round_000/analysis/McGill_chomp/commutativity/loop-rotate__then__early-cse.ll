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
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %4, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %1
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds i32, ptr %18, i64 %15
  store i32 %17, ptr %19, align 4
  %20 = load i32, ptr %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %4, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %12, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %12
  br label %23

23:                                               ; preds = %._crit_edge, %1
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
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %20
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 %12
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 %17, ptr %13, align 4
  br label %20

20:                                               ; preds = %19, %9
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %5, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %9, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %20
  br label %24

24:                                               ; preds = %._crit_edge, %2
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
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %3, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %23

18:                                               ; preds = %9
  store i32 %14, ptr %3, align 4
  %19 = load i32, ptr %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %4, align 4
  %21 = load i32, ptr @ncol, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %9, label %..loopexit_crit_edge, !llvm.loop !12

..loopexit_crit_edge:                             ; preds = %18
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  br label %23

23:                                               ; preds = %.loopexit, %17
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
  %5 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = call i32 @equal_data(ptr noundef %6, ptr noundef %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %1
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct._play, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %3, align 8
  %15 = getelementptr inbounds nuw %struct._play, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = call i32 @equal_data(ptr noundef %16, ptr noundef %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %11, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %11
  br label %21

21:                                               ; preds = %._crit_edge, %1
  %22 = load ptr, ptr %3, align 8
  %23 = load i32, ptr %22, align 8
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %4 = load i32, ptr @ncol, align 4
  %5 = icmp ne i32 0, %4
  br i1 %5, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %1
  br label %6

6:                                                ; preds = %.lr.ph, %19
  %7 = load ptr, ptr %2, align 8
  %8 = load i32, ptr %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %3, align 4
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  %14 = load i32, ptr %3, align 4
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = call i32 @putchar(i32 noundef 44)
  br label %19

19:                                               ; preds = %17, %6
  %20 = load i32, ptr %3, align 4
  %21 = load i32, ptr @ncol, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %6, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %19
  br label %23

23:                                               ; preds = %._crit_edge, %1
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
  %3 = icmp ne ptr %0, null
  br i1 %3, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %5, align 8
  call void @show_move(ptr noundef %6)
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct._list, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %2, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %4, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %4
  br label %11

11:                                               ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = icmp ne ptr %0, null
  br i1 %3, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct._play, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @show_data(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  %10 = load i32, ptr %9, align 8
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %10)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct._play, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  call void @show_list(ptr noundef %15)
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds nuw %struct._play, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %2, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %4, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %4
  br label %20

20:                                               ; preds = %._crit_edge, %1
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

7:                                                ; preds = %.lr.ph, %14
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = call i32 @equal_data(ptr noundef %9, ptr noundef %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %19

14:                                               ; preds = %7
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw %struct._list, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %4, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %7, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %14
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  br label %19

19:                                               ; preds = %.loopexit, %13
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
  %12 = icmp ne i32 0, %11
  br i1 %12, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %19
  %14 = load i32, ptr @nrow, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %15, i64 %17
  store i32 %14, ptr %18, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %5, align 4
  %22 = load i32, ptr %4, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %13, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %19
  br label %24

24:                                               ; preds = %._crit_edge, %2
  %25 = load i32, ptr %5, align 4
  %26 = load i32, ptr @ncol, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %.lr.ph2, label %39

.lr.ph2:                                          ; preds = %24
  br label %28

28:                                               ; preds = %.lr.ph2, %34
  %29 = load i32, ptr %3, align 4
  %30 = load ptr, ptr %6, align 8
  %31 = load i32, ptr %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %30, i64 %32
  store i32 %29, ptr %33, align 4
  br label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %5, align 4
  %37 = load i32, ptr @ncol, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %28, label %._crit_edge3, !llvm.loop !19

._crit_edge3:                                     ; preds = %34
  br label %39

39:                                               ; preds = %._crit_edge3, %24
  %40 = load ptr, ptr %6, align 8
  ret ptr %40
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
  %16 = load i32, ptr @nrow, align 4
  %17 = icmp ne i32 0, %16
  br i1 %17, label %.lr.ph2, label %95

.lr.ph2:                                          ; preds = %3
  br label %18

18:                                               ; preds = %.lr.ph2, %90
  store i32 0, ptr %8, align 4
  %19 = load i32, ptr @ncol, align 4
  %20 = icmp ne i32 0, %19
  br i1 %20, label %.lr.ph, label %89

.lr.ph:                                           ; preds = %18
  br label %21

21:                                               ; preds = %.lr.ph, %84
  %22 = load i32, ptr %7, align 4
  %23 = load i32, ptr %8, align 4
  %24 = call ptr @make_data(i32 noundef %22, i32 noundef %23)
  store ptr %24, ptr %9, align 8
  %25 = load ptr, ptr %4, align 8
  call void @melt_data(ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %9, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = call i32 @equal_data(ptr noundef %26, ptr noundef %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %73, label %30

30:                                               ; preds = %21
  %31 = call ptr @malloc(i64 noundef 16) #3
  %32 = load ptr, ptr %11, align 8
  %33 = getelementptr inbounds nuw %struct._list, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 8
  %34 = load ptr, ptr %9, align 8
  %35 = call ptr @copy_data(ptr noundef %34)
  %36 = load ptr, ptr %11, align 8
  %37 = getelementptr inbounds nuw %struct._list, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  store ptr %35, ptr %38, align 8
  %39 = load ptr, ptr %11, align 8
  %40 = getelementptr inbounds nuw %struct._list, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds nuw %struct._list, ptr %41, i32 0, i32 1
  store ptr null, ptr %42, align 8
  %43 = load ptr, ptr %11, align 8
  %44 = getelementptr inbounds nuw %struct._list, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  store ptr %45, ptr %11, align 8
  %46 = load ptr, ptr %5, align 8
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %30
  %50 = load ptr, ptr %9, align 8
  %51 = call i32 @get_value(ptr noundef %50)
  %52 = load ptr, ptr %5, align 8
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %49, %30
  %54 = load ptr, ptr %6, align 8
  %55 = load i32, ptr %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %5, align 8
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32, ptr @ncol, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, ptr %8, align 4
  %64 = load i32, ptr @nrow, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, ptr %7, align 4
  %66 = load ptr, ptr %9, align 8
  %67 = call i32 @in_wanted(ptr noundef %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load ptr, ptr %6, align 8
  store i32 2, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %61
  br label %72

72:                                               ; preds = %71, %57, %53
  br label %82

73:                                               ; preds = %21
  %74 = load i32, ptr %8, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, ptr @nrow, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, ptr %7, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, ptr @ncol, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, ptr %8, align 4
  br label %82

82:                                               ; preds = %79, %72
  %83 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %83)
  br label %84

84:                                               ; preds = %82
  %85 = load i32, ptr %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %8, align 4
  %87 = load i32, ptr @ncol, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %21, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %84
  br label %89

89:                                               ; preds = %._crit_edge, %18
  br label %90

90:                                               ; preds = %89
  %91 = load i32, ptr %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %7, align 4
  %93 = load i32, ptr @nrow, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %18, label %._crit_edge3, !llvm.loop !21

._crit_edge3:                                     ; preds = %90
  br label %95

95:                                               ; preds = %._crit_edge3, %3
  %96 = load ptr, ptr %10, align 8
  %97 = getelementptr inbounds nuw %struct._list, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  store ptr %98, ptr %11, align 8
  %99 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %99)
  %100 = load ptr, ptr %11, align 8
  %101 = icmp ne ptr %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load ptr, ptr %5, align 8
  %104 = load i32, ptr %103, align 4
  %105 = sub nsw i32 1, %104
  store i32 %105, ptr %103, align 4
  br label %106

106:                                              ; preds = %102, %95
  %107 = load ptr, ptr %11, align 8
  ret ptr %107
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
  %11 = load i32, ptr @nrow, align 4
  %12 = icmp ne i32 0, %11
  br i1 %12, label %.lr.ph2, label %63

.lr.ph2:                                          ; preds = %1
  br label %13

13:                                               ; preds = %.lr.ph2, %58
  store i32 0, ptr %4, align 4
  %14 = load i32, ptr @ncol, align 4
  %15 = icmp ne i32 0, %14
  br i1 %15, label %.lr.ph, label %57

.lr.ph:                                           ; preds = %13
  br label %16

16:                                               ; preds = %.lr.ph, %52
  %17 = load i32, ptr %3, align 4
  %18 = load i32, ptr %4, align 4
  %19 = call ptr @make_data(i32 noundef %17, i32 noundef %18)
  store ptr %19, ptr %5, align 8
  %20 = load ptr, ptr %2, align 8
  call void @melt_data(ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %2, align 8
  %23 = call i32 @equal_data(ptr noundef %21, ptr noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %16
  %26 = call ptr @malloc(i64 noundef 16) #3
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds nuw %struct._list, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = call ptr @copy_data(ptr noundef %29)
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds nuw %struct._list, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  store ptr %30, ptr %33, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds nuw %struct._list, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw %struct._list, ptr %36, i32 0, i32 1
  store ptr null, ptr %37, align 8
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds nuw %struct._list, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %7, align 8
  br label %50

41:                                               ; preds = %16
  %42 = load i32, ptr %4, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, ptr @nrow, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, ptr %3, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, ptr @ncol, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, ptr %4, align 4
  br label %50

50:                                               ; preds = %47, %25
  %51 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %51)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, ptr %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %4, align 4
  %55 = load i32, ptr @ncol, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %16, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %52
  br label %57

57:                                               ; preds = %._crit_edge, %13
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %3, align 4
  %61 = load i32, ptr @nrow, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %13, label %._crit_edge3, !llvm.loop !24

._crit_edge3:                                     ; preds = %58
  br label %63

63:                                               ; preds = %._crit_edge3, %1
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds nuw %struct._list, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  store ptr %66, ptr %7, align 8
  %67 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %67)
  %68 = load ptr, ptr %7, align 8
  store ptr %68, ptr @wanted, align 8
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
  %4 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct._play, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %7, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %7
  br label %14

14:                                               ; preds = %._crit_edge, %1
  %15 = load ptr, ptr %2, align 8
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
  %7 = load ptr, ptr %3, align 8
  %8 = call i32 @equal_data(ptr noundef %6, ptr noundef %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %2
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw %struct._play, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %4, align 8
  %15 = getelementptr inbounds nuw %struct._play, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = call i32 @equal_data(ptr noundef %16, ptr noundef %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %11, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %11
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds nuw %struct._play, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  ret ptr %24
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
  %20 = load ptr, ptr %8, align 8
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4
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
  br label %33

33:                                               ; preds = %._crit_edge, %4
  %34 = load ptr, ptr %5, align 8
  %35 = load ptr, ptr %8, align 8
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %34, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %7, align 8
  store i32 %39, ptr %40, align 4
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
  switch i32 2, label %100 [
    i32 1, label %15
    i32 2, label %47
    i32 3, label %78
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
  br i1 %24, label %.lr.ph5, label %46

.lr.ph5:                                          ; preds = %15
  br label %25

25:                                               ; preds = %.lr.ph5, %41
  %26 = load i32, ptr @nrow, align 4
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
  %44 = load i32, ptr %4, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %25, label %._crit_edge6, !llvm.loop !29

._crit_edge6:                                     ; preds = %41
  br label %46

46:                                               ; preds = %._crit_edge6, %15
  br label %100

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
  %54 = icmp ne ptr %53, null
  br i1 %54, label %.lr.ph2, label %73

.lr.ph2:                                          ; preds = %47
  br label %55

55:                                               ; preds = %.lr.ph2, %70
  %56 = load ptr, ptr %7, align 8
  %57 = load ptr, ptr %9, align 8
  %58 = call ptr @where(ptr noundef %56, ptr noundef %57)
  %59 = call ptr @get_good_move(ptr noundef %58)
  store ptr %59, ptr %8, align 8
  %60 = icmp ne ptr %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load ptr, ptr %7, align 8
  call void @get_real_move(ptr noundef %59, ptr noundef %62, ptr noundef %2, ptr noundef %3)
  %63 = load i32, ptr %5, align 4
  %64 = load i32, ptr %2, align 4
  %65 = load i32, ptr %3, align 4
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %63, i32 noundef %64, i32 noundef %65)
  %67 = load i32, ptr %5, align 4
  %68 = sub nsw i32 1, %67
  store i32 %68, ptr %5, align 4
  %69 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %69)
  br label %70

70:                                               ; preds = %61, %55
  %71 = load ptr, ptr %8, align 8
  store ptr %71, ptr %7, align 8
  %72 = icmp ne ptr %71, null
  br i1 %72, label %55, label %._crit_edge3, !llvm.loop !30

._crit_edge3:                                     ; preds = %70
  br label %73

73:                                               ; preds = %._crit_edge3, %47
  %74 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %74)
  %75 = load i32, ptr %5, align 4
  %76 = sub nsw i32 1, %75
  %77 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %76)
  br label %100

78:                                               ; preds = %0
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %80 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %81 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %82 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %83 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %84 = call ptr @make_play(i32 noundef 1)
  store ptr %84, ptr %9, align 8
  store ptr %84, ptr %10, align 8
  %85 = icmp ne ptr %84, null
  br i1 %85, label %.lr.ph, label %98

.lr.ph:                                           ; preds = %78
  br label %86

86:                                               ; preds = %.lr.ph, %93
  %87 = load ptr, ptr %10, align 8
  %88 = load i32, ptr %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = getelementptr inbounds nuw %struct._play, ptr %87, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8
  call void @show_move(ptr noundef %92)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load ptr, ptr %10, align 8
  %95 = getelementptr inbounds nuw %struct._play, ptr %94, i32 0, i32 3
  %96 = load ptr, ptr %95, align 8
  store ptr %96, ptr %10, align 8
  %97 = icmp ne ptr %96, null
  br i1 %97, label %86, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %93
  br label %98

98:                                               ; preds = %._crit_edge, %78
  %99 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %99)
  br label %100

100:                                              ; preds = %98, %73, %46, %0
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
