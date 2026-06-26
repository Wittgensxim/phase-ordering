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
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %3
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %6, align 4
  %.promoted = load i32, ptr %7, align 4
  br label %14

14:                                               ; preds = %.lr.ph, %21
  %15 = phi i32 [ %.promoted, %.lr.ph ], [ %22, %21 ]
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %11, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds i32, ptr %12, i64 %19
  store i32 %18, ptr %20, align 4
  br label %21

21:                                               ; preds = %14
  %22 = add nsw i32 %15, 1
  %23 = icmp slt i32 %22, %13
  br i1 %23, label %14, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %21
  %.lcssa = phi i32 [ %22, %21 ]
  store i32 %.lcssa, ptr %7, align 4
  br label %24

24:                                               ; preds = %._crit_edge, %3
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
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %2
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %4, align 4
  %.promoted = load i32, ptr %5, align 4
  br label %11

11:                                               ; preds = %.lr.ph, %16
  %12 = phi i32 [ %.promoted, %.lr.ph ], [ %17, %16 ]
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.Comb, ptr %9, i64 %13
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 2
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %11
  %17 = add nsw i32 %12, 1
  %18 = icmp slt i32 %17, %10
  br i1 %18, label %11, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %16
  %.lcssa = phi i32 [ %17, %16 ]
  store i32 %.lcssa, ptr %5, align 4
  br label %19

19:                                               ; preds = %._crit_edge, %2
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
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %.lr.ph, label %44

.lr.ph:                                           ; preds = %3
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %6, align 4
  %.promoted = load i32, ptr %7, align 4
  br label %18

18:                                               ; preds = %.lr.ph, %41
  %19 = phi i32 [ %.promoted, %.lr.ph ], [ %42, %41 ]
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Comb, ptr %11, i64 %20
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %19 to i64
  %25 = getelementptr inbounds %struct.Comb, ptr %12, i64 %24
  %26 = getelementptr inbounds nuw %struct.Comb, ptr %25, i32 0, i32 0
  store i32 %23, ptr %26, align 4
  %27 = sext i32 %19 to i64
  %28 = getelementptr inbounds %struct.Comb, ptr %13, i64 %27
  %29 = getelementptr inbounds nuw %struct.Comb, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %19 to i64
  %32 = getelementptr inbounds %struct.Comb, ptr %14, i64 %31
  %33 = getelementptr inbounds nuw %struct.Comb, ptr %32, i32 0, i32 1
  store i32 %30, ptr %33, align 4
  %34 = sext i32 %19 to i64
  %35 = getelementptr inbounds %struct.Comb, ptr %15, i64 %34
  %36 = getelementptr inbounds nuw %struct.Comb, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = sext i32 %19 to i64
  %39 = getelementptr inbounds %struct.Comb, ptr %16, i64 %38
  %40 = getelementptr inbounds nuw %struct.Comb, ptr %39, i32 0, i32 2
  store i32 %37, ptr %40, align 4
  br label %41

41:                                               ; preds = %18
  %42 = add nsw i32 %19, 1
  %43 = icmp slt i32 %42, %17
  br i1 %43, label %18, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %41
  %.lcssa = phi i32 [ %42, %41 ]
  store i32 %.lcssa, ptr %7, align 4
  br label %44

44:                                               ; preds = %._crit_edge, %3
  %45 = load ptr, ptr %4, align 8
  %46 = load i32, ptr %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.Comb, ptr %45, i64 %47
  %49 = getelementptr inbounds nuw %struct.Comb, ptr %48, i32 0, i32 2
  store i32 0, ptr %49, align 4
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
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %.lr.ph, label %62

.lr.ph:                                           ; preds = %2
  %9 = load ptr, ptr %3, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %4, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load i32, ptr %4, align 4
  %.promoted = load i32, ptr %5, align 4
  br label %17

17:                                               ; preds = %.lr.ph, %59
  %18 = phi i32 [ %.promoted, %.lr.ph ], [ %60, %59 ]
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Comb, ptr %9, i64 %19
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 4
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %22)
  %24 = sext i32 %18 to i64
  %25 = getelementptr inbounds %struct.Comb, ptr %10, i64 %24
  %26 = getelementptr inbounds nuw %struct.Comb, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %38 [
    i32 0, label %28
    i32 1, label %30
    i32 2, label %32
    i32 3, label %34
    i32 4, label %36
  ]

28:                                               ; preds = %17
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %44

30:                                               ; preds = %17
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %44

