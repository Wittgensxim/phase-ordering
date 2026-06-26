; ModuleID = 'results\paper_full\McGill_chomp\round_001\output.ll'
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
  br i1 %8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %.lr.ph
  %9 = phi i32 [ %14, %.lr.ph ], [ %7, %1 ]
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds i32, ptr %5, i64 %10
  store i32 %12, ptr %13, align 4
  %14 = add nsw i32 %9, -1
  %15 = icmp ne i32 %9, 0
  br i1 %15, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %1
  ret ptr %5
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @ncol, align 4
  %3 = icmp ne i32 0, %2
  br i1 %3, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %1, %13
  %.02 = phi i32 [ %.1, %13 ], [ 0, %1 ]
  %.011 = phi i32 [ %.12, %13 ], [ 0, %1 ]
  %4 = sext i32 %.011 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr @nrow, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %.lr.ph
  store i32 0, ptr %5, align 4
  %10 = add nsw i32 %.011, 1
  br label %13

11:                                               ; preds = %.lr.ph
  %12 = add nsw i32 %6, 1
  store i32 %12, ptr %5, align 4
  br label %13

13:                                               ; preds = %11, %9
  %.12 = phi i32 [ %10, %9 ], [ %.011, %11 ]
  %.1 = phi i32 [ %.02, %9 ], [ 1, %11 ]
  %14 = load i32, ptr @ncol, align 4
  %15 = icmp ne i32 %.12, %14
  %16 = icmp ne i32 %.1, 0
  %17 = xor i1 %16, true
  %or.cond = select i1 %15, i1 %17, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !9

.critedge:                                        ; preds = %13, %1
  %.0.lcssa = phi i32 [ 0, %1 ], [ %.1, %13 ]
  ret i32 %.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @melt_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = add nsw i32 %3, -1
  %5 = icmp ne i32 %3, 0
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %14
  %6 = phi i32 [ %15, %14 ], [ %4, %2 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i32, ptr %1, i64 %7
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %.lr.ph
  store i32 %11, ptr %8, align 4
  br label %14

14:                                               ; preds = %13, %.lr.ph
  %15 = add nsw i32 %6, -1
  %16 = icmp ne i32 %6, 0
  br i1 %16, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %14, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @equal_data(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  br label %4

4:                                                ; preds = %7, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %7 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp ne i32 %.0, 0
  br i1 %6, label %7, label %.critedge

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i32, ptr %1, i64 %8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %4, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %7, %4
  %.lcssa = phi i32 [ %5, %7 ], [ %5, %4 ]
  %14 = icmp slt i32 %.lcssa, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %3 = load i32, ptr @ncol, align 4
  %4 = icmp ne i32 0, %3
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %9
  %.02 = phi i32 [ %10, %9 ], [ 0, %1 ]
  %.011 = phi i32 [ %7, %9 ], [ %2, %1 ]
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds i32, ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, %.011
  br i1 %8, label %._crit_edge, label %9

9:                                                ; preds = %.lr.ph
  %10 = add nsw i32 %.02, 1
  %11 = load i32, ptr @ncol, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %9, %.lr.ph, %1
  %.0.lcssa = phi i32 [ 0, %1 ], [ %.02, %.lr.ph ], [ %10, %9 ]
  %13 = load i32, ptr @ncol, align 4
  %14 = icmp eq i32 %.0.lcssa, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
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
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %.lr.ph
  %.01 = phi ptr [ %9, %.lr.ph ], [ %2, %1 ]
  %8 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw %struct._play, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @equal_data(ptr noundef %11, ptr noundef %0)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %1
  %.0.lcssa = phi ptr [ %2, %1 ], [ %9, %.lr.ph ]
  %15 = load i32, ptr %.0.lcssa, align 8
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @ncol, align 4
  %3 = icmp ne i32 0, %2
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %13
  %.01 = phi i32 [ %4, %13 ], [ 0, %1 ]
  %4 = add nsw i32 %.01, 1
  %5 = sext i32 %.01 to i64
  %6 = getelementptr inbounds i32, ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7)
  %9 = load i32, ptr @ncol, align 4
  %10 = icmp ne i32 %4, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %.lr.ph
  %12 = call i32 @putchar(i32 noundef 44)
  br label %13

13:                                               ; preds = %11, %.lr.ph
  %14 = load i32, ptr @ncol, align 4
  %15 = icmp ne i32 %4, %14
  br i1 %15, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %13, %1
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
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %.lr.ph
  %.01 = phi ptr [ %5, %.lr.ph ], [ %0, %1 ]
  %3 = load ptr, ptr %.01, align 8
  call void @show_move(ptr noundef %3)
  %4 = getelementptr inbounds nuw %struct._list, ptr %.01, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(ptr noundef %0) #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %.lr.ph
  %.01 = phi ptr [ %12, %.lr.ph ], [ %0, %1 ]
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %4 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @show_data(ptr noundef %5)
  %6 = load i32, ptr %.01, align 8
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %6)
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %9 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  call void @show_list(ptr noundef %10)
  %11 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @in_wanted(ptr noundef %0) #0 {
  %2 = load ptr, ptr @wanted, align 8
  %magicptr2 = ptrtoint ptr %2 to i64
  %cond3 = icmp eq i64 %magicptr2, 0
  br i1 %cond3, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %1, %6
  %.014 = phi ptr [ %8, %6 ], [ %2, %1 ]
  %3 = load ptr, ptr %.014, align 8
  %4 = call i32 @equal_data(ptr noundef %3, ptr noundef %0)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %.lr.ph
  %7 = getelementptr inbounds nuw %struct._list, ptr %.014, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %magicptr = ptrtoint ptr %8 to i64
  %cond = icmp eq i64 %magicptr, 0
  br i1 %cond, label %.loopexit, label %.lr.ph, !llvm.loop !17

