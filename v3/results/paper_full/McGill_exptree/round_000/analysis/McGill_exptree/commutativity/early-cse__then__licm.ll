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
  %8 = load i32, ptr %6, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %7, align 4
  br label %11

11:                                               ; preds = %19, %3
  %12 = phi i32 [ %20, %19 ], [ %.promoted, %3 ]
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i32, ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i32, ptr %10, i64 %15
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %14
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

15:                                               ; preds = %35, %3
  %16 = phi i32 [ %36, %35 ], [ %.promoted, %3 ]
  %17 = icmp slt i32 %16, %8
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %struct.Comb, ptr %9, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.Comb, ptr %10, i64 %19
  store i32 %21, ptr %22, align 4
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds %struct.Comb, ptr %11, i64 %23
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.Comb, ptr %12, i64 %23
  %28 = getelementptr inbounds nuw %struct.Comb, ptr %27, i32 0, i32 1
  store i32 %26, ptr %28, align 4
  %29 = sext i32 %16 to i64
  %30 = getelementptr inbounds %struct.Comb, ptr %13, i64 %29
  %31 = getelementptr inbounds nuw %struct.Comb, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.Comb, ptr %14, i64 %29
  %34 = getelementptr inbounds nuw %struct.Comb, ptr %33, i32 0, i32 2
  store i32 %32, ptr %34, align 4
  br label %35

35:                                               ; preds = %18
  %36 = add nsw i32 %16, 1
  br label %15, !llvm.loop !10

37:                                               ; preds = %15
  %.lcssa1 = phi i32 [ %16, %15 ]
  %.lcssa = phi i32 [ %8, %15 ]
  store i32 %.lcssa1, ptr %7, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = sext i32 %.lcssa to i64
  %40 = getelementptr inbounds %struct.Comb, ptr %38, i64 %39
  %41 = getelementptr inbounds nuw %struct.Comb, ptr %40, i32 0, i32 2
  store i32 0, ptr %41, align 4
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
  %6 = load i32, ptr %4, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %4, align 4
  %11 = sub nsw i32 %10, 1
  %.promoted = load i32, ptr %5, align 4
  br label %12

12:                                               ; preds = %49, %2
  %13 = phi i32 [ %50, %49 ], [ %.promoted, %2 ]
  %14 = icmp slt i32 %13, %6
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds %struct.Comb, ptr %7, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %18)
  %20 = sext i32 %13 to i64
  %21 = getelementptr inbounds %struct.Comb, ptr %8, i64 %20
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %34 [
    i32 0, label %24
    i32 1, label %26
    i32 2, label %28
    i32 3, label %30
    i32 4, label %32
  ]

24:                                               ; preds = %15
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %36

26:                                               ; preds = %15
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %36

28:                                               ; preds = %15
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %36

30:                                               ; preds = %15
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %36

32:                                               ; preds = %15
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %36

34:                                               ; preds = %15
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %23)
  br label %36

36:                                               ; preds = %34, %32, %30, %28, %26, %24
  %37 = sext i32 %13 to i64
  %38 = getelementptr inbounds %struct.Comb, ptr %9, i64 %37
  %39 = getelementptr inbounds nuw %struct.Comb, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @calculate(ptr noundef %38)
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %40, i32 noundef %41)
  %43 = icmp slt i32 %13, %11
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %48

46:                                               ; preds = %36
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48
  %50 = add nsw i32 %13, 1
  br label %12, !llvm.loop !11

51:                                               ; preds = %12
  %.lcssa = phi i32 [ %13, %12 ]
  store i32 %.lcssa, ptr %5, align 4
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br label %164

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
  br label %164

49:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  %50 = load i32, ptr %3, align 4
  %51 = load i32, ptr %4, align 4
  %52 = load i32, ptr %4, align 4
  %53 = load i32, ptr %4, align 4
  %54 = load i32, ptr %3, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, ptr %3, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32, ptr %3, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, ptr %3, align 4
  %61 = sext i32 %60 to i64
  %62 = load i32, ptr %3, align 4
  %63 = load i32, ptr %3, align 4
  %64 = add nsw i32 %63, 1
  %.promoted25 = load i32, ptr %5, align 4
  %.promoted27 = load i32, ptr %7, align 4
  %.promoted29 = load i32, ptr %8, align 4
  %.promoted31 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %10, align 4
  %.promoted34 = load i32, ptr %11, align 4
  %.promoted36 = load i32, ptr %6, align 4
  br label %65

