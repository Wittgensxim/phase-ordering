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

8:                                                ; preds = %20, %3
  %storemerge = phi i32 [ 0, %3 ], [ %22, %20 ]
  store i32 %storemerge, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %storemerge, %9
  br i1 %10, label %11, label %23

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
  br label %20

20:                                               ; preds = %11
  %21 = load i32, ptr %7, align 4
  %22 = add nsw i32 %21, 1
  br label %8, !llvm.loop !7

23:                                               ; preds = %8
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

6:                                                ; preds = %15, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %15 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp slt i32 %storemerge, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [12 x i8], ptr %10, i64 %12
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %5, align 4
  %17 = add nsw i32 %16, 1
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
  br label %8

8:                                                ; preds = %40, %3
  %storemerge = phi i32 [ 0, %3 ], [ %42, %40 ]
  store i32 %storemerge, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %storemerge, %9
  br i1 %10, label %11, label %43

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
  br label %40

40:                                               ; preds = %11
  %41 = load i32, ptr %7, align 4
  %42 = add nsw i32 %41, 1
  br label %8, !llvm.loop !10

43:                                               ; preds = %8
  %44 = load ptr, ptr %4, align 8
  %45 = load i32, ptr %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [12 x i8], ptr %44, i64 %46
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 0, ptr %48, align 4
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
  %11 = add nsw i32 %10, %8
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
  %23 = mul nsw i32 %22, %20
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

6:                                                ; preds = %52, %2
  %storemerge = phi i32 [ 0, %2 ], [ %54, %52 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp slt i32 %storemerge, %7
  br i1 %8, label %9, label %55

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

51:                                               ; preds = %50, %48
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %5, align 4
  %54 = add nsw i32 %53, 1
  br label %6, !llvm.loop !11

55:                                               ; preds = %6
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

8:                                                ; preds = %24, %3
  %storemerge = phi i32 [ 0, %3 ], [ %26, %24 ]
  store i32 %storemerge, ptr %7, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %storemerge, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load i32, ptr %7, align 4
  %13 = shl nuw i32 1, %12
  %14 = load i32, ptr %6, align 4
  %15 = and i32 %13, %14
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %17, label %16

16:                                               ; preds = %11
  br label %24

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %22) #8
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i32, ptr %7, align 4
  %26 = add nsw i32 %25, 1
  br label %8, !llvm.loop !12

27:                                               ; preds = %8
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
  br i1 %.not, label %13, label %12

12:                                               ; preds = %2
  br label %178

13:                                               ; preds = %2
  %14 = load i32, ptr @nbNodes, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @nbNodes, align 4
  %16 = load i32, ptr %3, align 4
  %17 = load i32, ptr @dmax, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %13
  %20 = load ptr, ptr @workList, align 8
  %21 = load i32, ptr @listLength, align 4
  %22 = load i32, ptr %3, align 4
  %23 = add nsw i32 %22, %21
  %24 = sext i32 %23 to i64
  %25 = getelementptr [4 x i8], ptr %20, i64 %24
  %26 = getelementptr i8, ptr %25, i64 -4
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr @goal, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 @llvm.abs.i32(i32 %29, i1 true)
  %31 = load i32, ptr @best, align 4
  %32 = sub nsw i32 %31, %28
  %33 = call i32 @llvm.abs.i32(i32 %32, i1 true)
  %34 = icmp samesign ult i32 %30, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %19
  %36 = load ptr, ptr @workList, align 8
  %37 = load i32, ptr @listLength, align 4
  %38 = load i32, ptr %3, align 4
  %39 = add nsw i32 %38, %37
  %40 = sext i32 %39 to i64
  %41 = getelementptr [4 x i8], ptr %36, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -4
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr @best, align 4
  %44 = load i32, ptr %3, align 4
  store i32 %44, ptr @bestDepth, align 4
  %45 = load ptr, ptr @solution, align 8
  %46 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %45, ptr noundef %46, i32 noundef %44)
  %47 = load i32, ptr @best, align 4
  %48 = load i32, ptr @goal, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load ptr, ptr @combList, align 8
  %52 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %51, i32 noundef %52)
  store i32 1, ptr @stopSearch, align 4
  br label %53