32:                                               ; preds = %17
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %44

34:                                               ; preds = %17
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %44

36:                                               ; preds = %17
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %44

38:                                               ; preds = %17
  %39 = sext i32 %18 to i64
  %40 = getelementptr inbounds %struct.Comb, ptr %11, i64 %39
  %41 = getelementptr inbounds nuw %struct.Comb, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %42)
  br label %44

44:                                               ; preds = %38, %36, %34, %32, %30, %28
  %45 = sext i32 %18 to i64
  %46 = getelementptr inbounds %struct.Comb, ptr %12, i64 %45
  %47 = getelementptr inbounds nuw %struct.Comb, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = sext i32 %18 to i64
  %50 = getelementptr inbounds %struct.Comb, ptr %13, i64 %49
  %51 = call i32 @calculate(ptr noundef %50)
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %48, i32 noundef %51)
  %53 = icmp slt i32 %18, %15
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %58

56:                                               ; preds = %44
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %18, 1
  %61 = icmp slt i32 %60, %16
  br i1 %61, label %17, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %59
  %.lcssa = phi i32 [ %60, %59 ]
  store i32 %.lcssa, ptr %5, align 4
  br label %62

62:                                               ; preds = %._crit_edge, %2
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %3
  %11 = load i32, ptr %6, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %7, align 4
  br label %14

14:                                               ; preds = %.lr.ph, %25
  %15 = phi i32 [ %.promoted, %.lr.ph ], [ %26, %25 ]
  %16 = shl i32 1, %15
  %17 = and i32 %16, %11
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %25

20:                                               ; preds = %14
  %21 = sext i32 %15 to i64
  %22 = getelementptr inbounds i32, ptr %12, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %23)
  br label %25

25:                                               ; preds = %20, %19
  %26 = add nsw i32 %15, 1
  %27 = icmp slt i32 %26, %13
  br i1 %27, label %14, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %25
  %.lcssa = phi i32 [ %26, %25 ]
  store i32 %.lcssa, ptr %7, align 4
  br label %28

28:                                               ; preds = %._crit_edge, %3
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  %60 = load i32, ptr %5, align 4
  %61 = icmp sle i32 %60, 4
  br i1 %61, label %.lr.ph5, label %178

.lr.ph5:                                          ; preds = %59
  %62 = load i32, ptr %3, align 4
  %63 = load i32, ptr %4, align 4
  %64 = load i32, ptr %4, align 4
  %65 = load i32, ptr %4, align 4
  %66 = load i32, ptr %3, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32, ptr %3, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32, ptr %3, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32, ptr %3, align 4
  %73 = sext i32 %72 to i64
  %74 = load i32, ptr %3, align 4
  %75 = load i32, ptr %3, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, ptr %3, align 4
  %.promoted38 = load i32, ptr %5, align 4
  %.promoted40 = load i32, ptr %8, align 4
  %.promoted43 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %10, align 4
  %.promoted48 = load i32, ptr %11, align 4
  %.promoted51 = load i32, ptr %6, align 4
  br label %78

78:                                               ; preds = %.lr.ph5, %175
  %.lcssa1433.lcssa53 = phi i32 [ %.promoted51, %.lr.ph5 ], [ %.lcssa1433.lcssa52, %175 ]
  %.lcssa1229.lcssa50 = phi i32 [ %.promoted48, %.lr.ph5 ], [ %.lcssa1229.lcssa49, %175 ]
  %.lcssa1025.lcssa47 = phi i32 [ %.promoted, %.lr.ph5 ], [ %.lcssa1025.lcssa46, %175 ]
  %.lcssa821.lcssa45 = phi i32 [ %.promoted43, %.lr.ph5 ], [ %.lcssa821.lcssa44, %175 ]
  %.lcssa18.lcssa42 = phi i32 [ %.promoted40, %.lr.ph5 ], [ %.lcssa18.lcssa41, %175 ]
  %79 = phi i32 [ %.promoted38, %.lr.ph5 ], [ %176, %175 ]
  %80 = load i32, ptr @listLength, align 4
  %81 = add nsw i32 %80, %62
  %82 = icmp slt i32 0, %81
  br i1 %82, label %.lr.ph2, label %174

.lr.ph2:                                          ; preds = %78
  %83 = icmp eq i32 %79, 3
  %84 = icmp eq i32 %79, 4
  %85 = icmp eq i32 %79, 4
  %86 = icmp eq i32 %79, 4
  %87 = icmp eq i32 %79, 2
  br label %88

