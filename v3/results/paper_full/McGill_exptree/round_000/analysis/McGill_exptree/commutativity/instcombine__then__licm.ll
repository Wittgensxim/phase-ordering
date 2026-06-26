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
  %8 = load i32, ptr %6, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  br label %11

11:                                               ; preds = %19, %3
  %storemerge = phi i32 [ 0, %3 ], [ %20, %19 ]
  %12 = icmp slt i32 %storemerge, %8
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %9, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %storemerge to i64
  %18 = getelementptr inbounds [4 x i8], ptr %10, i64 %17
  store i32 %16, ptr %18, align 4
  br label %19

19:                                               ; preds = %13
  %20 = add nsw i32 %storemerge, 1
  br label %11, !llvm.loop !7

21:                                               ; preds = %11
  %storemerge.lcssa = phi i32 [ %storemerge, %11 ]
  store i32 %storemerge.lcssa, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %4, align 4
  %7 = load ptr, ptr %3, align 8
  br label %8

8:                                                ; preds = %14, %2
  %storemerge = phi i32 [ 0, %2 ], [ %15, %14 ]
  %9 = icmp slt i32 %storemerge, %6
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = sext i32 %storemerge to i64
  %12 = getelementptr inbounds [12 x i8], ptr %7, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %storemerge, 1
  br label %8, !llvm.loop !9

16:                                               ; preds = %8
  %storemerge.lcssa = phi i32 [ %storemerge, %8 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
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
  %8 = load i32, ptr %6, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  br label %15

15:                                               ; preds = %37, %3
  %storemerge = phi i32 [ 0, %3 ], [ %38, %37 ]
  %16 = icmp slt i32 %storemerge, %8
  br i1 %16, label %17, label %39

17:                                               ; preds = %15
  %18 = sext i32 %storemerge to i64
  %19 = getelementptr inbounds [12 x i8], ptr %9, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %storemerge to i64
  %22 = getelementptr inbounds [12 x i8], ptr %10, i64 %21
  store i32 %20, ptr %22, align 4
  %23 = sext i32 %storemerge to i64
  %24 = getelementptr inbounds [12 x i8], ptr %11, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %storemerge to i64
  %28 = getelementptr inbounds [12 x i8], ptr %12, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 4
  store i32 %26, ptr %29, align 4
  %30 = sext i32 %storemerge to i64
  %31 = getelementptr inbounds [12 x i8], ptr %13, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %storemerge to i64
  %35 = getelementptr inbounds [12 x i8], ptr %14, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 %33, ptr %36, align 4
  br label %37

37:                                               ; preds = %17
  %38 = add nsw i32 %storemerge, 1
  br label %15, !llvm.loop !10

39:                                               ; preds = %15
  %storemerge.lcssa = phi i32 [ %storemerge, %15 ]
  store i32 %storemerge.lcssa, ptr %7, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [12 x i8], ptr %40, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 0, ptr %44, align 4
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
  %6 = load i32, ptr %4, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %4, align 4
  %11 = add nsw i32 %10, -1
  br label %12

12:                                               ; preds = %48, %2
  %storemerge = phi i32 [ 0, %2 ], [ %49, %48 ]
  %13 = icmp slt i32 %storemerge, %6
  br i1 %13, label %14, label %50

14:                                               ; preds = %12
  %15 = sext i32 %storemerge to i64
  %16 = getelementptr inbounds [12 x i8], ptr %7, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %17) #8
  %19 = sext i32 %storemerge to i64
  %20 = getelementptr inbounds [12 x i8], ptr %7, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %28 [
    i32 0, label %23
    i32 1, label %24
    i32 2, label %25
    i32 3, label %26
    i32 4, label %27
  ]

23:                                               ; preds = %14
  %putchar5 = call i32 @putchar(i32 32)
  br label %34

24:                                               ; preds = %14
  %putchar4 = call i32 @putchar(i32 43)
  br label %34

25:                                               ; preds = %14
  %putchar3 = call i32 @putchar(i32 45)
  br label %34

26:                                               ; preds = %14
  %putchar2 = call i32 @putchar(i32 42)
  br label %34

