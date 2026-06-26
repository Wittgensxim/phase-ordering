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
  br label %11

11:                                               ; preds = %20, %3
  %12 = phi i32 [ %21, %20 ], [ %.promoted, %3 ]
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i32, ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %10, i64 %18
  store i32 %17, ptr %19, align 4
  br label %20

20:                                               ; preds = %14
  %21 = add nsw i32 %12, 1
  br label %11, !llvm.loop !7

22:                                               ; preds = %11
  %.lcssa = phi i32 [ %12, %11 ]
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
  br label %8

8:                                                ; preds = %15, %2
  %9 = phi i32 [ %16, %15 ], [ %.promoted, %2 ]
  %10 = icmp slt i32 %9, %6
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %7, i64 %12
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 2
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11
  %16 = add nsw i32 %9, 1
  br label %8, !llvm.loop !9

17:                                               ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
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
  br label %15

15:                                               ; preds = %40, %3
  %16 = phi i32 [ %41, %40 ], [ %.promoted, %3 ]
  %17 = icmp slt i32 %16, %8
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %struct.Comb, ptr %9, i64 %19
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds %struct.Comb, ptr %10, i64 %23
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %24, i32 0, i32 0
  store i32 %22, ptr %25, align 4
  %26 = sext i32 %16 to i64
  %27 = getelementptr inbounds %struct.Comb, ptr %11, i64 %26
  %28 = getelementptr inbounds nuw %struct.Comb, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %16 to i64
  %31 = getelementptr inbounds %struct.Comb, ptr %12, i64 %30
  %32 = getelementptr inbounds nuw %struct.Comb, ptr %31, i32 0, i32 1
  store i32 %29, ptr %32, align 4
  %33 = sext i32 %16 to i64
  %34 = getelementptr inbounds %struct.Comb, ptr %13, i64 %33
  %35 = getelementptr inbounds nuw %struct.Comb, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %16 to i64
  %38 = getelementptr inbounds %struct.Comb, ptr %14, i64 %37
  %39 = getelementptr inbounds nuw %struct.Comb, ptr %38, i32 0, i32 2
  store i32 %36, ptr %39, align 4
  br label %40

40:                                               ; preds = %18
  %41 = add nsw i32 %16, 1
  br label %15, !llvm.loop !10

42:                                               ; preds = %15
  %.lcssa = phi i32 [ %16, %15 ]
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
  %14 = add nsw i32 %13, %10
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
  %30 = mul nsw i32 %29, %26
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
  br label %14

14:                                               ; preds = %58, %2
  %15 = phi i32 [ %59, %58 ], [ %.promoted, %2 ]
  %16 = icmp slt i32 %15, %6
  br i1 %16, label %17, label %60

17:                                               ; preds = %14
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds %struct.Comb, ptr %7, i64 %18
  %20 = getelementptr inbounds nuw %struct.Comb, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %21)
  %23 = sext i32 %15 to i64
  %24 = getelementptr inbounds %struct.Comb, ptr %8, i64 %23
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %37 [
    i32 0, label %27
    i32 1, label %29
    i32 2, label %31
    i32 3, label %33
    i32 4, label %35
  ]

27:                                               ; preds = %17
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %43

29:                                               ; preds = %17
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %43

31:                                               ; preds = %17
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %43

33:                                               ; preds = %17
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %43

35:                                               ; preds = %17
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %43

37:                                               ; preds = %17
  %38 = sext i32 %15 to i64
  %39 = getelementptr inbounds %struct.Comb, ptr %9, i64 %38
  %40 = getelementptr inbounds nuw %struct.Comb, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %41)
  br label %43

43:                                               ; preds = %37, %35, %33, %31, %29, %27
  %44 = sext i32 %15 to i64
  %45 = getelementptr inbounds %struct.Comb, ptr %10, i64 %44
  %46 = getelementptr inbounds nuw %struct.Comb, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = sext i32 %15 to i64
  %49 = getelementptr inbounds %struct.Comb, ptr %11, i64 %48
  %50 = call i32 @calculate(ptr noundef %49)
  %51 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %47, i32 noundef %50)
  %52 = icmp slt i32 %15, %13
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %57

55:                                               ; preds = %43
  %56 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %57

57:                                               ; preds = %55, %53
  br label %58

