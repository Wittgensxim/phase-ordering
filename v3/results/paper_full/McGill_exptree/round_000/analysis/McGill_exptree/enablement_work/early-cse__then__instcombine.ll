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
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 4) #7
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  ret ptr %3

5:                                                ; preds = %1
  %6 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %7 = call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %6)
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
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 12) #7
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  ret ptr %3

5:                                                ; preds = %1
  %6 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %7 = call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %6)
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

8:                                                ; preds = %18, %3
  %storemerge = phi i32 [ 0, %3 ], [ %20, %18 ]
  store i32 %storemerge, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %storemerge, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 8
  %13 = sext i32 %storemerge to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds [4 x i8], ptr %16, i64 %13
  store i32 %15, ptr %17, align 4
  br label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %7, align 4
  %20 = add nsw i32 %19, 1
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
  br label %6

6:                                                ; preds = %14, %2
  %storemerge = phi i32 [ 0, %2 ], [ %16, %14 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp slt i32 %storemerge, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  %11 = sext i32 %storemerge to i64
  %12 = getelementptr inbounds [12 x i8], ptr %10, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %5, align 4
  %16 = add nsw i32 %15, 1
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
  br label %8

8:                                                ; preds = %36, %3
  %storemerge = phi i32 [ 0, %3 ], [ %38, %36 ]
  store i32 %storemerge, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %storemerge, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 8
  %13 = sext i32 %storemerge to i64
  %14 = getelementptr inbounds [12 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds [12 x i8], ptr %16, i64 %13
  store i32 %15, ptr %17, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [12 x i8], ptr %18, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds [12 x i8], ptr %24, i64 %20
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 4
  store i32 %23, ptr %26, align 4
  %27 = load ptr, ptr %5, align 8
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [12 x i8], ptr %27, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds [12 x i8], ptr %33, i64 %29
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 %32, ptr %35, align 4
  br label %36

36:                                               ; preds = %11
  %37 = load i32, ptr %7, align 4
  %38 = add nsw i32 %37, 1
  br label %8, !llvm.loop !10

39:                                               ; preds = %8
  %40 = load ptr, ptr %4, align 8
  %41 = sext i32 %9 to i64
  %42 = getelementptr inbounds [12 x i8], ptr %40, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 0, ptr %43, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %25 [
    i32 1, label %5
    i32 2, label %10
    i32 3, label %15
    i32 4, label %20
  ]

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = load i32, ptr %7, align 4
  %9 = add nsw i32 %6, %8
  store i32 %9, ptr %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load i32, ptr %0, align 4
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = sub nsw i32 %11, %13
  store i32 %14, ptr %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load i32, ptr %0, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %18 = load i32, ptr %17, align 4
  %19 = mul nsw i32 %16, %18
  store i32 %19, ptr %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, ptr %0, align 4
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %23 = load i32, ptr %22, align 4
  %24 = sdiv i32 %21, %23
  store i32 %24, ptr %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %26

26:                                               ; preds = %25, %20, %15, %10, %5
  %27 = load i32, ptr %2, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %44, %2
  %storemerge = phi i32 [ 0, %2 ], [ %46, %44 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp slt i32 %storemerge, %7
  br i1 %8, label %9, label %47

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  %11 = sext i32 %storemerge to i64
  %12 = getelementptr inbounds [12 x i8], ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %13) #8
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
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
  br label %27

21:                                               ; preds = %9
  %putchar4 = call i32 @putchar(i32 43)
  br label %27

22:                                               ; preds = %9
  %putchar3 = call i32 @putchar(i32 45)
  br label %27

23:                                               ; preds = %9
  %putchar2 = call i32 @putchar(i32 42)
  br label %27

24:                                               ; preds = %9
  %putchar1 = call i32 @putchar(i32 58)
  br label %27

25:                                               ; preds = %9
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %19) #8
  br label %27

27:                                               ; preds = %25, %24, %23, %22, %21, %20
  %28 = load ptr, ptr %3, align 8
  %29 = load i32, ptr %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [12 x i8], ptr %28, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %33 = load i32, ptr %32, align 4
  %34 = call i32 @calculate(ptr noundef %31)
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %33, i32 noundef %34) #8
  %36 = load i32, ptr %5, align 4
  %37 = load i32, ptr %4, align 4
  %38 = add nsw i32 %37, -1
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %43

42:                                               ; preds = %27
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %43

43:                                               ; preds = %42, %40
  br label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %5, align 4
  %46 = add nsw i32 %45, 1
  br label %6, !llvm.loop !11

47:                                               ; preds = %6
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

8:                                                ; preds = %22, %3
  %storemerge = phi i32 [ 0, %3 ], [ %24, %22 ]
  store i32 %storemerge, ptr %7, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %storemerge, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = shl nuw i32 1, %storemerge
  %13 = load i32, ptr %6, align 4
  %14 = and i32 %12, %13
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %16, label %15

15:                                               ; preds = %11
  br label %22

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8
  %18 = sext i32 %storemerge to i64
  %19 = getelementptr inbounds [4 x i8], ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %20) #8
  br label %22

