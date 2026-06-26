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

11:                                               ; preds = %14, %3
  %12 = phi i32 [ %20, %14 ], [ %.promoted, %3 ]
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i32, ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %10, i64 %18
  store i32 %17, ptr %19, align 4
  %20 = add nsw i32 %12, 1
  br label %11, !llvm.loop !7

21:                                               ; preds = %11
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

8:                                                ; preds = %11, %2
  %9 = phi i32 [ %15, %11 ], [ %.promoted, %2 ]
  %10 = icmp slt i32 %9, %6
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %7, i64 %12
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 2
  store i32 0, ptr %14, align 4
  %15 = add nsw i32 %9, 1
  br label %8, !llvm.loop !9

16:                                               ; preds = %8
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

15:                                               ; preds = %18, %3
  %16 = phi i32 [ %40, %18 ], [ %.promoted, %3 ]
  %17 = icmp slt i32 %16, %8
  br i1 %17, label %18, label %41

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
  %40 = add nsw i32 %16, 1
  br label %15, !llvm.loop !10

41:                                               ; preds = %15
  %.lcssa = phi i32 [ %16, %15 ]
  store i32 %.lcssa, ptr %7, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.Comb, ptr %42, i64 %44
  %46 = getelementptr inbounds nuw %struct.Comb, ptr %45, i32 0, i32 2
  store i32 0, ptr %46, align 4
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
  br label %14

14:                                               ; preds = %57, %2
  %15 = phi i32 [ %58, %57 ], [ %.promoted, %2 ]
  %16 = icmp slt i32 %15, %6
  br i1 %16, label %17, label %59

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

57:                                               ; preds = %53, %55
  %58 = add nsw i32 %15, 1
  br label %14, !llvm.loop !11

59:                                               ; preds = %14
  %.lcssa = phi i32 [ %15, %14 ]
  store i32 %.lcssa, ptr %5, align 4
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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

11:                                               ; preds = %23, %3
  %12 = phi i32 [ %24, %23 ], [ %.promoted, %3 ]
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = shl i32 1, %12
  %16 = and i32 %15, %9
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = sext i32 %12 to i64
  %20 = getelementptr inbounds i32, ptr %10, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %21)
  br label %23

23:                                               ; preds = %14, %18
  %24 = add nsw i32 %12, 1
  br label %11, !llvm.loop !12

25:                                               ; preds = %11
  %.lcssa = phi i32 [ %12, %11 ]
  store i32 %.lcssa, ptr %7, align 4
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br i1 %13, label %160, label %14

14:                                               ; preds = %2
  %15 = load i32, ptr @nbNodes, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @nbNodes, align 4
  %17 = load i32, ptr %3, align 4
  %18 = load i32, ptr @dmax, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load ptr, ptr @workList, align 8
  %22 = load i32, ptr @listLength, align 4
  %23 = load i32, ptr %3, align 4
  %24 = add nsw i32 %22, %23
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %21, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @llvm.abs.i32(i32 %30, i1 true)
  %32 = load i32, ptr @best, align 4
  %33 = load i32, ptr @goal, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @llvm.abs.i32(i32 %34, i1 true)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %160

37:                                               ; preds = %20
  %38 = load ptr, ptr @workList, align 8
  %39 = load i32, ptr @listLength, align 4
  %40 = load i32, ptr %3, align 4
  %41 = add nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %38, i64 %43
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr @best, align 4
  %46 = load i32, ptr %3, align 4
  store i32 %46, ptr @bestDepth, align 4
  %47 = load ptr, ptr @solution, align 8
  %48 = load ptr, ptr @combList, align 8
  %49 = load i32, ptr %3, align 4
  call void @saveSolution(ptr noundef %47, ptr noundef %48, i32 noundef %49)
  %50 = load i32, ptr @best, align 4
  %51 = load i32, ptr @goal, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %160

53:                                               ; preds = %37
  %54 = load ptr, ptr @combList, align 8
  %55 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %54, i32 noundef %55)
  store i32 1, ptr @stopSearch, align 4
  br label %160

56:                                               ; preds = %14
  store i32 1, ptr %5, align 4
  %57 = load i32, ptr %3, align 4
  %58 = load i32, ptr %4, align 4
  %59 = load i32, ptr %4, align 4
  %60 = load i32, ptr %4, align 4
  %61 = load i32, ptr %3, align 4
  %62 = sext i32 %61 to i64
  %63 = load i32, ptr %3, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32, ptr %3, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, ptr %3, align 4
  %68 = sext i32 %67 to i64
  %69 = load i32, ptr %3, align 4
  %70 = load i32, ptr %3, align 4
  %71 = add nsw i32 %70, 1
  %.promoted33 = load i32, ptr %5, align 4
  %.promoted35 = load i32, ptr %7, align 4
  %.promoted37 = load i32, ptr %8, align 4
  %.promoted39 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %10, align 4
  %.promoted42 = load i32, ptr %11, align 4
  %.promoted44 = load i32, ptr %6, align 4
  br label %72