53:                                               ; preds = %50, %35
  br label %54

54:                                               ; preds = %53, %19
  br label %178

55:                                               ; preds = %13
  br label %56

56:                                               ; preds = %174, %55
  %storemerge = phi i32 [ 1, %55 ], [ %176, %174 ]
  store i32 %storemerge, ptr %5, align 4
  %57 = icmp slt i32 %storemerge, 5
  br i1 %57, label %58, label %177

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %170, %58
  %storemerge1 = phi i32 [ 0, %58 ], [ %172, %170 ]
  store i32 %storemerge1, ptr %7, align 4
  %60 = load i32, ptr @listLength, align 4
  %61 = load i32, ptr %3, align 4
  %62 = add nsw i32 %61, %60
  %63 = icmp slt i32 %storemerge1, %62
  br i1 %63, label %64, label %173

64:                                               ; preds = %59
  %65 = load i32, ptr %7, align 4
  %66 = shl nuw i32 1, %65
  %67 = load i32, ptr %4, align 4
  %68 = and i32 %66, %67
  %.not2 = icmp eq i32 %68, 0
  br i1 %.not2, label %70, label %69

69:                                               ; preds = %64
  br label %170

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %166, %70
  %storemerge3 = phi i32 [ 0, %70 ], [ %168, %166 ]
  store i32 %storemerge3, ptr %8, align 4
  %72 = load i32, ptr %7, align 4
  %73 = icmp slt i32 %storemerge3, %72
  br i1 %73, label %74, label %169

74:                                               ; preds = %71
  %75 = load i32, ptr %8, align 4
  %76 = shl nuw i32 1, %75
  %77 = load i32, ptr %4, align 4
  %78 = and i32 %76, %77
  %.not4 = icmp eq i32 %78, 0
  br i1 %.not4, label %80, label %79

79:                                               ; preds = %74
  br label %166

80:                                               ; preds = %74
  %81 = load ptr, ptr @workList, align 8
  %82 = load i32, ptr %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i8], ptr %81, i64 %83
  %85 = load i32, ptr %84, align 4
  store i32 %85, ptr %9, align 4
  %86 = load i32, ptr %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], ptr %81, i64 %87
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr %10, align 4
  %90 = load i32, ptr %5, align 4
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %95, label %92

92:                                               ; preds = %80
  %93 = load i32, ptr %5, align 4
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %102

95:                                               ; preds = %92, %80
  %96 = load i32, ptr %9, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr %10, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %95
  br label %166

102:                                              ; preds = %98, %92
  %103 = load i32, ptr %9, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %10, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %102
  br label %166

109:                                              ; preds = %105
  %110 = load i32, ptr %5, align 4
  %111 = icmp eq i32 %110, 4
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, ptr %9, align 4
  %114 = load i32, ptr %10, align 4
  %115 = srem i32 %113, %114
  %.not5 = icmp eq i32 %115, 0
  br i1 %.not5, label %117, label %116

116:                                              ; preds = %112
  br label %166

117:                                              ; preds = %112, %109
  %118 = load i32, ptr %5, align 4
  %119 = icmp eq i32 %118, 4
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, ptr %5, align 4
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %130

123:                                              ; preds = %120, %117
  %124 = load i32, ptr %9, align 4
  %125 = load i32, ptr %10, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, ptr %9, align 4
  %129 = load i32, ptr %10, align 4
  store i32 %129, ptr %9, align 4
  store i32 %128, ptr %10, align 4
  br label %130

