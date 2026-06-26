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
  br i1 %12, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %1
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = load ptr, ptr %2, align 8
  %15 = load i32, ptr %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = load i32, ptr %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  store i32 %18, ptr %22, align 4
  %23 = load i32, ptr %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %4, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %13, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %13
  br label %26

26:                                               ; preds = %._crit_edge, %1
  %27 = load ptr, ptr %3, align 8
  ret ptr %27
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
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr @ncol, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %34
  %9 = load i32, ptr %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %..critedge_crit_edge1

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr @nrow, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load ptr, ptr %2, align 8
  %22 = load i32, ptr %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  store i32 0, ptr %24, align 4
  %25 = load i32, ptr %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %3, align 4
  br label %34

27:                                               ; preds = %12
  %28 = load ptr, ptr %2, align 8
  %29 = load i32, ptr %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4
  store i32 1, ptr %4, align 4
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i32, ptr %3, align 4
  %36 = load i32, ptr @ncol, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %8, label %..critedge_crit_edge, !llvm.loop !9

..critedge_crit_edge:                             ; preds = %34
  br label %.critedge

..critedge_crit_edge1:                            ; preds = %8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge1, %..critedge_crit_edge, %1
  %38 = load i32, ptr %4, align 4
  ret i32 %38
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
  br i1 %9, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %32
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %15, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %10
  %23 = load ptr, ptr %4, align 8
  %24 = load i32, ptr %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %3, align 8
  %29 = load i32, ptr %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  store i32 %27, ptr %31, align 4
  br label %32

32:                                               ; preds = %22, %10
  %33 = load i32, ptr %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %5, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %10, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %32
  br label %36

36:                                               ; preds = %._crit_edge, %2
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

7:                                                ; preds = %11, %2
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %.critedge

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = load i32, ptr %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %7, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %7, %11
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
  br i1 %8, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %1
  br label %9

9:                                                ; preds = %.lr.ph, %17
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %3, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %._crit_edge, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %2, align 8
  %19 = load i32, ptr %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %3, align 4
  %23 = load i32, ptr %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %4, align 4
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr @ncol, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %9, label %._crit_edge1, !llvm.loop !12

._crit_edge:                                      ; preds = %9
  br label %28

._crit_edge1:                                     ; preds = %17
  br label %28

