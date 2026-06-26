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
  br label %8

8:                                                ; preds = %12, %3
  %9 = load i32, ptr %7, align 4
  %10 = load i32, ptr %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load ptr, ptr %5, align 8
  %14 = load i32, ptr %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  store i32 %17, ptr %21, align 4
  %22 = load i32, ptr %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %7, align 4
  br label %8, !llvm.loop !7

24:                                               ; preds = %8
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
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.Comb, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 2
  store i32 0, ptr %15, align 4
  %16 = load i32, ptr %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %5, align 4
  br label %6, !llvm.loop !9

18:                                               ; preds = %6
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
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load ptr, ptr %5, align 8
  %14 = load i32, ptr %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.Comb, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Comb, ptr %19, i64 %21
  %23 = getelementptr inbounds nuw %struct.Comb, ptr %22, i32 0, i32 0
  store i32 %18, ptr %23, align 4
  %24 = load ptr, ptr %5, align 8
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Comb, ptr %24, i64 %26
  %28 = getelementptr inbounds nuw %struct.Comb, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.Comb, ptr %30, i64 %32
  %34 = getelementptr inbounds nuw %struct.Comb, ptr %33, i32 0, i32 1
  store i32 %29, ptr %34, align 4
  %35 = load ptr, ptr %5, align 8
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.Comb, ptr %35, i64 %37
  %39 = getelementptr inbounds nuw %struct.Comb, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %4, align 8
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.Comb, ptr %41, i64 %43
  %45 = getelementptr inbounds nuw %struct.Comb, ptr %44, i32 0, i32 2
  store i32 %40, ptr %45, align 4
  %46 = load i32, ptr %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %7, align 4
  br label %8, !llvm.loop !10

48:                                               ; preds = %8
  %49 = load ptr, ptr %4, align 8
  %50 = load i32, ptr %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.Comb, ptr %49, i64 %51
  %53 = getelementptr inbounds nuw %struct.Comb, ptr %52, i32 0, i32 2
  store i32 0, ptr %53, align 4
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
  br label %6

6:                                                ; preds = %63, %2
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %66

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.Comb, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %16)
  %18 = load ptr, ptr %3, align 8
  %19 = load i32, ptr %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Comb, ptr %18, i64 %20
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %34 [
    i32 0, label %24
    i32 1, label %26
    i32 2, label %28
    i32 3, label %30
    i32 4, label %32
  ]

24:                                               ; preds = %10
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %42

26:                                               ; preds = %10
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %42

28:                                               ; preds = %10
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %42

30:                                               ; preds = %10
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %42

32:                                               ; preds = %10
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %42

34:                                               ; preds = %10
  %35 = load ptr, ptr %3, align 8
  %36 = load i32, ptr %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.Comb, ptr %35, i64 %37
  %39 = getelementptr inbounds nuw %struct.Comb, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %40)
  br label %42

42:                                               ; preds = %34, %32, %30, %28, %26, %24
  %43 = load ptr, ptr %3, align 8
  %44 = load i32, ptr %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.Comb, ptr %43, i64 %45
  %47 = getelementptr inbounds nuw %struct.Comb, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %3, align 8
  %50 = load i32, ptr %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.Comb, ptr %49, i64 %51
  %53 = call i32 @calculate(ptr noundef %52)
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %48, i32 noundef %53)
  %55 = load i32, ptr %5, align 4
  %56 = load i32, ptr %4, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %42
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %63

61:                                               ; preds = %42
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %63

63:                                               ; preds = %59, %61
  %64 = load i32, ptr %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %5, align 4
  br label %6, !llvm.loop !11

66:                                               ; preds = %6
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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

8:                                                ; preds = %25, %3
  %9 = load i32, ptr %7, align 4
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i32, ptr %7, align 4
  %14 = shl i32 1, %13
  %15 = load i32, ptr %6, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %23)
  br label %25

25:                                               ; preds = %12, %18
  %26 = load i32, ptr %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %7, align 4
  br label %8, !llvm.loop !12

28:                                               ; preds = %8
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
  br i1 %13, label %179, label %14

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
  br i1 %36, label %37, label %179

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
  br i1 %52, label %53, label %179

53:                                               ; preds = %37
  %54 = load ptr, ptr @combList, align 8
  %55 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %54, i32 noundef %55)
  store i32 1, ptr @stopSearch, align 4
  br label %179

56:                                               ; preds = %14
  store i32 1, ptr %5, align 4
  br label %57

