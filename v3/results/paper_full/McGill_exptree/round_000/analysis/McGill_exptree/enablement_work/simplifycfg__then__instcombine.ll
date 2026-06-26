; ModuleID = 'results\paper_full\McGill_exptree\McGill_exptree.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

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
@str = private unnamed_addr constant [2 x i8] c".\00", align 1
@str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @newWorkList(i32 noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = sext i32 %0 to i64
  %4 = call ptr @calloc(i64 noundef %3, i64 noundef 4) #7
  store ptr %4, ptr %2, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  ret ptr %6

7:                                                ; preds = %1
  %8 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %9 = call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %8)
  call void @exit(i32 noundef 1) #9
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
  %2 = alloca ptr, align 8
  %3 = sext i32 %0 to i64
  %4 = call ptr @calloc(i64 noundef %3, i64 noundef 12) #7
  store ptr %4, ptr %2, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  ret ptr %6

7:                                                ; preds = %1
  %8 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %9 = call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %8)
  call void @exit(i32 noundef 1) #9
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
  br label %8

8:                                                ; preds = %11, %3
  %storemerge = phi i32 [ 0, %3 ], [ %21, %11 ]
  store i32 %storemerge, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %storemerge, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 8
  %13 = load i32, ptr %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %17, i64 %18
  store i32 %16, ptr %19, align 4
  %20 = load i32, ptr %7, align 4
  %21 = add nsw i32 %20, 1
  br label %8, !llvm.loop !7

22:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %9, %2
  %storemerge = phi i32 [ 0, %2 ], [ %15, %9 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp slt i32 %storemerge, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [12 x i8], ptr %10, i64 %12
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %14, align 4
  %15 = add nsw i32 %11, 1
  br label %6, !llvm.loop !9

16:                                               ; preds = %6
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
  br label %8

8:                                                ; preds = %11, %3
  %storemerge = phi i32 [ 0, %3 ], [ %41, %11 ]
  store i32 %storemerge, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %storemerge, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 8
  %13 = load i32, ptr %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [12 x i8], ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds [12 x i8], ptr %17, i64 %18
  store i32 %16, ptr %19, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = load i32, ptr %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [12 x i8], ptr %20, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %4, align 8
  %27 = sext i32 %21 to i64
  %28 = getelementptr inbounds [12 x i8], ptr %26, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 4
  store i32 %25, ptr %29, align 4
  %30 = load ptr, ptr %5, align 8
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [12 x i8], ptr %30, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %4, align 8
  %37 = sext i32 %31 to i64
  %38 = getelementptr inbounds [12 x i8], ptr %36, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %35, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = add nsw i32 %40, 1
  br label %8, !llvm.loop !10

42:                                               ; preds = %8
  %43 = load ptr, ptr %4, align 8
  %44 = load i32, ptr %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [12 x i8], ptr %43, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 0, ptr %47, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %30 [
    i32 1, label %6
    i32 2, label %12
    i32 3, label %18
    i32 4, label %24
  ]

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = add nsw i32 %8, %10
  store i32 %11, ptr %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %16 = load i32, ptr %15, align 4
  %17 = sub nsw i32 %14, %16
  store i32 %17, ptr %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load ptr, ptr %3, align 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %22 = load i32, ptr %21, align 4
  %23 = mul nsw i32 %20, %22
  store i32 %23, ptr %2, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load ptr, ptr %3, align 8
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %28 = load i32, ptr %27, align 4
  %29 = sdiv i32 %26, %28
  store i32 %29, ptr %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %31

31:                                               ; preds = %30, %24, %18, %12, %6
  %32 = load i32, ptr %2, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %51, %2
  %storemerge = phi i32 [ 0, %2 ], [ %53, %51 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp slt i32 %storemerge, %7
  br i1 %8, label %9, label %54

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [12 x i8], ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %14) #8
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds [12 x i8], ptr %10, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %25 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %22
    i32 3, label %23
    i32 4, label %24
  ]

20:                                               ; preds = %9
  %putchar5 = call i32 @putchar(i32 32)
  br label %33

21:                                               ; preds = %9
  %putchar4 = call i32 @putchar(i32 43)
  br label %33

22:                                               ; preds = %9
  %putchar3 = call i32 @putchar(i32 45)
  br label %33

23:                                               ; preds = %9
  %putchar2 = call i32 @putchar(i32 42)
  br label %33

24:                                               ; preds = %9
  %putchar1 = call i32 @putchar(i32 58)
  br label %33

