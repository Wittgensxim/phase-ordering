; ModuleID = 'results\paper_full\McGill_chomp\round_000\output.ll'
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
  %10 = phi i32 [ %7, %.lr.ph ], [ %15, %9 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds i32, ptr %5, i64 %11
  store i32 %13, ptr %14, align 4
  %15 = add nsw i32 %10, -1
  %16 = icmp ne i32 %10, 0
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

2:                                                ; preds = %20, %1
  %.01 = phi i32 [ 0, %1 ], [ %.12, %20 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %20 ]
  %3 = load i32, ptr @ncol, align 4
  %4 = icmp ne i32 %.01, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp ne i32 %.0, 0
  %7 = xor i1 %6, true
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i1 [ false, %2 ], [ %7, %5 ]
  br i1 %9, label %10, label %21

10:                                               ; preds = %8
  %11 = sext i32 %.01 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @nrow, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  store i32 0, ptr %12, align 4
  %17 = add nsw i32 %.01, 1
  br label %20

18:                                               ; preds = %10
  %19 = add nsw i32 %13, 1
  store i32 %19, ptr %12, align 4
  br label %20

20:                                               ; preds = %18, %16
  %.12 = phi i32 [ %17, %16 ], [ %.01, %18 ]
  %.1 = phi i32 [ %.0, %16 ], [ 1, %18 ]
  br label %2, !llvm.loop !9

21:                                               ; preds = %8
  %.0.lcssa = phi i32 [ %.0, %8 ]
  ret i32 %.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = add nsw i32 %3, -1
  %5 = icmp ne i32 %3, 0
  br i1 %5, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %15
  %7 = phi i32 [ %4, %.lr.ph ], [ %16, %15 ]
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i32, ptr %1, i64 %8
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  store i32 %12, ptr %9, align 4
  br label %15

15:                                               ; preds = %14, %6
  %16 = add nsw i32 %7, -1
  %17 = icmp ne i32 %7, 0
  br i1 %17, label %6, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %14, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %14 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp ne i32 %.0, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i32, ptr %1, i64 %8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br label %14

14:                                               ; preds = %7, %4
  %15 = phi i1 [ false, %4 ], [ %13, %7 ]
  br i1 %15, label %4, label %16, !llvm.loop !11

16:                                               ; preds = %14
  %.lcssa = phi i32 [ %5, %14 ]
  %17 = icmp slt i32 %.lcssa, 0
  %18 = zext i1 %17 to i32
  ret i32 %18
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
  %.04 = phi i32 [ 0, %.lr.ph ], [ %12, %11 ]
  %.013 = phi i32 [ %2, %.lr.ph ], [ %8, %11 ]
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, %.013
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  %.0.lcssa1 = phi i32 [ %.04, %5 ]
  br label %14

11:                                               ; preds = %5
  %12 = add nsw i32 %.04, 1
  %13 = icmp ne i32 %12, %3
  br i1 %13, label %5, label %..loopexit_crit_edge, !llvm.loop !12

..loopexit_crit_edge:                             ; preds = %11
  %split = phi i32 [ %12, %11 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  %.0.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ 0, %1 ]
  br label %14

14:                                               ; preds = %.loopexit, %10
  %.02 = phi i32 [ %.0.lcssa, %.loopexit ], [ %.0.lcssa1, %10 ]
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp eq i32 %.02, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(ptr noundef %0) #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @dump_list(ptr noundef %5)
  %6 = load ptr, ptr %0, align 8
  call void @free(ptr noundef %6)
  call void @free(ptr noundef %0)
  br label %7

7:                                                ; preds = %3, %1
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
  %.01 = phi ptr [ %2, %.lr.ph ], [ %10, %8 ]
  %9 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %8, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %8
  %split = phi ptr [ %10, %8 ]
  br label %16

16:                                               ; preds = %._crit_edge, %1
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %2, %1 ]
  %17 = load i32, ptr %.0.lcssa, align 8
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @ncol, align 4
  %3 = icmp ne i32 0, %2
  br i1 %3, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %14
  %.01 = phi i32 [ 0, %.lr.ph ], [ %5, %14 ]
  %5 = add nsw i32 %.01, 1
  %6 = sext i32 %.01 to i64
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
  br i1 %2, label %.lr.ph, label %8

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %.01 = phi ptr [ %0, %.lr.ph ], [ %6, %3 ]
  %4 = load ptr, ptr %.01, align 8
  call void @show_move(ptr noundef %4)
  %5 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %3, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %3
  br label %8