130:                                              ; preds = %127, %123, %120
  %131 = load i32, ptr %4, align 4
  %132 = load i32, ptr %7, align 4
  %133 = shl nuw i32 1, %132
  %134 = or i32 %133, %131
  %135 = load i32, ptr %8, align 4
  %136 = shl nuw i32 1, %135
  %137 = or i32 %134, %136
  store i32 %137, ptr %6, align 4
  %138 = load i32, ptr %9, align 4
  %139 = load ptr, ptr @combList, align 8
  %140 = load i32, ptr %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [12 x i8], ptr %139, i64 %141
  store i32 %138, ptr %142, align 4
  %143 = load i32, ptr %10, align 4
  %144 = load ptr, ptr @combList, align 8
  %145 = sext i32 %140 to i64
  %146 = getelementptr inbounds [12 x i8], ptr %144, i64 %145
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 4
  store i32 %143, ptr %147, align 4
  %148 = load i32, ptr %5, align 4
  %149 = load ptr, ptr @combList, align 8
  %150 = load i32, ptr %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [12 x i8], ptr %149, i64 %151
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 8
  store i32 %148, ptr %153, align 4
  %154 = load ptr, ptr @combList, align 8
  %155 = sext i32 %150 to i64
  %156 = getelementptr inbounds [12 x i8], ptr %154, i64 %155
  %157 = call i32 @calculate(ptr noundef %156)
  %158 = load ptr, ptr @workList, align 8
  %159 = load i32, ptr @listLength, align 4
  %160 = load i32, ptr %3, align 4
  %161 = add nsw i32 %160, %159
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [4 x i8], ptr %158, i64 %162
  store i32 %157, ptr %163, align 4
  %164 = add nsw i32 %160, 1
  %165 = load i32, ptr %6, align 4
  call void @recSearch(i32 noundef %164, i32 noundef %165)
  br label %166

166:                                              ; preds = %130, %116, %108, %101, %79
  %167 = load i32, ptr %8, align 4
  %168 = add nsw i32 %167, 1
  br label %71, !llvm.loop !13

169:                                              ; preds = %71
  br label %170

170:                                              ; preds = %169, %69
  %171 = load i32, ptr %7, align 4
  %172 = add nsw i32 %171, 1
  br label %59, !llvm.loop !14

173:                                              ; preds = %59
  br label %174

174:                                              ; preds = %173
  %175 = load i32, ptr %5, align 4
  %176 = add nsw i32 %175, 1
  br label %56, !llvm.loop !15

177:                                              ; preds = %56
  br label %178

178:                                              ; preds = %177, %54, %12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %25, %0
  %storemerge = phi i32 [ 0, %0 ], [ %27, %25 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = load i32, ptr @listLength, align 4
  %4 = icmp slt i32 %storemerge, %3
  br i1 %4, label %5, label %28

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

24:                                               ; preds = %18, %5
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %1, align 4
  %27 = add nsw i32 %26, 1
  br label %2, !llvm.loop !16

28:                                               ; preds = %2
  %29 = load i32, ptr @best, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %50

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %41, %33
  %storemerge1 = phi i32 [ 1, %33 ], [ %43, %41 ]
  store i32 %storemerge1, ptr @dmax, align 4
  %35 = load i32, ptr @listLength, align 4
  %36 = icmp slt i32 %storemerge1, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %38 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %38, 0
  br i1 %.not, label %40, label %39

39:                                               ; preds = %37
  br label %44

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr @dmax, align 4
  %43 = add nsw i32 %42, 1
  br label %34, !llvm.loop !17

44:                                               ; preds = %39, %34
  %45 = load i32, ptr @stopSearch, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load ptr, ptr @solution, align 8
  %49 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %48, i32 noundef %49)
  br label %50

50:                                               ; preds = %47, %44, %32
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

7:                                                ; preds = %14, %0
  %8 = call i32 @getchar() #8
  store i32 %8, ptr %3, align 4
  %.not = icmp eq i32 %8, 10
  br i1 %.not, label %12, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %3, align 4
  %11 = icmp ne i32 %10, -1
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i1 [ false, %7 ], [ %11, %9 ]
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = load i32, ptr %3, align 4
  %16 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %17 = call i32 @ungetc(i32 noundef %15, ptr noundef %16) #8
  %18 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %19 = load i32, ptr %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %1, i64 %20
  %22 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %18, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #8
  %23 = add nsw i32 %19, 1
  store i32 %23, ptr %2, align 4
  br label %7, !llvm.loop !18

24:                                               ; preds = %12
  %25 = load i32, ptr %2, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 4, ptr %2, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, ptr %2, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr @listLength, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr %1, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr @goal, align 4
  %34 = shl nsw i32 %30, 1
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
  call void @initWorkList(ptr noundef %40, ptr noundef nonnull %1, i32 noundef %41)
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