88:                                               ; preds = %.lr.ph2, %169
  %.lcssa1435 = phi i32 [ %.lcssa1433.lcssa53, %.lr.ph2 ], [ %.lcssa1433, %169 ]
  %.lcssa1231 = phi i32 [ %.lcssa1229.lcssa50, %.lr.ph2 ], [ %.lcssa1229, %169 ]
  %.lcssa1027 = phi i32 [ %.lcssa1025.lcssa47, %.lr.ph2 ], [ %.lcssa1025, %169 ]
  %.lcssa823 = phi i32 [ %.lcssa821.lcssa45, %.lr.ph2 ], [ %.lcssa821, %169 ]
  %.lcssa19 = phi i32 [ %.lcssa18.lcssa42, %.lr.ph2 ], [ %.lcssa18, %169 ]
  %89 = phi i32 [ 0, %.lr.ph2 ], [ %170, %169 ]
  %90 = shl i32 1, %89
  %91 = and i32 %90, %63
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %169

94:                                               ; preds = %88
  %95 = icmp slt i32 0, %89
  br i1 %95, label %.lr.ph, label %168

.lr.ph:                                           ; preds = %94
  %96 = sext i32 %89 to i64
  %97 = shl i32 1, %89
  %98 = or i32 %65, %97
  br label %99

99:                                               ; preds = %.lr.ph, %161
  %100 = phi i32 [ %.lcssa1435, %.lr.ph ], [ %162, %161 ]
  %101 = phi i32 [ %.lcssa1231, %.lr.ph ], [ %163, %161 ]
  %102 = phi i32 [ %.lcssa1027, %.lr.ph ], [ %164, %161 ]
  %103 = phi i32 [ %.lcssa823, %.lr.ph ], [ %165, %161 ]
  %104 = phi i32 [ 0, %.lr.ph ], [ %166, %161 ]
  %105 = shl i32 1, %104
  %106 = and i32 %105, %64
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %161

109:                                              ; preds = %99
  %110 = load ptr, ptr @workList, align 8
  %111 = getelementptr inbounds i32, ptr %110, i64 %96
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr @workList, align 8
  %114 = sext i32 %104 to i64
  %115 = getelementptr inbounds i32, ptr %113, i64 %114
  %116 = load i32, ptr %115, align 4
  br i1 %83, label %118, label %117

117:                                              ; preds = %109
  br i1 %84, label %118, label %123

118:                                              ; preds = %117, %109
  %119 = icmp eq i32 %112, 1
  br i1 %119, label %122, label %120

120:                                              ; preds = %118
  %121 = icmp eq i32 %116, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %120, %118
  br label %161

123:                                              ; preds = %120, %117
  %124 = icmp eq i32 %112, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %123
  %126 = icmp eq i32 %116, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %125, %123
  br label %161

128:                                              ; preds = %125
  br i1 %85, label %129, label %133

129:                                              ; preds = %128
  %130 = srem i32 %112, %116
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %161

133:                                              ; preds = %129, %128
  br i1 %86, label %135, label %134

134:                                              ; preds = %133
  br i1 %87, label %135, label %138

135:                                              ; preds = %134, %133
  %136 = icmp slt i32 %112, %116
  br i1 %136, label %137, label %138

137:                                              ; preds = %135
  br label %138

138:                                              ; preds = %137, %135, %134
  %139 = phi i32 [ %112, %137 ], [ %101, %135 ], [ %101, %134 ]
  %140 = phi i32 [ %112, %137 ], [ %116, %135 ], [ %116, %134 ]
  %141 = phi i32 [ %116, %137 ], [ %112, %135 ], [ %112, %134 ]
  %142 = shl i32 1, %104
  %143 = or i32 %98, %142
  %144 = load ptr, ptr @combList, align 8
  %145 = getelementptr inbounds %struct.Comb, ptr %144, i64 %67
  %146 = getelementptr inbounds nuw %struct.Comb, ptr %145, i32 0, i32 0
  store i32 %141, ptr %146, align 4
  %147 = load ptr, ptr @combList, align 8
  %148 = getelementptr inbounds %struct.Comb, ptr %147, i64 %69
  %149 = getelementptr inbounds nuw %struct.Comb, ptr %148, i32 0, i32 1
  store i32 %140, ptr %149, align 4
  %150 = load ptr, ptr @combList, align 8
  %151 = getelementptr inbounds %struct.Comb, ptr %150, i64 %71
  %152 = getelementptr inbounds nuw %struct.Comb, ptr %151, i32 0, i32 2
  store i32 %79, ptr %152, align 4
  %153 = load ptr, ptr @combList, align 8
  %154 = getelementptr inbounds %struct.Comb, ptr %153, i64 %73
  %155 = call i32 @calculate(ptr noundef %154)
  %156 = load ptr, ptr @workList, align 8
  %157 = load i32, ptr @listLength, align 4
  %158 = add nsw i32 %157, %74
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %156, i64 %159
  store i32 %155, ptr %160, align 4
  call void @recSearch(i32 noundef %76, i32 noundef %143)
  br label %161