27:                                               ; preds = %14
  %putchar1 = call i32 @putchar(i32 58)
  br label %34

28:                                               ; preds = %14
  %29 = sext i32 %storemerge to i64
  %30 = getelementptr inbounds [12 x i8], ptr %8, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %32 = load i32, ptr %31, align 4
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %32) #8
  br label %34

34:                                               ; preds = %28, %27, %26, %25, %24, %23
  %35 = sext i32 %storemerge to i64
  %36 = getelementptr inbounds [12 x i8], ptr %9, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 4
  %38 = load i32, ptr %37, align 4
  %39 = sext i32 %storemerge to i64
  %40 = getelementptr inbounds [12 x i8], ptr %9, i64 %39
  %41 = call i32 @calculate(ptr noundef %40)
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %38, i32 noundef %41) #8
  %43 = icmp slt i32 %storemerge, %11
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %47

46:                                               ; preds = %34
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %47

47:                                               ; preds = %46, %44
  br label %48

48:                                               ; preds = %47
  %49 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !11

50:                                               ; preds = %12
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
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
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  %10 = load ptr, ptr %4, align 8
  br label %11

11:                                               ; preds = %22, %3
  %storemerge = phi i32 [ 0, %3 ], [ %23, %22 ]
  %12 = icmp slt i32 %storemerge, %8
  br i1 %12, label %13, label %24

13:                                               ; preds = %11
  %14 = shl nuw i32 1, %storemerge
  %15 = and i32 %14, %9
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %17, label %16

16:                                               ; preds = %13
  br label %22

17:                                               ; preds = %13
  %18 = sext i32 %storemerge to i64
  %19 = getelementptr inbounds [4 x i8], ptr %10, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %20) #8
  br label %22

22:                                               ; preds = %17, %16
  %23 = add nsw i32 %storemerge, 1
  br label %11, !llvm.loop !12

24:                                               ; preds = %11
  %storemerge.lcssa = phi i32 [ %storemerge, %11 ]
  store i32 %storemerge.lcssa, ptr %7, align 4
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
  br label %157

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
  %23 = add nsw i32 %21, %22
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
  %39 = add nsw i32 %37, %38
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
  br label %157

55:                                               ; preds = %13
  %56 = load i32, ptr %3, align 4
  %57 = load i32, ptr %4, align 4
  %58 = load i32, ptr %4, align 4
  %59 = load i32, ptr %4, align 4
  %60 = load i32, ptr %3, align 4
  %61 = sext i32 %60 to i64
  %62 = sext i32 %60 to i64
  %63 = load i32, ptr %3, align 4
  %64 = sext i32 %63 to i64
  %65 = sext i32 %63 to i64
  %66 = load i32, ptr %3, align 4
  %67 = add nsw i32 %66, 1
  %.promoted23 = load i32, ptr %9, align 4
  %.promoted25 = load i32, ptr %10, align 4
  %.promoted = load i32, ptr %6, align 4
  %.promoted28 = load i32, ptr %8, align 1
  %.promoted30 = load i32, ptr %7, align 1
  br label %68

68:                                               ; preds = %154, %55
  %storemerge1.lcssa31 = phi i32 [ %.promoted30, %55 ], [ %storemerge1.lcssa, %154 ]
  %storemerge3.lcssa21.lcssa29 = phi i32 [ %.promoted28, %55 ], [ %storemerge3.lcssa21.lcssa, %154 ]
  %.lcssa918.lcssa27 = phi i32 [ %.promoted, %55 ], [ %.lcssa918.lcssa, %154 ]
  %.lcssa715.lcssa26 = phi i32 [ %.promoted25, %55 ], [ %.lcssa715.lcssa, %154 ]
  %.lcssa13.lcssa24 = phi i32 [ %.promoted23, %55 ], [ %.lcssa13.lcssa, %154 ]
  %storemerge = phi i32 [ 1, %55 ], [ %155, %154 ]
  %69 = icmp slt i32 %storemerge, 5
  br i1 %69, label %70, label %156