8:                                                ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %.01 = phi ptr [ %0, %.lr.ph ], [ %13, %3 ]
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %5 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  call void @show_data(ptr noundef %6)
  %7 = load i32, ptr %.01, align 8
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %7)
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %10 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  call void @show_list(ptr noundef %11)
  %12 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %3, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %3
  br label %15

15:                                               ; preds = %._crit_edge, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = load ptr, ptr @wanted, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %9
  %.013 = phi ptr [ %2, %.lr.ph ], [ %11, %9 ]
  %5 = load ptr, ptr %.013, align 8
  %6 = call i32 @equal_data(ptr noundef %5, ptr noundef %0)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  %.01.lcssa1 = phi ptr [ %.013, %4 ]
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds nuw %struct._list, ptr %.013, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %4, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %9
  %split = phi ptr [ %11, %9 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  %.01.lcssa = phi ptr [ %split, %..loopexit_crit_edge ], [ %2, %1 ]
  br label %13

13:                                               ; preds = %.loopexit, %8
  %.012 = phi ptr [ %.01.lcssa, %.loopexit ], [ %.01.lcssa1, %8 ]
  %14 = icmp eq ptr %.012, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %17

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %15
  %.0 = phi i32 [ 0, %15 ], [ 1, %16 ]
  ret i32 %.0
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
  %.01 = phi i32 [ 0, %.lr.ph ], [ %13, %12 ]
  %9 = load i32, ptr @nrow, align 4
  %10 = sext i32 %.01 to i64
  %11 = getelementptr inbounds i32, ptr %6, i64 %10
  store i32 %9, ptr %11, align 4
  br label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %.01, 1
  %14 = icmp ne i32 %13, %1
  br i1 %14, label %8, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %12
  %split = phi i32 [ %13, %12 ]
  br label %15

15:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %2 ]
  %16 = load i32, ptr @ncol, align 4
  %17 = icmp ne i32 %.0.lcssa, %16
  br i1 %17, label %.lr.ph4, label %25

.lr.ph4:                                          ; preds = %15
  br label %18

18:                                               ; preds = %.lr.ph4, %21
  %.12 = phi i32 [ %.0.lcssa, %.lr.ph4 ], [ %22, %21 ]
  %19 = sext i32 %.12 to i64
  %20 = getelementptr inbounds i32, ptr %6, i64 %19
  store i32 %0, ptr %20, align 4
  br label %21

21:                                               ; preds = %18
  %22 = add nsw i32 %.12, 1
  %23 = load i32, ptr @ncol, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %18, label %._crit_edge5, !llvm.loop !19

._crit_edge5:                                     ; preds = %21
  br label %25

25:                                               ; preds = %._crit_edge5, %15
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
  br i1 %7, label %.lr.ph8, label %61

.lr.ph8:                                          ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph8, %57
  %.06 = phi ptr [ %4, %.lr.ph8 ], [ %.1.lcssa, %57 ]
  %.045 = phi i32 [ 0, %.lr.ph8 ], [ %58, %57 ]
  %9 = load i32, ptr @ncol, align 4
  %10 = icmp ne i32 0, %9
  br i1 %10, label %.lr.ph, label %56

.lr.ph:                                           ; preds = %8
  br label %11