65:                                               ; preds = %161, %49
  %.lcssa824.lcssa37 = phi i32 [ %.lcssa824.lcssa, %161 ], [ %.promoted36, %49 ]
  %.lcssa621.lcssa35 = phi i32 [ %.lcssa621.lcssa, %161 ], [ %.promoted34, %49 ]
  %.lcssa418.lcssa33 = phi i32 [ %.lcssa418.lcssa, %161 ], [ %.promoted, %49 ]
  %.lcssa215.lcssa32 = phi i32 [ %.lcssa215.lcssa, %161 ], [ %.promoted31, %49 ]
  %.lcssa13.lcssa30 = phi i32 [ %.lcssa13.lcssa, %161 ], [ %.promoted29, %49 ]
  %.lcssa1028 = phi i32 [ %.lcssa10, %161 ], [ %.promoted27, %49 ]
  %66 = phi i32 [ %162, %161 ], [ %.promoted25, %49 ]
  %67 = icmp sle i32 %66, 4
  br i1 %67, label %68, label %163

68:                                               ; preds = %65
  %69 = icmp eq i32 %66, 3
  %70 = icmp eq i32 %66, 4
  %71 = icmp eq i32 %66, 4
  %72 = icmp eq i32 %66, 4
  %73 = icmp eq i32 %66, 2
  br label %74

74:                                               ; preds = %158, %68
  %.lcssa824 = phi i32 [ %.lcssa823, %158 ], [ %.lcssa824.lcssa37, %68 ]
  %.lcssa621 = phi i32 [ %.lcssa620, %158 ], [ %.lcssa621.lcssa35, %68 ]
  %.lcssa418 = phi i32 [ %.lcssa417, %158 ], [ %.lcssa418.lcssa33, %68 ]
  %.lcssa215 = phi i32 [ %.lcssa214, %158 ], [ %.lcssa215.lcssa32, %68 ]
  %.lcssa13 = phi i32 [ %.lcssa12, %158 ], [ %.lcssa13.lcssa30, %68 ]
  %75 = phi i32 [ %159, %158 ], [ 0, %68 ]
  %76 = load i32, ptr @listLength, align 4
  %77 = add nsw i32 %76, %50
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %160

79:                                               ; preds = %74
  %80 = shl i32 1, %75
  %81 = and i32 %80, %51
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %158

84:                                               ; preds = %79
  %85 = sext i32 %75 to i64
  %86 = shl i32 1, %75
  %87 = or i32 %53, %86
  br label %88

88:                                               ; preds = %151, %84
  %89 = phi i32 [ %152, %151 ], [ %.lcssa824, %84 ]
  %90 = phi i32 [ %153, %151 ], [ %.lcssa621, %84 ]
  %91 = phi i32 [ %154, %151 ], [ %.lcssa418, %84 ]
  %92 = phi i32 [ %155, %151 ], [ %.lcssa215, %84 ]
  %93 = phi i32 [ %156, %151 ], [ 0, %84 ]
  %94 = icmp slt i32 %93, %75
  br i1 %94, label %95, label %157

95:                                               ; preds = %88
  %96 = shl i32 1, %93
  %97 = and i32 %96, %52
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %151

100:                                              ; preds = %95
  %101 = load ptr, ptr @workList, align 8
  %102 = getelementptr inbounds i32, ptr %101, i64 %85
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr @workList, align 8
  %105 = sext i32 %93 to i64
  %106 = getelementptr inbounds i32, ptr %104, i64 %105
  %107 = load i32, ptr %106, align 4
  br i1 %69, label %109, label %108

108:                                              ; preds = %100
  br i1 %70, label %109, label %114

109:                                              ; preds = %108, %100
  %110 = icmp eq i32 %103, 1
  br i1 %110, label %113, label %111

111:                                              ; preds = %109
  %112 = icmp eq i32 %107, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %111, %109
  br label %151

114:                                              ; preds = %111, %108
  %115 = icmp eq i32 %103, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %114
  %117 = icmp eq i32 %107, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %116, %114
  br label %151

119:                                              ; preds = %116
  br i1 %71, label %120, label %124

120:                                              ; preds = %119
  %121 = srem i32 %103, %107
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %151

124:                                              ; preds = %120, %119
  br i1 %72, label %126, label %125

125:                                              ; preds = %124
  br i1 %73, label %126, label %129

126:                                              ; preds = %125, %124
  %127 = icmp slt i32 %103, %107
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  br label %129

