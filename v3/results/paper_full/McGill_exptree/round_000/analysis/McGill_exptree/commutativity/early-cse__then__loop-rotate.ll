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
  %4 = sext i32 %0 to i64
  %5 = call ptr @calloc(i64 noundef %4, i64 noundef 4) #6
  store ptr %5, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  ret ptr %5

8:                                                ; preds = %1
  %9 = call ptr @__acrt_iob_func(i32 noundef 2)
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str) #7
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
  %4 = sext i32 %0 to i64
  %5 = call ptr @calloc(i64 noundef %4, i64 noundef 12) #6
  store ptr %5, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  ret ptr %5

8:                                                ; preds = %1
  %9 = call ptr @__acrt_iob_func(i32 noundef 2)
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.1) #7
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
  br i1 %10, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %19
  %12 = phi i32 [ %8, %.lr.ph ], [ %22, %19 ]
  %13 = load ptr, ptr %5, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 %14
  store i32 %16, ptr %18, align 4
  br label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %7, align 4
  %22 = load i32, ptr %7, align 4
  %23 = load i32, ptr %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %11, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %19
  br label %25

25:                                               ; preds = %._crit_edge, %3
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
  br i1 %8, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %15
  %10 = phi i32 [ %6, %.lr.ph ], [ %18, %15 ]
  %11 = load ptr, ptr %3, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %11, i64 %12
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 2
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %5, align 4
  %18 = load i32, ptr %5, align 4
  %19 = load i32, ptr %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %9, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  br label %21

21:                                               ; preds = %._crit_edge, %2
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
  br i1 %10, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %37
  %12 = phi i32 [ %8, %.lr.ph ], [ %40, %37 ]
  %13 = load ptr, ptr %5, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds %struct.Comb, ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.Comb, ptr %17, i64 %14
  store i32 %16, ptr %18, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Comb, ptr %19, i64 %21
  %23 = getelementptr inbounds nuw %struct.Comb, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.Comb, ptr %25, i64 %21
  %27 = getelementptr inbounds nuw %struct.Comb, ptr %26, i32 0, i32 1
  store i32 %24, ptr %27, align 4
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.Comb, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw %struct.Comb, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.Comb, ptr %34, i64 %30
  %36 = getelementptr inbounds nuw %struct.Comb, ptr %35, i32 0, i32 2
  store i32 %33, ptr %36, align 4
  br label %37

37:                                               ; preds = %11
  %38 = load i32, ptr %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %7, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load i32, ptr %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %11, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %37
  %split = phi i32 [ %41, %37 ]
  br label %43

43:                                               ; preds = %._crit_edge, %3
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %9, %3 ]
  %44 = load ptr, ptr %4, align 8
  %45 = sext i32 %.lcssa to i64
  %46 = getelementptr inbounds %struct.Comb, ptr %44, i64 %45
  %47 = getelementptr inbounds nuw %struct.Comb, ptr %46, i32 0, i32 2
  store i32 0, ptr %47, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %26 [
    i32 1, label %6
    i32 2, label %11
    i32 3, label %16
    i32 4, label %21
  ]

6:                                                ; preds = %1
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %7, %9
  store i32 %10, ptr %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load i32, ptr %0, align 4
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub nsw i32 %12, %14
  store i32 %15, ptr %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load i32, ptr %0, align 4
  %18 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = mul nsw i32 %17, %19
  store i32 %20, ptr %2, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load i32, ptr %0, align 4
  %23 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = sdiv i32 %22, %24
  store i32 %25, ptr %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %27

27:                                               ; preds = %26, %21, %16, %11, %6
  %28 = load i32, ptr %2, align 4
  ret i32 %28
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
  br i1 %8, label %.lr.ph, label %58

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %52
  %10 = phi i32 [ %6, %.lr.ph ], [ %55, %52 ]
  %11 = load ptr, ptr %3, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %14)
  %16 = load ptr, ptr %3, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.Comb, ptr %16, i64 %18
  %20 = getelementptr inbounds nuw %struct.Comb, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %32 [
    i32 0, label %22
    i32 1, label %24
    i32 2, label %26
    i32 3, label %28
    i32 4, label %30
  ]