11:                                               ; preds = %.lr.ph, %52
  %.13 = phi ptr [ %.06, %.lr.ph ], [ %.2, %52 ]
  %.012 = phi i32 [ 0, %.lr.ph ], [ %53, %52 ]
  %.151 = phi i32 [ %.045, %.lr.ph ], [ %.3, %52 ]
  %12 = call ptr @make_data(i32 noundef %.151, i32 noundef %.012)
  call void @melt_data(ptr noundef %12, ptr noundef %0)
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = call ptr @malloc(i64 noundef 16) #3
  %17 = getelementptr inbounds nuw %struct._list, ptr %.13, i32 0, i32 1
  store ptr %16, ptr %17, align 8
  %18 = call ptr @copy_data(ptr noundef %12)
  %19 = load ptr, ptr %17, align 8
  store ptr %18, ptr %19, align 8
  %20 = load ptr, ptr %17, align 8
  %21 = getelementptr inbounds nuw %struct._list, ptr %20, i32 0, i32 1
  store ptr null, ptr %21, align 8
  %22 = load ptr, ptr %17, align 8
  %23 = load i32, ptr %1, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 @get_value(ptr noundef %12)
  store i32 %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %25, %15
  %28 = load i32, ptr %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %1, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, ptr @ncol, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, ptr @nrow, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @in_wanted(ptr noundef %12)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 2, ptr %2, align 4
  br label %41

41:                                               ; preds = %40, %33
  br label %42

42:                                               ; preds = %41, %30, %27
  %.26 = phi i32 [ %.151, %27 ], [ %37, %41 ], [ %.151, %30 ]
  %.12 = phi i32 [ %.012, %27 ], [ %35, %41 ], [ %.012, %30 ]
  br label %51

43:                                               ; preds = %11
  %44 = icmp eq i32 %.012, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i32, ptr @nrow, align 4
  %47 = sub nsw i32 %46, 1
  br label %48

48:                                               ; preds = %45, %43
  %.4 = phi i32 [ %47, %45 ], [ %.151, %43 ]
  %49 = load i32, ptr @ncol, align 4
  %50 = sub nsw i32 %49, 1
  br label %51

51:                                               ; preds = %48, %42
  %.3 = phi i32 [ %.4, %48 ], [ %.26, %42 ]
  %.23 = phi i32 [ %50, %48 ], [ %.12, %42 ]
  %.2 = phi ptr [ %.13, %48 ], [ %22, %42 ]
  call void @free(ptr noundef %12)
  br label %52

52:                                               ; preds = %51
  %53 = add nsw i32 %.23, 1
  %54 = load i32, ptr @ncol, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %11, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %52
  %split = phi i32 [ %.3, %52 ]
  %split4 = phi ptr [ %.2, %52 ]
  br label %56

56:                                               ; preds = %._crit_edge, %8
  %.15.lcssa = phi i32 [ %split, %._crit_edge ], [ %.045, %8 ]
  %.1.lcssa = phi ptr [ %split4, %._crit_edge ], [ %.06, %8 ]
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %.15.lcssa, 1
  %59 = load i32, ptr @nrow, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %8, label %._crit_edge9, !llvm.loop !21

._crit_edge9:                                     ; preds = %57
  br label %61

61:                                               ; preds = %._crit_edge9, %3
  %62 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %4)
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, ptr %1, align 4
  %66 = sub nsw i32 1, %65
  store i32 %66, ptr %1, align 4
  br label %67