28:                                               ; preds = %._crit_edge1, %._crit_edge, %1
  %29 = load i32, ptr %4, align 4
  %30 = load i32, ptr @ncol, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  ret i32 %32
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
  %25 = getelementptr inbounds nuw %struct._play, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8
  ret i32 %26
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
  %8 = load ptr, ptr %2, align 8
  %9 = load i32, ptr %3, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %3, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i32, ptr %8, i64 %11
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
  br i1 %4, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct._list, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  call void @show_move(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %2, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %5, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %5
  br label %14

14:                                               ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @show_data(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %12)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds nuw %struct._play, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  call void @show_list(ptr noundef %17)
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds nuw %struct._play, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %2, align 8
  %21 = load ptr, ptr %2, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %5, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %5
  br label %23

23:                                               ; preds = %._crit_edge, %1
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
  br i1 %7, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %15
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds nuw %struct._list, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = call i32 @equal_data(ptr noundef %11, ptr noundef %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %._crit_edge, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds nuw %struct._list, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %4, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %8, label %._crit_edge1, !llvm.loop !17

._crit_edge:                                      ; preds = %8
  br label %21

._crit_edge1:                                     ; preds = %15
  br label %21

21:                                               ; preds = %._crit_edge1, %._crit_edge, %1
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
  br i1 %13, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %2
  br label %17

..preheader_crit_edge:                            ; preds = %17
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %2
  %14 = load i32, ptr %5, align 4
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %.lr.ph1, label %39

.lr.ph1:                                          ; preds = %.preheader
  br label %28

17:                                               ; preds = %.lr.ph, %17
  %18 = load i32, ptr @nrow, align 4
  %19 = load ptr, ptr %6, align 8
  %20 = load i32, ptr %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  store i32 %18, ptr %22, align 4
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr %5, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %17, label %..preheader_crit_edge, !llvm.loop !18

28:                                               ; preds = %.lr.ph1, %28
  %29 = load i32, ptr %3, align 4
  %30 = load ptr, ptr %6, align 8
  %31 = load i32, ptr %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %30, i64 %32
  store i32 %29, ptr %33, align 4
  %34 = load i32, ptr %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %5, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load i32, ptr @ncol, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %28, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %28
  br label %39

39:                                               ; preds = %._crit_edge, %.preheader
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
  %14 = load ptr, ptr %10, align 8
  %15 = getelementptr inbounds nuw %struct._list, ptr %14, i32 0, i32 1
  store ptr null, ptr %15, align 8
  %16 = load ptr, ptr %10, align 8
  store ptr %16, ptr %11, align 8
  store i32 0, ptr %7, align 4
  %17 = load i32, ptr %7, align 4
  %18 = load i32, ptr @nrow, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %.lr.ph2, label %98

.lr.ph2:                                          ; preds = %3
  br label %20

20:                                               ; preds = %.lr.ph2, %92
  store i32 0, ptr %8, align 4
  %21 = load i32, ptr %8, align 4
  %22 = load i32, ptr @ncol, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %.lr.ph, label %92

.lr.ph:                                           ; preds = %20
  br label %24

24:                                               ; preds = %.lr.ph, %85
  %25 = load i32, ptr %7, align 4
  %26 = load i32, ptr %8, align 4
  %27 = call ptr @make_data(i32 noundef %25, i32 noundef %26)
  store ptr %27, ptr %9, align 8
  %28 = load ptr, ptr %9, align 8
  %29 = load ptr, ptr %4, align 8
  call void @melt_data(ptr noundef %28, ptr noundef %29)
  %30 = load ptr, ptr %9, align 8
  %31 = load ptr, ptr %4, align 8
  %32 = call i32 @equal_data(ptr noundef %30, ptr noundef %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %76, label %34

34:                                               ; preds = %24
  %35 = call ptr @malloc(i64 noundef 16) #3
  %36 = load ptr, ptr %11, align 8
  %37 = getelementptr inbounds nuw %struct._list, ptr %36, i32 0, i32 1
  store ptr %35, ptr %37, align 8
  %38 = load ptr, ptr %9, align 8
  %39 = call ptr @copy_data(ptr noundef %38)
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds nuw %struct._list, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds nuw %struct._list, ptr %42, i32 0, i32 0
  store ptr %39, ptr %43, align 8
  %44 = load ptr, ptr %11, align 8
  %45 = getelementptr inbounds nuw %struct._list, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds nuw %struct._list, ptr %46, i32 0, i32 1
  store ptr null, ptr %47, align 8
  %48 = load ptr, ptr %11, align 8
  %49 = getelementptr inbounds nuw %struct._list, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  store ptr %50, ptr %11, align 8
  %51 = load ptr, ptr %5, align 8
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %34
  %55 = load ptr, ptr %9, align 8
  %56 = call i32 @get_value(ptr noundef %55)
  %57 = load ptr, ptr %5, align 8
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %54, %34
  %59 = load ptr, ptr %6, align 8
  %60 = load i32, ptr %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %85, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %5, align 8
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load i32, ptr @ncol, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, ptr %8, align 4
  %69 = load i32, ptr @nrow, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, ptr %7, align 4
  %71 = load ptr, ptr %9, align 8
  %72 = call i32 @in_wanted(ptr noundef %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %66
  %75 = load ptr, ptr %6, align 8
  store i32 2, ptr %75, align 4
  br label %85

76:                                               ; preds = %24
  %77 = load i32, ptr %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, ptr @nrow, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, ptr %7, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, ptr @ncol, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, ptr %8, align 4
  br label %85

85:                                               ; preds = %58, %62, %74, %66, %82
  %86 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %86)
  %87 = load i32, ptr %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %8, align 4
  %89 = load i32, ptr %8, align 4
  %90 = load i32, ptr @ncol, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %24, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %85
  br label %92

92:                                               ; preds = %._crit_edge, %20
  %93 = load i32, ptr %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %7, align 4
  %95 = load i32, ptr %7, align 4
  %96 = load i32, ptr @nrow, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %20, label %._crit_edge3, !llvm.loop !21

._crit_edge3:                                     ; preds = %92
  br label %98

98:                                               ; preds = %._crit_edge3, %3
  %99 = load ptr, ptr %10, align 8
  %100 = getelementptr inbounds nuw %struct._list, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8
  store ptr %101, ptr %11, align 8
  %102 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %102)
  %103 = load ptr, ptr %11, align 8
  %104 = icmp ne ptr %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load ptr, ptr %5, align 8
  %107 = load i32, ptr %106, align 4
  %108 = sub nsw i32 1, %107
  %109 = load ptr, ptr %5, align 8
  store i32 %108, ptr %109, align 4
  br label %110

110:                                              ; preds = %105, %98
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
  br i1 %16, label %.lr.ph, label %67

.lr.ph:                                           ; preds = %1
  br label %17

17:                                               ; preds = %.lr.ph, %63
  %18 = load ptr, ptr %4, align 8
  %19 = call i32 @valid_data(ptr noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %17
  %22 = call ptr @malloc(i64 noundef 32) #3
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds nuw %struct._play, ptr %23, i32 0, i32 3
  store ptr %22, ptr %24, align 8
  %25 = load ptr, ptr @game_tree, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds nuw %struct._play, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr @game_tree, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load ptr, ptr %4, align 8
  %33 = call ptr @copy_data(ptr noundef %32)
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds nuw %struct._play, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw %struct._play, ptr %36, i32 0, i32 1
  store ptr %33, ptr %37, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = call ptr @make_list(ptr noundef %38, ptr noundef %3, ptr noundef %2)
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr inbounds nuw %struct._play, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds nuw %struct._play, ptr %42, i32 0, i32 2
  store ptr %39, ptr %43, align 8
  %44 = load i32, ptr %3, align 4
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr inbounds nuw %struct._play, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds nuw %struct._play, ptr %47, i32 0, i32 0
  store i32 %44, ptr %48, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds nuw %struct._play, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds nuw %struct._play, ptr %51, i32 0, i32 3
  store ptr null, ptr %52, align 8
  %53 = load ptr, ptr %6, align 8
  %54 = getelementptr inbounds nuw %struct._play, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  store ptr %55, ptr %6, align 8
  %56 = load i32, ptr %2, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %63

58:                                               ; preds = %31
  %59 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %59)
  %60 = load i32, ptr @nrow, align 4
  %61 = load i32, ptr @ncol, align 4
  %62 = call ptr @make_data(i32 noundef %60, i32 noundef %61)
  store ptr %62, ptr %4, align 8
  br label %63

63:                                               ; preds = %31, %58, %17
  %64 = load ptr, ptr %4, align 8
  %65 = call i32 @next_data(ptr noundef %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %17, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %63
  br label %67

67:                                               ; preds = %._crit_edge, %1
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds nuw %struct._play, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 8
  store ptr %70, ptr %6, align 8
  %71 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %71)
  %72 = load ptr, ptr %6, align 8
  ret ptr %72
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
  br i1 %14, label %.lr.ph2, label %68

.lr.ph2:                                          ; preds = %1
  br label %15

15:                                               ; preds = %.lr.ph2, %62
  store i32 0, ptr %4, align 4
  %16 = load i32, ptr %4, align 4
  %17 = load i32, ptr @ncol, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %.lr.ph, label %62

.lr.ph:                                           ; preds = %15
  br label %19

19:                                               ; preds = %.lr.ph, %55
  %20 = load i32, ptr %3, align 4
  %21 = load i32, ptr %4, align 4
  %22 = call ptr @make_data(i32 noundef %20, i32 noundef %21)
  store ptr %22, ptr %5, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %2, align 8
  call void @melt_data(ptr noundef %23, ptr noundef %24)
  %25 = load ptr, ptr %5, align 8
  %26 = load ptr, ptr %2, align 8
  %27 = call i32 @equal_data(ptr noundef %25, ptr noundef %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %19
  %30 = call ptr @malloc(i64 noundef 16) #3
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds nuw %struct._list, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 8
  %33 = load ptr, ptr %5, align 8
  %34 = call ptr @copy_data(ptr noundef %33)
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds nuw %struct._list, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds nuw %struct._list, ptr %37, i32 0, i32 0
  store ptr %34, ptr %38, align 8
  %39 = load ptr, ptr %7, align 8
  %40 = getelementptr inbounds nuw %struct._list, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds nuw %struct._list, ptr %41, i32 0, i32 1
  store ptr null, ptr %42, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds nuw %struct._list, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  store ptr %45, ptr %7, align 8
  br label %55

46:                                               ; preds = %19
  %47 = load i32, ptr %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, ptr @nrow, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, ptr %3, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, ptr @ncol, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, ptr %4, align 4
  br label %55

55:                                               ; preds = %52, %29
  %56 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %56)
  %57 = load i32, ptr %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %4, align 4
  %59 = load i32, ptr %4, align 4
  %60 = load i32, ptr @ncol, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %19, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %55
  br label %62

62:                                               ; preds = %._crit_edge, %15
  %63 = load i32, ptr %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %3, align 4
  %65 = load i32, ptr %3, align 4
  %66 = load i32, ptr @nrow, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %15, label %._crit_edge3, !llvm.loop !24

._crit_edge3:                                     ; preds = %62
  br label %68

68:                                               ; preds = %._crit_edge3, %1
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr inbounds nuw %struct._list, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8
  store ptr %71, ptr %7, align 8
  %72 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %72)
  %73 = load ptr, ptr %7, align 8
  store ptr %73, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %.preheader

.preheader:                                       ; preds = %1
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct._list, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  br label %11

10:                                               ; preds = %1
  store ptr null, ptr %2, align 8
  br label %29

11:                                               ; preds = %.lr.ph, %17
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct._list, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @get_value(ptr noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %..critedge_crit_edge1

17:                                               ; preds = %11
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds nuw %struct._list, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %3, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds nuw %struct._list, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %11, label %..critedge_crit_edge, !llvm.loop !25

..critedge_crit_edge:                             ; preds = %17
  br label %.critedge

..critedge_crit_edge1:                            ; preds = %11
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge1, %..critedge_crit_edge, %.preheader
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds nuw %struct._list, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8
  %28 = call ptr @copy_data(ptr noundef %27)
  store ptr %28, ptr %2, align 8
  br label %29

29:                                               ; preds = %.critedge, %10
  %30 = load ptr, ptr %2, align 8
  ret ptr %30
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
  br i1 %7, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct._play, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %2, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds nuw %struct._play, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %8, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %8
  br label %16

16:                                               ; preds = %._crit_edge, %1
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds nuw %struct._play, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = call ptr @get_good_move(ptr noundef %19)
  store ptr %20, ptr %3, align 8
  %21 = load ptr, ptr %3, align 8
  ret ptr %21
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
  br label %23

23:                                               ; preds = %.lr.ph, %23
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = load ptr, ptr %5, align 8
  %28 = load ptr, ptr %8, align 8
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %27, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %8, align 8
  %35 = load i32, ptr %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %33, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %32, %38
  br i1 %39, label %23, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %23
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
  switch i32 %15, label %111 [
    i32 1, label %16
    i32 2, label %49
    i32 3, label %84
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
  br i1 %25, label %.lr.ph5, label %.loopexit

.lr.ph5:                                          ; preds = %16
  br label %26

26:                                               ; preds = %.lr.ph5, %26
  %27 = load i32, ptr @nrow, align 4
  %28 = load i32, ptr @ncol, align 4
  %29 = call ptr @make_data(i32 noundef %27, i32 noundef %28)
  call void @make_wanted(ptr noundef %29)
  %30 = call ptr @make_play(i32 noundef 0)
  store ptr %30, ptr %9, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = call ptr @get_winning_move(ptr noundef %31)
  store ptr %32, ptr %6, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr @nrow, align 4
  %35 = load i32, ptr @ncol, align 4
  %36 = call ptr @make_data(i32 noundef %34, i32 noundef %35)
  call void @get_real_move(ptr noundef %33, ptr noundef %36, ptr noundef %2, ptr noundef %3)
  %37 = load i32, ptr @nrow, align 4
  %38 = load i32, ptr @ncol, align 4
  %39 = load i32, ptr %2, align 4
  %40 = load i32, ptr %3, align 4
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40)
  %42 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %42)
  %43 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %43)
  %44 = load i32, ptr @nrow, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr @nrow, align 4
  %46 = load i32, ptr @nrow, align 4
  %47 = load i32, ptr %4, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %26, label %..loopexit_crit_edge, !llvm.loop !29

