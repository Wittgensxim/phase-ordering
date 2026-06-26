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
  %.promoted = load i32, ptr %7, align 1
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi i32 [ %17, %12 ], [ %.promoted, %3 ]
  %10 = phi i32 [ %17, %12 ], [ 0, %3 ]
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i32, ptr %1, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i32, ptr %0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = add nsw i32 %10, 1
  br label %8, !llvm.loop !7

18:                                               ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
  store i32 %.lcssa, ptr %7, align 1
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
  %.promoted = load i32, ptr %5, align 1
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi i32 [ %14, %10 ], [ %.promoted, %2 ]
  %8 = phi i32 [ %14, %10 ], [ 0, %2 ]
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds %struct.Comb, ptr %0, i64 %11
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %12, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = add nsw i32 %8, 1
  br label %6, !llvm.loop !9

15:                                               ; preds = %6
  %.lcssa = phi i32 [ %7, %6 ]
  store i32 %.lcssa, ptr %5, align 1
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
  %.promoted = load i32, ptr %7, align 1
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi i32 [ %23, %12 ], [ %.promoted, %3 ]
  %10 = phi i32 [ %23, %12 ], [ 0, %3 ]
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds %struct.Comb, ptr %1, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.Comb, ptr %0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds nuw %struct.Comb, ptr %16, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %16, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = add nsw i32 %10, 1
  br label %8, !llvm.loop !10

24:                                               ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
  store i32 %.lcssa, ptr %7, align 1
  %25 = sext i32 %2 to i64
  %26 = getelementptr inbounds %struct.Comb, ptr %0, i64 %25
  %27 = getelementptr inbounds nuw %struct.Comb, ptr %26, i32 0, i32 2
  store i32 0, ptr %27, align 4
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
  %28 = phi i32 [ 0, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %6 ]
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
  %6 = sub nsw i32 %1, 1
  %.promoted = load i32, ptr %5, align 1
  br label %7

7:                                                ; preds = %40, %2
  %8 = phi i32 [ %41, %40 ], [ %.promoted, %2 ]
  %9 = phi i32 [ %41, %40 ], [ 0, %2 ]
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %14)
  %16 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %28 [
    i32 0, label %18
    i32 1, label %20
    i32 2, label %22
    i32 3, label %24
    i32 4, label %26
  ]

18:                                               ; preds = %11
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %30

20:                                               ; preds = %11
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %30

22:                                               ; preds = %11
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %30

24:                                               ; preds = %11
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %30

26:                                               ; preds = %11
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %30

28:                                               ; preds = %11
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %17)
  br label %30

30:                                               ; preds = %28, %26, %24, %22, %20, %18
  %31 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = call i32 @calculate(ptr noundef %13)
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %32, i32 noundef %33)
  %35 = icmp slt i32 %9, %6
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %40

38:                                               ; preds = %30
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %40

40:                                               ; preds = %38, %36
  %41 = add nsw i32 %9, 1
  br label %7, !llvm.loop !11

42:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %5, align 1
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  %.promoted = load i32, ptr %7, align 1
  br label %8

8:                                                ; preds = %22, %3
  %9 = phi i32 [ %23, %22 ], [ %.promoted, %3 ]
  %10 = phi i32 [ %23, %22 ], [ 0, %3 ]
  %11 = icmp slt i32 %10, %1
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = shl i32 1, %10
  %14 = and i32 %13, %2
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %22

17:                                               ; preds = %12
  %18 = sext i32 %10 to i64
  %19 = getelementptr inbounds i32, ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %20)
  br label %22

22:                                               ; preds = %17, %16
  %23 = add nsw i32 %10, 1
  br label %8, !llvm.loop !12

24:                                               ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
  store i32 %.lcssa, ptr %7, align 1
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br label %186