57:                                               ; preds = %176, %56
  %58 = load i32, ptr %5, align 4
  %59 = icmp sle i32 %58, 4
  br i1 %59, label %60, label %179

60:                                               ; preds = %57
  store i32 0, ptr %7, align 4
  br label %61

61:                                               ; preds = %173, %60
  %62 = load i32, ptr %7, align 4
  %63 = load i32, ptr @listLength, align 4
  %64 = load i32, ptr %3, align 4
  %65 = add nsw i32 %63, %64
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %176

67:                                               ; preds = %61
  %68 = load i32, ptr %7, align 4
  %69 = shl i32 1, %68
  %70 = load i32, ptr %4, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %173, label %73

73:                                               ; preds = %67
  store i32 0, ptr %8, align 4
  br label %74

74:                                               ; preds = %170, %73
  %75 = load i32, ptr %8, align 4
  %76 = load i32, ptr %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %173

78:                                               ; preds = %74
  %79 = load i32, ptr %8, align 4
  %80 = shl i32 1, %79
  %81 = load i32, ptr %4, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %170, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr @workList, align 8
  %86 = load i32, ptr %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, ptr %85, i64 %87
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr %9, align 4
  %90 = load ptr, ptr @workList, align 8
  %91 = load i32, ptr %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %90, i64 %92
  %94 = load i32, ptr %93, align 4
  store i32 %94, ptr %10, align 4
  %95 = load i32, ptr %5, align 4
  %96 = icmp eq i32 %95, 3
  %97 = load i32, ptr %5, align 4
  %98 = icmp eq i32 %97, 4
  %or.cond = select i1 %96, i1 true, i1 %98
  br i1 %or.cond, label %99, label %104

99:                                               ; preds = %84
  %100 = load i32, ptr %9, align 4
  %101 = icmp eq i32 %100, 1
  %102 = load i32, ptr %10, align 4
  %103 = icmp eq i32 %102, 1
  %or.cond3 = select i1 %101, i1 true, i1 %103
  br i1 %or.cond3, label %170, label %104

104:                                              ; preds = %99, %84
  %105 = load i32, ptr %9, align 4
  %106 = icmp eq i32 %105, 0
  %107 = load i32, ptr %10, align 4
  %108 = icmp eq i32 %107, 0
  %or.cond5 = select i1 %106, i1 true, i1 %108
  br i1 %or.cond5, label %170, label %109

109:                                              ; preds = %104
  %110 = load i32, ptr %5, align 4
  %111 = icmp eq i32 %110, 4
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, ptr %9, align 4
  %114 = load i32, ptr %10, align 4
  %115 = srem i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %170, label %117

117:                                              ; preds = %112, %109
  %118 = load i32, ptr %5, align 4
  %119 = icmp eq i32 %118, 4
  %120 = load i32, ptr %5, align 4
  %121 = icmp eq i32 %120, 2
  %or.cond7 = select i1 %119, i1 true, i1 %121
  br i1 %or.cond7, label %122, label %130

122:                                              ; preds = %117
  %123 = load i32, ptr %9, align 4
  %124 = load i32, ptr %10, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, ptr %9, align 4
  store i32 %127, ptr %11, align 4
  %128 = load i32, ptr %10, align 4
  store i32 %128, ptr %9, align 4
  %129 = load i32, ptr %11, align 4
  store i32 %129, ptr %10, align 4
  br label %130

130:                                              ; preds = %117, %126, %122
  %131 = load i32, ptr %4, align 4
  %132 = load i32, ptr %7, align 4
  %133 = shl i32 1, %132
  %134 = or i32 %131, %133
  %135 = load i32, ptr %8, align 4
  %136 = shl i32 1, %135
  %137 = or i32 %134, %136
  store i32 %137, ptr %6, align 4
  %138 = load i32, ptr %9, align 4
  %139 = load ptr, ptr @combList, align 8
  %140 = load i32, ptr %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.Comb, ptr %139, i64 %141
  %143 = getelementptr inbounds nuw %struct.Comb, ptr %142, i32 0, i32 0
  store i32 %138, ptr %143, align 4
  %144 = load i32, ptr %10, align 4
  %145 = load ptr, ptr @combList, align 8
  %146 = load i32, ptr %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.Comb, ptr %145, i64 %147
  %149 = getelementptr inbounds nuw %struct.Comb, ptr %148, i32 0, i32 1
  store i32 %144, ptr %149, align 4
  %150 = load i32, ptr %5, align 4
  %151 = load ptr, ptr @combList, align 8
  %152 = load i32, ptr %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.Comb, ptr %151, i64 %153
  %155 = getelementptr inbounds nuw %struct.Comb, ptr %154, i32 0, i32 2
  store i32 %150, ptr %155, align 4
  %156 = load ptr, ptr @combList, align 8
  %157 = load i32, ptr %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.Comb, ptr %156, i64 %158
  %160 = call i32 @calculate(ptr noundef %159)
  %161 = load ptr, ptr @workList, align 8
  %162 = load i32, ptr @listLength, align 4
  %163 = load i32, ptr %3, align 4
  %164 = add nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %161, i64 %165
  store i32 %160, ptr %166, align 4
  %167 = load i32, ptr %3, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, ptr %6, align 4
  call void @recSearch(i32 noundef %168, i32 noundef %169)
  br label %170

