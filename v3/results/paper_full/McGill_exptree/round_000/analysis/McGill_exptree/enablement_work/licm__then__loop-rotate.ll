; ModuleID = 'results\paper_full\McGill_exptree\McGill_exptree.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.Comb = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Out of memory for work list\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Out of memory for combination list\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" d%d \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%d=%d\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@stopSearch = internal global i32 0, align 4
@nbNodes = internal global i32 0, align 4
@dmax = internal global i32 0, align 4
@workList = internal global ptr null, align 8
@listLength = internal global i32 0, align 4
@goal = internal global i32 0, align 4
@best = internal global i32 0, align 4
@bestDepth = internal global i32 0, align 4
@solution = internal global ptr null, align 8
@combList = internal global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @newWorkList(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call ptr @calloc(i64 noundef %5, i64 noundef 4) #6
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  ret ptr %10

11:                                               ; preds = %1
  %12 = call ptr @__acrt_iob_func(i32 noundef 2)
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str) #7
  call void @exit(i32 noundef 1) #8
  unreachable
}

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare dllimport ptr @__acrt_iob_func(i32 noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @newCombList(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call ptr @calloc(i64 noundef %5, i64 noundef 12) #6
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  ret ptr %10

11:                                               ; preds = %1
  %12 = call ptr @__acrt_iob_func(i32 noundef 2)
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initWorkList(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  %8 = load i32, ptr %6, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %7, align 4
  %11 = icmp slt i32 %.promoted, %8
  br i1 %11, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %3
  br label %12

12:                                               ; preds = %.lr.ph, %19
  %13 = phi i32 [ %.promoted, %.lr.ph ], [ %20, %19 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %9, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds i32, ptr %10, i64 %17
  store i32 %16, ptr %18, align 4
  br label %19

19:                                               ; preds = %12
  %20 = add nsw i32 %13, 1
  %21 = icmp slt i32 %20, %8
  br i1 %21, label %12, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %19
  %split = phi i32 [ %20, %19 ]
  br label %22

22:                                               ; preds = %._crit_edge, %3
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %3 ]
  store i32 %.lcssa, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %5, align 4
  %8 = icmp slt i32 %.promoted, %6
  br i1 %8, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %14
  %10 = phi i32 [ %.promoted, %.lr.ph ], [ %15, %14 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.Comb, ptr %7, i64 %11
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %12, i32 0, i32 2
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %9
  %15 = add nsw i32 %10, 1
  %16 = icmp slt i32 %15, %6
  br i1 %16, label %9, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %14
  %split = phi i32 [ %15, %14 ]
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %2 ]
  store i32 %.lcssa, ptr %5, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  %8 = load i32, ptr %6, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %7, align 4
  %15 = icmp slt i32 %.promoted, %8
  br i1 %15, label %.lr.ph, label %42

.lr.ph:                                           ; preds = %3
  br label %16

16:                                               ; preds = %.lr.ph, %39
  %17 = phi i32 [ %.promoted, %.lr.ph ], [ %40, %39 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.Comb, ptr %9, i64 %18
  %20 = getelementptr inbounds nuw %struct.Comb, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds %struct.Comb, ptr %10, i64 %22
  %24 = getelementptr inbounds nuw %struct.Comb, ptr %23, i32 0, i32 0
  store i32 %21, ptr %24, align 4
  %25 = sext i32 %17 to i64
  %26 = getelementptr inbounds %struct.Comb, ptr %11, i64 %25
  %27 = getelementptr inbounds nuw %struct.Comb, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %17 to i64
  %30 = getelementptr inbounds %struct.Comb, ptr %12, i64 %29
  %31 = getelementptr inbounds nuw %struct.Comb, ptr %30, i32 0, i32 1
  store i32 %28, ptr %31, align 4
  %32 = sext i32 %17 to i64
  %33 = getelementptr inbounds %struct.Comb, ptr %13, i64 %32
  %34 = getelementptr inbounds nuw %struct.Comb, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = sext i32 %17 to i64
  %37 = getelementptr inbounds %struct.Comb, ptr %14, i64 %36
  %38 = getelementptr inbounds nuw %struct.Comb, ptr %37, i32 0, i32 2
  store i32 %35, ptr %38, align 4
  br label %39

39:                                               ; preds = %16
  %40 = add nsw i32 %17, 1
  %41 = icmp slt i32 %40, %8
  br i1 %41, label %16, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %39
  %split = phi i32 [ %40, %39 ]
  br label %42

42:                                               ; preds = %._crit_edge, %3
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %3 ]
  store i32 %.lcssa, ptr %7, align 4
  %43 = load ptr, ptr %4, align 8
  %44 = load i32, ptr %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.Comb, ptr %43, i64 %45
  %47 = getelementptr inbounds nuw %struct.Comb, ptr %46, i32 0, i32 2
  store i32 0, ptr %47, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %struct.Comb, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %39 [
    i32 1, label %7
    i32 2, label %15
    i32 3, label %23
    i32 4, label %31
  ]

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add nsw i32 %10, %13
  store i32 %14, ptr %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %struct.Comb, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sub nsw i32 %18, %21
  store i32 %22, ptr %2, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds nuw %struct.Comb, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = mul nsw i32 %26, %29
  store i32 %30, ptr %2, align 4
  br label %40

31:                                               ; preds = %1
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds nuw %struct.Comb, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds nuw %struct.Comb, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = sdiv i32 %34, %37
  store i32 %38, ptr %2, align 4
  br label %40

39:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %40

40:                                               ; preds = %39, %31, %23, %15, %7
  %41 = load i32, ptr %2, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %4, align 4
  %13 = sub nsw i32 %12, 1
  %.promoted = load i32, ptr %5, align 4
  %14 = icmp slt i32 %.promoted, %6
  br i1 %14, label %.lr.ph, label %60

.lr.ph:                                           ; preds = %2
  br label %15

15:                                               ; preds = %.lr.ph, %57
  %16 = phi i32 [ %.promoted, %.lr.ph ], [ %58, %57 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.Comb, ptr %7, i64 %17
  %19 = getelementptr inbounds nuw %struct.Comb, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %20)
  %22 = sext i32 %16 to i64
  %23 = getelementptr inbounds %struct.Comb, ptr %8, i64 %22
  %24 = getelementptr inbounds nuw %struct.Comb, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %36 [
    i32 0, label %26
    i32 1, label %28
    i32 2, label %30
    i32 3, label %32
    i32 4, label %34
  ]

26:                                               ; preds = %15
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %42

28:                                               ; preds = %15
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %42

30:                                               ; preds = %15
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %42

32:                                               ; preds = %15
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %42

34:                                               ; preds = %15
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %42

36:                                               ; preds = %15
  %37 = sext i32 %16 to i64
  %38 = getelementptr inbounds %struct.Comb, ptr %9, i64 %37
  %39 = getelementptr inbounds nuw %struct.Comb, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %40)
  br label %42

42:                                               ; preds = %36, %34, %32, %30, %28, %26
  %43 = sext i32 %16 to i64
  %44 = getelementptr inbounds %struct.Comb, ptr %10, i64 %43
  %45 = getelementptr inbounds nuw %struct.Comb, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = sext i32 %16 to i64
  %48 = getelementptr inbounds %struct.Comb, ptr %11, i64 %47
  %49 = call i32 @calculate(ptr noundef %48)
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %46, i32 noundef %49)
  %51 = icmp slt i32 %16, %13
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %56

54:                                               ; preds = %42
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %56

56:                                               ; preds = %54, %52
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %16, 1
  %59 = icmp slt i32 %58, %6
  br i1 %59, label %15, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %57
  %split = phi i32 [ %58, %57 ]
  br label %60

60:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %2 ]
  store i32 %.lcssa, ptr %5, align 4
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  %10 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %7, align 4
  %11 = icmp slt i32 %.promoted, %8
  br i1 %11, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %3
  br label %12

