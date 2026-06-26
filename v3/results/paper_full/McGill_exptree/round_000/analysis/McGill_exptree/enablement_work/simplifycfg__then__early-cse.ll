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
  br label %8

8:                                                ; preds = %12, %3
  %9 = load i32, ptr %7, align 4
  %10 = load i32, ptr %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %5, align 8
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 %14
  store i32 %16, ptr %18, align 4
  %19 = load i32, ptr %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %7, align 4
  br label %8, !llvm.loop !7

21:                                               ; preds = %8
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
  br label %6

6:                                                ; preds = %10, %2
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %11, i64 %12
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 2
  store i32 0, ptr %14, align 4
  %15 = load i32, ptr %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %5, align 4
  br label %6, !llvm.loop !9

17:                                               ; preds = %6
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
  br label %8

8:                                                ; preds = %12, %3
  %9 = load i32, ptr %7, align 4
  %10 = load i32, ptr %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load ptr, ptr %5, align 8
  %14 = sext i32 %9 to i64
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
  %37 = load i32, ptr %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %7, align 4
  br label %8, !llvm.loop !10

39:                                               ; preds = %8
  %40 = load ptr, ptr %4, align 8
  %41 = sext i32 %10 to i64
  %42 = getelementptr inbounds %struct.Comb, ptr %40, i64 %41
  %43 = getelementptr inbounds nuw %struct.Comb, ptr %42, i32 0, i32 2
  store i32 0, ptr %43, align 4
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
  br label %6

6:                                                ; preds = %51, %2
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %54

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8
  %12 = sext i32 %7 to i64
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

22:                                               ; preds = %10
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %34

24:                                               ; preds = %10
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %34

26:                                               ; preds = %10
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %34

28:                                               ; preds = %10
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %34

30:                                               ; preds = %10
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %34

32:                                               ; preds = %10
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

51:                                               ; preds = %47, %49
  %52 = load i32, ptr %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %5, align 4
  br label %6, !llvm.loop !11

54:                                               ; preds = %6
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br label %8

8:                                                ; preds = %23, %3
  %9 = load i32, ptr %7, align 4
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = shl i32 1, %9
  %14 = load i32, ptr %6, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 8
  %19 = sext i32 %9 to i64
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %21)
  br label %23

23:                                               ; preds = %12, %17
  %24 = load i32, ptr %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %7, align 4
  br label %8, !llvm.loop !12

26:                                               ; preds = %8
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
  br i1 %13, label %159, label %14

14:                                               ; preds = %2
  %15 = load i32, ptr @nbNodes, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @nbNodes, align 4
  %17 = load i32, ptr %3, align 4
  %18 = load i32, ptr @dmax, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %14
  %21 = load ptr, ptr @workList, align 8
  %22 = load i32, ptr @listLength, align 4
  %23 = add nsw i32 %22, %17
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
  br i1 %34, label %35, label %159

35:                                               ; preds = %20
  store i32 %27, ptr @best, align 4
  %36 = load i32, ptr %3, align 4
  store i32 %36, ptr @bestDepth, align 4
  %37 = load ptr, ptr @solution, align 8
  %38 = load ptr, ptr @combList, align 8
  %39 = load i32, ptr %3, align 4
  call void @saveSolution(ptr noundef %37, ptr noundef %38, i32 noundef %39)
  %40 = load i32, ptr @best, align 4
  %41 = load i32, ptr @goal, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %159

43:                                               ; preds = %35
  %44 = load ptr, ptr @combList, align 8
  %45 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %44, i32 noundef %45)
  store i32 1, ptr @stopSearch, align 4
  br label %159

46:                                               ; preds = %14
  store i32 1, ptr %5, align 4
  br label %47

47:                                               ; preds = %156, %46
  %48 = load i32, ptr %5, align 4
  %49 = icmp sle i32 %48, 4
  br i1 %49, label %50, label %159

50:                                               ; preds = %47
  store i32 0, ptr %7, align 4
  br label %51

