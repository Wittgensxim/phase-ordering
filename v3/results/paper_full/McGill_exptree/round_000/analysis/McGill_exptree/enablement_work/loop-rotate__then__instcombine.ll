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
  store i32 0, ptr %7, align 4
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %18
  %10 = load ptr, ptr %5, align 8
  %11 = load i32, ptr %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %15, i64 %16
  store i32 %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %9
  %19 = load i32, ptr %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %7, align 4
  %21 = load i32, ptr %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %9, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %18
  br label %23

23:                                               ; preds = %._crit_edge, %3
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
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %13
  %8 = load ptr, ptr %3, align 8
  %9 = load i32, ptr %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i8], ptr %8, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %7
  %14 = load i32, ptr %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %5, align 4
  %16 = load i32, ptr %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %7, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %13
  br label %18

18:                                               ; preds = %._crit_edge, %2
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
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %38
  %10 = load ptr, ptr %5, align 8
  %11 = load i32, ptr %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [12 x i8], ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds [12 x i8], ptr %15, i64 %16
  store i32 %14, ptr %17, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [12 x i8], ptr %18, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = sext i32 %19 to i64
  %26 = getelementptr inbounds [12 x i8], ptr %24, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 4
  store i32 %23, ptr %27, align 4
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [12 x i8], ptr %28, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = sext i32 %29 to i64
  %36 = getelementptr inbounds [12 x i8], ptr %34, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 %33, ptr %37, align 4
  br label %38

38:                                               ; preds = %9
  %39 = load i32, ptr %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %7, align 4
  %41 = load i32, ptr %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %9, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %38
  br label %43

43:                                               ; preds = %._crit_edge, %3
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
  store i32 0, ptr %5, align 4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %.lr.ph, label %55

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %50
  %8 = load ptr, ptr %3, align 8
  %9 = load i32, ptr %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i8], ptr %8, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %12) #8
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds [12 x i8], ptr %8, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %23 [
    i32 0, label %18
    i32 1, label %19
    i32 2, label %20
    i32 3, label %21
    i32 4, label %22
  ]

18:                                               ; preds = %7
  %putchar4 = call i32 @putchar(i32 32)
  br label %31

19:                                               ; preds = %7
  %putchar3 = call i32 @putchar(i32 43)
  br label %31

20:                                               ; preds = %7
  %putchar2 = call i32 @putchar(i32 45)
  br label %31

21:                                               ; preds = %7
  %putchar1 = call i32 @putchar(i32 42)
  br label %31

22:                                               ; preds = %7
  %putchar = call i32 @putchar(i32 58)
  br label %31

23:                                               ; preds = %7
  %24 = load ptr, ptr %3, align 8
  %25 = load i32, ptr %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [12 x i8], ptr %24, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %29 = load i32, ptr %28, align 4
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %29) #8
  br label %31

31:                                               ; preds = %23, %22, %21, %20, %19, %18
  %32 = load ptr, ptr %3, align 8
  %33 = load i32, ptr %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [12 x i8], ptr %32, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %37 = load i32, ptr %36, align 4
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds [12 x i8], ptr %32, i64 %38
  %40 = call i32 @calculate(ptr noundef %39)
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %37, i32 noundef %40) #8
  %42 = load i32, ptr %5, align 4
  %43 = load i32, ptr %4, align 4
  %44 = add nsw i32 %43, -1
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %49

48:                                               ; preds = %31
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %49

49:                                               ; preds = %48, %46
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %5, align 4
  %53 = load i32, ptr %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %7, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %50
  br label %55

55:                                               ; preds = %._crit_edge, %2
  %putchar5 = call i32 @putchar(i32 10)
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
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %22
  %10 = load i32, ptr %7, align 4
  %11 = shl nuw i32 1, %10
  %12 = load i32, ptr %6, align 4
  %13 = and i32 %11, %12
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %15, label %14

14:                                               ; preds = %9
  br label %22

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %20) #8
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %7, align 4
  %25 = load i32, ptr %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %9, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %22
  br label %27

27:                                               ; preds = %._crit_edge, %3
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
  br label %181

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
  br label %181

55:                                               ; preds = %13
  store i32 1, ptr %5, align 4
  br i1 true, label %.lr.ph5, label %180

.lr.ph5:                                          ; preds = %55
  br label %56

56:                                               ; preds = %.lr.ph5, %176
  store i32 0, ptr %7, align 4
  %57 = load i32, ptr @listLength, align 4
  %58 = load i32, ptr %3, align 4
  %59 = add nsw i32 %57, %58
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %.lr.ph2, label %175

.lr.ph2:                                          ; preds = %56
  br label %61

61:                                               ; preds = %.lr.ph2, %168
  %62 = load i32, ptr %7, align 4
  %63 = shl nuw i32 1, %62
  %64 = load i32, ptr %4, align 4
  %65 = and i32 %63, %64
  %.not7 = icmp eq i32 %65, 0
  br i1 %.not7, label %67, label %66

66:                                               ; preds = %61
  br label %168

67:                                               ; preds = %61
  store i32 0, ptr %8, align 4
  %68 = load i32, ptr %7, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %.lr.ph, label %167

.lr.ph:                                           ; preds = %67
  br label %70

70:                                               ; preds = %.lr.ph, %162
  %71 = load i32, ptr %8, align 4
  %72 = shl nuw i32 1, %71
  %73 = load i32, ptr %4, align 4
  %74 = and i32 %72, %73
  %.not8 = icmp eq i32 %74, 0
  br i1 %.not8, label %76, label %75

75:                                               ; preds = %70
  br label %162