22:                                               ; preds = %9
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %34

24:                                               ; preds = %9
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %34

26:                                               ; preds = %9
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %34

28:                                               ; preds = %9
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %34

30:                                               ; preds = %9
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %34

32:                                               ; preds = %9
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %21)
  br label %34

34:                                               ; preds = %32, %30, %28, %26, %24, %22
  %35 = load ptr, ptr %3, align 8
  %36 = load i32, ptr %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.Comb, ptr %35, i64 %37
  %39 = getelementptr inbounds nuw %struct.Comb, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @calculate(ptr noundef %38)
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %40, i32 noundef %41)
  %43 = load i32, ptr %5, align 4
  %44 = load i32, ptr %4, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %51

49:                                               ; preds = %34
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %5, align 4
  %55 = load i32, ptr %5, align 4
  %56 = load i32, ptr %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %9, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %52
  br label %58

58:                                               ; preds = %._crit_edge, %2
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br i1 %10, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %24
  %12 = phi i32 [ %8, %.lr.ph ], [ %27, %24 ]
  %13 = shl i32 1, %12
  %14 = load i32, ptr %6, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %24

18:                                               ; preds = %11
  %19 = load ptr, ptr %4, align 8
  %20 = sext i32 %12 to i64
  %21 = getelementptr inbounds i32, ptr %19, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %22)
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i32, ptr %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %7, align 4
  %27 = load i32, ptr %7, align 4
  %28 = load i32, ptr %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %11, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %24
  br label %30

30:                                               ; preds = %._crit_edge, %3
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br label %185

15:                                               ; preds = %2
  %16 = load i32, ptr @nbNodes, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @nbNodes, align 4
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr @dmax, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = load ptr, ptr @workList, align 8
  %23 = load i32, ptr @listLength, align 4
  %24 = add nsw i32 %23, %18
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %22, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @llvm.abs.i32(i32 %30, i1 true)
  %32 = load i32, ptr @best, align 4
  %33 = sub nsw i32 %32, %29
  %34 = call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %21
  store i32 %28, ptr @best, align 4
  %37 = load i32, ptr %3, align 4
  store i32 %37, ptr @bestDepth, align 4
  %38 = load ptr, ptr @solution, align 8
  %39 = load ptr, ptr @combList, align 8
  %40 = load i32, ptr %3, align 4
  call void @saveSolution(ptr noundef %38, ptr noundef %39, i32 noundef %40)
  %41 = load i32, ptr @best, align 4
  %42 = load i32, ptr @goal, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load ptr, ptr @combList, align 8
  %46 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %45, i32 noundef %46)
  store i32 1, ptr @stopSearch, align 4
  br label %47

47:                                               ; preds = %44, %36
  br label %48

48:                                               ; preds = %47, %21
  br label %185

49:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  %50 = load i32, ptr %5, align 4
  %51 = icmp sle i32 %50, 4
  br i1 %51, label %.lr.ph5, label %184

.lr.ph5:                                          ; preds = %49
  br label %52

52:                                               ; preds = %.lr.ph5, %179
  store i32 0, ptr %7, align 4
  %53 = load i32, ptr %7, align 4
  %54 = load i32, ptr @listLength, align 4
  %55 = load i32, ptr %3, align 4
  %56 = add nsw i32 %54, %55
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %.lr.ph2, label %178

.lr.ph2:                                          ; preds = %52
  br label %58

58:                                               ; preds = %.lr.ph2, %170
  %59 = phi i32 [ %53, %.lr.ph2 ], [ %173, %170 ]
  %60 = shl i32 1, %59
  %61 = load i32, ptr %4, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %170

65:                                               ; preds = %58
  store i32 0, ptr %8, align 4
  %66 = load i32, ptr %8, align 4
  %67 = load i32, ptr %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %.lr.ph, label %169