49:                                               ; preds = %0
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %51 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %52 = call ptr @make_play(i32 noundef 1)
  store ptr %52, ptr %9, align 8
  store i32 0, ptr %5, align 4
  %53 = load i32, ptr @nrow, align 4
  %54 = load i32, ptr @ncol, align 4
  %55 = call ptr @make_data(i32 noundef %53, i32 noundef %54)
  store ptr %55, ptr %7, align 8
  %56 = load ptr, ptr %7, align 8
  %57 = icmp ne ptr %56, null
  br i1 %57, label %.lr.ph2, label %79

.lr.ph2:                                          ; preds = %49
  br label %58

58:                                               ; preds = %.lr.ph2, %75
  %59 = load ptr, ptr %7, align 8
  %60 = load ptr, ptr %9, align 8
  %61 = call ptr @where(ptr noundef %59, ptr noundef %60)
  %62 = call ptr @get_good_move(ptr noundef %61)
  store ptr %62, ptr %8, align 8
  %63 = load ptr, ptr %8, align 8
  %64 = icmp ne ptr %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load ptr, ptr %8, align 8
  %67 = load ptr, ptr %7, align 8
  call void @get_real_move(ptr noundef %66, ptr noundef %67, ptr noundef %2, ptr noundef %3)
  %68 = load i32, ptr %5, align 4
  %69 = load i32, ptr %2, align 4
  %70 = load i32, ptr %3, align 4
  %71 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %68, i32 noundef %69, i32 noundef %70)
  %72 = load i32, ptr %5, align 4
  %73 = sub nsw i32 1, %72
  store i32 %73, ptr %5, align 4
  %74 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %74)
  br label %75