170:                                              ; preds = %112, %104, %99, %78, %130
  %171 = load i32, ptr %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr %8, align 4
  br label %74, !llvm.loop !13

173:                                              ; preds = %74, %67
  %174 = load i32, ptr %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %7, align 4
  br label %61, !llvm.loop !14

176:                                              ; preds = %61
  %177 = load i32, ptr %5, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr %5, align 4
  br label %57, !llvm.loop !15

179:                                              ; preds = %57, %20, %53, %37, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %26, %0
  %3 = load i32, ptr %1, align 4
  %4 = load i32, ptr @listLength, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = load ptr, ptr @workList, align 8
  %8 = load i32, ptr %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %7, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr @goal, align 4
  %13 = sub nsw i32 %11, %12
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = load i32, ptr @best, align 4
  %16 = load i32, ptr @goal, align 4
  %17 = sub nsw i32 %15, %16
  %18 = call i32 @llvm.abs.i32(i32 %17, i1 true)
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load ptr, ptr @workList, align 8
  %22 = load i32, ptr %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr @best, align 4
  br label %26

26:                                               ; preds = %6, %20
  %27 = load i32, ptr %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %1, align 4
  br label %2, !llvm.loop !16

29:                                               ; preds = %2
  %30 = load i32, ptr @best, align 4
  %31 = load i32, ptr @goal, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %51

35:                                               ; preds = %29
  store i32 1, ptr @dmax, align 4
  br label %36

36:                                               ; preds = %43, %35
  %37 = load i32, ptr @dmax, align 4
  %38 = load i32, ptr @listLength, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %.loopexit

40:                                               ; preds = %36
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %41 = load i32, ptr @stopSearch, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %.loopexit, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr @dmax, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr @dmax, align 4
  br label %36, !llvm.loop !17

.loopexit:                                        ; preds = %36, %40
  %46 = load i32, ptr @stopSearch, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %.loopexit
  %49 = load ptr, ptr @solution, align 8
  %50 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %49, i32 noundef %50)
  br label %51

51:                                               ; preds = %48, %.loopexit, %33
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
  br label %8

8:                                                ; preds = %14, %0
  %9 = call i32 @getchar()
  store i32 %9, ptr %3, align 4
  %10 = icmp ne i32 %9, 10
  %11 = load i32, ptr %3, align 4
  %12 = icmp ne i32 %11, -1
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
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
  br label %8, !llvm.loop !18

25:                                               ; preds = %8
  %26 = load i32, ptr %2, align 4
  %27 = icmp eq i32 %26, 0
  %spec.store.select = select i1 %27, i32 4, i32 %26
  store i32 %spec.store.select, ptr %2, align 4
  %28 = load i32, ptr %2, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, ptr @listLength, align 4
  %30 = load i32, ptr @listLength, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr @goal, align 4
  %34 = load i32, ptr @listLength, align 4
  %35 = mul nsw i32 2, %34
  %36 = call ptr @newWorkList(i32 noundef %35)
  store ptr %36, ptr @workList, align 8
  %37 = load i32, ptr @listLength, align 4
  %38 = call ptr @newCombList(i32 noundef %37)
  store ptr %38, ptr @combList, align 8
  %39 = load i32, ptr @listLength, align 4
  %40 = call ptr @newCombList(i32 noundef %39)
  store ptr %40, ptr @solution, align 8
  %41 = load ptr, ptr @workList, align 8
  %42 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  %43 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %41, ptr noundef %42, i32 noundef %43)
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