76:                                               ; preds = %70
  %77 = load ptr, ptr @workList, align 8
  %78 = load i32, ptr %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i8], ptr %77, i64 %79
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %9, align 4
  %82 = load i32, ptr %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i8], ptr %77, i64 %83
  %85 = load i32, ptr %84, align 4
  store i32 %85, ptr %10, align 4
  %86 = load i32, ptr %5, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %91, label %88

88:                                               ; preds = %76
  %89 = load i32, ptr %5, align 4
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %98

91:                                               ; preds = %88, %76
  %92 = load i32, ptr %9, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %10, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %91
  br label %162

98:                                               ; preds = %94, %88
  %99 = load i32, ptr %9, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %10, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %98
  br label %162

105:                                              ; preds = %101
  %106 = load i32, ptr %5, align 4
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, ptr %9, align 4
  %110 = load i32, ptr %10, align 4
  %111 = srem i32 %109, %110
  %.not9 = icmp eq i32 %111, 0
  br i1 %.not9, label %113, label %112

112:                                              ; preds = %108
  br label %162

113:                                              ; preds = %108, %105
  %114 = load i32, ptr %5, align 4
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %5, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %126

119:                                              ; preds = %116, %113
  %120 = load i32, ptr %9, align 4
  %121 = load i32, ptr %10, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, ptr %9, align 4
  %125 = load i32, ptr %10, align 4
  store i32 %125, ptr %9, align 4
  store i32 %124, ptr %10, align 4
  br label %126

126:                                              ; preds = %123, %119, %116
  %127 = load i32, ptr %4, align 4
  %128 = load i32, ptr %7, align 4
  %129 = shl nuw i32 1, %128
  %130 = or i32 %127, %129
  %131 = load i32, ptr %8, align 4
  %132 = shl nuw i32 1, %131
  %133 = or i32 %130, %132
  store i32 %133, ptr %6, align 4
  %134 = load i32, ptr %9, align 4
  %135 = load ptr, ptr @combList, align 8
  %136 = load i32, ptr %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [12 x i8], ptr %135, i64 %137
  store i32 %134, ptr %138, align 4
  %139 = load i32, ptr %10, align 4
  %140 = load ptr, ptr @combList, align 8
  %141 = sext i32 %136 to i64
  %142 = getelementptr inbounds [12 x i8], ptr %140, i64 %141
  %143 = getelementptr inbounds nuw i8, ptr %142, i64 4
  store i32 %139, ptr %143, align 4
  %144 = load i32, ptr %5, align 4
  %145 = load ptr, ptr @combList, align 8
  %146 = load i32, ptr %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [12 x i8], ptr %145, i64 %147
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 8
  store i32 %144, ptr %149, align 4
  %150 = load ptr, ptr @combList, align 8
  %151 = sext i32 %146 to i64
  %152 = getelementptr inbounds [12 x i8], ptr %150, i64 %151
  %153 = call i32 @calculate(ptr noundef %152)
  %154 = load ptr, ptr @workList, align 8
  %155 = load i32, ptr @listLength, align 4
  %156 = load i32, ptr %3, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x i8], ptr %154, i64 %158
  store i32 %153, ptr %159, align 4
  %160 = add nsw i32 %156, 1
  %161 = load i32, ptr %6, align 4
  call void @recSearch(i32 noundef %160, i32 noundef %161)
  br label %162

162:                                              ; preds = %126, %112, %104, %97, %75
  %163 = load i32, ptr %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %8, align 4
  %165 = load i32, ptr %7, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %70, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %162
  br label %167

167:                                              ; preds = %._crit_edge, %67
  br label %168

168:                                              ; preds = %167, %66
  %169 = load i32, ptr %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr %7, align 4
  %171 = load i32, ptr @listLength, align 4
  %172 = load i32, ptr %3, align 4
  %173 = add nsw i32 %171, %172
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %61, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %168
  br label %175

175:                                              ; preds = %._crit_edge3, %56
  br label %176

176:                                              ; preds = %175
  %177 = load i32, ptr %5, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr %5, align 4
  %179 = icmp slt i32 %177, 4
  br i1 %179, label %56, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %176
  br label %180

180:                                              ; preds = %._crit_edge6, %55
  br label %181

181:                                              ; preds = %180, %54, %12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = load i32, ptr @listLength, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %0
  br label %4

4:                                                ; preds = %.lr.ph, %24
  %5 = load ptr, ptr @workList, align 8
  %6 = load i32, ptr %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %5, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr @goal, align 4
  %11 = sub nsw i32 %9, %10
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = load i32, ptr @best, align 4
  %14 = sub nsw i32 %13, %10
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = icmp samesign ult i32 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load ptr, ptr @workList, align 8
  %19 = load i32, ptr %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr @best, align 4
  br label %23

23:                                               ; preds = %17, %4
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %1, align 4
  %27 = load i32, ptr @listLength, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %4, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %24
  br label %29

29:                                               ; preds = %._crit_edge, %0
  %30 = load i32, ptr @best, align 4
  %31 = load i32, ptr @goal, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %52

34:                                               ; preds = %29
  store i32 1, ptr @dmax, align 4
  %35 = load i32, ptr @listLength, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %34
  br label %37

37:                                               ; preds = %.lr.ph2, %41
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %38 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %38, 0
  br i1 %.not, label %40, label %39

39:                                               ; preds = %37
  br label %46

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr @dmax, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @dmax, align 4
  %44 = load i32, ptr @listLength, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %37, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %41
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %34
  br label %46

46:                                               ; preds = %.loopexit, %39
  %47 = load i32, ptr @stopSearch, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load ptr, ptr @solution, align 8
  %51 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %50, i32 noundef %51)
  br label %52

52:                                               ; preds = %49, %46, %33
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