25:                                               ; preds = %9
  %26 = load ptr, ptr %3, align 8
  %27 = load i32, ptr %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [12 x i8], ptr %26, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %31 = load i32, ptr %30, align 4
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %31) #8
  br label %33

33:                                               ; preds = %25, %24, %23, %22, %21, %20
  %34 = load ptr, ptr %3, align 8
  %35 = load i32, ptr %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [12 x i8], ptr %34, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %39 = load i32, ptr %38, align 4
  %40 = sext i32 %35 to i64
  %41 = getelementptr inbounds [12 x i8], ptr %34, i64 %40
  %42 = call i32 @calculate(ptr noundef %41)
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %39, i32 noundef %42) #8
  %44 = load i32, ptr %5, align 4
  %45 = load i32, ptr %4, align 4
  %46 = add nsw i32 %45, -1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %51

50:                                               ; preds = %33
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %51

51:                                               ; preds = %48, %50
  %52 = load i32, ptr %5, align 4
  %53 = add nsw i32 %52, 1
  br label %6, !llvm.loop !11

54:                                               ; preds = %6
  %putchar = call i32 @putchar(i32 10)
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
  br label %8

8:                                                ; preds = %23, %3
  %storemerge = phi i32 [ 0, %3 ], [ %25, %23 ]
  store i32 %storemerge, ptr %7, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %storemerge, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, ptr %7, align 4
  %13 = shl nuw i32 1, %12
  %14 = load i32, ptr %6, align 4
  %15 = and i32 %13, %14
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %16, label %23

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %21) #8
  br label %23

23:                                               ; preds = %11, %16
  %24 = load i32, ptr %7, align 4
  %25 = add nsw i32 %24, 1
  br label %8, !llvm.loop !12

26:                                               ; preds = %8
  %putchar = call i32 @putchar(i32 10)
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
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %11 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %12, label %160

12:                                               ; preds = %2
  %13 = load i32, ptr @nbNodes, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @nbNodes, align 4
  %15 = load i32, ptr %3, align 4
  %16 = load i32, ptr @dmax, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %12
  %19 = load ptr, ptr @workList, align 8
  %20 = load i32, ptr @listLength, align 4
  %21 = load i32, ptr %3, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr [4 x i8], ptr %19, i64 %23
  %25 = getelementptr i8, ptr %24, i64 -4
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr @goal, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = load i32, ptr @best, align 4
  %31 = sub nsw i32 %30, %27
  %32 = call i32 @llvm.abs.i32(i32 %31, i1 true)
  %33 = icmp samesign ult i32 %29, %32
  br i1 %33, label %34, label %160

34:                                               ; preds = %18
  %35 = load ptr, ptr @workList, align 8
  %36 = load i32, ptr @listLength, align 4
  %37 = load i32, ptr %3, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr [4 x i8], ptr %35, i64 %39
  %41 = getelementptr i8, ptr %40, i64 -4
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr @best, align 4
  %43 = load i32, ptr %3, align 4
  store i32 %43, ptr @bestDepth, align 4
  %44 = load ptr, ptr @solution, align 8
  %45 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %44, ptr noundef %45, i32 noundef %43)
  %46 = load i32, ptr @best, align 4
  %47 = load i32, ptr @goal, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %160

49:                                               ; preds = %34
  %50 = load ptr, ptr @combList, align 8
  %51 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %50, i32 noundef %51)
  store i32 1, ptr @stopSearch, align 4
  br label %160

52:                                               ; preds = %12
  br label %53

53:                                               ; preds = %157, %52
  %storemerge = phi i32 [ 1, %52 ], [ %159, %157 ]
  store i32 %storemerge, ptr %5, align 4
  %54 = icmp slt i32 %storemerge, 5
  br i1 %54, label %55, label %160

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %154, %55
  %storemerge8 = phi i32 [ 0, %55 ], [ %156, %154 ]
  store i32 %storemerge8, ptr %7, align 4
  %57 = load i32, ptr @listLength, align 4
  %58 = load i32, ptr %3, align 4
  %59 = add nsw i32 %57, %58
  %60 = icmp slt i32 %storemerge8, %59
  br i1 %60, label %61, label %157