15:                                               ; preds = %2
  %16 = load i32, ptr @nbNodes, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @nbNodes, align 4
  %18 = load i32, ptr @dmax, align 4
  %19 = icmp eq i32 %0, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %15
  %21 = load ptr, ptr @workList, align 8
  %22 = load i32, ptr @listLength, align 4
  %23 = add nsw i32 %22, %0
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %21, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr @goal, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 @llvm.abs.i32(i32 %29, i1 true)
  %31 = load i32, ptr @best, align 4
  %32 = sub nsw i32 %31, %28
  %33 = call i32 @llvm.abs.i32(i32 %32, i1 true)
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %20
  store i32 %27, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %36 = load ptr, ptr @solution, align 8
  %37 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %36, ptr noundef %37, i32 noundef %0)
  %38 = load i32, ptr @best, align 4
  %39 = load i32, ptr @goal, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %42, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %43

43:                                               ; preds = %41, %35
  br label %44

44:                                               ; preds = %43, %20
  br label %186

45:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  %46 = add nsw i32 %0, 1
  %.promoted37 = load i32, ptr %7, align 4
  %.promoted39 = load i32, ptr %8, align 1
  %.promoted41 = load i32, ptr %9, align 1
  %.promoted43 = load i32, ptr %10, align 1
  %.promoted = load i32, ptr %11, align 1
  %.promoted46 = load i32, ptr %6, align 1
  %.promoted48 = load i32, ptr %5, align 1
  br label %47

47:                                               ; preds = %183, %45
  %48 = phi i32 [ %184, %183 ], [ %.promoted48, %45 ]
  %.lcssa1834.lcssa47 = phi i32 [ %.lcssa1834.lcssa, %183 ], [ %.promoted46, %45 ]
  %.lcssa1631.lcssa45 = phi i32 [ %.lcssa1631.lcssa, %183 ], [ %.promoted, %45 ]
  %.lcssa1428.lcssa44 = phi i32 [ %.lcssa1428.lcssa, %183 ], [ %.promoted43, %45 ]
  %.lcssa1226.lcssa42 = phi i32 [ %.lcssa1226.lcssa, %183 ], [ %.promoted41, %45 ]
  %.lcssa2023.lcssa40 = phi i32 [ %.lcssa2023.lcssa, %183 ], [ %.promoted39, %45 ]
  %.lcssa3638 = phi i32 [ %.lcssa36, %183 ], [ %.promoted37, %45 ]
  %49 = phi i32 [ %.lcssa11, %183 ], [ %1, %45 ]
  %50 = phi i32 [ %.lcssa10, %183 ], [ %1, %45 ]
  %51 = phi i32 [ %.lcssa8, %183 ], [ %0, %45 ]
  %52 = phi i32 [ %184, %183 ], [ 1, %45 ]
  %53 = icmp sle i32 %52, 4
  br i1 %53, label %54, label %185

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %173, %54
  %56 = phi i32 [ %182, %173 ], [ 0, %54 ]
  %.lcssa1834 = phi i32 [ %.lcssa1833, %173 ], [ %.lcssa1834.lcssa47, %54 ]
  %.lcssa1631 = phi i32 [ %.lcssa1630, %173 ], [ %.lcssa1631.lcssa45, %54 ]
  %.lcssa1428 = phi i32 [ %.lcssa1427, %173 ], [ %.lcssa1428.lcssa44, %54 ]
  %.lcssa1226 = phi i32 [ %.lcssa1225, %173 ], [ %.lcssa1226.lcssa42, %54 ]
  %.lcssa2023 = phi i32 [ %.lcssa2022, %173 ], [ %.lcssa2023.lcssa40, %54 ]
  %57 = phi i32 [ %174, %173 ], [ %52, %54 ]
  %58 = phi i32 [ %175, %173 ], [ %52, %54 ]
  %59 = phi i32 [ %176, %173 ], [ %52, %54 ]
  %60 = phi i32 [ %177, %173 ], [ %52, %54 ]
  %61 = phi i32 [ %178, %173 ], [ %49, %54 ]
  %62 = phi i32 [ %179, %173 ], [ %50, %54 ]
  %63 = phi i32 [ %180, %173 ], [ %52, %54 ]
  %64 = phi i32 [ %181, %173 ], [ %51, %54 ]
  %65 = phi i32 [ %182, %173 ], [ 0, %54 ]
  %66 = load i32, ptr @listLength, align 4
  %67 = add nsw i32 %66, %64
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %183