58:                                               ; preds = %57
  %59 = add nsw i32 %15, 1
  br label %14, !llvm.loop !11

60:                                               ; preds = %14
  %.lcssa = phi i32 [ %15, %14 ]
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
  br label %11

11:                                               ; preds = %24, %3
  %12 = phi i32 [ %25, %24 ], [ %.promoted, %3 ]
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = shl i32 1, %12
  %16 = and i32 %15, %9
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %24

19:                                               ; preds = %14
  %20 = sext i32 %12 to i64
  %21 = getelementptr inbounds i32, ptr %10, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %22)
  br label %24

24:                                               ; preds = %19, %18
  %25 = add nsw i32 %12, 1
  br label %11, !llvm.loop !12

26:                                               ; preds = %11
  %.lcssa = phi i32 [ %12, %11 ]
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
  br label %175

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
  %25 = add i32 %23, -1
  %26 = add i32 %25, %24
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
  %42 = add i32 %40, -1
  %43 = add i32 %42, %41
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
  br label %175

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
  br label %75

75:                                               ; preds = %172, %59
  %.lcssa824.lcssa37 = phi i32 [ %.lcssa824.lcssa, %172 ], [ %.promoted36, %59 ]
  %.lcssa621.lcssa35 = phi i32 [ %.lcssa621.lcssa, %172 ], [ %.promoted34, %59 ]
  %.lcssa418.lcssa33 = phi i32 [ %.lcssa418.lcssa, %172 ], [ %.promoted, %59 ]
  %.lcssa215.lcssa32 = phi i32 [ %.lcssa215.lcssa, %172 ], [ %.promoted31, %59 ]
  %.lcssa13.lcssa30 = phi i32 [ %.lcssa13.lcssa, %172 ], [ %.promoted29, %59 ]
  %.lcssa1028 = phi i32 [ %.lcssa10, %172 ], [ %.promoted27, %59 ]
  %76 = phi i32 [ %173, %172 ], [ %.promoted25, %59 ]
  %77 = icmp sle i32 %76, 4
  br i1 %77, label %78, label %174

78:                                               ; preds = %75
  %79 = icmp eq i32 %76, 3
  %80 = icmp eq i32 %76, 4
  %81 = icmp eq i32 %76, 4
  %82 = icmp eq i32 %76, 4
  %83 = icmp eq i32 %76, 2
  br label %84

84:                                               ; preds = %169, %78
  %.lcssa824 = phi i32 [ %.lcssa823, %169 ], [ %.lcssa824.lcssa37, %78 ]
  %.lcssa621 = phi i32 [ %.lcssa620, %169 ], [ %.lcssa621.lcssa35, %78 ]
  %.lcssa418 = phi i32 [ %.lcssa417, %169 ], [ %.lcssa418.lcssa33, %78 ]
  %.lcssa215 = phi i32 [ %.lcssa214, %169 ], [ %.lcssa215.lcssa32, %78 ]
  %.lcssa13 = phi i32 [ %.lcssa12, %169 ], [ %.lcssa13.lcssa30, %78 ]
  %85 = phi i32 [ %170, %169 ], [ 0, %78 ]
  %86 = load i32, ptr @listLength, align 4
  %87 = add nsw i32 %60, %86
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %171

89:                                               ; preds = %84
  %90 = shl i32 1, %85
  %91 = and i32 %90, %61
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %169

94:                                               ; preds = %89
  %95 = sext i32 %85 to i64
  %96 = shl i32 1, %85
  %97 = or i32 %96, %63
  br label %98

98:                                               ; preds = %162, %94
  %99 = phi i32 [ %163, %162 ], [ %.lcssa824, %94 ]
  %100 = phi i32 [ %164, %162 ], [ %.lcssa621, %94 ]
  %101 = phi i32 [ %165, %162 ], [ %.lcssa418, %94 ]
  %102 = phi i32 [ %166, %162 ], [ %.lcssa215, %94 ]
  %103 = phi i32 [ %167, %162 ], [ 0, %94 ]
  %104 = icmp slt i32 %103, %85
  br i1 %104, label %105, label %168

105:                                              ; preds = %98
  %106 = shl i32 1, %103
  %107 = and i32 %106, %62
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %162

