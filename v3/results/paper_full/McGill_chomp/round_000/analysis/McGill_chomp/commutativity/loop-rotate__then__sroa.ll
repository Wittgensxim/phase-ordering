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
  %2 = load i32, ptr @ncol, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 4
  %5 = call ptr @malloc(i64 noundef %4) #3
  %6 = load i32, ptr @ncol, align 4
  %7 = add nsw i32 %6, -1
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %1
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %.0 = phi i32 [ %7, %.lr.ph ], [ %15, %9 ]
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %.0 to i64
  %14 = getelementptr inbounds i32, ptr %5, i64 %13
  store i32 %12, ptr %14, align 4
  %15 = add nsw i32 %.0, -1
  %16 = icmp ne i32 %.0, 0
  br i1 %16, label %9, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %9
  br label %17

17:                                               ; preds = %._crit_edge, %1
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %25, %1
  %.09 = phi i32 [ 0, %1 ], [ %.110, %25 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %25 ]
  %3 = load i32, ptr @ncol, align 4
  %4 = icmp ne i32 %.09, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp ne i32 %.0, 0
  %7 = xor i1 %6, true
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i1 [ false, %2 ], [ %7, %5 ]
  br i1 %9, label %10, label %26

10:                                               ; preds = %8
  %11 = sext i32 %.09 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @nrow, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = sext i32 %.09 to i64
  %18 = getelementptr inbounds i32, ptr %0, i64 %17
  store i32 0, ptr %18, align 4
  %19 = add nsw i32 %.09, 1
  br label %25

20:                                               ; preds = %10
  %21 = sext i32 %.09 to i64
  %22 = getelementptr inbounds i32, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %20, %16
  %.110 = phi i32 [ %19, %16 ], [ %.09, %20 ]
  %.1 = phi i32 [ %.0, %16 ], [ 1, %20 ]
  br label %2, !llvm.loop !9

26:                                               ; preds = %8
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = add nsw i32 %3, -1
  %5 = icmp ne i32 %3, 0
  br i1 %5, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %20
  %.0 = phi i32 [ %4, %.lr.ph ], [ %21, %20 ]
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds i32, ptr %1, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds i32, ptr %0, i64 %18
  store i32 %17, ptr %19, align 4
  br label %20

20:                                               ; preds = %14, %6
  %21 = add nsw i32 %.0, -1
  %22 = icmp ne i32 %.0, 0
  br i1 %22, label %6, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %20
  br label %23

23:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %15, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %15 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp ne i32 %.0, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %10, %13
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi i1 [ false, %4 ], [ %14, %7 ]
  br i1 %16, label %4, label %17, !llvm.loop !11

17:                                               ; preds = %15
  %18 = icmp slt i32 %5, 0
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %3 = load i32, ptr @ncol, align 4
  %4 = icmp ne i32 0, %3
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %11
  %.08 = phi i32 [ %2, %.lr.ph ], [ %14, %11 ]
  %.0 = phi i32 [ 0, %.lr.ph ], [ %15, %11 ]
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, %.08
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %18

11:                                               ; preds = %5
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = add nsw i32 %.0, 1
  %16 = load i32, ptr @ncol, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %5, label %..loopexit_crit_edge, !llvm.loop !12

..loopexit_crit_edge:                             ; preds = %11
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  %.2 = phi i32 [ %15, %..loopexit_crit_edge ], [ 0, %1 ]
  br label %18

18:                                               ; preds = %.loopexit, %10
  %.1 = phi i32 [ %.0, %10 ], [ %.2, %.loopexit ]
  %19 = load i32, ptr @ncol, align 4
  %20 = icmp eq i32 %.1, %19
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(ptr noundef %0) #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @dump_list(ptr noundef %5)
  %6 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %7)
  call void @free(ptr noundef %0)
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_play(ptr noundef %0) #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  call void @dump_play(ptr noundef %5)
  %6 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  call void @dump_list(ptr noundef %7)
  %8 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %9)
  call void @free(ptr noundef %0)
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_value(ptr noundef %0) #0 {
  %2 = load ptr, ptr @game_tree, align 8
  %3 = getelementptr inbounds nuw %struct._play, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.0 = phi ptr [ %2, %.lr.ph ], [ %10, %8 ]
  %9 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %8, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %8
  br label %16