69:                                               ; preds = %55
  %70 = shl i32 1, %65
  %71 = and i32 %70, %62
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %173

74:                                               ; preds = %69
  %75 = or i32 %1, %70
  br label %76

76:                                               ; preds = %157, %74
  %77 = phi i32 [ %171, %157 ], [ 0, %74 ]
  %78 = phi i32 [ %158, %157 ], [ %.lcssa1834, %74 ]
  %79 = phi i32 [ %159, %157 ], [ %.lcssa1631, %74 ]
  %80 = phi i32 [ %160, %157 ], [ %.lcssa1428, %74 ]
  %81 = phi i32 [ %161, %157 ], [ %.lcssa1226, %74 ]
  %82 = phi i32 [ %162, %157 ], [ %57, %74 ]
  %83 = phi i32 [ %163, %157 ], [ %58, %74 ]
  %84 = phi i32 [ %164, %157 ], [ %59, %74 ]
  %85 = phi i32 [ %165, %157 ], [ %60, %74 ]
  %86 = phi i32 [ %166, %157 ], [ %65, %74 ]
  %87 = phi i32 [ %167, %157 ], [ %61, %74 ]
  %88 = phi i32 [ %168, %157 ], [ %65, %74 ]
  %89 = phi i32 [ %171, %157 ], [ 0, %74 ]
  %90 = phi i32 [ %167, %157 ], [ %62, %74 ]
  %91 = phi i32 [ %169, %157 ], [ %63, %74 ]
  %92 = phi i32 [ %170, %157 ], [ %64, %74 ]
  %93 = icmp slt i32 %89, %88
  br i1 %93, label %94, label %172

94:                                               ; preds = %76
  %95 = shl i32 1, %89
  %96 = and i32 %95, %87
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %157

99:                                               ; preds = %94
  %100 = load ptr, ptr @workList, align 8
  %101 = sext i32 %86 to i64
  %102 = getelementptr inbounds i32, ptr %100, i64 %101
  %103 = load i32, ptr %102, align 4
  %104 = sext i32 %89 to i64
  %105 = getelementptr inbounds i32, ptr %100, i64 %104
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %85, 3
  br i1 %107, label %110, label %108

108:                                              ; preds = %99
  %109 = icmp eq i32 %84, 4
  br i1 %109, label %110, label %116

110:                                              ; preds = %108, %99
  %111 = phi i32 [ 4, %108 ], [ 3, %99 ]
  %112 = icmp eq i32 %103, 1
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = icmp eq i32 %106, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %113, %110
  br label %157

116:                                              ; preds = %113, %108
  %117 = phi i32 [ %111, %113 ], [ %84, %108 ]
  %118 = icmp eq i32 %103, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = icmp eq i32 %106, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %119, %116
  br label %157

122:                                              ; preds = %119
  %123 = icmp eq i32 %83, 4
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  %125 = srem i32 %103, %106
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %157

128:                                              ; preds = %124, %122
  %129 = icmp eq i32 %82, 4
  br i1 %129, label %132, label %130

130:                                              ; preds = %128
  %131 = icmp eq i32 %82, 2
  br i1 %131, label %132, label %135