110:                                              ; preds = %105
  %111 = load ptr, ptr @workList, align 8
  %112 = getelementptr inbounds i32, ptr %111, i64 %95
  %113 = load i32, ptr %112, align 4
  %114 = load ptr, ptr @workList, align 8
  %115 = sext i32 %103 to i64
  %116 = getelementptr inbounds i32, ptr %114, i64 %115
  %117 = load i32, ptr %116, align 4
  br i1 %79, label %119, label %118

118:                                              ; preds = %110
  br i1 %80, label %119, label %124

119:                                              ; preds = %118, %110
  %120 = icmp eq i32 %113, 1
  br i1 %120, label %123, label %121

121:                                              ; preds = %119
  %122 = icmp eq i32 %117, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %121, %119
  br label %162

124:                                              ; preds = %121, %118
  %125 = icmp eq i32 %113, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %124
  %127 = icmp eq i32 %117, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %126, %124
  br label %162

129:                                              ; preds = %126
  br i1 %81, label %130, label %134

130:                                              ; preds = %129
  %131 = srem i32 %113, %117
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %162

134:                                              ; preds = %130, %129
  br i1 %82, label %136, label %135

135:                                              ; preds = %134
  br i1 %83, label %136, label %139

136:                                              ; preds = %135, %134
  %137 = icmp slt i32 %113, %117
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  br label %139

139:                                              ; preds = %138, %136, %135
  %140 = phi i32 [ %113, %138 ], [ %100, %136 ], [ %100, %135 ]
  %141 = phi i32 [ %113, %138 ], [ %117, %136 ], [ %117, %135 ]
  %142 = phi i32 [ %117, %138 ], [ %113, %136 ], [ %113, %135 ]
  %143 = shl i32 1, %103
  %144 = or i32 %97, %143
  %145 = load ptr, ptr @combList, align 8
  %146 = getelementptr inbounds %struct.Comb, ptr %145, i64 %65
  %147 = getelementptr inbounds nuw %struct.Comb, ptr %146, i32 0, i32 0
  store i32 %142, ptr %147, align 4
  %148 = load ptr, ptr @combList, align 8
  %149 = getelementptr inbounds %struct.Comb, ptr %148, i64 %67
  %150 = getelementptr inbounds nuw %struct.Comb, ptr %149, i32 0, i32 1
  store i32 %141, ptr %150, align 4
  %151 = load ptr, ptr @combList, align 8
  %152 = getelementptr inbounds %struct.Comb, ptr %151, i64 %69
  %153 = getelementptr inbounds nuw %struct.Comb, ptr %152, i32 0, i32 2
  store i32 %76, ptr %153, align 4
  %154 = load ptr, ptr @combList, align 8
  %155 = getelementptr inbounds %struct.Comb, ptr %154, i64 %71
  %156 = call i32 @calculate(ptr noundef %155)
  %157 = load ptr, ptr @workList, align 8
  %158 = load i32, ptr @listLength, align 4
  %159 = add nsw i32 %72, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, ptr %157, i64 %160
  store i32 %156, ptr %161, align 4
  call void @recSearch(i32 noundef %74, i32 noundef %144)
  br label %162

162:                                              ; preds = %139, %133, %128, %123, %109
  %163 = phi i32 [ %144, %139 ], [ %99, %133 ], [ %99, %128 ], [ %99, %123 ], [ %99, %109 ]
  %164 = phi i32 [ %140, %139 ], [ %100, %133 ], [ %100, %128 ], [ %100, %123 ], [ %100, %109 ]
  %165 = phi i32 [ %141, %139 ], [ %117, %133 ], [ %117, %128 ], [ %117, %123 ], [ %101, %109 ]
  %166 = phi i32 [ %142, %139 ], [ %113, %133 ], [ %113, %128 ], [ %113, %123 ], [ %102, %109 ]
  %167 = add nsw i32 %103, 1
  br label %98, !llvm.loop !13

168:                                              ; preds = %98
  %.lcssa8 = phi i32 [ %99, %98 ]
  %.lcssa6 = phi i32 [ %100, %98 ]
  %.lcssa4 = phi i32 [ %101, %98 ]
  %.lcssa2 = phi i32 [ %102, %98 ]
  %.lcssa = phi i32 [ %103, %98 ]
  br label %169