129:                                              ; preds = %128, %126, %125
  %130 = phi i32 [ %103, %128 ], [ %90, %126 ], [ %90, %125 ]
  %131 = phi i32 [ %103, %128 ], [ %107, %126 ], [ %107, %125 ]
  %132 = phi i32 [ %107, %128 ], [ %103, %126 ], [ %103, %125 ]
  %133 = shl i32 1, %93
  %134 = or i32 %87, %133
  %135 = load ptr, ptr @combList, align 8
  %136 = getelementptr inbounds %struct.Comb, ptr %135, i64 %55
  store i32 %132, ptr %136, align 4
  %137 = load ptr, ptr @combList, align 8
  %138 = getelementptr inbounds %struct.Comb, ptr %137, i64 %57
  %139 = getelementptr inbounds nuw %struct.Comb, ptr %138, i32 0, i32 1
  store i32 %131, ptr %139, align 4
  %140 = load ptr, ptr @combList, align 8
  %141 = getelementptr inbounds %struct.Comb, ptr %140, i64 %59
  %142 = getelementptr inbounds nuw %struct.Comb, ptr %141, i32 0, i32 2
  store i32 %66, ptr %142, align 4
  %143 = load ptr, ptr @combList, align 8
  %144 = getelementptr inbounds %struct.Comb, ptr %143, i64 %61
  %145 = call i32 @calculate(ptr noundef %144)
  %146 = load ptr, ptr @workList, align 8
  %147 = load i32, ptr @listLength, align 4
  %148 = add nsw i32 %147, %62
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, ptr %146, i64 %149
  store i32 %145, ptr %150, align 4
  call void @recSearch(i32 noundef %64, i32 noundef %134)
  br label %151

151:                                              ; preds = %129, %123, %118, %113, %99
  %152 = phi i32 [ %134, %129 ], [ %89, %123 ], [ %89, %118 ], [ %89, %113 ], [ %89, %99 ]
  %153 = phi i32 [ %130, %129 ], [ %90, %123 ], [ %90, %118 ], [ %90, %113 ], [ %90, %99 ]
  %154 = phi i32 [ %131, %129 ], [ %107, %123 ], [ %107, %118 ], [ %107, %113 ], [ %91, %99 ]
  %155 = phi i32 [ %132, %129 ], [ %103, %123 ], [ %103, %118 ], [ %103, %113 ], [ %92, %99 ]
  %156 = add nsw i32 %93, 1
  br label %88, !llvm.loop !13

157:                                              ; preds = %88
  %.lcssa8 = phi i32 [ %89, %88 ]
  %.lcssa6 = phi i32 [ %90, %88 ]
  %.lcssa4 = phi i32 [ %91, %88 ]
  %.lcssa2 = phi i32 [ %92, %88 ]
  %.lcssa = phi i32 [ %93, %88 ]
  br label %158

158:                                              ; preds = %157, %83
  %.lcssa823 = phi i32 [ %.lcssa8, %157 ], [ %.lcssa824, %83 ]
  %.lcssa620 = phi i32 [ %.lcssa6, %157 ], [ %.lcssa621, %83 ]
  %.lcssa417 = phi i32 [ %.lcssa4, %157 ], [ %.lcssa418, %83 ]
  %.lcssa214 = phi i32 [ %.lcssa2, %157 ], [ %.lcssa215, %83 ]
  %.lcssa12 = phi i32 [ %.lcssa, %157 ], [ %.lcssa13, %83 ]
  %159 = add nsw i32 %75, 1
  br label %74, !llvm.loop !14

160:                                              ; preds = %74
  %.lcssa824.lcssa = phi i32 [ %.lcssa824, %74 ]
  %.lcssa621.lcssa = phi i32 [ %.lcssa621, %74 ]
  %.lcssa418.lcssa = phi i32 [ %.lcssa418, %74 ]
  %.lcssa215.lcssa = phi i32 [ %.lcssa215, %74 ]
  %.lcssa13.lcssa = phi i32 [ %.lcssa13, %74 ]
  %.lcssa10 = phi i32 [ %75, %74 ]
  br label %161

161:                                              ; preds = %160
  %162 = add nsw i32 %66, 1
  br label %65, !llvm.loop !15

