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
  %2 = load i32, ptr @ncol, align 4
  %3 = icmp ne i32 0, %2
  br i1 %3, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %14
  %.011 = phi i32 [ 0, %.lr.ph ], [ %.12, %14 ]
  %5 = sext i32 %.011 to i64
  %6 = getelementptr inbounds i32, ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @nrow, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  store i32 0, ptr %6, align 4
  %11 = add nsw i32 %.011, 1
  br label %14

12:                                               ; preds = %4
  %13 = add nsw i32 %7, 1
  store i32 %13, ptr %6, align 4
  br label %14

14:                                               ; preds = %12, %10
  %.12 = phi i32 [ %11, %10 ], [ %.011, %12 ]
  %.1 = phi i32 [ 0, %10 ], [ 1, %12 ]
  %15 = load i32, ptr @ncol, align 4
  %16 = icmp ne i32 %.12, %15
  %17 = icmp ne i32 %.1, 0
  %18 = xor i1 %17, true
  %or.cond = select i1 %16, i1 %18, i1 false
  br i1 %or.cond, label %4, label %..critedge_crit_edge, !llvm.loop !9

..critedge_crit_edge:                             ; preds = %14
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %1
  %.0.lcssa = phi i32 [ %.1, %..critedge_crit_edge ], [ 0, %1 ]
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
  %14 = icmp slt i32 %5, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_data(ptr noundef %0) #0 {
  %2 = load i32, ptr @nrow, align 4
  %3 = load i32, ptr @ncol, align 4
  %4 = icmp ne i32 0, %3
  br i1 %4, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %10
  %.02 = phi i32 [ 0, %.lr.ph ], [ %11, %10 ]
  %.011 = phi i32 [ %2, %.lr.ph ], [ %8, %10 ]
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, %.011
  br i1 %9, label %._crit_edge, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %.02, 1
  %12 = icmp ne i32 %11, %3
  br i1 %12, label %5, label %._crit_edge3, !llvm.loop !12

._crit_edge:                                      ; preds = %5
  br label %13

._crit_edge3:                                     ; preds = %10
  br label %13

13:                                               ; preds = %._crit_edge3, %._crit_edge, %1
  %.0.lcssa = phi i32 [ %.02, %._crit_edge ], [ %3, %._crit_edge3 ], [ 0, %1 ]
  %14 = icmp eq i32 %.0.lcssa, %3
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
  br label %16

16:                                               ; preds = %._crit_edge, %1
  %.0.lcssa = phi ptr [ %10, %._crit_edge ], [ %2, %1 ]
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
  %.pre = load i32, ptr @ncol, align 4
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %.pre, %12 ], [ %5, %4 ]
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
  %magicptr2 = ptrtoint ptr %2 to i64
  %cond3 = icmp eq i64 %magicptr2, 0
  br i1 %cond3, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %7
  %.014 = phi ptr [ %2, %.lr.ph ], [ %9, %7 ]
  %4 = load ptr, ptr %.014, align 8
  %5 = call i32 @equal_data(ptr noundef %4, ptr noundef %0)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw %struct._list, ptr %.014, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %magicptr = ptrtoint ptr %9 to i64
  %cond = icmp eq i64 %magicptr, 0
  br i1 %cond, label %..loopexit_crit_edge, label %3, !llvm.loop !17

10:                                               ; preds = %3
  br label %11

..loopexit_crit_edge:                             ; preds = %7
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %1
  br label %11

11:                                               ; preds = %.loopexit, %10
  %.0 = phi i32 [ 1, %10 ], [ 0, %.loopexit ]
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

.lr.ph:                                           ; preds = %2
  %.pre = load i32, ptr @nrow, align 4
  br label %10

..preheader_crit_edge:                            ; preds = %10
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %2
  %.0.lcssa = phi i32 [ %1, %..preheader_crit_edge ], [ 0, %2 ]
  %8 = load i32, ptr @ncol, align 4
  %9 = icmp ne i32 %.0.lcssa, %8
  br i1 %9, label %.lr.ph3, label %21

.lr.ph3:                                          ; preds = %.preheader
  br label %15