161:                                              ; preds = %138, %132, %127, %122, %108
  %162 = phi i32 [ %143, %138 ], [ %100, %132 ], [ %100, %127 ], [ %100, %122 ], [ %100, %108 ]
  %163 = phi i32 [ %139, %138 ], [ %101, %132 ], [ %101, %127 ], [ %101, %122 ], [ %101, %108 ]
  %164 = phi i32 [ %140, %138 ], [ %116, %132 ], [ %116, %127 ], [ %116, %122 ], [ %102, %108 ]
  %165 = phi i32 [ %141, %138 ], [ %112, %132 ], [ %112, %127 ], [ %112, %122 ], [ %103, %108 ]
  %166 = add nsw i32 %104, 1
  %167 = icmp slt i32 %166, %89
  br i1 %167, label %99, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %161
  %.lcssa14 = phi i32 [ %162, %161 ]
  %.lcssa12 = phi i32 [ %163, %161 ]
  %.lcssa10 = phi i32 [ %164, %161 ]
  %.lcssa8 = phi i32 [ %165, %161 ]
  %.lcssa = phi i32 [ %166, %161 ]
  br label %168

168:                                              ; preds = %._crit_edge, %94
  %.lcssa1434 = phi i32 [ %.lcssa14, %._crit_edge ], [ %.lcssa1435, %94 ]
  %.lcssa1230 = phi i32 [ %.lcssa12, %._crit_edge ], [ %.lcssa1231, %94 ]
  %.lcssa1026 = phi i32 [ %.lcssa10, %._crit_edge ], [ %.lcssa1027, %94 ]
  %.lcssa822 = phi i32 [ %.lcssa8, %._crit_edge ], [ %.lcssa823, %94 ]
  %.lcssa20 = phi i32 [ %.lcssa, %._crit_edge ], [ 0, %94 ]
  br label %169

169:                                              ; preds = %168, %93
  %.lcssa1433 = phi i32 [ %.lcssa1434, %168 ], [ %.lcssa1435, %93 ]
  %.lcssa1229 = phi i32 [ %.lcssa1230, %168 ], [ %.lcssa1231, %93 ]
  %.lcssa1025 = phi i32 [ %.lcssa1026, %168 ], [ %.lcssa1027, %93 ]
  %.lcssa821 = phi i32 [ %.lcssa822, %168 ], [ %.lcssa823, %93 ]
  %.lcssa18 = phi i32 [ %.lcssa20, %168 ], [ %.lcssa19, %93 ]
  %170 = add nsw i32 %89, 1
  %171 = load i32, ptr @listLength, align 4
  %172 = add nsw i32 %171, %77
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %88, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %169
  %.lcssa1433.lcssa = phi i32 [ %.lcssa1433, %169 ]
  %.lcssa1229.lcssa = phi i32 [ %.lcssa1229, %169 ]
  %.lcssa1025.lcssa = phi i32 [ %.lcssa1025, %169 ]
  %.lcssa821.lcssa = phi i32 [ %.lcssa821, %169 ]
  %.lcssa18.lcssa = phi i32 [ %.lcssa18, %169 ]
  %.lcssa16 = phi i32 [ %170, %169 ]
  br label %174

174:                                              ; preds = %._crit_edge3, %78
  %.lcssa1433.lcssa52 = phi i32 [ %.lcssa1433.lcssa, %._crit_edge3 ], [ %.lcssa1433.lcssa53, %78 ]
  %.lcssa1229.lcssa49 = phi i32 [ %.lcssa1229.lcssa, %._crit_edge3 ], [ %.lcssa1229.lcssa50, %78 ]
  %.lcssa1025.lcssa46 = phi i32 [ %.lcssa1025.lcssa, %._crit_edge3 ], [ %.lcssa1025.lcssa47, %78 ]
  %.lcssa821.lcssa44 = phi i32 [ %.lcssa821.lcssa, %._crit_edge3 ], [ %.lcssa821.lcssa45, %78 ]
  %.lcssa18.lcssa41 = phi i32 [ %.lcssa18.lcssa, %._crit_edge3 ], [ %.lcssa18.lcssa42, %78 ]
  %.lcssa1637 = phi i32 [ %.lcssa16, %._crit_edge3 ], [ 0, %78 ]
  br label %175