70:                                               ; preds = %68
  %71 = icmp eq i32 %storemerge, 3
  %72 = icmp eq i32 %storemerge, 4
  %73 = icmp eq i32 %storemerge, 4
  %74 = icmp eq i32 %storemerge, 4
  %75 = icmp eq i32 %storemerge, 2
  br label %76

76:                                               ; preds = %151, %70
  %storemerge3.lcssa21 = phi i32 [ %storemerge3.lcssa21.lcssa29, %70 ], [ %storemerge3.lcssa20, %151 ]
  %.lcssa918 = phi i32 [ %.lcssa918.lcssa27, %70 ], [ %.lcssa917, %151 ]
  %.lcssa715 = phi i32 [ %.lcssa715.lcssa26, %70 ], [ %.lcssa714, %151 ]
  %.lcssa13 = phi i32 [ %.lcssa13.lcssa24, %70 ], [ %.lcssa12, %151 ]
  %storemerge1 = phi i32 [ 0, %70 ], [ %152, %151 ]
  %77 = load i32, ptr @listLength, align 4
  %78 = add nsw i32 %77, %56
  %79 = icmp slt i32 %storemerge1, %78
  br i1 %79, label %80, label %153

80:                                               ; preds = %76
  %81 = shl nuw i32 1, %storemerge1
  %82 = and i32 %81, %57
  %.not2 = icmp eq i32 %82, 0
  br i1 %.not2, label %84, label %83

83:                                               ; preds = %80
  br label %151

84:                                               ; preds = %80
  %85 = sext i32 %storemerge1 to i64
  %86 = shl nuw i32 1, %storemerge1
  %87 = or i32 %59, %86
  br label %88

88:                                               ; preds = %145, %84
  %89 = phi i32 [ %.lcssa918, %84 ], [ %146, %145 ]
  %90 = phi i32 [ %.lcssa715, %84 ], [ %147, %145 ]
  %91 = phi i32 [ %.lcssa13, %84 ], [ %148, %145 ]
  %storemerge3 = phi i32 [ 0, %84 ], [ %149, %145 ]
  %92 = icmp slt i32 %storemerge3, %storemerge1
  br i1 %92, label %93, label %150

93:                                               ; preds = %88
  %94 = shl nuw i32 1, %storemerge3
  %95 = and i32 %94, %58
  %.not4 = icmp eq i32 %95, 0
  br i1 %.not4, label %97, label %96

96:                                               ; preds = %93
  br label %145

97:                                               ; preds = %93
  %98 = load ptr, ptr @workList, align 8
  %99 = getelementptr inbounds [4 x i8], ptr %98, i64 %85
  %100 = load i32, ptr %99, align 4
  %101 = sext i32 %storemerge3 to i64
  %102 = getelementptr inbounds [4 x i8], ptr %98, i64 %101
  %103 = load i32, ptr %102, align 4
  br i1 %71, label %105, label %104

104:                                              ; preds = %97
  br i1 %72, label %105, label %110

105:                                              ; preds = %104, %97
  %106 = icmp eq i32 %100, 1
  br i1 %106, label %109, label %107

107:                                              ; preds = %105
  %108 = icmp eq i32 %103, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %107, %105
  br label %145

110:                                              ; preds = %107, %104
  %111 = icmp eq i32 %100, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %110
  %113 = icmp eq i32 %103, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %112, %110
  br label %145

115:                                              ; preds = %112
  br i1 %73, label %116, label %119

116:                                              ; preds = %115
  %117 = srem i32 %100, %103
  %.not5 = icmp eq i32 %117, 0
  br i1 %.not5, label %119, label %118

118:                                              ; preds = %116
  br label %145

119:                                              ; preds = %116, %115
  br i1 %74, label %121, label %120

120:                                              ; preds = %119
  br i1 %75, label %121, label %124