9:                                                ; preds = %.lr.ph
  %.01.lcssa1 = phi ptr [ %.014, %.lr.ph ]
  %10 = icmp eq ptr %.01.lcssa1, null
  %spec.select = select i1 %10, i32 0, i32 1
  br label %.loopexit

.loopexit:                                        ; preds = %1, %6, %9
  %.0 = phi i32 [ %spec.select, %9 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = call ptr @malloc(i64 noundef %5) #3
  %7 = icmp ne i32 0, %1
  br i1 %7, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %2
  %.0.lcssa = phi i32 [ 0, %2 ], [ %13, %.lr.ph ]
  %8 = load i32, ptr @ncol, align 4
  %9 = icmp ne i32 %.0.lcssa, %8
  br i1 %9, label %.lr.ph3, label %._crit_edge

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.01 = phi i32 [ %13, %.lr.ph ], [ 0, %2 ]
  %10 = load i32, ptr @nrow, align 4
  %11 = sext i32 %.01 to i64
  %12 = getelementptr inbounds i32, ptr %6, i64 %11
  store i32 %10, ptr %12, align 4
  %13 = add nsw i32 %.01, 1
  %14 = icmp ne i32 %13, %1
  br i1 %14, label %.lr.ph, label %.preheader, !llvm.loop !18

.lr.ph3:                                          ; preds = %.preheader, %.lr.ph3
  %.12 = phi i32 [ %17, %.lr.ph3 ], [ %.0.lcssa, %.preheader ]
  %15 = sext i32 %.12 to i64
  %16 = getelementptr inbounds i32, ptr %6, i64 %15
  store i32 %0, ptr %16, align 4
  %17 = add nsw i32 %.12, 1
  %18 = load i32, ptr @ncol, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %.lr.ph3, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph3, %.preheader
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
  br i1 %7, label %.preheader, label %._crit_edge7

.preheader:                                       ; preds = %3, %._crit_edge
  %.06 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %4, %3 ]
  %.045 = phi i32 [ %49, %._crit_edge ], [ 0, %3 ]
  %8 = load i32, ptr @ncol, align 4
  %9 = icmp ne i32 0, %8
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %45
  %.13 = phi ptr [ %.2, %45 ], [ %.06, %.preheader ]
  %.012 = phi i32 [ %46, %45 ], [ 0, %.preheader ]
  %.151 = phi i32 [ %.3, %45 ], [ %.045, %.preheader ]
  %10 = call ptr @make_data(i32 noundef %.151, i32 noundef %.012)
  call void @melt_data(ptr noundef %10, ptr noundef %0)
  %11 = call i32 @equal_data(ptr noundef %10, ptr noundef %0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %.lr.ph
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
  %21 = load i32, ptr %1, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 @get_value(ptr noundef %10)
  store i32 %24, ptr %1, align 4
  br label %25

25:                                               ; preds = %23, %13
  %26 = load i32, ptr %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %1, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32, ptr @ncol, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, ptr @nrow, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i32 @in_wanted(ptr noundef %10)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  store i32 2, ptr %2, align 4
  br label %45

39:                                               ; preds = %.lr.ph
  %40 = icmp eq i32 %.012, 0
  %41 = load i32, ptr @nrow, align 4
  %42 = sub nsw i32 %41, 1
  %.4 = select i1 %40, i32 %42, i32 %.151
  %43 = load i32, ptr @ncol, align 4
  %44 = sub nsw i32 %43, 1
  br label %45

45:                                               ; preds = %39, %38, %31, %28, %25
  %.3 = phi i32 [ %.4, %39 ], [ %.151, %25 ], [ %.151, %28 ], [ %35, %38 ], [ %35, %31 ]
  %.23 = phi i32 [ %44, %39 ], [ %.012, %25 ], [ %.012, %28 ], [ %33, %38 ], [ %33, %31 ]
  %.2 = phi ptr [ %.13, %39 ], [ %20, %31 ], [ %20, %38 ], [ %20, %28 ], [ %20, %25 ]
  call void @free(ptr noundef %10)
  %46 = add nsw i32 %.23, 1
  %47 = load i32, ptr @ncol, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %45, %.preheader
  %.15.lcssa = phi i32 [ %.045, %.preheader ], [ %.3, %45 ]
  %.1.lcssa = phi ptr [ %.06, %.preheader ], [ %.2, %45 ]
  %49 = add nsw i32 %.15.lcssa, 1
  %50 = load i32, ptr @nrow, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %.preheader, label %._crit_edge7, !llvm.loop !21

._crit_edge7:                                     ; preds = %._crit_edge, %3
  %52 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %4)
  %53 = icmp ne ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %._crit_edge7
  %55 = load i32, ptr %1, align 4
  %56 = sub nsw i32 1, %55
  store i32 %56, ptr %1, align 4
  br label %57