75:                                               ; preds = %65, %58
  %76 = load ptr, ptr %8, align 8
  store ptr %76, ptr %7, align 8
  %77 = load ptr, ptr %7, align 8
  %78 = icmp ne ptr %77, null
  br i1 %78, label %58, label %._crit_edge3, !llvm.loop !30

._crit_edge3:                                     ; preds = %75
  br label %79

79:                                               ; preds = %._crit_edge3, %49
  %80 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %80)
  %81 = load i32, ptr %5, align 4
  %82 = sub nsw i32 1, %81
  %83 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %82)
  br label %111

84:                                               ; preds = %0
  %85 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %86 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %87 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %88 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %89 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %90 = call ptr @make_play(i32 noundef 1)
  store ptr %90, ptr %9, align 8
  %91 = load ptr, ptr %9, align 8
  store ptr %91, ptr %10, align 8
  %92 = load ptr, ptr %10, align 8
  %93 = icmp ne ptr %92, null
  br i1 %93, label %.lr.ph, label %109

.lr.ph:                                           ; preds = %84
  br label %94

94:                                               ; preds = %.lr.ph, %103
  %95 = load ptr, ptr %10, align 8
  %96 = getelementptr inbounds nuw %struct._play, ptr %95, i32 0, i32 0
  %97 = load i32, ptr %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load ptr, ptr %10, align 8
  %101 = getelementptr inbounds nuw %struct._play, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 8
  call void @show_move(ptr noundef %102)
  br label %103

103:                                              ; preds = %99, %94
  %104 = load ptr, ptr %10, align 8
  %105 = getelementptr inbounds nuw %struct._play, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 8
  store ptr %106, ptr %10, align 8
  %107 = load ptr, ptr %10, align 8
  %108 = icmp ne ptr %107, null
  br i1 %108, label %94, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %103
  br label %109

109:                                              ; preds = %._crit_edge, %84
  %110 = load ptr, ptr %9, align 8
  call void @dump_play(ptr noundef %110)
  br label %111

..loopexit_crit_edge:                             ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %16
  br label %111

111:                                              ; preds = %.loopexit, %109, %79, %0
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