121:                                              ; preds = %120, %119
  %122 = icmp slt i32 %100, %103
  br i1 %122, label %123, label %124

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %123, %121, %120
  %125 = phi i32 [ %100, %123 ], [ %103, %121 ], [ %103, %120 ]
  %126 = phi i32 [ %103, %123 ], [ %100, %121 ], [ %100, %120 ]
  %127 = shl nuw i32 1, %storemerge3
  %128 = or i32 %87, %127
  %129 = load ptr, ptr @combList, align 8
  %130 = getelementptr inbounds [12 x i8], ptr %129, i64 %61
  store i32 %126, ptr %130, align 4
  %131 = load ptr, ptr @combList, align 8
  %132 = getelementptr inbounds [12 x i8], ptr %131, i64 %62
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 4
  store i32 %125, ptr %133, align 4
  %134 = load ptr, ptr @combList, align 8
  %135 = getelementptr inbounds [12 x i8], ptr %134, i64 %64
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 8
  store i32 %storemerge, ptr %136, align 4
  %137 = load ptr, ptr @combList, align 8
  %138 = getelementptr inbounds [12 x i8], ptr %137, i64 %65
  %139 = call i32 @calculate(ptr noundef %138)
  %140 = load ptr, ptr @workList, align 8
  %141 = load i32, ptr @listLength, align 4
  %142 = add nsw i32 %141, %66
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i8], ptr %140, i64 %143
  store i32 %139, ptr %144, align 4
  call void @recSearch(i32 noundef %67, i32 noundef %128)
  br label %145

145:                                              ; preds = %124, %118, %114, %109, %96
  %146 = phi i32 [ %128, %124 ], [ %89, %118 ], [ %89, %114 ], [ %89, %109 ], [ %89, %96 ]
  %147 = phi i32 [ %125, %124 ], [ %103, %118 ], [ %103, %114 ], [ %103, %109 ], [ %90, %96 ]
  %148 = phi i32 [ %126, %124 ], [ %100, %118 ], [ %100, %114 ], [ %100, %109 ], [ %91, %96 ]
  %149 = add nsw i32 %storemerge3, 1
  br label %88, !llvm.loop !13

150:                                              ; preds = %88
  %.lcssa9 = phi i32 [ %89, %88 ]
  %.lcssa7 = phi i32 [ %90, %88 ]
  %.lcssa = phi i32 [ %91, %88 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %88 ]
  br label %151

151:                                              ; preds = %150, %83
  %storemerge3.lcssa20 = phi i32 [ %storemerge3.lcssa, %150 ], [ %storemerge3.lcssa21, %83 ]
  %.lcssa917 = phi i32 [ %.lcssa9, %150 ], [ %.lcssa918, %83 ]
  %.lcssa714 = phi i32 [ %.lcssa7, %150 ], [ %.lcssa715, %83 ]
  %.lcssa12 = phi i32 [ %.lcssa, %150 ], [ %.lcssa13, %83 ]
  %152 = add nsw i32 %storemerge1, 1
  br label %76, !llvm.loop !14

153:                                              ; preds = %76
  %storemerge3.lcssa21.lcssa = phi i32 [ %storemerge3.lcssa21, %76 ]
  %.lcssa918.lcssa = phi i32 [ %.lcssa918, %76 ]
  %.lcssa715.lcssa = phi i32 [ %.lcssa715, %76 ]
  %.lcssa13.lcssa = phi i32 [ %.lcssa13, %76 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %76 ]
  br label %154

154:                                              ; preds = %153
  %155 = add nsw i32 %storemerge, 1
  br label %68, !llvm.loop !15