12:                                               ; preds = %.lr.ph, %23
  %13 = phi i32 [ %.promoted, %.lr.ph ], [ %24, %23 ]
  %14 = shl i32 1, %13
  %15 = and i32 %14, %9
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %23

18:                                               ; preds = %12
  %19 = sext i32 %13 to i64
  %20 = getelementptr inbounds i32, ptr %10, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %21)
  br label %23

23:                                               ; preds = %18, %17
  %24 = add nsw i32 %13, 1
  %25 = icmp slt i32 %24, %8
  br i1 %25, label %12, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %23
  %split = phi i32 [ %24, %23 ]
  br label %26

26:                                               ; preds = %._crit_edge, %3
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %3 ]
  store i32 %.lcssa, ptr %7, align 4
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %12 = load i32, ptr @stopSearch, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %179

15:                                               ; preds = %2
  %16 = load i32, ptr @nbNodes, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @nbNodes, align 4
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr @dmax, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = load ptr, ptr @workList, align 8
  %23 = load i32, ptr @listLength, align 4
  %24 = load i32, ptr %3, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %22, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @llvm.abs.i32(i32 %31, i1 true)
  %33 = load i32, ptr @best, align 4
  %34 = load i32, ptr @goal, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @llvm.abs.i32(i32 %35, i1 true)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %21
  %39 = load ptr, ptr @workList, align 8
  %40 = load i32, ptr @listLength, align 4
  %41 = load i32, ptr %3, align 4
  %42 = add nsw i32 %40, %41
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %39, i64 %44
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr @best, align 4
  %47 = load i32, ptr %3, align 4
  store i32 %47, ptr @bestDepth, align 4
  %48 = load ptr, ptr @solution, align 8
  %49 = load ptr, ptr @combList, align 8
  %50 = load i32, ptr %3, align 4
  call void @saveSolution(ptr noundef %48, ptr noundef %49, i32 noundef %50)
  %51 = load i32, ptr @best, align 4
  %52 = load i32, ptr @goal, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load ptr, ptr @combList, align 8
  %56 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %55, i32 noundef %56)
  store i32 1, ptr @stopSearch, align 4
  br label %57