16:                                               ; preds = %._crit_edge, %1
  %.1 = phi ptr [ %10, %._crit_edge ], [ %2, %1 ]
  %17 = getelementptr inbounds nuw %struct._play, ptr %.1, i32 0, i32 0
  %18 = load i32, ptr %17, align 8
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @ncol, align 4
  %3 = icmp ne i32 0, %2
  br i1 %3, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %14
  %.0 = phi i32 [ 0, %.lr.ph ], [ %5, %14 ]
  %5 = add nsw i32 %.0, 1
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  %10 = load i32, ptr @ncol, align 4
  %11 = icmp ne i32 %5, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = call i32 @putchar(i32 noundef 44)
  br label %14

14:                                               ; preds = %12, %4
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 %5, %15
  br i1 %16, label %4, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %14
  br label %17

17:                                               ; preds = %._crit_edge, %1
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

declare dso_local i32 @putchar(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_move(ptr noundef %0) #0 {
  %2 = call i32 @putchar(i32 noundef 40)
  call void @show_data(ptr noundef %0)
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_list(ptr noundef %0) #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %.0 = phi ptr [ %0, %.lr.ph ], [ %7, %3 ]
  %4 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  call void @show_move(ptr noundef %5)
  %6 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %3, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %3
  br label %9

9:                                                ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %.0 = phi ptr [ %0, %.lr.ph ], [ %14, %3 ]
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %5 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  call void @show_data(ptr noundef %6)
  %7 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 0
  %8 = load i32, ptr %7, align 8
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %8)
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %11 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  call void @show_list(ptr noundef %12)
  %13 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %3, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %3
  br label %16

16:                                               ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = load ptr, ptr @wanted, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %10
  %.0 = phi ptr [ %2, %.lr.ph ], [ %12, %10 ]
  %5 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @equal_data(ptr noundef %6, ptr noundef %0)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %4, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %10
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  %.2 = phi ptr [ %12, %..loopexit_crit_edge ], [ %2, %1 ]
  br label %14

14:                                               ; preds = %.loopexit, %9
  %.1 = phi ptr [ %.0, %9 ], [ %.2, %.loopexit ]
  %15 = icmp eq ptr %.1, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %18

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17, %16
  %.06 = phi i32 [ 0, %16 ], [ 1, %17 ]
  ret i32 %.06
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = call ptr @malloc(i64 noundef %5) #3
  %7 = icmp ne i32 0, %1
  br i1 %7, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %12
  %.0 = phi i32 [ 0, %.lr.ph ], [ %13, %12 ]
  %9 = load i32, ptr @nrow, align 4
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds i32, ptr %6, i64 %10
  store i32 %9, ptr %11, align 4
  br label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %.0, 1
  %14 = icmp ne i32 %13, %1
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %12
  br label %15

15:                                               ; preds = %._crit_edge, %2
  %.1 = phi i32 [ %13, %._crit_edge ], [ 0, %2 ]
  %16 = load i32, ptr @ncol, align 4
  %17 = icmp ne i32 %.1, %16
  br i1 %17, label %.lr.ph2, label %25

.lr.ph2:                                          ; preds = %15
  br label %18

18:                                               ; preds = %.lr.ph2, %21
  %.2 = phi i32 [ %.1, %.lr.ph2 ], [ %22, %21 ]
  %19 = sext i32 %.2 to i64
  %20 = getelementptr inbounds i32, ptr %6, i64 %19
  store i32 %0, ptr %20, align 4
  br label %21

21:                                               ; preds = %18
  %22 = add nsw i32 %.2, 1
  %23 = load i32, ptr @ncol, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %18, label %._crit_edge3, !llvm.loop !19

._crit_edge3:                                     ; preds = %21
  br label %25