72:                                               ; preds = %158, %56
  %.lcssa1632.lcssa45 = phi i32 [ %.lcssa1632.lcssa, %158 ], [ %.promoted44, %56 ]
  %.lcssa1429.lcssa43 = phi i32 [ %.lcssa1429.lcssa, %158 ], [ %.promoted42, %56 ]
  %.lcssa1226.lcssa41 = phi i32 [ %.lcssa1226.lcssa, %158 ], [ %.promoted, %56 ]
  %.lcssa1023.lcssa40 = phi i32 [ %.lcssa1023.lcssa, %158 ], [ %.promoted39, %56 ]
  %.lcssa21.lcssa38 = phi i32 [ %.lcssa21.lcssa, %158 ], [ %.promoted37, %56 ]
  %.lcssa1836 = phi i32 [ %.lcssa18, %158 ], [ %.promoted35, %56 ]
  %73 = phi i32 [ %159, %158 ], [ %.promoted33, %56 ]
  %74 = icmp sle i32 %73, 4
  br i1 %74, label %75, label %.loopexit8

75:                                               ; preds = %72
  %76 = icmp eq i32 %73, 3
  %77 = icmp eq i32 %73, 4
  %or.cond = select i1 %76, i1 true, i1 %77
  %78 = icmp eq i32 %73, 4
  %79 = icmp eq i32 %73, 4
  %80 = icmp eq i32 %73, 2
  %or.cond7 = select i1 %79, i1 true, i1 %80
  br label %81

81:                                               ; preds = %156, %75
  %.lcssa1632 = phi i32 [ %.lcssa1631, %156 ], [ %.lcssa1632.lcssa45, %75 ]
  %.lcssa1429 = phi i32 [ %.lcssa1428, %156 ], [ %.lcssa1429.lcssa43, %75 ]
  %.lcssa1226 = phi i32 [ %.lcssa1225, %156 ], [ %.lcssa1226.lcssa41, %75 ]
  %.lcssa1023 = phi i32 [ %.lcssa1022, %156 ], [ %.lcssa1023.lcssa40, %75 ]
  %.lcssa21 = phi i32 [ %.lcssa20, %156 ], [ %.lcssa21.lcssa38, %75 ]
  %82 = phi i32 [ %157, %156 ], [ 0, %75 ]
  %83 = load i32, ptr @listLength, align 4
  %84 = add nsw i32 %83, %57
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %158

86:                                               ; preds = %81
  %87 = shl i32 1, %82
  %88 = and i32 %87, %58
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %156, label %90

90:                                               ; preds = %86
  %91 = sext i32 %82 to i64
  %92 = shl i32 1, %82
  %93 = or i32 %60, %92
  br label %94

94:                                               ; preds = %150, %90
  %95 = phi i32 [ %151, %150 ], [ %.lcssa1632, %90 ]
  %96 = phi i32 [ %152, %150 ], [ %.lcssa1429, %90 ]
  %97 = phi i32 [ %153, %150 ], [ %.lcssa1226, %90 ]
  %98 = phi i32 [ %154, %150 ], [ %.lcssa1023, %90 ]
  %99 = phi i32 [ %155, %150 ], [ 0, %90 ]
  %100 = icmp slt i32 %99, %82
  br i1 %100, label %101, label %.loopexit

101:                                              ; preds = %94
  %102 = shl i32 1, %99
  %103 = and i32 %102, %59
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %150, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr @workList, align 8
  %107 = getelementptr inbounds i32, ptr %106, i64 %91
  %108 = load i32, ptr %107, align 4
  %109 = load ptr, ptr @workList, align 8
  %110 = sext i32 %99 to i64
  %111 = getelementptr inbounds i32, ptr %109, i64 %110
  %112 = load i32, ptr %111, align 4
  br i1 %or.cond, label %113, label %116

113:                                              ; preds = %105
  %114 = icmp eq i32 %108, 1
  %115 = icmp eq i32 %112, 1
  %or.cond3 = select i1 %114, i1 true, i1 %115
  br i1 %or.cond3, label %150, label %116

116:                                              ; preds = %113, %105
  %117 = icmp eq i32 %108, 0
  %118 = icmp eq i32 %112, 0
  %or.cond5 = select i1 %117, i1 true, i1 %118
  br i1 %or.cond5, label %150, label %119

119:                                              ; preds = %116
  br i1 %78, label %120, label %123

120:                                              ; preds = %119
  %121 = srem i32 %108, %112
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %150, label %123