132:                                              ; preds = %130, %128
  %133 = icmp slt i32 %103, %106
  br i1 %133, label %134, label %135

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134, %132, %130
  %136 = phi i32 [ %103, %134 ], [ %79, %132 ], [ %79, %130 ]
  %137 = phi i32 [ %103, %134 ], [ %106, %132 ], [ %106, %130 ]
  %138 = phi i32 [ %106, %134 ], [ %103, %132 ], [ %103, %130 ]
  %139 = or i32 %75, %95
  %140 = load ptr, ptr @combList, align 8
  %141 = sext i32 %92 to i64
  %142 = getelementptr inbounds %struct.Comb, ptr %140, i64 %141
  store i32 %138, ptr %142, align 4
  %143 = load ptr, ptr @combList, align 8
  %144 = getelementptr inbounds %struct.Comb, ptr %143, i64 %141
  %145 = getelementptr inbounds nuw %struct.Comb, ptr %144, i32 0, i32 1
  store i32 %137, ptr %145, align 4
  %146 = load ptr, ptr @combList, align 8
  %147 = getelementptr inbounds %struct.Comb, ptr %146, i64 %141
  %148 = getelementptr inbounds nuw %struct.Comb, ptr %147, i32 0, i32 2
  store i32 %52, ptr %148, align 4
  %149 = load ptr, ptr @combList, align 8
  %150 = getelementptr inbounds %struct.Comb, ptr %149, i64 %141
  %151 = call i32 @calculate(ptr noundef %150)
  %152 = load ptr, ptr @workList, align 8
  %153 = load i32, ptr @listLength, align 4
  %154 = add nsw i32 %153, %92
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %152, i64 %155
  store i32 %151, ptr %156, align 4
  call void @recSearch(i32 noundef %46, i32 noundef %139)
  br label %157

157:                                              ; preds = %135, %127, %121, %115, %98
  %158 = phi i32 [ %139, %135 ], [ %78, %127 ], [ %78, %121 ], [ %78, %115 ], [ %78, %98 ]
  %159 = phi i32 [ %136, %135 ], [ %79, %127 ], [ %79, %121 ], [ %79, %115 ], [ %79, %98 ]
  %160 = phi i32 [ %137, %135 ], [ %106, %127 ], [ %106, %121 ], [ %106, %115 ], [ %80, %98 ]
  %161 = phi i32 [ %138, %135 ], [ %103, %127 ], [ %103, %121 ], [ %103, %115 ], [ %81, %98 ]
  %162 = phi i32 [ %52, %135 ], [ %82, %127 ], [ %82, %121 ], [ %82, %115 ], [ %82, %98 ]
  %163 = phi i32 [ %52, %135 ], [ 4, %127 ], [ %83, %121 ], [ %83, %115 ], [ %83, %98 ]
  %164 = phi i32 [ %52, %135 ], [ 4, %127 ], [ %84, %121 ], [ %84, %115 ], [ %84, %98 ]
  %165 = phi i32 [ %52, %135 ], [ 4, %127 ], [ %117, %121 ], [ %111, %115 ], [ %85, %98 ]
  %166 = phi i32 [ %65, %135 ], [ %86, %127 ], [ %86, %121 ], [ %86, %115 ], [ %86, %98 ]
  %167 = phi i32 [ %1, %135 ], [ %87, %127 ], [ %87, %121 ], [ %87, %115 ], [ %87, %98 ]
  %168 = phi i32 [ %65, %135 ], [ %86, %127 ], [ %86, %121 ], [ %86, %115 ], [ %88, %98 ]
  %169 = phi i32 [ %52, %135 ], [ 4, %127 ], [ %117, %121 ], [ %111, %115 ], [ %91, %98 ]
  %170 = phi i32 [ %0, %135 ], [ %92, %127 ], [ %92, %121 ], [ %92, %115 ], [ %92, %98 ]
  %171 = add nsw i32 %89, 1
  br label %76, !llvm.loop !13

172:                                              ; preds = %76
  %.lcssa20 = phi i32 [ %77, %76 ]
  %.lcssa18 = phi i32 [ %78, %76 ]
  %.lcssa16 = phi i32 [ %79, %76 ]
  %.lcssa14 = phi i32 [ %80, %76 ]
  %.lcssa12 = phi i32 [ %81, %76 ]
  %.lcssa7 = phi i32 [ %82, %76 ]
  %.lcssa6 = phi i32 [ %83, %76 ]
  %.lcssa5 = phi i32 [ %84, %76 ]
  %.lcssa4 = phi i32 [ %85, %76 ]
  %.lcssa3 = phi i32 [ %87, %76 ]
  %.lcssa2 = phi i32 [ %90, %76 ]
  %.lcssa1 = phi i32 [ %91, %76 ]
  %.lcssa = phi i32 [ %92, %76 ]
  br label %173