61:                                               ; preds = %56
  %62 = load i32, ptr %7, align 4
  %63 = shl nuw i32 1, %62
  %64 = load i32, ptr %4, align 4
  %65 = and i32 %63, %64
  %.not9 = icmp eq i32 %65, 0
  br i1 %.not9, label %66, label %154

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %151, %66
  %storemerge10 = phi i32 [ 0, %66 ], [ %153, %151 ]
  store i32 %storemerge10, ptr %8, align 4
  %68 = load i32, ptr %7, align 4
  %69 = icmp slt i32 %storemerge10, %68
  br i1 %69, label %70, label %154

70:                                               ; preds = %67
  %71 = load i32, ptr %8, align 4
  %72 = shl nuw i32 1, %71
  %73 = load i32, ptr %4, align 4
  %74 = and i32 %72, %73
  %.not11 = icmp eq i32 %74, 0
  br i1 %.not11, label %75, label %151

75:                                               ; preds = %70
  %76 = load ptr, ptr @workList, align 8
  %77 = load i32, ptr %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i8], ptr %76, i64 %78
  %80 = load i32, ptr %79, align 4
  store i32 %80, ptr %9, align 4
  %81 = load i32, ptr %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i8], ptr %76, i64 %82
  %84 = load i32, ptr %83, align 4
  store i32 %84, ptr %10, align 4
  %85 = load i32, ptr %5, align 4
  %86 = add i32 %85, -3
  %or.cond = icmp ult i32 %86, 2
  br i1 %or.cond, label %87, label %92

87:                                               ; preds = %75
  %88 = load i32, ptr %9, align 4
  %89 = icmp eq i32 %88, 1
  %90 = load i32, ptr %10, align 4
  %91 = icmp eq i32 %90, 1
  %or.cond3 = select i1 %89, i1 true, i1 %91
  br i1 %or.cond3, label %151, label %92

92:                                               ; preds = %87, %75
  %93 = load i32, ptr %9, align 4
  %94 = icmp eq i32 %93, 0
  %95 = load i32, ptr %10, align 4
  %96 = icmp eq i32 %95, 0
  %or.cond5 = select i1 %94, i1 true, i1 %96
  br i1 %or.cond5, label %151, label %97

97:                                               ; preds = %92
  %98 = load i32, ptr %5, align 4
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, ptr %9, align 4
  %102 = load i32, ptr %10, align 4
  %103 = srem i32 %101, %102
  %.not12 = icmp eq i32 %103, 0
  br i1 %.not12, label %104, label %151

104:                                              ; preds = %100, %97
  %105 = load i32, ptr %5, align 4
  %106 = icmp eq i32 %105, 4
  %107 = icmp eq i32 %105, 2
  %or.cond7 = or i1 %106, %107
  br i1 %or.cond7, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, ptr %9, align 4
  %110 = load i32, ptr %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, ptr %9, align 4
  %114 = load i32, ptr %10, align 4
  store i32 %114, ptr %9, align 4
  store i32 %113, ptr %10, align 4
  br label %115

115:                                              ; preds = %104, %112, %108
  %116 = load i32, ptr %4, align 4
  %117 = load i32, ptr %7, align 4
  %118 = shl nuw i32 1, %117
  %119 = or i32 %116, %118
  %120 = load i32, ptr %8, align 4
  %121 = shl nuw i32 1, %120
  %122 = or i32 %119, %121
  store i32 %122, ptr %6, align 4
  %123 = load i32, ptr %9, align 4
  %124 = load ptr, ptr @combList, align 8
  %125 = load i32, ptr %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [12 x i8], ptr %124, i64 %126
  store i32 %123, ptr %127, align 4
  %128 = load i32, ptr %10, align 4
  %129 = load ptr, ptr @combList, align 8
  %130 = sext i32 %125 to i64
  %131 = getelementptr inbounds [12 x i8], ptr %129, i64 %130
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 4
  store i32 %128, ptr %132, align 4
  %133 = load i32, ptr %5, align 4
  %134 = load ptr, ptr @combList, align 8
  %135 = load i32, ptr %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [12 x i8], ptr %134, i64 %136
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 8
  store i32 %133, ptr %138, align 4
  %139 = load ptr, ptr @combList, align 8
  %140 = sext i32 %135 to i64
  %141 = getelementptr inbounds [12 x i8], ptr %139, i64 %140
  %142 = call i32 @calculate(ptr noundef %141)
  %143 = load ptr, ptr @workList, align 8
  %144 = load i32, ptr @listLength, align 4
  %145 = load i32, ptr %3, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i8], ptr %143, i64 %147
  store i32 %142, ptr %148, align 4
  %149 = add nsw i32 %145, 1
  %150 = load i32, ptr %6, align 4
  call void @recSearch(i32 noundef %149, i32 noundef %150)
  br label %151