51:                                               ; preds = %153, %50
  %52 = load i32, ptr %7, align 4
  %53 = load i32, ptr @listLength, align 4
  %54 = load i32, ptr %3, align 4
  %55 = add nsw i32 %53, %54
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %156

57:                                               ; preds = %51
  %58 = shl i32 1, %52
  %59 = load i32, ptr %4, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %153, label %62

62:                                               ; preds = %57
  store i32 0, ptr %8, align 4
  br label %63

63:                                               ; preds = %150, %62
  %64 = load i32, ptr %8, align 4
  %65 = load i32, ptr %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %153

67:                                               ; preds = %63
  %68 = shl i32 1, %64
  %69 = load i32, ptr %4, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %150, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr @workList, align 8
  %74 = sext i32 %65 to i64
  %75 = getelementptr inbounds i32, ptr %73, i64 %74
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %9, align 4
  %77 = load ptr, ptr @workList, align 8
  %78 = load i32, ptr %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %77, i64 %79
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %10, align 4
  %82 = load i32, ptr %5, align 4
  %83 = icmp eq i32 %82, 3
  %84 = icmp eq i32 %82, 4
  %or.cond = select i1 %83, i1 true, i1 %84
  br i1 %or.cond, label %85, label %89

85:                                               ; preds = %72
  %86 = load i32, ptr %9, align 4
  %87 = icmp eq i32 %86, 1
  %88 = icmp eq i32 %81, 1
  %or.cond3 = select i1 %87, i1 true, i1 %88
  br i1 %or.cond3, label %150, label %89

89:                                               ; preds = %85, %72
  %90 = load i32, ptr %9, align 4
  %91 = icmp eq i32 %90, 0
  %92 = load i32, ptr %10, align 4
  %93 = icmp eq i32 %92, 0
  %or.cond5 = select i1 %91, i1 true, i1 %93
  br i1 %or.cond5, label %150, label %94

94:                                               ; preds = %89
  %95 = load i32, ptr %5, align 4
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = srem i32 %90, %92
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %150, label %100

100:                                              ; preds = %97, %94
  %101 = load i32, ptr %5, align 4
  %102 = icmp eq i32 %101, 4
  %103 = icmp eq i32 %101, 2
  %or.cond7 = select i1 %102, i1 true, i1 %103
  br i1 %or.cond7, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32, ptr %9, align 4
  %106 = load i32, ptr %10, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  store i32 %105, ptr %11, align 4
  %109 = load i32, ptr %10, align 4
  store i32 %109, ptr %9, align 4
  %110 = load i32, ptr %11, align 4
  store i32 %110, ptr %10, align 4
  br label %111

111:                                              ; preds = %100, %108, %104
  %112 = load i32, ptr %4, align 4
  %113 = load i32, ptr %7, align 4
  %114 = shl i32 1, %113
  %115 = or i32 %112, %114
  %116 = load i32, ptr %8, align 4
  %117 = shl i32 1, %116
  %118 = or i32 %115, %117
  store i32 %118, ptr %6, align 4
  %119 = load i32, ptr %9, align 4
  %120 = load ptr, ptr @combList, align 8
  %121 = load i32, ptr %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.Comb, ptr %120, i64 %122
  store i32 %119, ptr %123, align 4
  %124 = load i32, ptr %10, align 4
  %125 = load ptr, ptr @combList, align 8
  %126 = load i32, ptr %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.Comb, ptr %125, i64 %127
  %129 = getelementptr inbounds nuw %struct.Comb, ptr %128, i32 0, i32 1
  store i32 %124, ptr %129, align 4
  %130 = load i32, ptr %5, align 4
  %131 = load ptr, ptr @combList, align 8
  %132 = load i32, ptr %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.Comb, ptr %131, i64 %133
  %135 = getelementptr inbounds nuw %struct.Comb, ptr %134, i32 0, i32 2
  store i32 %130, ptr %135, align 4
  %136 = load ptr, ptr @combList, align 8
  %137 = load i32, ptr %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.Comb, ptr %136, i64 %138
  %140 = call i32 @calculate(ptr noundef %139)
  %141 = load ptr, ptr @workList, align 8
  %142 = load i32, ptr @listLength, align 4
  %143 = load i32, ptr %3, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, ptr %141, i64 %145
  store i32 %140, ptr %146, align 4
  %147 = load i32, ptr %3, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, ptr %6, align 4
  call void @recSearch(i32 noundef %148, i32 noundef %149)
  br label %150