57:                                               ; preds = %54, %38
  br label %58

58:                                               ; preds = %57, %21
  br label %179

59:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  %60 = load i32, ptr %3, align 4
  %61 = load i32, ptr %4, align 4
  %62 = load i32, ptr %4, align 4
  %63 = load i32, ptr %4, align 4
  %64 = load i32, ptr %3, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32, ptr %3, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32, ptr %3, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32, ptr %3, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32, ptr %3, align 4
  %73 = load i32, ptr %3, align 4
  %74 = add nsw i32 %73, 1
  %.promoted25 = load i32, ptr %5, align 4
  %.promoted27 = load i32, ptr %7, align 4
  %.promoted29 = load i32, ptr %8, align 4
  %.promoted31 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %10, align 4
  %.promoted34 = load i32, ptr %11, align 4
  %.promoted36 = load i32, ptr %6, align 4
  %75 = icmp sle i32 %.promoted25, 4
  br i1 %75, label %.lr.ph62, label %178

.lr.ph62:                                         ; preds = %59
  br label %76

76:                                               ; preds = %.lr.ph62, %175
  %77 = phi i32 [ %.promoted25, %.lr.ph62 ], [ %176, %175 ]
  %.lcssa13.lcssa3060 = phi i32 [ %.promoted29, %.lr.ph62 ], [ %.lcssa13.lcssa, %175 ]
  %.lcssa215.lcssa3259 = phi i32 [ %.promoted31, %.lr.ph62 ], [ %.lcssa215.lcssa, %175 ]
  %.lcssa418.lcssa3358 = phi i32 [ %.promoted, %.lr.ph62 ], [ %.lcssa418.lcssa, %175 ]
  %.lcssa621.lcssa3557 = phi i32 [ %.promoted34, %.lr.ph62 ], [ %.lcssa621.lcssa, %175 ]
  %.lcssa824.lcssa3756 = phi i32 [ %.promoted36, %.lr.ph62 ], [ %.lcssa824.lcssa, %175 ]
  %78 = icmp eq i32 %77, 3
  %79 = icmp eq i32 %77, 4
  %80 = icmp eq i32 %77, 4
  %81 = icmp eq i32 %77, 4
  %82 = icmp eq i32 %77, 2
  %83 = load i32, ptr @listLength, align 4
  %84 = add nsw i32 %83, %60
  %85 = icmp slt i32 0, %84
  br i1 %85, label %.lr.ph48, label %174

.lr.ph48:                                         ; preds = %76
  br label %86