173:                                              ; preds = %172, %73
  %.lcssa1833 = phi i32 [ %.lcssa18, %172 ], [ %.lcssa1834, %73 ]
  %.lcssa1630 = phi i32 [ %.lcssa16, %172 ], [ %.lcssa1631, %73 ]
  %.lcssa1427 = phi i32 [ %.lcssa14, %172 ], [ %.lcssa1428, %73 ]
  %.lcssa1225 = phi i32 [ %.lcssa12, %172 ], [ %.lcssa1226, %73 ]
  %.lcssa2022 = phi i32 [ %.lcssa20, %172 ], [ %.lcssa2023, %73 ]
  %174 = phi i32 [ %.lcssa7, %172 ], [ %57, %73 ]
  %175 = phi i32 [ %.lcssa6, %172 ], [ %58, %73 ]
  %176 = phi i32 [ %.lcssa5, %172 ], [ %59, %73 ]
  %177 = phi i32 [ %.lcssa4, %172 ], [ %60, %73 ]
  %178 = phi i32 [ %.lcssa3, %172 ], [ %61, %73 ]
  %179 = phi i32 [ %.lcssa2, %172 ], [ %62, %73 ]
  %180 = phi i32 [ %.lcssa1, %172 ], [ %63, %73 ]
  %181 = phi i32 [ %.lcssa, %172 ], [ %64, %73 ]
  %182 = add nsw i32 %65, 1
  br label %55, !llvm.loop !14

183:                                              ; preds = %55
  %.lcssa36 = phi i32 [ %56, %55 ]
  %.lcssa1834.lcssa = phi i32 [ %.lcssa1834, %55 ]
  %.lcssa1631.lcssa = phi i32 [ %.lcssa1631, %55 ]
  %.lcssa1428.lcssa = phi i32 [ %.lcssa1428, %55 ]
  %.lcssa1226.lcssa = phi i32 [ %.lcssa1226, %55 ]
  %.lcssa2023.lcssa = phi i32 [ %.lcssa2023, %55 ]
  %.lcssa11 = phi i32 [ %61, %55 ]
  %.lcssa10 = phi i32 [ %62, %55 ]
  %.lcssa9 = phi i32 [ %63, %55 ]
  %.lcssa8 = phi i32 [ %64, %55 ]
  %184 = add nsw i32 %.lcssa9, 1
  br label %47, !llvm.loop !15

185:                                              ; preds = %47
  %.lcssa49 = phi i32 [ %48, %47 ]
  %.lcssa1834.lcssa47.lcssa = phi i32 [ %.lcssa1834.lcssa47, %47 ]
  %.lcssa1631.lcssa45.lcssa = phi i32 [ %.lcssa1631.lcssa45, %47 ]
  %.lcssa1428.lcssa44.lcssa = phi i32 [ %.lcssa1428.lcssa44, %47 ]
  %.lcssa1226.lcssa42.lcssa = phi i32 [ %.lcssa1226.lcssa42, %47 ]
  %.lcssa2023.lcssa40.lcssa = phi i32 [ %.lcssa2023.lcssa40, %47 ]
  %.lcssa3638.lcssa = phi i32 [ %.lcssa3638, %47 ]
  store i32 %.lcssa3638.lcssa, ptr %7, align 4
  store i32 %.lcssa2023.lcssa40.lcssa, ptr %8, align 1
  store i32 %.lcssa1226.lcssa42.lcssa, ptr %9, align 1
  store i32 %.lcssa1428.lcssa44.lcssa, ptr %10, align 1
  store i32 %.lcssa1631.lcssa45.lcssa, ptr %11, align 1
  store i32 %.lcssa1834.lcssa47.lcssa, ptr %6, align 1
  store i32 %.lcssa49, ptr %5, align 1
  br label %186

186:                                              ; preds = %185, %44, %14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %.pre = load i32, ptr @listLength, align 4
  %2 = load ptr, ptr @workList, align 8
  %3 = load i32, ptr @goal, align 4
  %best.promoted = load i32, ptr @best, align 4
  %.promoted = load i32, ptr %1, align 1
  br label %4