10:                                               ; preds = %.lr.ph, %10
  %.01 = phi i32 [ 0, %.lr.ph ], [ %13, %10 ]
  %11 = sext i32 %.01 to i64
  %12 = getelementptr inbounds i32, ptr %6, i64 %11
  store i32 %.pre, ptr %12, align 4
  %13 = add nsw i32 %.01, 1
  %14 = icmp ne i32 %13, %1
  br i1 %14, label %10, label %..preheader_crit_edge, !llvm.loop !18

15:                                               ; preds = %.lr.ph3, %15
  %.12 = phi i32 [ %.0.lcssa, %.lr.ph3 ], [ %18, %15 ]
  %16 = sext i32 %.12 to i64
  %17 = getelementptr inbounds i32, ptr %6, i64 %16
  store i32 %0, ptr %17, align 4
  %18 = add nsw i32 %.12, 1
  %19 = load i32, ptr @ncol, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %15, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %15
  br label %21

21:                                               ; preds = %._crit_edge, %.preheader
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
  br i1 %7, label %.preheader.lr.ph, label %56

.preheader.lr.ph:                                 ; preds = %3
  %.pre = load i32, ptr @ncol, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %51
  %8 = phi i32 [ %6, %.preheader.lr.ph ], [ %52, %51 ]
  %9 = phi i32 [ %.pre, %.preheader.lr.ph ], [ %53, %51 ]
  %.06 = phi ptr [ %4, %.preheader.lr.ph ], [ %.1.lcssa, %51 ]
  %.045 = phi i32 [ 0, %.preheader.lr.ph ], [ %54, %51 ]
  %10 = icmp ne i32 0, %9
  br i1 %10, label %.lr.ph, label %51

.lr.ph:                                           ; preds = %.preheader
  br label %11