25:                                               ; preds = %._crit_edge3, %15
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 1, ptr %1, align 4
  %4 = call ptr @malloc(i64 noundef 16) #3
  %5 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  store ptr null, ptr %5, align 8
  %6 = load i32, ptr @nrow, align 4
  %7 = icmp ne i32 0, %6
  br i1 %7, label %.lr.ph2, label %65

.lr.ph2:                                          ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph2, %61
  %.037 = phi i32 [ 0, %.lr.ph2 ], [ %62, %61 ]
  %.0 = phi ptr [ %4, %.lr.ph2 ], [ %.2, %61 ]
  %9 = load i32, ptr @ncol, align 4
  %10 = icmp ne i32 0, %9
  br i1 %10, label %.lr.ph, label %60

.lr.ph:                                           ; preds = %8
  br label %11

11:                                               ; preds = %.lr.ph, %56
  %.041 = phi i32 [ 0, %.lr.ph ], [ %57, %56 ]
  %.138 = phi i32 [ %.037, %.lr.ph ], [ %.4, %56 ]
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %.3, %56 ]
  %12 = call ptr @make_data(i32 noundef %.138, i32 noundef %.041)
  call void @melt_data(ptr noundef %12, ptr noundef %0)
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %11
  %16 = call ptr @malloc(i64 noundef 16) #3
  %17 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %16, ptr %17, align 8
  %18 = call ptr @copy_data(ptr noundef %12)
  %19 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds nuw %struct._list, ptr %20, i32 0, i32 0
  store ptr %18, ptr %21, align 8
  %22 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds nuw %struct._list, ptr %23, i32 0, i32 1
  store ptr null, ptr %24, align 8
  %25 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = load i32, ptr %1, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = call i32 @get_value(ptr noundef %12)
  store i32 %30, ptr %1, align 4
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32, ptr %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %1, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, ptr @ncol, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, ptr @nrow, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @in_wanted(ptr noundef %12)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 2, ptr %2, align 4
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45, %34, %31
  %.142 = phi i32 [ %.041, %31 ], [ %39, %45 ], [ %.041, %34 ]
  %.340 = phi i32 [ %.138, %31 ], [ %41, %45 ], [ %.138, %34 ]
  br label %55

47:                                               ; preds = %11
  %48 = icmp eq i32 %.041, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i32, ptr @nrow, align 4
  %51 = sub nsw i32 %50, 1
  br label %52

52:                                               ; preds = %49, %47
  %.5 = phi i32 [ %51, %49 ], [ %.138, %47 ]
  %53 = load i32, ptr @ncol, align 4
  %54 = sub nsw i32 %53, 1
  br label %55

55:                                               ; preds = %52, %46
  %.243 = phi i32 [ %54, %52 ], [ %.142, %46 ]
  %.4 = phi i32 [ %.5, %52 ], [ %.340, %46 ]
  %.3 = phi ptr [ %.1, %52 ], [ %26, %46 ]
  call void @free(ptr noundef %12)
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %.243, 1
  %58 = load i32, ptr @ncol, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %11, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %56
  br label %60

60:                                               ; preds = %._crit_edge, %8
  %.239 = phi i32 [ %.4, %._crit_edge ], [ %.037, %8 ]
  %.2 = phi ptr [ %.3, %._crit_edge ], [ %.0, %8 ]
  br label %61

61:                                               ; preds = %60
  %62 = add nsw i32 %.239, 1
  %63 = load i32, ptr @nrow, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %8, label %._crit_edge3, !llvm.loop !21

._crit_edge3:                                     ; preds = %61
  br label %65

65:                                               ; preds = %._crit_edge3, %3
  %66 = getelementptr inbounds nuw %struct._list, ptr %4, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8
  call void @free(ptr noundef %4)
  %68 = icmp ne ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, ptr %1, align 4
  %71 = sub nsw i32 1, %70
  store i32 %71, ptr %1, align 4
  br label %72