175:                                              ; preds = %174
  %176 = add nsw i32 %79, 1
  %177 = icmp sle i32 %176, 4
  br i1 %177, label %78, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %175
  %.lcssa1433.lcssa52.lcssa = phi i32 [ %.lcssa1433.lcssa52, %175 ]
  %.lcssa1229.lcssa49.lcssa = phi i32 [ %.lcssa1229.lcssa49, %175 ]
  %.lcssa1025.lcssa46.lcssa = phi i32 [ %.lcssa1025.lcssa46, %175 ]
  %.lcssa821.lcssa44.lcssa = phi i32 [ %.lcssa821.lcssa44, %175 ]
  %.lcssa18.lcssa41.lcssa = phi i32 [ %.lcssa18.lcssa41, %175 ]
  %.lcssa39 = phi i32 [ %176, %175 ]
  %.lcssa1637.lcssa = phi i32 [ %.lcssa1637, %175 ]
  store i32 %.lcssa1637.lcssa, ptr %7, align 4
  store i32 %.lcssa39, ptr %5, align 4
  store i32 %.lcssa18.lcssa41.lcssa, ptr %8, align 4
  store i32 %.lcssa821.lcssa44.lcssa, ptr %9, align 4
  store i32 %.lcssa1025.lcssa46.lcssa, ptr %10, align 4
  store i32 %.lcssa1229.lcssa49.lcssa, ptr %11, align 4
  store i32 %.lcssa1433.lcssa52.lcssa, ptr %6, align 4
  br label %178

178:                                              ; preds = %._crit_edge6, %59
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
  %2 = load i32, ptr %1, align 4
  %3 = load i32, ptr @listLength, align 4
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %0
  %5 = load ptr, ptr @workList, align 8
  %6 = load i32, ptr @goal, align 4
  %7 = load i32, ptr @goal, align 4
  %8 = load ptr, ptr @workList, align 8
  %9 = load i32, ptr @listLength, align 4
  %.promoted = load i32, ptr %1, align 4
  %best.promoted = load i32, ptr @best, align 4
  br label %10

10:                                               ; preds = %.lr.ph, %27
  %11 = phi i32 [ %best.promoted, %.lr.ph ], [ %26, %27 ]
  %12 = phi i32 [ %.promoted, %.lr.ph ], [ %28, %27 ]
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %5, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = sub nsw i32 %15, %6
  %17 = call i32 @llvm.abs.i32(i32 %16, i1 true)
  %18 = sub nsw i32 %11, %7
  %19 = call i32 @llvm.abs.i32(i32 %18, i1 true)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = sext i32 %12 to i64
  %23 = getelementptr inbounds i32, ptr %8, i64 %22
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr @best, align 4
  br label %25

25:                                               ; preds = %21, %10
  %26 = phi i32 [ %24, %21 ], [ %11, %10 ]
  br label %27

27:                                               ; preds = %25
  %28 = add nsw i32 %12, 1
  %29 = icmp slt i32 %28, %9
  br i1 %29, label %10, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %27
  %.lcssa = phi i32 [ %28, %27 ]
  store i32 %.lcssa, ptr %1, align 4
  br label %30

30:                                               ; preds = %._crit_edge, %0
  %31 = load i32, ptr @best, align 4
  %32 = load i32, ptr @goal, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %57

36:                                               ; preds = %30
  store i32 1, ptr @dmax, align 4
  %37 = load i32, ptr @dmax, align 4
  %38 = load i32, ptr @listLength, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %36
  br label %40

40:                                               ; preds = %.lr.ph2, %45
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %41 = load i32, ptr @stopSearch, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %51

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr @dmax, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr @dmax, align 4
  %48 = load i32, ptr @dmax, align 4
  %49 = load i32, ptr @listLength, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %40, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %45
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %36
  br label %51

51:                                               ; preds = %.loopexit, %43
  %52 = load i32, ptr @stopSearch, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load ptr, ptr @solution, align 8
  %56 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %55, i32 noundef %56)
  br label %57

57:                                               ; preds = %54, %51, %34
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