86:                                               ; preds = %.lr.ph48, %168
  %87 = phi i32 [ 0, %.lr.ph48 ], [ %170, %168 ]
  %.lcssa1346 = phi i32 [ %.lcssa13.lcssa3060, %.lr.ph48 ], [ %.lcssa12, %168 ]
  %.lcssa21545 = phi i32 [ %.lcssa215.lcssa3259, %.lr.ph48 ], [ %.lcssa214, %168 ]
  %.lcssa41844 = phi i32 [ %.lcssa418.lcssa3358, %.lr.ph48 ], [ %.lcssa417, %168 ]
  %.lcssa62143 = phi i32 [ %.lcssa621.lcssa3557, %.lr.ph48 ], [ %.lcssa620, %168 ]
  %.lcssa82442 = phi i32 [ %.lcssa824.lcssa3756, %.lr.ph48 ], [ %.lcssa823, %168 ]
  %88 = shl i32 1, %87
  %89 = and i32 %88, %61
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %168

92:                                               ; preds = %86
  %93 = sext i32 %87 to i64
  %94 = shl i32 1, %87
  %95 = or i32 %63, %94
  %96 = icmp slt i32 0, %87
  br i1 %96, label %.lr.ph, label %167

.lr.ph:                                           ; preds = %92
  br label %97

97:                                               ; preds = %.lr.ph, %159
  %98 = phi i32 [ 0, %.lr.ph ], [ %165, %159 ]
  %99 = phi i32 [ %.lcssa21545, %.lr.ph ], [ %164, %159 ]
  %100 = phi i32 [ %.lcssa41844, %.lr.ph ], [ %163, %159 ]
  %101 = phi i32 [ %.lcssa62143, %.lr.ph ], [ %162, %159 ]
  %102 = phi i32 [ %.lcssa82442, %.lr.ph ], [ %161, %159 ]
  %103 = shl i32 1, %98
  %104 = and i32 %103, %62
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %159

107:                                              ; preds = %97
  %108 = load ptr, ptr @workList, align 8
  %109 = getelementptr inbounds i32, ptr %108, i64 %93
  %110 = load i32, ptr %109, align 4
  %111 = load ptr, ptr @workList, align 8
  %112 = sext i32 %98 to i64
  %113 = getelementptr inbounds i32, ptr %111, i64 %112
  %114 = load i32, ptr %113, align 4
  br i1 %78, label %116, label %115

115:                                              ; preds = %107
  br i1 %79, label %116, label %121

116:                                              ; preds = %115, %107
  %117 = icmp eq i32 %110, 1
  br i1 %117, label %120, label %118

118:                                              ; preds = %116
  %119 = icmp eq i32 %114, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %118, %116
  br label %159

121:                                              ; preds = %118, %115
  %122 = icmp eq i32 %110, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %121
  %124 = icmp eq i32 %114, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %123, %121
  br label %159

126:                                              ; preds = %123
  br i1 %80, label %127, label %131

127:                                              ; preds = %126
  %128 = srem i32 %110, %114
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %159

131:                                              ; preds = %127, %126
  br i1 %81, label %133, label %132

132:                                              ; preds = %131
  br i1 %82, label %133, label %136

133:                                              ; preds = %132, %131
  %134 = icmp slt i32 %110, %114
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %135, %133, %132
  %137 = phi i32 [ %110, %135 ], [ %101, %133 ], [ %101, %132 ]
  %138 = phi i32 [ %110, %135 ], [ %114, %133 ], [ %114, %132 ]
  %139 = phi i32 [ %114, %135 ], [ %110, %133 ], [ %110, %132 ]
  %140 = shl i32 1, %98
  %141 = or i32 %95, %140
  %142 = load ptr, ptr @combList, align 8
  %143 = getelementptr inbounds %struct.Comb, ptr %142, i64 %65
  %144 = getelementptr inbounds nuw %struct.Comb, ptr %143, i32 0, i32 0
  store i32 %139, ptr %144, align 4
  %145 = load ptr, ptr @combList, align 8
  %146 = getelementptr inbounds %struct.Comb, ptr %145, i64 %67
  %147 = getelementptr inbounds nuw %struct.Comb, ptr %146, i32 0, i32 1
  store i32 %138, ptr %147, align 4
  %148 = load ptr, ptr @combList, align 8
  %149 = getelementptr inbounds %struct.Comb, ptr %148, i64 %69
  %150 = getelementptr inbounds nuw %struct.Comb, ptr %149, i32 0, i32 2
  store i32 %77, ptr %150, align 4
  %151 = load ptr, ptr @combList, align 8
  %152 = getelementptr inbounds %struct.Comb, ptr %151, i64 %71
  %153 = call i32 @calculate(ptr noundef %152)
  %154 = load ptr, ptr @workList, align 8
  %155 = load i32, ptr @listLength, align 4
  %156 = add nsw i32 %155, %72
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, ptr %154, i64 %157
  store i32 %153, ptr %158, align 4
  call void @recSearch(i32 noundef %74, i32 noundef %141)
  br label %159