169:                                              ; preds = %168, %93
  %.lcssa823 = phi i32 [ %.lcssa8, %168 ], [ %.lcssa824, %93 ]
  %.lcssa620 = phi i32 [ %.lcssa6, %168 ], [ %.lcssa621, %93 ]
  %.lcssa417 = phi i32 [ %.lcssa4, %168 ], [ %.lcssa418, %93 ]
  %.lcssa214 = phi i32 [ %.lcssa2, %168 ], [ %.lcssa215, %93 ]
  %.lcssa12 = phi i32 [ %.lcssa, %168 ], [ %.lcssa13, %93 ]
  %170 = add nsw i32 %85, 1
  br label %84, !llvm.loop !14

171:                                              ; preds = %84
  %.lcssa824.lcssa = phi i32 [ %.lcssa824, %84 ]
  %.lcssa621.lcssa = phi i32 [ %.lcssa621, %84 ]
  %.lcssa418.lcssa = phi i32 [ %.lcssa418, %84 ]
  %.lcssa215.lcssa = phi i32 [ %.lcssa215, %84 ]
  %.lcssa13.lcssa = phi i32 [ %.lcssa13, %84 ]
  %.lcssa10 = phi i32 [ %85, %84 ]
  br label %172

172:                                              ; preds = %171
  %173 = add nsw i32 %76, 1
  br label %75, !llvm.loop !15

174:                                              ; preds = %75
  %.lcssa824.lcssa37.lcssa = phi i32 [ %.lcssa824.lcssa37, %75 ]
  %.lcssa621.lcssa35.lcssa = phi i32 [ %.lcssa621.lcssa35, %75 ]
  %.lcssa418.lcssa33.lcssa = phi i32 [ %.lcssa418.lcssa33, %75 ]
  %.lcssa215.lcssa32.lcssa = phi i32 [ %.lcssa215.lcssa32, %75 ]
  %.lcssa13.lcssa30.lcssa = phi i32 [ %.lcssa13.lcssa30, %75 ]
  %.lcssa1028.lcssa = phi i32 [ %.lcssa1028, %75 ]
  %.lcssa26 = phi i32 [ %76, %75 ]
  store i32 %.lcssa26, ptr %5, align 4
  store i32 %.lcssa1028.lcssa, ptr %7, align 4
  store i32 %.lcssa13.lcssa30.lcssa, ptr %8, align 4
  store i32 %.lcssa215.lcssa32.lcssa, ptr %9, align 4
  store i32 %.lcssa418.lcssa33.lcssa, ptr %10, align 4
  store i32 %.lcssa621.lcssa35.lcssa, ptr %11, align 4
  store i32 %.lcssa824.lcssa37.lcssa, ptr %6, align 4
  br label %175

175:                                              ; preds = %174, %58, %14
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
  br label %7

7:                                                ; preds = %26, %0
  %8 = phi i32 [ %25, %26 ], [ %best.promoted, %0 ]
  %9 = phi i32 [ %27, %26 ], [ %.promoted, %0 ]
  %10 = icmp slt i32 %9, %2
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i32, ptr %3, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sub nsw i32 %14, %4
  %16 = call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = sub nsw i32 %8, %5
  %18 = call i32 @llvm.abs.i32(i32 %17, i1 true)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds i32, ptr %6, i64 %21
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr @best, align 4
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi i32 [ %23, %20 ], [ %8, %11 ]
  br label %26

26:                                               ; preds = %24
  %27 = add nsw i32 %9, 1
  br label %7, !llvm.loop !16

28:                                               ; preds = %7
  %.lcssa = phi i32 [ %9, %7 ]
  store i32 %.lcssa, ptr %1, align 4
  %29 = load i32, ptr @best, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %53

34:                                               ; preds = %28
  store i32 1, ptr @dmax, align 4
  br label %35

35:                                               ; preds = %44, %34
  %36 = load i32, ptr @dmax, align 4
  %37 = load i32, ptr @listLength, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %.loopexit

39:                                               ; preds = %35
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %40 = load i32, ptr @stopSearch, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %47

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43
  %45 = load i32, ptr @dmax, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @dmax, align 4
  br label %35, !llvm.loop !17

.loopexit:                                        ; preds = %35
  br label %47

47:                                               ; preds = %.loopexit, %42
  %48 = load i32, ptr @stopSearch, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load ptr, ptr @solution, align 8
  %52 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %51, i32 noundef %52)
  br label %53

53:                                               ; preds = %50, %47, %32
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
  %36 = mul nsw i32 %35, 2
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