67:                                               ; preds = %64, %61
  ret ptr %62
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_play(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = call ptr @malloc(i64 noundef 32) #3
  store ptr null, ptr @game_tree, align 8
  %5 = call ptr @make_data(i32 noundef 0, i32 noundef 0)
  %6 = load i32, ptr %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = call i32 @next_data(ptr noundef %5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %.lr.ph, label %41

.lr.ph:                                           ; preds = %1
  br label %10

10:                                               ; preds = %.lr.ph, %38
  %.02 = phi ptr [ %5, %.lr.ph ], [ %.1, %38 ]
  %.011 = phi ptr [ %4, %.lr.ph ], [ %.12, %38 ]
  %11 = call i32 @valid_data(ptr noundef %.02)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = call ptr @malloc(i64 noundef 32) #3
  %15 = getelementptr inbounds nuw %struct._play, ptr %.011, i32 0, i32 3
  store ptr %14, ptr %15, align 8
  %16 = load ptr, ptr @game_tree, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store ptr %14, ptr @game_tree, align 8
  br label %19

19:                                               ; preds = %18, %13
  %20 = call ptr @copy_data(ptr noundef %.02)
  %21 = load ptr, ptr %15, align 8
  %22 = getelementptr inbounds nuw %struct._play, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 8
  %23 = call ptr @make_list(ptr noundef %.02, ptr noundef %3, ptr noundef %2)
  %24 = load ptr, ptr %15, align 8
  %25 = getelementptr inbounds nuw %struct._play, ptr %24, i32 0, i32 2
  store ptr %23, ptr %25, align 8
  %26 = load i32, ptr %3, align 4
  %27 = load ptr, ptr %15, align 8
  store i32 %26, ptr %27, align 8
  %28 = load ptr, ptr %15, align 8
  %29 = getelementptr inbounds nuw %struct._play, ptr %28, i32 0, i32 3
  store ptr null, ptr %29, align 8
  %30 = load ptr, ptr %15, align 8
  %31 = load i32, ptr %2, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  call void @free(ptr noundef %.02)
  %34 = load i32, ptr @nrow, align 4
  %35 = load i32, ptr @ncol, align 4
  %36 = call ptr @make_data(i32 noundef %34, i32 noundef %35)
  br label %37

37:                                               ; preds = %33, %19
  %.2 = phi ptr [ %36, %33 ], [ %.02, %19 ]
  br label %38

38:                                               ; preds = %37, %10
  %.12 = phi ptr [ %30, %37 ], [ %.011, %10 ]
  %.1 = phi ptr [ %.2, %37 ], [ %.02, %10 ]
  %39 = call i32 @next_data(ptr noundef %.1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %10, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %38
  br label %41

41:                                               ; preds = %._crit_edge, %1
  %42 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  call void @free(ptr noundef %4)
  ret ptr %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef 16) #3
  %3 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 8
  %4 = load i32, ptr @nrow, align 4
  %5 = icmp ne i32 0, %4
  br i1 %5, label %.lr.ph8, label %39

.lr.ph8:                                          ; preds = %1
  br label %6

6:                                                ; preds = %.lr.ph8, %35
  %.06 = phi ptr [ %2, %.lr.ph8 ], [ %.1.lcssa, %35 ]
  %.015 = phi i32 [ 0, %.lr.ph8 ], [ %36, %35 ]
  %7 = load i32, ptr @ncol, align 4
  %8 = icmp ne i32 0, %7
  br i1 %8, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %6
  br label %9

9:                                                ; preds = %.lr.ph, %30
  %.13 = phi ptr [ %.06, %.lr.ph ], [ %.2, %30 ]
  %.122 = phi i32 [ %.015, %.lr.ph ], [ %.23, %30 ]
  %.041 = phi i32 [ 0, %.lr.ph ], [ %31, %30 ]
  %10 = call ptr @make_data(i32 noundef %.122, i32 noundef %.041)
  call void @melt_data(ptr noundef %10, ptr noundef %0)
  %11 = call i32 @equal_data(ptr noundef %10, ptr noundef %0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = call ptr @malloc(i64 noundef 16) #3
  %15 = getelementptr inbounds nuw %struct._list, ptr %.13, i32 0, i32 1
  store ptr %14, ptr %15, align 8
  %16 = call ptr @copy_data(ptr noundef %10)
  %17 = load ptr, ptr %15, align 8
  store ptr %16, ptr %17, align 8
  %18 = load ptr, ptr %15, align 8
  %19 = getelementptr inbounds nuw %struct._list, ptr %18, i32 0, i32 1
  store ptr null, ptr %19, align 8
  %20 = load ptr, ptr %15, align 8
  br label %29

21:                                               ; preds = %9
  %22 = icmp eq i32 %.041, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i32, ptr @nrow, align 4
  %25 = sub nsw i32 %24, 1
  br label %26

26:                                               ; preds = %23, %21
  %.3 = phi i32 [ %25, %23 ], [ %.122, %21 ]
  %27 = load i32, ptr @ncol, align 4
  %28 = sub nsw i32 %27, 1
  br label %29

29:                                               ; preds = %26, %13
  %.15 = phi i32 [ %28, %26 ], [ %.041, %13 ]
  %.23 = phi i32 [ %.3, %26 ], [ %.122, %13 ]
  %.2 = phi ptr [ %.13, %26 ], [ %20, %13 ]
  call void @free(ptr noundef %10)
  br label %30

30:                                               ; preds = %29
  %31 = add nsw i32 %.15, 1
  %32 = load i32, ptr @ncol, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %9, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %30
  %split = phi i32 [ %.23, %30 ]
  %split4 = phi ptr [ %.2, %30 ]
  br label %34

34:                                               ; preds = %._crit_edge, %6
  %.12.lcssa = phi i32 [ %split, %._crit_edge ], [ %.015, %6 ]
  %.1.lcssa = phi ptr [ %split4, %._crit_edge ], [ %.06, %6 ]
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %.12.lcssa, 1
  %37 = load i32, ptr @nrow, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %6, label %._crit_edge9, !llvm.loop !24

._crit_edge9:                                     ; preds = %35
  br label %39

39:                                               ; preds = %._crit_edge9, %1
  %40 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %2)
  store ptr %40, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %20

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %15, %4
  %.01 = phi ptr [ %0, %4 ], [ %16, %15 ]
  %6 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr %.01, align 8
  %11 = call i32 @get_value(ptr noundef %10)
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8
  br label %5, !llvm.loop !25

17:                                               ; preds = %13
  %.01.lcssa = phi ptr [ %.01, %13 ]
  %18 = load ptr, ptr %.01.lcssa, align 8
  %19 = call ptr @copy_data(ptr noundef %18)
  br label %20

20:                                               ; preds = %17, %3
  %.0 = phi ptr [ null, %3 ], [ %19, %17 ]
  ret ptr %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_winning_move(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %.0 = phi ptr [ %0, %1 ], [ %4, %2 ]
  %3 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %2, label %6, !llvm.loop !26

6:                                                ; preds = %2
  %.0.lcssa = phi ptr [ %.0, %2 ]
  %7 = getelementptr inbounds nuw %struct._play, ptr %.0.lcssa, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = call ptr @get_good_move(ptr noundef %8)
  ret ptr %9
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
  %.01 = phi ptr [ %1, %.lr.ph ], [ %10, %8 ]
  %9 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw %struct._play, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %8, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %8
  %split = phi ptr [ %10, %8 ]
  br label %16

16:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %split, %._crit_edge ], [ %1, %2 ]
  %17 = getelementptr inbounds nuw %struct._play, ptr %.0.lcssa, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  ret ptr %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_real_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  store i32 0, ptr %3, align 4
  %.promoted = load i32, ptr %3, align 4
  %5 = sext i32 %.promoted to i64
  %6 = getelementptr inbounds i32, ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i32, ptr %1, i64 %5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %4
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = phi i32 [ %.promoted, %.lr.ph ], [ %13, %11 ]
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i32, ptr %1, i64 %14
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %11
  %split = phi i32 [ %16, %11 ]
  br label %20

20:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %7, %4 ]
  store i32 %.lcssa, ptr %2, align 4
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
  switch i32 2, label %81 [
    i32 1, label %8
    i32 2, label %40
    i32 3, label %62
  ]

8:                                                ; preds = %0
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %10 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %12 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %14 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %3)
  %15 = load i32, ptr @nrow, align 4
  %16 = load i32, ptr %3, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %.lr.ph10, label %39