156:                                              ; preds = %68
  %storemerge1.lcssa31.lcssa = phi i32 [ %storemerge1.lcssa31, %68 ]
  %storemerge3.lcssa21.lcssa29.lcssa = phi i32 [ %storemerge3.lcssa21.lcssa29, %68 ]
  %.lcssa918.lcssa27.lcssa = phi i32 [ %.lcssa918.lcssa27, %68 ]
  %.lcssa715.lcssa26.lcssa = phi i32 [ %.lcssa715.lcssa26, %68 ]
  %.lcssa13.lcssa24.lcssa = phi i32 [ %.lcssa13.lcssa24, %68 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %68 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  store i32 %.lcssa13.lcssa24.lcssa, ptr %9, align 4
  store i32 %.lcssa715.lcssa26.lcssa, ptr %10, align 4
  store i32 %.lcssa918.lcssa27.lcssa, ptr %6, align 4
  store i32 %storemerge3.lcssa21.lcssa29.lcssa, ptr %8, align 1
  store i32 %storemerge1.lcssa31.lcssa, ptr %7, align 1
  br label %157

157:                                              ; preds = %156, %54, %12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @listLength, align 4
  %3 = load ptr, ptr @workList, align 8
  %4 = load i32, ptr @goal, align 4
  %5 = load ptr, ptr @workList, align 8
  %best.promoted = load i32, ptr @best, align 4
  br label %6

6:                                                ; preds = %24, %0
  %7 = phi i32 [ %best.promoted, %0 ], [ %23, %24 ]
  %storemerge = phi i32 [ 0, %0 ], [ %25, %24 ]
  %8 = icmp slt i32 %storemerge, %2
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = sext i32 %storemerge to i64
  %11 = getelementptr inbounds [4 x i8], ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %12, %4
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = sub nsw i32 %7, %4
  %16 = call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = icmp samesign ult i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = sext i32 %storemerge to i64
  %20 = getelementptr inbounds [4 x i8], ptr %5, i64 %19
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr @best, align 4
  br label %22

22:                                               ; preds = %18, %9
  %23 = phi i32 [ %21, %18 ], [ %7, %9 ]
  br label %24

24:                                               ; preds = %22
  %25 = add nsw i32 %storemerge, 1
  br label %6, !llvm.loop !16

26:                                               ; preds = %6
  %storemerge.lcssa = phi i32 [ %storemerge, %6 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
  %27 = load i32, ptr @best, align 4
  %28 = load i32, ptr @goal, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %48

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %39, %31
  %storemerge1 = phi i32 [ 1, %31 ], [ %41, %39 ]
  store i32 %storemerge1, ptr @dmax, align 4
  %33 = load i32, ptr @listLength, align 4
  %34 = icmp slt i32 %storemerge1, %33
  br i1 %34, label %35, label %.loopexit

35:                                               ; preds = %32
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %36 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %36, 0
  br i1 %.not, label %38, label %37

37:                                               ; preds = %35
  br label %42

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr @dmax, align 4
  %41 = add nsw i32 %40, 1
  br label %32, !llvm.loop !17

.loopexit:                                        ; preds = %32
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

48:                                               ; preds = %45, %42, %30
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
  %.promoted = load i32, ptr %2, align 4
  br label %7

7:                                                ; preds = %14, %0
  %8 = phi i32 [ %21, %14 ], [ %.promoted, %0 ]
  %9 = call i32 @getchar() #8
  %.not = icmp eq i32 %9, 10
  br i1 %.not, label %12, label %10

10:                                               ; preds = %7
  %11 = icmp ne i32 %9, -1
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i1 [ false, %7 ], [ %11, %10 ]
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %16 = call i32 @ungetc(i32 noundef %9, ptr noundef %15) #8
  %17 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %18 = sext i32 %8 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %1, i64 %18
  %20 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #8
  %21 = add nsw i32 %8, 1
  br label %7, !llvm.loop !18

22:                                               ; preds = %12
  %.lcssa1 = phi i32 [ %8, %12 ]
  %.lcssa = phi i32 [ %9, %12 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa1, ptr %2, align 4
  %23 = load i32, ptr %2, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 4, ptr %2, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, ptr %2, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr @listLength, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %1, i64 %29
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr @goal, align 4
  %32 = shl nsw i32 %28, 1
  %33 = call ptr @newWorkList(i32 noundef %32)
  store ptr %33, ptr @workList, align 8
  %34 = load i32, ptr @listLength, align 4
  %35 = call ptr @newCombList(i32 noundef %34)
  store ptr %35, ptr @combList, align 8
  %36 = load i32, ptr @listLength, align 4
  %37 = call ptr @newCombList(i32 noundef %36)
  store ptr %37, ptr @solution, align 8
  %38 = load ptr, ptr @workList, align 8
  %39 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %38, ptr noundef nonnull %1, i32 noundef %39)
  %40 = load ptr, ptr @combList, align 8
  %41 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %40, i32 noundef %41)
  %42 = load ptr, ptr @solution, align 8
  %43 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %42, i32 noundef %43)
  %44 = load i32, ptr @listLength, align 4
  ret i32 %44
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