57:                                               ; preds = %54, %._crit_edge7
  ret ptr %52
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
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %36
  %.02 = phi ptr [ %.1, %36 ], [ %5, %1 ]
  %.011 = phi ptr [ %.12, %36 ], [ %4, %1 ]
  %10 = call i32 @valid_data(ptr noundef %.02)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %.lr.ph
  %13 = call ptr @malloc(i64 noundef 32) #3
  %14 = getelementptr inbounds nuw %struct._play, ptr %.011, i32 0, i32 3
  store ptr %13, ptr %14, align 8
  %15 = load ptr, ptr @game_tree, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store ptr %13, ptr @game_tree, align 8
  br label %18

18:                                               ; preds = %17, %12
  %19 = call ptr @copy_data(ptr noundef %.02)
  %20 = load ptr, ptr %14, align 8
  %21 = getelementptr inbounds nuw %struct._play, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 8
  %22 = call ptr @make_list(ptr noundef %.02, ptr noundef %3, ptr noundef %2)
  %23 = load ptr, ptr %14, align 8
  %24 = getelementptr inbounds nuw %struct._play, ptr %23, i32 0, i32 2
  store ptr %22, ptr %24, align 8
  %25 = load i32, ptr %3, align 4
  %26 = load ptr, ptr %14, align 8
  store i32 %25, ptr %26, align 8
  %27 = load ptr, ptr %14, align 8
  %28 = getelementptr inbounds nuw %struct._play, ptr %27, i32 0, i32 3
  store ptr null, ptr %28, align 8
  %29 = load ptr, ptr %14, align 8
  %30 = load i32, ptr %2, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  call void @free(ptr noundef %.02)
  %33 = load i32, ptr @nrow, align 4
  %34 = load i32, ptr @ncol, align 4
  %35 = call ptr @make_data(i32 noundef %33, i32 noundef %34)
  br label %36