.lr.ph10:                                         ; preds = %8
  br label %18

18:                                               ; preds = %.lr.ph10, %33
  %19 = phi i32 [ %15, %.lr.ph10 ], [ %36, %33 ]
  %20 = load i32, ptr @ncol, align 4
  %21 = call ptr @make_data(i32 noundef %19, i32 noundef %20)
  call void @make_wanted(ptr noundef %21)
  %22 = call ptr @make_play(i32 noundef 0)
  %23 = call ptr @get_winning_move(ptr noundef %22)
  %24 = load i32, ptr @nrow, align 4
  %25 = load i32, ptr @ncol, align 4
  %26 = call ptr @make_data(i32 noundef %24, i32 noundef %25)
  call void @get_real_move(ptr noundef %23, ptr noundef %26, ptr noundef %1, ptr noundef %2)
  %27 = load i32, ptr @nrow, align 4
  %28 = load i32, ptr @ncol, align 4
  %29 = load i32, ptr %1, align 4
  %30 = load i32, ptr %2, align 4
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30)
  call void @dump_play(ptr noundef %22)
  %32 = load ptr, ptr @wanted, align 8
  call void @dump_list(ptr noundef %32)
  br label %33

33:                                               ; preds = %18
  %34 = load i32, ptr @nrow, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @nrow, align 4
  %36 = load i32, ptr @nrow, align 4
  %37 = load i32, ptr %3, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %18, label %._crit_edge11, !llvm.loop !29