4:                                                ; preds = %19, %0
  %5 = phi i32 [ %21, %19 ], [ %.promoted, %0 ]
  %6 = phi i32 [ %20, %19 ], [ %best.promoted, %0 ]
  %7 = phi i32 [ %21, %19 ], [ 0, %0 ]
  %8 = icmp slt i32 %7, %.pre
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds i32, ptr %2, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %12, %3
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = sub nsw i32 %6, %3
  %16 = call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 %12, ptr @best, align 4
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i32 [ %12, %18 ], [ %6, %9 ]
  %21 = add nsw i32 %7, 1
  br label %4, !llvm.loop !16

22:                                               ; preds = %4
  %.lcssa3 = phi i32 [ %5, %4 ]
  store i32 %.lcssa3, ptr %1, align 1
  %23 = load i32, ptr @best, align 4
  %24 = load i32, ptr @goal, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %46

28:                                               ; preds = %22
  store i32 1, ptr @dmax, align 4
  br label %29

29:                                               ; preds = %37, %28
  %30 = phi i32 [ %.pre1, %37 ], [ %.pre, %28 ]
  %31 = phi i32 [ %39, %37 ], [ 1, %28 ]
  %32 = icmp slt i32 %31, %30
  br i1 %32, label %33, label %._crit_edge

._crit_edge:                                      ; preds = %29
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %40

33:                                               ; preds = %29
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %34 = load i32, ptr @stopSearch, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  %.lcssa = phi i32 [ %34, %33 ]
  br label %40

37:                                               ; preds = %33
  %38 = load i32, ptr @dmax, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr @dmax, align 4
  %.pre1 = load i32, ptr @listLength, align 4
  br label %29, !llvm.loop !17

40:                                               ; preds = %._crit_edge, %36
  %41 = phi i32 [ %.pre2, %._crit_edge ], [ %.lcssa, %36 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load ptr, ptr @solution, align 8
  %45 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %43, %40, %26
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
  %.promoted = load i32, ptr %2, align 1
  br label %7

7:                                                ; preds = %16, %0
  %8 = phi i32 [ %23, %16 ], [ %.promoted, %0 ]
  %9 = phi i32 [ %23, %16 ], [ 0, %0 ]
  %10 = call i32 @getchar()
  %11 = icmp ne i32 %10, 10
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = icmp ne i32 %10, -1
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i1 [ false, %7 ], [ %13, %12 ]
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = call ptr @__acrt_iob_func(i32 noundef 0)
  %18 = call i32 @ungetc(i32 noundef %10, ptr noundef %17)
  %19 = call ptr @__acrt_iob_func(i32 noundef 0)
  %20 = sext i32 %9 to i64
  %21 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %20
  %22 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %19, ptr noundef @.str.2, ptr noundef %21)
  %23 = add nsw i32 %9, 1
  br label %7, !llvm.loop !18

24:                                               ; preds = %14
  %.lcssa2 = phi i32 [ %8, %14 ]
  %.lcssa1 = phi i32 [ %10, %14 ]
  %.lcssa = phi i32 [ %9, %14 ]
  store i32 %.lcssa1, ptr %3, align 1
  store i32 %.lcssa2, ptr %2, align 1
  %25 = icmp eq i32 %.lcssa, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store i32 4, ptr %2, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ 4, %26 ], [ %.lcssa, %24 ]
  %29 = sub nsw i32 %28, 1
  store i32 %29, ptr @listLength, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr @goal, align 4
  %33 = mul nsw i32 2, %29
  %34 = call ptr @newWorkList(i32 noundef %33)
  store ptr %34, ptr @workList, align 8
  %35 = load i32, ptr @listLength, align 4
  %36 = call ptr @newCombList(i32 noundef %35)
  store ptr %36, ptr @combList, align 8
  %37 = load i32, ptr @listLength, align 4
  %38 = call ptr @newCombList(i32 noundef %37)
  store ptr %38, ptr @solution, align 8
  %39 = load ptr, ptr @workList, align 8
  %40 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %39, ptr noundef %1, i32 noundef %40)
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