36:                                               ; preds = %32, %18, %.lr.ph
  %.12 = phi ptr [ %.011, %.lr.ph ], [ %29, %32 ], [ %29, %18 ]
  %.1 = phi ptr [ %.02, %.lr.ph ], [ %35, %32 ], [ %.02, %18 ]
  %37 = call i32 @next_data(ptr noundef %.1)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %36, %1
  %39 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  call void @free(ptr noundef %4)
  ret ptr %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef 16) #3
  %3 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 8
  %4 = load i32, ptr @nrow, align 4
  %5 = icmp ne i32 0, %4
  br i1 %5, label %.preheader, label %._crit_edge7

.preheader:                                       ; preds = %1, %._crit_edge
  %.06 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %2, %1 ]
  %.015 = phi i32 [ %29, %._crit_edge ], [ 0, %1 ]
  %6 = load i32, ptr @ncol, align 4
  %7 = icmp ne i32 0, %6
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %25
  %.13 = phi ptr [ %.2, %25 ], [ %.06, %.preheader ]
  %.122 = phi i32 [ %.23, %25 ], [ %.015, %.preheader ]
  %.041 = phi i32 [ %26, %25 ], [ 0, %.preheader ]
  %8 = call ptr @make_data(i32 noundef %.122, i32 noundef %.041)
  call void @melt_data(ptr noundef %8, ptr noundef %0)
  %9 = call i32 @equal_data(ptr noundef %8, ptr noundef %0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %.lr.ph
  %12 = call ptr @malloc(i64 noundef 16) #3
  %13 = getelementptr inbounds nuw %struct._list, ptr %.13, i32 0, i32 1
  store ptr %12, ptr %13, align 8
  %14 = call ptr @copy_data(ptr noundef %8)
  %15 = load ptr, ptr %13, align 8
  store ptr %14, ptr %15, align 8
  %16 = load ptr, ptr %13, align 8
  %17 = getelementptr inbounds nuw %struct._list, ptr %16, i32 0, i32 1
  store ptr null, ptr %17, align 8
  %18 = load ptr, ptr %13, align 8
  br label %25

19:                                               ; preds = %.lr.ph
  %20 = icmp eq i32 %.041, 0
  %21 = load i32, ptr @nrow, align 4
  %22 = sub nsw i32 %21, 1
  %.3 = select i1 %20, i32 %22, i32 %.122
  %23 = load i32, ptr @ncol, align 4
  %24 = sub nsw i32 %23, 1
  br label %25

25:                                               ; preds = %19, %11
  %.15 = phi i32 [ %24, %19 ], [ %.041, %11 ]
  %.23 = phi i32 [ %.3, %19 ], [ %.122, %11 ]
  %.2 = phi ptr [ %.13, %19 ], [ %18, %11 ]
  call void @free(ptr noundef %8)
  %26 = add nsw i32 %.15, 1
  %27 = load i32, ptr @ncol, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %25, %.preheader
  %.12.lcssa = phi i32 [ %.015, %.preheader ], [ %.23, %25 ]
  %.1.lcssa = phi ptr [ %.06, %.preheader ], [ %.2, %25 ]
  %29 = add nsw i32 %.12.lcssa, 1
  %30 = load i32, ptr @nrow, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %.preheader, label %._crit_edge7, !llvm.loop !24

._crit_edge7:                                     ; preds = %._crit_edge, %1
  %32 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %2)
  store ptr %32, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %.preheader