150:                                              ; preds = %97, %89, %85, %67, %111
  %151 = load i32, ptr %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %8, align 4
  br label %63, !llvm.loop !13

153:                                              ; preds = %63, %57
  %154 = load i32, ptr %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, ptr %7, align 4
  br label %51, !llvm.loop !14

156:                                              ; preds = %51
  %157 = load i32, ptr %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, ptr %5, align 4
  br label %47, !llvm.loop !15

159:                                              ; preds = %47, %20, %43, %35, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %19, %0
  %3 = load i32, ptr %1, align 4
  %4 = load i32, ptr @listLength, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = load ptr, ptr @workList, align 8
  %8 = sext i32 %3 to i64
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

18:                                               ; preds = %6
  store i32 %10, ptr @best, align 4
  br label %19

19:                                               ; preds = %6, %18
  %20 = load i32, ptr %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %1, align 4
  br label %2, !llvm.loop !16

22:                                               ; preds = %2
  %23 = load i32, ptr @best, align 4
  %24 = load i32, ptr @goal, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %45

28:                                               ; preds = %22
  store i32 1, ptr @dmax, align 4
  br label %29

29:                                               ; preds = %36, %28
  %30 = load i32, ptr @dmax, align 4
  %31 = load i32, ptr @listLength, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %34 = load i32, ptr @stopSearch, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr @dmax, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @dmax, align 4
  br label %29, !llvm.loop !17

39:                                               ; preds = %33, %29
  %40 = load i32, ptr @stopSearch, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load ptr, ptr @solution, align 8
  %44 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %43, i32 noundef %44)
  br label %45

45:                                               ; preds = %42, %39, %26
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

7:                                                ; preds = %12, %0
  %8 = call i32 @getchar()
  store i32 %8, ptr %3, align 4
  %9 = icmp ne i32 %8, 10
  %10 = icmp ne i32 %8, -1
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = call ptr @__acrt_iob_func(i32 noundef 0)
  %14 = call i32 @ungetc(i32 noundef %8, ptr noundef %13)
  %15 = call ptr @__acrt_iob_func(i32 noundef 0)
  %16 = load i32, ptr %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %17
  %19 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %15, ptr noundef @.str.2, ptr noundef %18)
  %20 = load i32, ptr %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %2, align 4
  br label %7, !llvm.loop !18

22:                                               ; preds = %7
  %23 = load i32, ptr %2, align 4
  %24 = icmp eq i32 %23, 0
  %spec.store.select = select i1 %24, i32 4, i32 %23
  store i32 %spec.store.select, ptr %2, align 4
  %25 = sub nsw i32 %spec.store.select, 1
  store i32 %25, ptr @listLength, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr @goal, align 4
  %29 = load i32, ptr @listLength, align 4
  %30 = mul nsw i32 2, %29
  %31 = call ptr @newWorkList(i32 noundef %30)
  store ptr %31, ptr @workList, align 8
  %32 = load i32, ptr @listLength, align 4
  %33 = call ptr @newCombList(i32 noundef %32)
  store ptr %33, ptr @combList, align 8
  %34 = load i32, ptr @listLength, align 4
  %35 = call ptr @newCombList(i32 noundef %34)
  store ptr %35, ptr @solution, align 8
  %36 = load ptr, ptr @workList, align 8
  %37 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %36, ptr noundef %1, i32 noundef %37)
  %38 = load ptr, ptr @combList, align 8
  %39 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %38, i32 noundef %39)
  %40 = load ptr, ptr @solution, align 8
  %41 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %40, i32 noundef %41)
  %42 = load i32, ptr @listLength, align 4
  ret i32 %42
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