159:                                              ; preds = %136, %130, %125, %120, %106
  %160 = phi i32 [ %98, %136 ], [ %98, %130 ], [ %98, %125 ], [ %98, %120 ], [ %98, %106 ]
  %161 = phi i32 [ %141, %136 ], [ %102, %130 ], [ %102, %125 ], [ %102, %120 ], [ %102, %106 ]
  %162 = phi i32 [ %137, %136 ], [ %101, %130 ], [ %101, %125 ], [ %101, %120 ], [ %101, %106 ]
  %163 = phi i32 [ %138, %136 ], [ %114, %130 ], [ %114, %125 ], [ %114, %120 ], [ %100, %106 ]
  %164 = phi i32 [ %139, %136 ], [ %110, %130 ], [ %110, %125 ], [ %110, %120 ], [ %99, %106 ]
  %165 = add nsw i32 %160, 1
  %166 = icmp slt i32 %165, %87
  br i1 %166, label %97, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %159
  %split = phi i32 [ %161, %159 ]
  %split38 = phi i32 [ %162, %159 ]
  %split39 = phi i32 [ %163, %159 ]
  %split40 = phi i32 [ %164, %159 ]
  %split41 = phi i32 [ %165, %159 ]
  br label %167

167:                                              ; preds = %._crit_edge, %92
  %.lcssa8 = phi i32 [ %split, %._crit_edge ], [ %.lcssa82442, %92 ]
  %.lcssa6 = phi i32 [ %split38, %._crit_edge ], [ %.lcssa62143, %92 ]
  %.lcssa4 = phi i32 [ %split39, %._crit_edge ], [ %.lcssa41844, %92 ]
  %.lcssa2 = phi i32 [ %split40, %._crit_edge ], [ %.lcssa21545, %92 ]
  %.lcssa = phi i32 [ %split41, %._crit_edge ], [ 0, %92 ]
  br label %168

168:                                              ; preds = %167, %91
  %169 = phi i32 [ %87, %167 ], [ %87, %91 ]
  %.lcssa823 = phi i32 [ %.lcssa8, %167 ], [ %.lcssa82442, %91 ]
  %.lcssa620 = phi i32 [ %.lcssa6, %167 ], [ %.lcssa62143, %91 ]
  %.lcssa417 = phi i32 [ %.lcssa4, %167 ], [ %.lcssa41844, %91 ]
  %.lcssa214 = phi i32 [ %.lcssa2, %167 ], [ %.lcssa21545, %91 ]
  %.lcssa12 = phi i32 [ %.lcssa, %167 ], [ %.lcssa1346, %91 ]
  %170 = add nsw i32 %169, 1
  %171 = load i32, ptr @listLength, align 4
  %172 = add nsw i32 %171, %60
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %86, label %._crit_edge49, !llvm.loop !14

._crit_edge49:                                    ; preds = %168
  %split50 = phi i32 [ %.lcssa823, %168 ]
  %split51 = phi i32 [ %.lcssa620, %168 ]
  %split52 = phi i32 [ %.lcssa417, %168 ]
  %split53 = phi i32 [ %.lcssa214, %168 ]
  %split54 = phi i32 [ %.lcssa12, %168 ]
  %split55 = phi i32 [ %170, %168 ]
  br label %174