123:                                              ; preds = %120, %119
  br i1 %or.cond7, label %124, label %127

124:                                              ; preds = %123
  %125 = icmp slt i32 %108, %112
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %123, %126, %124
  %128 = phi i32 [ %96, %123 ], [ %108, %126 ], [ %96, %124 ]
  %129 = phi i32 [ %112, %123 ], [ %108, %126 ], [ %112, %124 ]
  %130 = phi i32 [ %108, %123 ], [ %112, %126 ], [ %108, %124 ]
  %131 = shl i32 1, %99
  %132 = or i32 %93, %131
  %133 = load ptr, ptr @combList, align 8
  %134 = getelementptr inbounds %struct.Comb, ptr %133, i64 %62
  %135 = getelementptr inbounds nuw %struct.Comb, ptr %134, i32 0, i32 0
  store i32 %130, ptr %135, align 4
  %136 = load ptr, ptr @combList, align 8
  %137 = getelementptr inbounds %struct.Comb, ptr %136, i64 %64
  %138 = getelementptr inbounds nuw %struct.Comb, ptr %137, i32 0, i32 1
  store i32 %129, ptr %138, align 4
  %139 = load ptr, ptr @combList, align 8
  %140 = getelementptr inbounds %struct.Comb, ptr %139, i64 %66
  %141 = getelementptr inbounds nuw %struct.Comb, ptr %140, i32 0, i32 2
  store i32 %73, ptr %141, align 4
  %142 = load ptr, ptr @combList, align 8
  %143 = getelementptr inbounds %struct.Comb, ptr %142, i64 %68
  %144 = call i32 @calculate(ptr noundef %143)
  %145 = load ptr, ptr @workList, align 8
  %146 = load i32, ptr @listLength, align 4
  %147 = add nsw i32 %146, %69
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %145, i64 %148
  store i32 %144, ptr %149, align 4
  call void @recSearch(i32 noundef %71, i32 noundef %132)
  br label %150

150:                                              ; preds = %120, %116, %113, %101, %127
  %151 = phi i32 [ %95, %120 ], [ %95, %116 ], [ %95, %113 ], [ %95, %101 ], [ %132, %127 ]
  %152 = phi i32 [ %96, %120 ], [ %96, %116 ], [ %96, %113 ], [ %96, %101 ], [ %128, %127 ]
  %153 = phi i32 [ %112, %120 ], [ %112, %116 ], [ %112, %113 ], [ %97, %101 ], [ %129, %127 ]
  %154 = phi i32 [ %108, %120 ], [ %108, %116 ], [ %108, %113 ], [ %98, %101 ], [ %130, %127 ]
  %155 = add nsw i32 %99, 1
  br label %94, !llvm.loop !13

.loopexit:                                        ; preds = %94
  %.lcssa16 = phi i32 [ %95, %94 ]
  %.lcssa14 = phi i32 [ %96, %94 ]
  %.lcssa12 = phi i32 [ %97, %94 ]
  %.lcssa10 = phi i32 [ %98, %94 ]
  %.lcssa = phi i32 [ %99, %94 ]
  br label %156

156:                                              ; preds = %.loopexit, %86
  %.lcssa1631 = phi i32 [ %.lcssa16, %.loopexit ], [ %.lcssa1632, %86 ]
  %.lcssa1428 = phi i32 [ %.lcssa14, %.loopexit ], [ %.lcssa1429, %86 ]
  %.lcssa1225 = phi i32 [ %.lcssa12, %.loopexit ], [ %.lcssa1226, %86 ]
  %.lcssa1022 = phi i32 [ %.lcssa10, %.loopexit ], [ %.lcssa1023, %86 ]
  %.lcssa20 = phi i32 [ %.lcssa, %.loopexit ], [ %.lcssa21, %86 ]
  %157 = add nsw i32 %82, 1
  br label %81, !llvm.loop !14

158:                                              ; preds = %81
  %.lcssa1632.lcssa = phi i32 [ %.lcssa1632, %81 ]
  %.lcssa1429.lcssa = phi i32 [ %.lcssa1429, %81 ]
  %.lcssa1226.lcssa = phi i32 [ %.lcssa1226, %81 ]
  %.lcssa1023.lcssa = phi i32 [ %.lcssa1023, %81 ]
  %.lcssa21.lcssa = phi i32 [ %.lcssa21, %81 ]
  %.lcssa18 = phi i32 [ %82, %81 ]
  %159 = add nsw i32 %73, 1
  br label %72, !llvm.loop !15