72:                                               ; preds = %69, %65
  ret ptr %67
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_play(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = call ptr @malloc(i64 noundef 32) #3
  store ptr null, ptr @game_tree, align 8
  %5 = call ptr @make_data(i32 noundef 0, i32 noundef 0)
  %6 = getelementptr inbounds i32, ptr %5, i64 0
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 4
  %9 = call i32 @next_data(ptr noundef %5)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %.lr.ph, label %50

.lr.ph:                                           ; preds = %1
  br label %11

11:                                               ; preds = %.lr.ph, %47
  %.018 = phi ptr [ %5, %.lr.ph ], [ %.119, %47 ]
  %.0 = phi ptr [ %4, %.lr.ph ], [ %.1, %47 ]
  %12 = call i32 @valid_data(ptr noundef %.018)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = call ptr @malloc(i64 noundef 32) #3
  %16 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  store ptr %15, ptr %16, align 8
  %17 = load ptr, ptr @game_tree, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr @game_tree, align 8
  br label %22

22:                                               ; preds = %19, %14
  %23 = call ptr @copy_data(ptr noundef %.018)
  %24 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw %struct._play, ptr %25, i32 0, i32 1
  store ptr %23, ptr %26, align 8
  %27 = call ptr @make_list(ptr noundef %.018, ptr noundef %3, ptr noundef %2)
  %28 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds nuw %struct._play, ptr %29, i32 0, i32 2
  store ptr %27, ptr %30, align 8
  %31 = load i32, ptr %3, align 4
  %32 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw %struct._play, ptr %33, i32 0, i32 0
  store i32 %31, ptr %34, align 8
  %35 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw %struct._play, ptr %36, i32 0, i32 3
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = load i32, ptr %2, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %46

42:                                               ; preds = %22
  call void @free(ptr noundef %.018)
  %43 = load i32, ptr @nrow, align 4
  %44 = load i32, ptr @ncol, align 4
  %45 = call ptr @make_data(i32 noundef %43, i32 noundef %44)
  br label %46

46:                                               ; preds = %42, %22
  %.2 = phi ptr [ %45, %42 ], [ %.018, %22 ]
  br label %47

47:                                               ; preds = %46, %11
  %.119 = phi ptr [ %.2, %46 ], [ %.018, %11 ]
  %.1 = phi ptr [ %39, %46 ], [ %.0, %11 ]
  %48 = call i32 @next_data(ptr noundef %.119)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %11, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %47
  br label %50

50:                                               ; preds = %._crit_edge, %1
  %51 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  call void @free(ptr noundef %4)
  ret ptr %52
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef 16) #3
  %3 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 8
  %4 = load i32, ptr @nrow, align 4
  %5 = icmp ne i32 0, %4
  br i1 %5, label %.lr.ph2, label %43

.lr.ph2:                                          ; preds = %1
  br label %6

6:                                                ; preds = %.lr.ph2, %39
  %.026 = phi i32 [ 0, %.lr.ph2 ], [ %40, %39 ]
  %.0 = phi ptr [ %2, %.lr.ph2 ], [ %.2, %39 ]
  %7 = load i32, ptr @ncol, align 4
  %8 = icmp ne i32 0, %7
  br i1 %8, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %6
  br label %9