174:                                              ; preds = %._crit_edge49, %76
  %.lcssa824.lcssa = phi i32 [ %split50, %._crit_edge49 ], [ %.lcssa824.lcssa3756, %76 ]
  %.lcssa621.lcssa = phi i32 [ %split51, %._crit_edge49 ], [ %.lcssa621.lcssa3557, %76 ]
  %.lcssa418.lcssa = phi i32 [ %split52, %._crit_edge49 ], [ %.lcssa418.lcssa3358, %76 ]
  %.lcssa215.lcssa = phi i32 [ %split53, %._crit_edge49 ], [ %.lcssa215.lcssa3259, %76 ]
  %.lcssa13.lcssa = phi i32 [ %split54, %._crit_edge49 ], [ %.lcssa13.lcssa3060, %76 ]
  %.lcssa10 = phi i32 [ %split55, %._crit_edge49 ], [ 0, %76 ]
  br label %175

175:                                              ; preds = %174
  %176 = add nsw i32 %77, 1
  %177 = icmp sle i32 %176, 4
  br i1 %177, label %76, label %._crit_edge63, !llvm.loop !15

._crit_edge63:                                    ; preds = %175
  %split64 = phi i32 [ %.lcssa824.lcssa, %175 ]
  %split65 = phi i32 [ %.lcssa621.lcssa, %175 ]
  %split66 = phi i32 [ %.lcssa418.lcssa, %175 ]
  %split67 = phi i32 [ %.lcssa215.lcssa, %175 ]
  %split68 = phi i32 [ %.lcssa13.lcssa, %175 ]
  %split69 = phi i32 [ %.lcssa10, %175 ]
  %split70 = phi i32 [ %176, %175 ]
  br label %178

178:                                              ; preds = %._crit_edge63, %59
  %.lcssa824.lcssa37.lcssa = phi i32 [ %split64, %._crit_edge63 ], [ %.promoted36, %59 ]
  %.lcssa621.lcssa35.lcssa = phi i32 [ %split65, %._crit_edge63 ], [ %.promoted34, %59 ]
  %.lcssa418.lcssa33.lcssa = phi i32 [ %split66, %._crit_edge63 ], [ %.promoted, %59 ]
  %.lcssa215.lcssa32.lcssa = phi i32 [ %split67, %._crit_edge63 ], [ %.promoted31, %59 ]
  %.lcssa13.lcssa30.lcssa = phi i32 [ %split68, %._crit_edge63 ], [ %.promoted29, %59 ]
  %.lcssa1028.lcssa = phi i32 [ %split69, %._crit_edge63 ], [ %.promoted27, %59 ]
  %.lcssa26 = phi i32 [ %split70, %._crit_edge63 ], [ %.promoted25, %59 ]
  store i32 %.lcssa26, ptr %5, align 4
  store i32 %.lcssa1028.lcssa, ptr %7, align 4
  store i32 %.lcssa13.lcssa30.lcssa, ptr %8, align 4
  store i32 %.lcssa215.lcssa32.lcssa, ptr %9, align 4
  store i32 %.lcssa418.lcssa33.lcssa, ptr %10, align 4
  store i32 %.lcssa621.lcssa35.lcssa, ptr %11, align 4
  store i32 %.lcssa824.lcssa37.lcssa, ptr %6, align 4
  br label %179

179:                                              ; preds = %178, %58, %14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = load i32, ptr @listLength, align 4
  %3 = load ptr, ptr @workList, align 8
  %4 = load i32, ptr @goal, align 4
  %5 = load i32, ptr @goal, align 4
  %6 = load ptr, ptr @workList, align 8
  %.promoted = load i32, ptr %1, align 4
  %best.promoted = load i32, ptr @best, align 4
  %7 = icmp slt i32 %.promoted, %2
  br i1 %7, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %0
  br label %8

8:                                                ; preds = %.lr.ph, %25
  %9 = phi i32 [ %.promoted, %.lr.ph ], [ %26, %25 ]
  %10 = phi i32 [ %best.promoted, %.lr.ph ], [ %24, %25 ]
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i32, ptr %3, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sub nsw i32 %13, %4
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = sub nsw i32 %10, %5
  %17 = call i32 @llvm.abs.i32(i32 %16, i1 true)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = sext i32 %9 to i64
  %21 = getelementptr inbounds i32, ptr %6, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr @best, align 4
  br label %23