22:                                               ; preds = %16, %15
  %23 = load i32, ptr %7, align 4
  %24 = add nsw i32 %23, 1
  br label %8, !llvm.loop !12

25:                                               ; preds = %8
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
  br label %161

13:                                               ; preds = %2
  %14 = load i32, ptr @nbNodes, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @nbNodes, align 4
  %16 = load i32, ptr %3, align 4
  %17 = load i32, ptr @dmax, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load ptr, ptr @workList, align 8
  %21 = load i32, ptr @listLength, align 4
  %22 = add nsw i32 %21, %16
  %23 = sext i32 %22 to i64
  %24 = getelementptr [4 x i8], ptr %20, i64 %23
  %25 = getelementptr i8, ptr %24, i64 -4
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr @goal, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = load i32, ptr @best, align 4
  %31 = sub nsw i32 %30, %27
  %32 = call i32 @llvm.abs.i32(i32 %31, i1 true)
  %33 = icmp samesign ult i32 %29, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %19
  store i32 %26, ptr @best, align 4
  %35 = load i32, ptr %3, align 4
  store i32 %35, ptr @bestDepth, align 4
  %36 = load ptr, ptr @solution, align 8
  %37 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %36, ptr noundef %37, i32 noundef %35)
  %38 = load i32, ptr @best, align 4
  %39 = load i32, ptr @goal, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load ptr, ptr @combList, align 8
  %43 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %42, i32 noundef %43)
  store i32 1, ptr @stopSearch, align 4
  br label %44

44:                                               ; preds = %41, %34
  br label %45

45:                                               ; preds = %44, %19
  br label %161

46:                                               ; preds = %13
  br label %47

47:                                               ; preds = %157, %46
  %storemerge = phi i32 [ 1, %46 ], [ %159, %157 ]
  store i32 %storemerge, ptr %5, align 4
  %48 = icmp slt i32 %storemerge, 5
  br i1 %48, label %49, label %160

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %153, %49
  %storemerge1 = phi i32 [ 0, %49 ], [ %155, %153 ]
  store i32 %storemerge1, ptr %7, align 4
  %51 = load i32, ptr @listLength, align 4
  %52 = load i32, ptr %3, align 4
  %53 = add nsw i32 %51, %52
  %54 = icmp slt i32 %storemerge1, %53
  br i1 %54, label %55, label %156

55:                                               ; preds = %50
  %56 = shl nuw i32 1, %storemerge1
  %57 = load i32, ptr %4, align 4
  %58 = and i32 %56, %57
  %.not2 = icmp eq i32 %58, 0
  br i1 %.not2, label %60, label %59

59:                                               ; preds = %55
  br label %153

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %149, %60
  %storemerge3 = phi i32 [ 0, %60 ], [ %151, %149 ]
  store i32 %storemerge3, ptr %8, align 4
  %62 = load i32, ptr %7, align 4
  %63 = icmp slt i32 %storemerge3, %62
  br i1 %63, label %64, label %152

64:                                               ; preds = %61
  %65 = shl nuw i32 1, %storemerge3
  %66 = load i32, ptr %4, align 4
  %67 = and i32 %65, %66
  %.not4 = icmp eq i32 %67, 0
  br i1 %.not4, label %69, label %68

68:                                               ; preds = %64
  br label %149

69:                                               ; preds = %64
  %70 = load ptr, ptr @workList, align 8
  %71 = sext i32 %62 to i64
  %72 = getelementptr inbounds [4 x i8], ptr %70, i64 %71
  %73 = load i32, ptr %72, align 4
  store i32 %73, ptr %9, align 4
  %74 = load i32, ptr %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i8], ptr %70, i64 %75
  %77 = load i32, ptr %76, align 4
  store i32 %77, ptr %10, align 4
  %78 = load i32, ptr %5, align 4
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  %81 = icmp eq i32 %78, 4
  br i1 %81, label %82, label %89

82:                                               ; preds = %80, %69
  %83 = load i32, ptr %9, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %10, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %82
  br label %149

89:                                               ; preds = %85, %80
  %90 = load i32, ptr %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92, %89
  br label %149

96:                                               ; preds = %92
  %97 = load i32, ptr %5, align 4
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = srem i32 %90, %93
  %.not5 = icmp eq i32 %100, 0
  br i1 %.not5, label %102, label %101

101:                                              ; preds = %99
  br label %149

102:                                              ; preds = %99, %96
  %103 = load i32, ptr %5, align 4
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = icmp eq i32 %103, 2
  br i1 %106, label %107, label %113

107:                                              ; preds = %105, %102
  %108 = load i32, ptr %9, align 4
  %109 = load i32, ptr %10, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, ptr %10, align 4
  store i32 %112, ptr %9, align 4
  store i32 %108, ptr %10, align 4
  br label %113