.lr.ph:                                           ; preds = %65
  br label %69

69:                                               ; preds = %.lr.ph, %163
  %70 = phi i32 [ %67, %.lr.ph ], [ %167, %163 ]
  %71 = phi i32 [ %66, %.lr.ph ], [ %166, %163 ]
  %72 = shl i32 1, %71
  %73 = load i32, ptr %4, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %163

77:                                               ; preds = %69
  %78 = load ptr, ptr @workList, align 8
  %79 = sext i32 %70 to i64
  %80 = getelementptr inbounds i32, ptr %78, i64 %79
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %9, align 4
  %82 = load ptr, ptr @workList, align 8
  %83 = load i32, ptr %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %82, i64 %84
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %10, align 4
  %87 = load i32, ptr %5, align 4
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %91, label %89

89:                                               ; preds = %77
  %90 = icmp eq i32 %87, 4
  br i1 %90, label %91, label %98

91:                                               ; preds = %89, %77
  %92 = load i32, ptr %9, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %10, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %91
  br label %163

98:                                               ; preds = %94, %89
  %99 = load i32, ptr %9, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %10, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %98
  br label %163

105:                                              ; preds = %101
  %106 = load i32, ptr %5, align 4
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = srem i32 %99, %102
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %163

112:                                              ; preds = %108, %105
  %113 = load i32, ptr %5, align 4
  %114 = icmp eq i32 %113, 4
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = icmp eq i32 %113, 2
  br i1 %116, label %117, label %124

117:                                              ; preds = %115, %112
  %118 = load i32, ptr %9, align 4
  %119 = load i32, ptr %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  store i32 %118, ptr %11, align 4
  %122 = load i32, ptr %10, align 4
  store i32 %122, ptr %9, align 4
  %123 = load i32, ptr %11, align 4
  store i32 %123, ptr %10, align 4
  br label %124

124:                                              ; preds = %121, %117, %115
  %125 = load i32, ptr %4, align 4
  %126 = load i32, ptr %7, align 4
  %127 = shl i32 1, %126
  %128 = or i32 %125, %127
  %129 = load i32, ptr %8, align 4
  %130 = shl i32 1, %129
  %131 = or i32 %128, %130
  store i32 %131, ptr %6, align 4
  %132 = load i32, ptr %9, align 4
  %133 = load ptr, ptr @combList, align 8
  %134 = load i32, ptr %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.Comb, ptr %133, i64 %135
  store i32 %132, ptr %136, align 4
  %137 = load i32, ptr %10, align 4
  %138 = load ptr, ptr @combList, align 8
  %139 = load i32, ptr %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.Comb, ptr %138, i64 %140
  %142 = getelementptr inbounds nuw %struct.Comb, ptr %141, i32 0, i32 1
  store i32 %137, ptr %142, align 4
  %143 = load i32, ptr %5, align 4
  %144 = load ptr, ptr @combList, align 8
  %145 = load i32, ptr %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.Comb, ptr %144, i64 %146
  %148 = getelementptr inbounds nuw %struct.Comb, ptr %147, i32 0, i32 2
  store i32 %143, ptr %148, align 4
  %149 = load ptr, ptr @combList, align 8
  %150 = load i32, ptr %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.Comb, ptr %149, i64 %151
  %153 = call i32 @calculate(ptr noundef %152)
  %154 = load ptr, ptr @workList, align 8
  %155 = load i32, ptr @listLength, align 4
  %156 = load i32, ptr %3, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %154, i64 %158
  store i32 %153, ptr %159, align 4
  %160 = load i32, ptr %3, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32, ptr %6, align 4
  call void @recSearch(i32 noundef %161, i32 noundef %162)
  br label %163

163:                                              ; preds = %124, %111, %104, %97, %76
  %164 = load i32, ptr %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %8, align 4
  %166 = load i32, ptr %8, align 4
  %167 = load i32, ptr %7, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %69, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %163
  br label %169