9:                                                ; preds = %.lr.ph, %34
  %.030 = phi i32 [ 0, %.lr.ph ], [ %35, %34 ]
  %.127 = phi i32 [ %.026, %.lr.ph ], [ %.329, %34 ]
  %.1 = phi ptr [ %.0, %.lr.ph ], [ %.3, %34 ]
  %10 = call ptr @make_data(i32 noundef %.127, i32 noundef %.030)
  call void @melt_data(ptr noundef %10, ptr noundef %0)
  %11 = call i32 @equal_data(ptr noundef %10, ptr noundef %0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = call ptr @malloc(i64 noundef 16) #3
  %15 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  store ptr %14, ptr %15, align 8
  %16 = call ptr @copy_data(ptr noundef %10)
  %17 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds nuw %struct._list, ptr %18, i32 0, i32 0
  store ptr %16, ptr %19, align 8
  %20 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds nuw %struct._list, ptr %21, i32 0, i32 1
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds nuw %struct._list, ptr %.1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  br label %33

25:                                               ; preds = %9
  %26 = icmp eq i32 %.030, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i32, ptr @nrow, align 4
  %29 = sub nsw i32 %28, 1
  br label %30

30:                                               ; preds = %27, %25
  %.4 = phi i32 [ %29, %27 ], [ %.127, %25 ]
  %31 = load i32, ptr @ncol, align 4
  %32 = sub nsw i32 %31, 1
  br label %33

33:                                               ; preds = %30, %13
  %.131 = phi i32 [ %32, %30 ], [ %.030, %13 ]
  %.329 = phi i32 [ %.4, %30 ], [ %.127, %13 ]
  %.3 = phi ptr [ %.1, %30 ], [ %24, %13 ]
  call void @free(ptr noundef %10)
  br label %34

34:                                               ; preds = %33
  %35 = add nsw i32 %.131, 1
  %36 = load i32, ptr @ncol, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %9, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %34
  br label %38

38:                                               ; preds = %._crit_edge, %6
  %.228 = phi i32 [ %.329, %._crit_edge ], [ %.026, %6 ]
  %.2 = phi ptr [ %.3, %._crit_edge ], [ %.0, %6 ]
  br label %39

39:                                               ; preds = %38
  %40 = add nsw i32 %.228, 1
  %41 = load i32, ptr @nrow, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %6, label %._crit_edge3, !llvm.loop !24

._crit_edge3:                                     ; preds = %39
  br label %43

43:                                               ; preds = %._crit_edge3, %1
  %44 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  call void @free(ptr noundef %2)
  store ptr %45, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %23

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %16, %4
  %.0 = phi ptr [ %0, %4 ], [ %18, %16 ]
  %6 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @get_value(ptr noundef %11)
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i1 [ false, %5 ], [ %13, %9 ]
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  br label %5, !llvm.loop !25

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw %struct._list, ptr %.0, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = call ptr @copy_data(ptr noundef %21)
  br label %23

23:                                               ; preds = %19, %3
  %.06 = phi ptr [ null, %3 ], [ %22, %19 ]
  ret ptr %.06
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw %struct._play, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %.0 = phi ptr [ %0, %.lr.ph ], [ %7, %5 ]
  %6 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %struct._play, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %5, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %5
  br label %11

11:                                               ; preds = %._crit_edge, %1
  %.1 = phi ptr [ %7, %._crit_edge ], [ %0, %1 ]
  %12 = getelementptr inbounds nuw %struct._play, ptr %.1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = call ptr @get_good_move(ptr noundef %13)
  ret ptr %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @where(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds nuw %struct._play, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %.0 = phi ptr [ %1, %.lr.ph ], [ %10, %8 ]
  %9 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %8, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %8
  br label %16

16:                                               ; preds = %._crit_edge, %2
  %.1 = phi ptr [ %10, %._crit_edge ], [ %1, %2 ]
  %17 = getelementptr inbounds nuw %struct._play, ptr %.1, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  ret ptr %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_real_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  store i32 0, ptr %3, align 4
  %5 = load i32, ptr %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %4
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = load i32, ptr %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %3, align 4
  %17 = load i32, ptr %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %1, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %14, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %14
  br label %26

26:                                               ; preds = %._crit_edge, %4
  %27 = load i32, ptr %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %0, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 2, ptr %1, align 4
  %8 = load i32, ptr %1, align 4
  switch i32 %8, label %83 [
    i32 1, label %9
    i32 2, label %41
    i32 3, label %63
  ]

9:                                                ; preds = %0
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %11 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %13 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %15 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %3)
  %16 = load i32, ptr @nrow, align 4
  %17 = load i32, ptr %3, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %.lr.ph5, label %40

.lr.ph5:                                          ; preds = %9
  br label %19

19:                                               ; preds = %.lr.ph5, %34
  %20 = load i32, ptr @nrow, align 4
  %21 = load i32, ptr @ncol, align 4
  %22 = call ptr @make_data(i32 noundef %20, i32 noundef %21)
  call void @make_wanted(ptr noundef %22)
  %23 = call ptr @make_play(i32 noundef 0)
  %24 = call ptr @get_winning_move(ptr noundef %23)
  %25 = load i32, ptr @nrow, align 4
  %26 = load i32, ptr @ncol, align 4
  %27 = call ptr @make_data(i32 noundef %25, i32 noundef %26)
  call void @get_real_move(ptr noundef %24, ptr noundef %27, ptr noundef %1, ptr noundef %2)
  %28 = load i32, ptr @nrow, align 4
  %29 = load i32, ptr @ncol, align 4
  %30 = load i32, ptr %1, align 4
  %31 = load i32, ptr %2, align 4
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31)
  call void @dump_play(ptr noundef %23)
  %33 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %33)
  br label %34