23:                                               ; preds = %19, %8
  %24 = phi i32 [ %22, %19 ], [ %10, %8 ]
  br label %25

25:                                               ; preds = %23
  %26 = add nsw i32 %9, 1
  %27 = icmp slt i32 %26, %2
  br i1 %27, label %8, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %25
  %split = phi i32 [ %26, %25 ]
  br label %28

28:                                               ; preds = %._crit_edge, %0
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %0 ]
  store i32 %.lcssa, ptr %1, align 4
  %29 = load i32, ptr @best, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %55

34:                                               ; preds = %28
  store i32 1, ptr @dmax, align 4
  %35 = load i32, ptr @dmax, align 4
  %36 = load i32, ptr @listLength, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %34
  br label %38

38:                                               ; preds = %.lr.ph2, %43
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %39 = load i32, ptr @stopSearch, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %49

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr @dmax, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr @dmax, align 4
  %46 = load i32, ptr @dmax, align 4
  %47 = load i32, ptr @listLength, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %38, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %43
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %34
  br label %49

49:                                               ; preds = %.loopexit, %41
  %50 = load i32, ptr @stopSearch, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load ptr, ptr @solution, align 8
  %54 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %53, i32 noundef %54)
  br label %55

55:                                               ; preds = %52, %49, %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  %4 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  store i32 13, ptr %4, align 16
  %5 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 1
  store i32 32, ptr %5, align 4
  %6 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 2
  store i32 14, ptr %6, align 8
  %7 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 3
  store i32 1412, ptr %7, align 4
  %.promoted = load i32, ptr %2, align 4
  br label %8

8:                                                ; preds = %16, %0
  %9 = phi i32 [ %23, %16 ], [ %.promoted, %0 ]
  %10 = call i32 @getchar()
  %11 = icmp ne i32 %10, 10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = icmp ne i32 %10, -1
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i1 [ false, %8 ], [ %13, %12 ]
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = call ptr @__acrt_iob_func(i32 noundef 0)
  %18 = call i32 @ungetc(i32 noundef %10, ptr noundef %17)
  %19 = call ptr @__acrt_iob_func(i32 noundef 0)
  %20 = sext i32 %9 to i64
  %21 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %20
  %22 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %19, ptr noundef @.str.2, ptr noundef %21)
  %23 = add nsw i32 %9, 1
  br label %8, !llvm.loop !18

24:                                               ; preds = %14
  %.lcssa1 = phi i32 [ %9, %14 ]
  %.lcssa = phi i32 [ %10, %14 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa1, ptr %2, align 4
  %25 = load i32, ptr %2, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 4, ptr %2, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, ptr %2, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, ptr @listLength, align 4
  %31 = load i32, ptr @listLength, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr @goal, align 4
  %35 = load i32, ptr @listLength, align 4
  %36 = mul nsw i32 2, %35
  %37 = call ptr @newWorkList(i32 noundef %36)
  store ptr %37, ptr @workList, align 8
  %38 = load i32, ptr @listLength, align 4
  %39 = call ptr @newCombList(i32 noundef %38)
  store ptr %39, ptr @combList, align 8
  %40 = load i32, ptr @listLength, align 4
  %41 = call ptr @newCombList(i32 noundef %40)
  store ptr %41, ptr @solution, align 8
  %42 = load ptr, ptr @workList, align 8
  %43 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  %44 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %42, ptr noundef %43, i32 noundef %44)
  %45 = load ptr, ptr @combList, align 8
  %46 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %45, i32 noundef %46)
  %47 = load ptr, ptr @solution, align 8
  %48 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %47, i32 noundef %48)
  %49 = load i32, ptr @listLength, align 4
  ret i32 %49
}

declare dso_local i32 @getchar() #3

declare dso_local i32 @ungetc(i32 noundef, ptr noundef) #3

declare dso_local i32 @fscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @search() #0 {
  store i32 0, ptr @stopSearch, align 4
  store i32 0, ptr @nbNodes, align 4
  call void @doSearch()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %6 = call i32 @getInput()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @search()
  br label %9

9:                                                ; preds = %8, %2
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { allocsize(0,1) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c", directory: "E:/Phase Ordering/v3")
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