113:                                              ; preds = %111, %107, %105
  %114 = load i32, ptr %4, align 4
  %115 = load i32, ptr %7, align 4
  %116 = shl nuw i32 1, %115
  %117 = or i32 %114, %116
  %118 = load i32, ptr %8, align 4
  %119 = shl nuw i32 1, %118
  %120 = or i32 %117, %119
  store i32 %120, ptr %6, align 4
  %121 = load i32, ptr %9, align 4
  %122 = load ptr, ptr @combList, align 8
  %123 = load i32, ptr %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [12 x i8], ptr %122, i64 %124
  store i32 %121, ptr %125, align 4
  %126 = load i32, ptr %10, align 4
  %127 = load ptr, ptr @combList, align 8
  %128 = sext i32 %123 to i64
  %129 = getelementptr inbounds [12 x i8], ptr %127, i64 %128
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 4
  store i32 %126, ptr %130, align 4
  %131 = load i32, ptr %5, align 4
  %132 = load ptr, ptr @combList, align 8
  %133 = load i32, ptr %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [12 x i8], ptr %132, i64 %134
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 8
  store i32 %131, ptr %136, align 4
  %137 = load ptr, ptr @combList, align 8
  %138 = sext i32 %133 to i64
  %139 = getelementptr inbounds [12 x i8], ptr %137, i64 %138
  %140 = call i32 @calculate(ptr noundef %139)
  %141 = load ptr, ptr @workList, align 8
  %142 = load i32, ptr @listLength, align 4
  %143 = load i32, ptr %3, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i8], ptr %141, i64 %145
  store i32 %140, ptr %146, align 4
  %147 = add nsw i32 %143, 1
  %148 = load i32, ptr %6, align 4
  call void @recSearch(i32 noundef %147, i32 noundef %148)
  br label %149

149:                                              ; preds = %113, %101, %95, %88, %68
  %150 = load i32, ptr %8, align 4
  %151 = add nsw i32 %150, 1
  br label %61, !llvm.loop !13

152:                                              ; preds = %61
  br label %153

153:                                              ; preds = %152, %59
  %154 = load i32, ptr %7, align 4
  %155 = add nsw i32 %154, 1
  br label %50, !llvm.loop !14

156:                                              ; preds = %50
  br label %157

157:                                              ; preds = %156
  %158 = load i32, ptr %5, align 4
  %159 = add nsw i32 %158, 1
  br label %47, !llvm.loop !15

160:                                              ; preds = %47
  br label %161

161:                                              ; preds = %160, %45, %12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %19, %0
  %storemerge = phi i32 [ 0, %0 ], [ %21, %19 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = load i32, ptr @listLength, align 4
  %4 = icmp slt i32 %storemerge, %3
  br i1 %4, label %5, label %22

5:                                                ; preds = %2
  %6 = load ptr, ptr @workList, align 8
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr @goal, align 4
  %11 = sub nsw i32 %9, %10
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = load i32, ptr @best, align 4
  %14 = sub nsw i32 %13, %10
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = icmp samesign ult i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 %9, ptr @best, align 4
  br label %18

18:                                               ; preds = %17, %5
  br label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %1, align 4
  %21 = add nsw i32 %20, 1
  br label %2, !llvm.loop !16

22:                                               ; preds = %2
  %23 = load i32, ptr @best, align 4
  %24 = load i32, ptr @goal, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %44

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %35, %27
  %storemerge1 = phi i32 [ 1, %27 ], [ %37, %35 ]
  store i32 %storemerge1, ptr @dmax, align 4
  %29 = load i32, ptr @listLength, align 4
  %30 = icmp slt i32 %storemerge1, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %32 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %32, 0
  br i1 %.not, label %34, label %33

33:                                               ; preds = %31
  br label %38

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr @dmax, align 4
  %37 = add nsw i32 %36, 1
  br label %28, !llvm.loop !17

38:                                               ; preds = %33, %28
  %39 = load i32, ptr @stopSearch, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load ptr, ptr @solution, align 8
  %43 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %42, i32 noundef %43)
  br label %44

44:                                               ; preds = %41, %38, %26
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

7:                                                ; preds = %13, %0
  %8 = call i32 @getchar() #8
  store i32 %8, ptr %3, align 4
  %.not = icmp eq i32 %8, 10
  br i1 %.not, label %11, label %9

9:                                                ; preds = %7
  %10 = icmp ne i32 %8, -1
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i1 [ false, %7 ], [ %10, %9 ]
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = load i32, ptr %3, align 4
  %15 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %16 = call i32 @ungetc(i32 noundef %14, ptr noundef %15) #8
  %17 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %18 = load i32, ptr %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %1, i64 %19
  %21 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #8
  %22 = add nsw i32 %18, 1
  store i32 %22, ptr %2, align 4
  br label %7, !llvm.loop !18

23:                                               ; preds = %11
  %24 = load i32, ptr %2, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 4, ptr %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, ptr %2, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr @listLength, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr %1, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr @goal, align 4
  %33 = shl nsw i32 %29, 1
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
  call void @initWorkList(ptr noundef %39, ptr noundef nonnull %1, i32 noundef %40)
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