34:                                               ; preds = %19
  %35 = load i32, ptr @nrow, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @nrow, align 4
  %37 = load i32, ptr @nrow, align 4
  %38 = load i32, ptr %3, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %19, label %._crit_edge6, !llvm.loop !29

._crit_edge6:                                     ; preds = %34
  br label %40

40:                                               ; preds = %._crit_edge6, %9
  br label %83

41:                                               ; preds = %0
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %44 = call ptr @make_play(i32 noundef 1)
  %45 = load i32, ptr @nrow, align 4
  %46 = load i32, ptr @ncol, align 4
  %47 = call ptr @make_data(i32 noundef %45, i32 noundef %46)
  %48 = icmp ne ptr %47, null
  br i1 %48, label %.lr.ph2, label %60

.lr.ph2:                                          ; preds = %41
  br label %49

49:                                               ; preds = %.lr.ph2, %58
  %.029 = phi ptr [ %47, %.lr.ph2 ], [ %51, %58 ]
  %.028 = phi i32 [ 0, %.lr.ph2 ], [ %.2, %58 ]
  %50 = call ptr @where(ptr noundef %.029, ptr noundef %44)
  %51 = call ptr @get_good_move(ptr noundef %50)
  %52 = icmp ne ptr %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  call void @get_real_move(ptr noundef %51, ptr noundef %.029, ptr noundef %1, ptr noundef %2)
  %54 = load i32, ptr %1, align 4
  %55 = load i32, ptr %2, align 4
  %56 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %.028, i32 noundef %54, i32 noundef %55)
  %57 = sub nsw i32 1, %.028
  call void @free(ptr noundef %.029)
  br label %58

58:                                               ; preds = %53, %49
  %.2 = phi i32 [ %57, %53 ], [ %.028, %49 ]
  %59 = icmp ne ptr %51, null
  br i1 %59, label %49, label %._crit_edge3, !llvm.loop !30

._crit_edge3:                                     ; preds = %58
  br label %60

60:                                               ; preds = %._crit_edge3, %41
  %.1 = phi i32 [ %.2, %._crit_edge3 ], [ 0, %41 ]
  call void @dump_play(ptr noundef %44)
  %61 = sub nsw i32 1, %.1
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %61)
  br label %83

63:                                               ; preds = %0
  %64 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %65 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %67 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %68 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %69 = call ptr @make_play(i32 noundef 1)
  %70 = icmp ne ptr %69, null
  br i1 %70, label %.lr.ph, label %82

.lr.ph:                                           ; preds = %63
  br label %71

71:                                               ; preds = %.lr.ph, %78
  %.0 = phi ptr [ %69, %.lr.ph ], [ %80, %78 ]
  %72 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 0
  %73 = load i32, ptr %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  call void @show_move(ptr noundef %77)
  br label %78

78:                                               ; preds = %75, %71
  %79 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %80 = load ptr, ptr %79, align 8
  %81 = icmp ne ptr %80, null
  br i1 %81, label %71, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %78
  br label %82

82:                                               ; preds = %._crit_edge, %63
  call void @dump_play(ptr noundef %69)
  br label %83

83:                                               ; preds = %82, %60, %40, %0
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