163:                                              ; preds = %65
  %.lcssa824.lcssa37.lcssa = phi i32 [ %.lcssa824.lcssa37, %65 ]
  %.lcssa621.lcssa35.lcssa = phi i32 [ %.lcssa621.lcssa35, %65 ]
  %.lcssa418.lcssa33.lcssa = phi i32 [ %.lcssa418.lcssa33, %65 ]
  %.lcssa215.lcssa32.lcssa = phi i32 [ %.lcssa215.lcssa32, %65 ]
  %.lcssa13.lcssa30.lcssa = phi i32 [ %.lcssa13.lcssa30, %65 ]
  %.lcssa1028.lcssa = phi i32 [ %.lcssa1028, %65 ]
  %.lcssa26 = phi i32 [ %66, %65 ]
  store i32 %.lcssa26, ptr %5, align 4
  store i32 %.lcssa1028.lcssa, ptr %7, align 4
  store i32 %.lcssa13.lcssa30.lcssa, ptr %8, align 4
  store i32 %.lcssa215.lcssa32.lcssa, ptr %9, align 4
  store i32 %.lcssa418.lcssa33.lcssa, ptr %10, align 4
  store i32 %.lcssa621.lcssa35.lcssa, ptr %11, align 4
  store i32 %.lcssa824.lcssa37.lcssa, ptr %6, align 4
  br label %164

164:                                              ; preds = %163, %48, %14
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
  %.promoted = load i32, ptr %1, align 4
  %best.promoted = load i32, ptr @best, align 4
  br label %5

5:                                                ; preds = %21, %0
  %6 = phi i32 [ %20, %21 ], [ %best.promoted, %0 ]
  %7 = phi i32 [ %22, %21 ], [ %.promoted, %0 ]
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds i32, ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %12, %4
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = sub nsw i32 %6, %4
  %16 = call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 %12, ptr @best, align 4
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i32 [ %12, %18 ], [ %6, %9 ]
  br label %21

21:                                               ; preds = %19
  %22 = add nsw i32 %7, 1
  br label %5, !llvm.loop !16

23:                                               ; preds = %5
  %.lcssa = phi i32 [ %7, %5 ]
  store i32 %.lcssa, ptr %1, align 4
  %24 = load i32, ptr @best, align 4
  %25 = load i32, ptr @goal, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %48

29:                                               ; preds = %23
  store i32 1, ptr @dmax, align 4
  br label %30

30:                                               ; preds = %39, %29
  %31 = load i32, ptr @dmax, align 4
  %32 = load i32, ptr @listLength, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %.loopexit

34:                                               ; preds = %30
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %35 = load i32, ptr @stopSearch, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %42

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr @dmax, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @dmax, align 4
  br label %30, !llvm.loop !17

.loopexit:                                        ; preds = %30
  br label %42

42:                                               ; preds = %.loopexit, %37
  %43 = load i32, ptr @stopSearch, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load ptr, ptr @solution, align 8
  %47 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %46, i32 noundef %47)
  br label %48

48:                                               ; preds = %45, %42, %27
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
  %.promoted = load i32, ptr %2, align 4
  br label %7

7:                                                ; preds = %15, %0
  %8 = phi i32 [ %22, %15 ], [ %.promoted, %0 ]
  %9 = call i32 @getchar()
  %10 = icmp ne i32 %9, 10
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = icmp ne i32 %9, -1
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i1 [ false, %7 ], [ %12, %11 ]
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = call ptr @__acrt_iob_func(i32 noundef 0)
  %17 = call i32 @ungetc(i32 noundef %9, ptr noundef %16)
  %18 = call ptr @__acrt_iob_func(i32 noundef 0)
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %19
  %21 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %18, ptr noundef @.str.2, ptr noundef %20)
  %22 = add nsw i32 %8, 1
  br label %7, !llvm.loop !18

23:                                               ; preds = %13
  %.lcssa1 = phi i32 [ %8, %13 ]
  %.lcssa = phi i32 [ %9, %13 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa1, ptr %2, align 4
  %24 = load i32, ptr %2, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 4, ptr %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, ptr %2, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, ptr @listLength, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr @goal, align 4
  %33 = load i32, ptr @listLength, align 4
  %34 = mul nsw i32 2, %33
  %35 = call ptr @newWorkList(i32 noundef %34)
  store ptr %35, ptr @workList, align 8
  %36 = load i32, ptr @listLength, align 4
  %37 = call ptr @newCombList(i32 noundef %36)
  store ptr %37, ptr @combList, align 8
  %38 = load i32, ptr @listLength, align 4
  %39 = call ptr @newCombList(i32 noundef %38)
  store ptr %39, ptr @solution, align 8
  %40 = load ptr, ptr @workList, align 8
  %41 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %40, ptr noundef %1, i32 noundef %41)
  %42 = load ptr, ptr @combList, align 8
  %43 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %42, i32 noundef %43)
  %44 = load ptr, ptr @solution, align 8
  %45 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %44, i32 noundef %45)
  %46 = load i32, ptr @listLength, align 4
  ret i32 %46
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