151:                                              ; preds = %100, %92, %87, %70, %115
  %152 = load i32, ptr %8, align 4
  %153 = add nsw i32 %152, 1
  br label %67, !llvm.loop !13

154:                                              ; preds = %67, %61
  %155 = load i32, ptr %7, align 4
  %156 = add nsw i32 %155, 1
  br label %56, !llvm.loop !14

157:                                              ; preds = %56
  %158 = load i32, ptr %5, align 4
  %159 = add nsw i32 %158, 1
  br label %53, !llvm.loop !15

160:                                              ; preds = %53, %18, %49, %34, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %24, %0
  %storemerge = phi i32 [ 0, %0 ], [ %26, %24 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = load i32, ptr @listLength, align 4
  %4 = icmp slt i32 %storemerge, %3
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = load ptr, ptr @workList, align 8
  %7 = load i32, ptr %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %6, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @goal, align 4
  %12 = sub nsw i32 %10, %11
  %13 = call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = load i32, ptr @best, align 4
  %15 = sub nsw i32 %14, %11
  %16 = call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = icmp samesign ult i32 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load ptr, ptr @workList, align 8
  %20 = load i32, ptr %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %19, i64 %21
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr @best, align 4
  br label %24

24:                                               ; preds = %5, %18
  %25 = load i32, ptr %1, align 4
  %26 = add nsw i32 %25, 1
  br label %2, !llvm.loop !16

27:                                               ; preds = %2
  %28 = load i32, ptr @best, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %47

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %38, %32
  %storemerge1 = phi i32 [ 1, %32 ], [ %40, %38 ]
  store i32 %storemerge1, ptr @dmax, align 4
  %34 = load i32, ptr @listLength, align 4
  %35 = icmp slt i32 %storemerge1, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %37 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %37, 0
  br i1 %.not, label %38, label %41

38:                                               ; preds = %36
  %39 = load i32, ptr @dmax, align 4
  %40 = add nsw i32 %39, 1
  br label %33, !llvm.loop !17

41:                                               ; preds = %36, %33
  %42 = load i32, ptr @stopSearch, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr @solution, align 8
  %46 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %45, i32 noundef %46)
  br label %47

47:                                               ; preds = %44, %41, %31
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  store i32 13, ptr %1, align 16
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 32, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1412, ptr %6, align 4
  br label %7

7:                                                ; preds = %12, %0
  %8 = call i32 @getchar() #8
  store i32 %8, ptr %3, align 4
  %9 = icmp ne i32 %8, 10
  %10 = icmp ne i32 %8, -1
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i32, ptr %3, align 4
  %14 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %15 = call i32 @ungetc(i32 noundef %13, ptr noundef %14) #8
  %16 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %17 = load i32, ptr %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %1, i64 %18
  %20 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #8
  %21 = add nsw i32 %17, 1
  store i32 %21, ptr %2, align 4
  br label %7, !llvm.loop !18

22:                                               ; preds = %7
  %23 = load i32, ptr %2, align 4
  %24 = icmp eq i32 %23, 0
  %spec.store.select = select i1 %24, i32 4, i32 %23
  store i32 %spec.store.select, ptr %2, align 4
  %25 = add nsw i32 %spec.store.select, -1
  store i32 %25, ptr @listLength, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %1, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr @goal, align 4
  %29 = shl nsw i32 %25, 1
  %30 = call ptr @newWorkList(i32 noundef %29)
  store ptr %30, ptr @workList, align 8
  %31 = load i32, ptr @listLength, align 4
  %32 = call ptr @newCombList(i32 noundef %31)
  store ptr %32, ptr @combList, align 8
  %33 = load i32, ptr @listLength, align 4
  %34 = call ptr @newCombList(i32 noundef %33)
  store ptr %34, ptr @solution, align 8
  %35 = load ptr, ptr @workList, align 8
  %36 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %35, ptr noundef nonnull %1, i32 noundef %36)
  %37 = load ptr, ptr @combList, align 8
  %38 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %37, i32 noundef %38)
  %39 = load ptr, ptr @solution, align 8
  %40 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %39, i32 noundef %40)
  %41 = load i32, ptr @listLength, align 4
  ret i32 %41
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
  %3 = call i32 @getInput()
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @search()
  br label %5

5:                                                ; preds = %4, %2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

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