11:                                               ; preds = %.lr.ph, %47
  %.13 = phi ptr [ %.06, %.lr.ph ], [ %.2, %47 ]
  %.012 = phi i32 [ 0, %.lr.ph ], [ %48, %47 ]
  %.151 = phi i32 [ %.045, %.lr.ph ], [ %.3, %47 ]
  %12 = call ptr @make_data(i32 noundef %.151, i32 noundef %.012)
  call void @melt_data(ptr noundef %12, ptr noundef %0)
  %13 = call i32 @equal_data(ptr noundef %12, ptr noundef %0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %41, label %15

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
  %28 = phi i32 [ %26, %25 ], [ %23, %15 ]
  %29 = load i32, ptr %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %34 = load i32, ptr @ncol, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, ptr @nrow, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @in_wanted(ptr noundef %12)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  store i32 2, ptr %2, align 4
  br label %47

41:                                               ; preds = %11
  %42 = icmp eq i32 %.012, 0
  %43 = load i32, ptr @nrow, align 4
  %44 = sub nsw i32 %43, 1
  %.4 = select i1 %42, i32 %44, i32 %.151
  %45 = load i32, ptr @ncol, align 4
  %46 = sub nsw i32 %45, 1
  br label %47

47:                                               ; preds = %41, %40, %33, %31, %27
  %.3 = phi i32 [ %.4, %41 ], [ %.151, %27 ], [ %.151, %31 ], [ %37, %40 ], [ %37, %33 ]
  %.23 = phi i32 [ %46, %41 ], [ %.012, %27 ], [ %.012, %31 ], [ %35, %40 ], [ %35, %33 ]
  %.2 = phi ptr [ %.13, %41 ], [ %22, %33 ], [ %22, %40 ], [ %22, %31 ], [ %22, %27 ]
  call void @free(ptr noundef %12)
  %48 = add nsw i32 %.23, 1
  %49 = load i32, ptr @ncol, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %11, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %47
  %.pre8 = load i32, ptr @nrow, align 4
  br label %51

51:                                               ; preds = %._crit_edge, %.preheader
  %52 = phi i32 [ %.pre8, %._crit_edge ], [ %8, %.preheader ]
  %53 = phi i32 [ %48, %._crit_edge ], [ 0, %.preheader ]
  %.15.lcssa = phi i32 [ %.3, %._crit_edge ], [ %.045, %.preheader ]
  %.1.lcssa = phi ptr [ %.2, %._crit_edge ], [ %.06, %.preheader ]
  %54 = add nsw i32 %.15.lcssa, 1
  %55 = icmp ne i32 %54, %52
  br i1 %55, label %.preheader, label %._crit_edge7, !llvm.loop !21

._crit_edge7:                                     ; preds = %51
  %.pre9 = load ptr, ptr %5, align 8
  br label %56

56:                                               ; preds = %._crit_edge7, %3
  %57 = phi ptr [ %.pre9, %._crit_edge7 ], [ null, %3 ]
  call void @free(ptr noundef %4)
  %58 = icmp ne ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, ptr %1, align 4
  %61 = sub nsw i32 1, %60
  store i32 %61, ptr %1, align 4
  br label %62

62:                                               ; preds = %59, %56
  ret ptr %57
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
  br i1 %9, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %1
  br label %10

10:                                               ; preds = %.lr.ph, %37
  %.02 = phi ptr [ %5, %.lr.ph ], [ %.1, %37 ]
  %.011 = phi ptr [ %4, %.lr.ph ], [ %.12, %37 ]
  %11 = call i32 @valid_data(ptr noundef %.02)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %37

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

37:                                               ; preds = %33, %19, %10
  %.12 = phi ptr [ %.011, %10 ], [ %30, %33 ], [ %30, %19 ]
  %.1 = phi ptr [ %.02, %10 ], [ %36, %33 ], [ %.02, %19 ]
  %38 = call i32 @next_data(ptr noundef %.1)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %10, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %37
  br label %40

40:                                               ; preds = %._crit_edge, %1
  %41 = getelementptr inbounds nuw %struct._play, ptr %4, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  call void @free(ptr noundef %4)
  ret ptr %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(ptr noundef %0) #0 {
  %2 = call ptr @malloc(i64 noundef 16) #3
  %3 = getelementptr inbounds nuw %struct._list, ptr %2, i32 0, i32 1
  store ptr null, ptr %3, align 8
  %4 = load i32, ptr @nrow, align 4
  %5 = icmp ne i32 0, %4
  br i1 %5, label %.preheader.lr.ph, label %36

.preheader.lr.ph:                                 ; preds = %1
  %.pre = load i32, ptr @ncol, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %31
  %6 = phi i32 [ %4, %.preheader.lr.ph ], [ %32, %31 ]
  %7 = phi i32 [ %.pre, %.preheader.lr.ph ], [ %33, %31 ]
  %.06 = phi ptr [ %2, %.preheader.lr.ph ], [ %.1.lcssa, %31 ]
  %.015 = phi i32 [ 0, %.preheader.lr.ph ], [ %34, %31 ]
  %8 = icmp ne i32 0, %7
  br i1 %8, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %.preheader
  br label %9

9:                                                ; preds = %.lr.ph, %27
  %.13 = phi ptr [ %.06, %.lr.ph ], [ %.2, %27 ]
  %.122 = phi i32 [ %.015, %.lr.ph ], [ %.23, %27 ]
  %.041 = phi i32 [ 0, %.lr.ph ], [ %28, %27 ]
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
  br label %27

21:                                               ; preds = %9
  %22 = icmp eq i32 %.041, 0
  %23 = load i32, ptr @nrow, align 4
  %24 = sub nsw i32 %23, 1
  %.3 = select i1 %22, i32 %24, i32 %.122
  %25 = load i32, ptr @ncol, align 4
  %26 = sub nsw i32 %25, 1
  br label %27

27:                                               ; preds = %21, %13
  %.15 = phi i32 [ %26, %21 ], [ %.041, %13 ]
  %.23 = phi i32 [ %.3, %21 ], [ %.122, %13 ]
  %.2 = phi ptr [ %.13, %21 ], [ %20, %13 ]
  call void @free(ptr noundef %10)
  %28 = add nsw i32 %.15, 1
  %29 = load i32, ptr @ncol, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %9, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %27
  %.pre8 = load i32, ptr @nrow, align 4
  br label %31

31:                                               ; preds = %._crit_edge, %.preheader
  %32 = phi i32 [ %.pre8, %._crit_edge ], [ %6, %.preheader ]
  %33 = phi i32 [ %28, %._crit_edge ], [ 0, %.preheader ]
  %.12.lcssa = phi i32 [ %.23, %._crit_edge ], [ %.015, %.preheader ]
  %.1.lcssa = phi ptr [ %.2, %._crit_edge ], [ %.06, %.preheader ]
  %34 = add nsw i32 %.12.lcssa, 1
  %35 = icmp ne i32 %34, %32
  br i1 %35, label %.preheader, label %._crit_edge7, !llvm.loop !24

._crit_edge7:                                     ; preds = %31
  %.pre9 = load ptr, ptr %3, align 8
  br label %36

36:                                               ; preds = %._crit_edge7, %1
  %37 = phi ptr [ %.pre9, %._crit_edge7 ], [ null, %1 ]
  call void @free(ptr noundef %2)
  store ptr %37, ptr @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_good_move(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %.preheader

.preheader:                                       ; preds = %1
  %3 = getelementptr inbounds nuw %struct._list, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  br label %6

6:                                                ; preds = %.lr.ph, %11
  %7 = phi ptr [ %3, %.lr.ph ], [ %13, %11 ]
  %.011 = phi ptr [ %0, %.lr.ph ], [ %12, %11 ]
  %8 = load ptr, ptr %.011, align 8
  %9 = call i32 @get_value(ptr noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %..critedge_crit_edge

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr inbounds nuw %struct._list, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %6, label %..critedge_crit_edge2, !llvm.loop !25

..critedge_crit_edge:                             ; preds = %6
  br label %.critedge

..critedge_crit_edge2:                            ; preds = %11
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge2, %..critedge_crit_edge, %.preheader
  %.01.lcssa = phi ptr [ %.011, %..critedge_crit_edge ], [ %12, %..critedge_crit_edge2 ], [ %0, %.preheader ]
  %16 = load ptr, ptr %.01.lcssa, align 8
  %17 = call ptr @copy_data(ptr noundef %16)
  br label %18

18:                                               ; preds = %.critedge, %1
  %.0 = phi ptr [ %17, %.critedge ], [ null, %1 ]
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
  %7 = getelementptr inbounds nuw %struct._play, ptr %.0, i32 0, i32 2
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
  br label %16

16:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi ptr [ %10, %._crit_edge ], [ %1, %2 ]
  %17 = getelementptr inbounds nuw %struct._play, ptr %.0.lcssa, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  ret ptr %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_real_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  store i32 0, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = load i32, ptr %1, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %4
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %9 = phi i32 [ 0, %.lr.ph ], [ %10, %8 ]
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds i32, ptr %1, i64 %11
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %8, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %8
  br label %17

17:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %13, %._crit_edge ], [ %5, %4 ]
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
  br i1 %13, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %0
  br label %14

14:                                               ; preds = %.lr.ph, %23
  %.012 = phi i32 [ 0, %.lr.ph ], [ %.1, %23 ]
  %.021 = phi ptr [ %12, %.lr.ph ], [ %16, %23 ]
  %15 = call ptr @where(ptr noundef %.021, ptr noundef %9)
  %16 = call ptr @get_good_move(ptr noundef %15)
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  call void @get_real_move(ptr noundef %16, ptr noundef %.021, ptr noundef %1, ptr noundef %2)
  %19 = load i32, ptr %1, align 4
  %20 = load i32, ptr %2, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %.012, i32 noundef %19, i32 noundef %20)
  %22 = sub nsw i32 1, %.012
  call void @free(ptr noundef %.021)
  br label %23

23:                                               ; preds = %18, %14
  %.1 = phi i32 [ %22, %18 ], [ %.012, %14 ]
  br i1 %17, label %14, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %23
  br label %24

24:                                               ; preds = %._crit_edge, %0
  %.01.lcssa = phi i32 [ %.1, %._crit_edge ], [ 0, %0 ]
  call void @dump_play(ptr noundef %9)
  %25 = sub nsw i32 1, %.01.lcssa
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %25)
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