.loopexit8:                                       ; preds = %72
  %.lcssa1632.lcssa45.lcssa = phi i32 [ %.lcssa1632.lcssa45, %72 ]
  %.lcssa1429.lcssa43.lcssa = phi i32 [ %.lcssa1429.lcssa43, %72 ]
  %.lcssa1226.lcssa41.lcssa = phi i32 [ %.lcssa1226.lcssa41, %72 ]
  %.lcssa1023.lcssa40.lcssa = phi i32 [ %.lcssa1023.lcssa40, %72 ]
  %.lcssa21.lcssa38.lcssa = phi i32 [ %.lcssa21.lcssa38, %72 ]
  %.lcssa1836.lcssa = phi i32 [ %.lcssa1836, %72 ]
  %.lcssa34 = phi i32 [ %73, %72 ]
  store i32 %.lcssa34, ptr %5, align 4
  store i32 %.lcssa1836.lcssa, ptr %7, align 4
  store i32 %.lcssa21.lcssa38.lcssa, ptr %8, align 4
  store i32 %.lcssa1023.lcssa40.lcssa, ptr %9, align 4
  store i32 %.lcssa1226.lcssa41.lcssa, ptr %10, align 4
  store i32 %.lcssa1429.lcssa43.lcssa, ptr %11, align 4
  store i32 %.lcssa1632.lcssa45.lcssa, ptr %6, align 4
  br label %160

160:                                              ; preds = %.loopexit8, %20, %53, %37, %2
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

7:                                                ; preds = %24, %0
  %8 = phi i32 [ %25, %24 ], [ %best.promoted, %0 ]
  %9 = phi i32 [ %26, %24 ], [ %.promoted, %0 ]
  %10 = icmp slt i32 %9, %2
  br i1 %10, label %11, label %27

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

24:                                               ; preds = %11, %20
  %25 = phi i32 [ %8, %11 ], [ %23, %20 ]
  %26 = add nsw i32 %9, 1
  br label %7, !llvm.loop !16

27:                                               ; preds = %7
  %.lcssa = phi i32 [ %9, %7 ]
  store i32 %.lcssa, ptr %1, align 4
  %28 = load i32, ptr @best, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %50

33:                                               ; preds = %27
  store i32 1, ptr @dmax, align 4
  br label %34

34:                                               ; preds = %41, %33
  %35 = load i32, ptr @dmax, align 4
  %36 = load i32, ptr @listLength, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %39 = load i32, ptr @stopSearch, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr @dmax, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @dmax, align 4
  br label %34, !llvm.loop !17

44:                                               ; preds = %38, %34
  %45 = load i32, ptr @stopSearch, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load ptr, ptr @solution, align 8
  %49 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %48, i32 noundef %49)
  br label %50

50:                                               ; preds = %47, %44, %31
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

8:                                                ; preds = %14, %0
  %9 = phi i32 [ %21, %14 ], [ %.promoted, %0 ]
  %10 = call i32 @getchar()
  %11 = icmp ne i32 %10, 10
  %12 = icmp ne i32 %10, -1
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = call ptr @__acrt_iob_func(i32 noundef 0)
  %16 = call i32 @ungetc(i32 noundef %10, ptr noundef %15)
  %17 = call ptr @__acrt_iob_func(i32 noundef 0)
  %18 = sext i32 %9 to i64
  %19 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %18
  %20 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %17, ptr noundef @.str.2, ptr noundef %19)
  %21 = add nsw i32 %9, 1
  br label %8, !llvm.loop !18

22:                                               ; preds = %8
  %.lcssa1 = phi i32 [ %9, %8 ]
  %.lcssa = phi i32 [ %10, %8 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa1, ptr %2, align 4
  %23 = load i32, ptr %2, align 4
  %24 = icmp eq i32 %23, 0
  %spec.store.select = select i1 %24, i32 4, i32 %23
  store i32 %spec.store.select, ptr %2, align 4
  %25 = load i32, ptr %2, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, ptr @listLength, align 4
  %27 = load i32, ptr @listLength, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr @goal, align 4
  %31 = load i32, ptr @listLength, align 4
  %32 = mul nsw i32 2, %31
  %33 = call ptr @newWorkList(i32 noundef %32)
  store ptr %33, ptr @workList, align 8
  %34 = load i32, ptr @listLength, align 4
  %35 = call ptr @newCombList(i32 noundef %34)
  store ptr %35, ptr @combList, align 8
  %36 = load i32, ptr @listLength, align 4
  %37 = call ptr @newCombList(i32 noundef %36)
  store ptr %37, ptr @solution, align 8
  %38 = load ptr, ptr @workList, align 8
  %39 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  %40 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %38, ptr noundef %39, i32 noundef %40)
  %41 = load ptr, ptr @combList, align 8
  %42 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %41, i32 noundef %42)
  %43 = load ptr, ptr @solution, align 8
  %44 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %43, i32 noundef %44)
  %45 = load i32, ptr @listLength, align 4
  ret i32 %45
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