169:                                              ; preds = %._crit_edge, %65
  br label %170

170:                                              ; preds = %169, %64
  %171 = load i32, ptr %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr %7, align 4
  %173 = load i32, ptr %7, align 4
  %174 = load i32, ptr @listLength, align 4
  %175 = load i32, ptr %3, align 4
  %176 = add nsw i32 %174, %175
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %58, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %170
  br label %178

178:                                              ; preds = %._crit_edge3, %52
  br label %179

179:                                              ; preds = %178
  %180 = load i32, ptr %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, ptr %5, align 4
  %182 = load i32, ptr %5, align 4
  %183 = icmp sle i32 %182, 4
  br i1 %183, label %52, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %179
  br label %184

184:                                              ; preds = %._crit_edge6, %49
  br label %185

185:                                              ; preds = %184, %48, %14
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
  br i1 %4, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %20
  %6 = phi i32 [ %2, %.lr.ph ], [ %23, %20 ]
  %7 = load ptr, ptr @workList, align 8
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @goal, align 4
  %12 = sub nsw i32 %10, %11
  %13 = call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = load i32, ptr @best, align 4
  %15 = sub nsw i32 %14, %11
  %16 = call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 %10, ptr @best, align 4
  br label %19

19:                                               ; preds = %18, %5
  br label %20

20:                                               ; preds = %19
  %21 = load i32, ptr %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %1, align 4
  %23 = load i32, ptr %1, align 4
  %24 = load i32, ptr @listLength, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %5, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %20
  br label %26

26:                                               ; preds = %._crit_edge, %0
  %27 = load i32, ptr @best, align 4
  %28 = load i32, ptr @goal, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %53

32:                                               ; preds = %26
  store i32 1, ptr @dmax, align 4
  %33 = load i32, ptr @dmax, align 4
  %34 = load i32, ptr @listLength, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %32
  br label %36

36:                                               ; preds = %.lr.ph2, %41
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %37 = load i32, ptr @stopSearch, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %47

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr @dmax, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @dmax, align 4
  %44 = load i32, ptr @dmax, align 4
  %45 = load i32, ptr @listLength, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %36, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %41
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %32
  br label %47

47:                                               ; preds = %.loopexit, %39
  %48 = load i32, ptr @stopSearch, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load ptr, ptr @solution, align 8
  %52 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %51, i32 noundef %52)
  br label %53

53:                                               ; preds = %50, %47, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  store i32 13, ptr %1, align 16
  %4 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 1
  store i32 32, ptr %4, align 4
  %5 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 2
  store i32 14, ptr %5, align 8
  %6 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 3
  store i32 1412, ptr %6, align 4
  br label %7

7:                                                ; preds = %14, %0
  %8 = call i32 @getchar()
  store i32 %8, ptr %3, align 4
  %9 = icmp ne i32 %8, 10
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = icmp ne i32 %8, -1
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i1 [ false, %7 ], [ %11, %10 ]
  br i1 %13, label %14, label %25

14:                                               ; preds = %12
  %15 = load i32, ptr %3, align 4
  %16 = call ptr @__acrt_iob_func(i32 noundef 0)
  %17 = call i32 @ungetc(i32 noundef %15, ptr noundef %16)
  %18 = call ptr @__acrt_iob_func(i32 noundef 0)
  %19 = load i32, ptr %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %20
  %22 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %18, ptr noundef @.str.2, ptr noundef %21)
  %23 = load i32, ptr %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %2, align 4
  br label %7, !llvm.loop !18

25:                                               ; preds = %12
  %26 = load i32, ptr %2, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 4, ptr %2, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, ptr %2, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, ptr @listLength, align 4
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
  %43 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %42, ptr noundef %1, i32 noundef %43)
  %44 = load ptr, ptr @combList, align 8
  %45 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %44, i32 noundef %45)
  %46 = load ptr, ptr @solution, align 8
  %47 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %46, i32 noundef %47)
  %48 = load i32, ptr @listLength, align 4
  ret i32 %48
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