._crit_edge11:                                    ; preds = %33
  br label %39

39:                                               ; preds = %._crit_edge11, %8
  br label %81

40:                                               ; preds = %0
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %43 = call ptr @make_play(i32 noundef 1)
  %44 = load i32, ptr @nrow, align 4
  %45 = load i32, ptr @ncol, align 4
  %46 = call ptr @make_data(i32 noundef %44, i32 noundef %45)
  %47 = icmp ne ptr %46, null
  br i1 %47, label %.lr.ph7, label %59

.lr.ph7:                                          ; preds = %40
  br label %48

48:                                               ; preds = %.lr.ph7, %57
  %.015 = phi i32 [ 0, %.lr.ph7 ], [ %.1, %57 ]
  %.024 = phi ptr [ %46, %.lr.ph7 ], [ %50, %57 ]
  %49 = call ptr @where(ptr noundef %.024, ptr noundef %43)
  %50 = call ptr @get_good_move(ptr noundef %49)
  %51 = icmp ne ptr %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  call void @get_real_move(ptr noundef %50, ptr noundef %.024, ptr noundef %1, ptr noundef %2)
  %53 = load i32, ptr %1, align 4
  %54 = load i32, ptr %2, align 4
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %.015, i32 noundef %53, i32 noundef %54)
  %56 = sub nsw i32 1, %.015
  call void @free(ptr noundef %.024)
  br label %57

57:                                               ; preds = %52, %48
  %.1 = phi i32 [ %56, %52 ], [ %.015, %48 ]
  %58 = icmp ne ptr %50, null
  br i1 %58, label %48, label %._crit_edge8, !llvm.loop !30

._crit_edge8:                                     ; preds = %57
  %split = phi i32 [ %.1, %57 ]
  br label %59

59:                                               ; preds = %._crit_edge8, %40
  %.01.lcssa = phi i32 [ %split, %._crit_edge8 ], [ 0, %40 ]
  call void @dump_play(ptr noundef %43)
  %60 = sub nsw i32 1, %.01.lcssa
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %60)
  br label %81

62:                                               ; preds = %0
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %64 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @ncol)
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %66 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef @nrow)
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %68 = call ptr @make_play(i32 noundef 1)
  %69 = icmp ne ptr %68, null
  br i1 %69, label %.lr.ph, label %80

.lr.ph:                                           ; preds = %62
  br label %70

70:                                               ; preds = %.lr.ph, %76
  %.03 = phi ptr [ %68, %.lr.ph ], [ %78, %76 ]
  %71 = load i32, ptr %.03, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds nuw %struct._play, ptr %.03, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8
  call void @show_move(ptr noundef %75)
  br label %76

76:                                               ; preds = %73, %70
  %77 = getelementptr inbounds nuw %struct._play, ptr %.03, i32 0, i32 3
  %78 = load ptr, ptr %77, align 8
  %79 = icmp ne ptr %78, null
  br i1 %79, label %70, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %76
  br label %80

80:                                               ; preds = %._crit_edge, %62
  call void @dump_play(ptr noundef %68)
  br label %81

81:                                               ; preds = %80, %59, %39, %0
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