.preheader:                                       ; preds = %1
  %3 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %10
  %6 = phi ptr [ %12, %10 ], [ %3, %.preheader ]
  %.011 = phi ptr [ %11, %10 ], [ %0, %.preheader ]
  %7 = load ptr, ptr %.011, align 8
  %8 = call i32 @get_value(ptr noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %.critedge

10:                                               ; preds = %.lr.ph
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds nuw %struct._list, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %.lr.ph, label %.critedge, !llvm.loop !25

.critedge:                                        ; preds = %10, %.lr.ph, %.preheader
  %.01.lcssa = phi ptr [ %0, %.preheader ], [ %.011, %.lr.ph ], [ %11, %10 ]
  %15 = load ptr, ptr %.01.lcssa, align 8
  %16 = call ptr @copy_data(ptr noundef %15)
  br label %17

17:                                               ; preds = %.critedge, %1
  %.0 = phi ptr [ %16, %.critedge ], [ null, %1 ]
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
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.01 = phi ptr [ %9, %.lr.ph ], [ %1, %2 ]
  %8 = getelementptr inbounds nuw %struct._play, ptr %.01, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw %struct._play, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @equal_data(ptr noundef %11, ptr noundef %0)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %.lr.ph, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %2
  %.0.lcssa = phi ptr [ %1, %2 ], [ %9, %.lr.ph ]
  %15 = getelementptr inbounds nuw %struct._play, ptr %.0.lcssa, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  ret ptr %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_real_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  store i32 0, ptr %3, align 4
  %5 = load i32, ptr %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds i32, ptr %1, i64 %6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4, %.lr.ph
  %12 = phi i32 [ %14, %.lr.ph ], [ %5, %4 ]
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %3, align 4
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i32, ptr %1, i64 %15
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %4
  %.lcssa = phi i32 [ %8, %4 ], [ %17, %.lr.ph ]
  store i32 %.lcssa, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 2, ptr %1, align 4
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 7, ptr @ncol, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  store i32 8, ptr @nrow, align 4
  %9 = call ptr @make_play(i32 noundef 1)
  %10 = load i32, ptr @nrow, align 4
  %11 = load i32, ptr @ncol, align 4
  %12 = call ptr @make_data(i32 noundef %10, i32 noundef %11)
  %13 = icmp ne ptr %12, null
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %22
  %.012 = phi i32 [ %.1, %22 ], [ 0, %0 ]
  %.021 = phi ptr [ %15, %22 ], [ %12, %0 ]
  %14 = call ptr @where(ptr noundef %.021, ptr noundef %9)
  %15 = call ptr @get_good_move(ptr noundef %14)
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %.lr.ph
  call void @get_real_move(ptr noundef %15, ptr noundef %.021, ptr noundef %1, ptr noundef %2)
  %18 = load i32, ptr %1, align 4
  %19 = load i32, ptr %2, align 4
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %.012, i32 noundef %18, i32 noundef %19)
  %21 = sub nsw i32 1, %.012
  call void @free(ptr noundef %.021)
  br label %22

22:                                               ; preds = %17, %.lr.ph
  %.1 = phi i32 [ %21, %17 ], [ %.012, %.lr.ph ]
  %23 = icmp ne ptr %15, null
  br i1 %23, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %22, %0
  %.01.lcssa = phi i32 [ 0, %0 ], [ %.1, %22 ]
  call void @dump_play(ptr noundef %9)
  %24 = sub nsw i32 1, %.01.lcssa
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %24)
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
