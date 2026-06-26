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
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = load ptr, ptr %5, align 8
  %13 = load i32, ptr %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  store i32 %16, ptr %20, align 4
  %21 = load i32, ptr %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %7, align 4
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %11, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  br label %26

26:                                               ; preds = %._crit_edge, %3
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
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %10, i64 %12
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 2
  store i32 0, ptr %14, align 4
  %15 = load i32, ptr %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %5, align 4
  %17 = load i32, ptr %5, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %9, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %9
  br label %20

20:                                               ; preds = %._crit_edge, %2
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
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %.lr.ph, label %50

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %11
  %12 = load ptr, ptr %5, align 8
  %13 = load i32, ptr %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.Comb, ptr %12, i64 %14
  %16 = getelementptr inbounds nuw %struct.Comb, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Comb, ptr %18, i64 %20
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %21, i32 0, i32 0
  store i32 %17, ptr %22, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.Comb, ptr %23, i64 %25
  %27 = getelementptr inbounds nuw %struct.Comb, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %4, align 8
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.Comb, ptr %29, i64 %31
  %33 = getelementptr inbounds nuw %struct.Comb, ptr %32, i32 0, i32 1
  store i32 %28, ptr %33, align 4
  %34 = load ptr, ptr %5, align 8
  %35 = load i32, ptr %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.Comb, ptr %34, i64 %36
  %38 = getelementptr inbounds nuw %struct.Comb, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = load i32, ptr %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Comb, ptr %40, i64 %42
  %44 = getelementptr inbounds nuw %struct.Comb, ptr %43, i32 0, i32 2
  store i32 %39, ptr %44, align 4
  %45 = load i32, ptr %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %7, align 4
  %47 = load i32, ptr %7, align 4
  %48 = load i32, ptr %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %11, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %11
  br label %50

50:                                               ; preds = %._crit_edge, %3
  %51 = load ptr, ptr %4, align 8
  %52 = load i32, ptr %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.Comb, ptr %51, i64 %53
  %55 = getelementptr inbounds nuw %struct.Comb, ptr %54, i32 0, i32 2
  store i32 0, ptr %55, align 4
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
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %.lr.ph, label %68

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %62
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %10, i64 %12
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %15)
  %17 = load ptr, ptr %3, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Comb, ptr %17, i64 %19
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %33 [
    i32 0, label %23
    i32 1, label %25
    i32 2, label %27
    i32 3, label %29
    i32 4, label %31
  ]

23:                                               ; preds = %9
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %41

25:                                               ; preds = %9
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %41

27:                                               ; preds = %9
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %41

29:                                               ; preds = %9
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %41

31:                                               ; preds = %9
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %41

33:                                               ; preds = %9
  %34 = load ptr, ptr %3, align 8
  %35 = load i32, ptr %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.Comb, ptr %34, i64 %36
  %38 = getelementptr inbounds nuw %struct.Comb, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %39)
  br label %41

41:                                               ; preds = %33, %31, %29, %27, %25, %23
  %42 = load ptr, ptr %3, align 8
  %43 = load i32, ptr %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.Comb, ptr %42, i64 %44
  %46 = getelementptr inbounds nuw %struct.Comb, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %3, align 8
  %49 = load i32, ptr %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.Comb, ptr %48, i64 %50
  %52 = call i32 @calculate(ptr noundef %51)
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %47, i32 noundef %52)
  %54 = load i32, ptr %5, align 4
  %55 = load i32, ptr %4, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %41
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %62

60:                                               ; preds = %41
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %62

62:                                               ; preds = %58, %60
  %63 = load i32, ptr %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %5, align 4
  %65 = load i32, ptr %5, align 4
  %66 = load i32, ptr %4, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %9, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %62
  br label %68

68:                                               ; preds = %._crit_edge, %2
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %24
  %12 = load i32, ptr %7, align 4
  %13 = shl i32 1, %12
  %14 = load i32, ptr %6, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %22)
  br label %24

24:                                               ; preds = %11, %17
  %25 = load i32, ptr %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %7, align 4
  %27 = load i32, ptr %7, align 4
  %28 = load i32, ptr %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %11, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %24
  br label %30

30:                                               ; preds = %._crit_edge, %3
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br i1 %13, label %186, label %14

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
  br i1 %36, label %37, label %186

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
  br i1 %52, label %53, label %186

53:                                               ; preds = %37
  %54 = load ptr, ptr @combList, align 8
  %55 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %54, i32 noundef %55)
  store i32 1, ptr @stopSearch, align 4
  br label %186

56:                                               ; preds = %14
  store i32 1, ptr %5, align 4
  %57 = load i32, ptr %5, align 4
  %58 = icmp sle i32 %57, 4
  br i1 %58, label %.lr.ph11, label %.loopexit8

.lr.ph11:                                         ; preds = %56
  br label %59

59:                                               ; preds = %.lr.ph11, %181
  store i32 0, ptr %7, align 4
  %60 = load i32, ptr %7, align 4
  %61 = load i32, ptr @listLength, align 4
  %62 = load i32, ptr %3, align 4
  %63 = add nsw i32 %61, %62
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %.lr.ph9, label %181

.lr.ph9:                                          ; preds = %59
  br label %65

65:                                               ; preds = %.lr.ph9, %173
  %66 = load i32, ptr %7, align 4
  %67 = shl i32 1, %66
  %68 = load i32, ptr %4, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %173, label %71

71:                                               ; preds = %65
  store i32 0, ptr %8, align 4
  %72 = load i32, ptr %8, align 4
  %73 = load i32, ptr %7, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %71
  br label %75

75:                                               ; preds = %.lr.ph, %167
  %76 = load i32, ptr %8, align 4
  %77 = shl i32 1, %76
  %78 = load i32, ptr %4, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %167, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr @workList, align 8
  %83 = load i32, ptr %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %82, i64 %84
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %9, align 4
  %87 = load ptr, ptr @workList, align 8
  %88 = load i32, ptr %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %87, i64 %89
  %91 = load i32, ptr %90, align 4
  store i32 %91, ptr %10, align 4
  %92 = load i32, ptr %5, align 4
  %93 = icmp eq i32 %92, 3
  %94 = load i32, ptr %5, align 4
  %95 = icmp eq i32 %94, 4
  %or.cond = select i1 %93, i1 true, i1 %95
  br i1 %or.cond, label %96, label %101

96:                                               ; preds = %81
  %97 = load i32, ptr %9, align 4
  %98 = icmp eq i32 %97, 1
  %99 = load i32, ptr %10, align 4
  %100 = icmp eq i32 %99, 1
  %or.cond3 = select i1 %98, i1 true, i1 %100
  br i1 %or.cond3, label %167, label %101

101:                                              ; preds = %96, %81
  %102 = load i32, ptr %9, align 4
  %103 = icmp eq i32 %102, 0
  %104 = load i32, ptr %10, align 4
  %105 = icmp eq i32 %104, 0
  %or.cond5 = select i1 %103, i1 true, i1 %105
  br i1 %or.cond5, label %167, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %5, align 4
  %108 = icmp eq i32 %107, 4
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, ptr %9, align 4
  %111 = load i32, ptr %10, align 4
  %112 = srem i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %167, label %114

114:                                              ; preds = %109, %106
  %115 = load i32, ptr %5, align 4
  %116 = icmp eq i32 %115, 4
  %117 = load i32, ptr %5, align 4
  %118 = icmp eq i32 %117, 2
  %or.cond7 = select i1 %116, i1 true, i1 %118
  br i1 %or.cond7, label %119, label %127

119:                                              ; preds = %114
  %120 = load i32, ptr %9, align 4
  %121 = load i32, ptr %10, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, ptr %9, align 4
  store i32 %124, ptr %11, align 4
  %125 = load i32, ptr %10, align 4
  store i32 %125, ptr %9, align 4
  %126 = load i32, ptr %11, align 4
  store i32 %126, ptr %10, align 4
  br label %127

127:                                              ; preds = %114, %123, %119
  %128 = load i32, ptr %4, align 4
  %129 = load i32, ptr %7, align 4
  %130 = shl i32 1, %129
  %131 = or i32 %128, %130
  %132 = load i32, ptr %8, align 4
  %133 = shl i32 1, %132
  %134 = or i32 %131, %133
  store i32 %134, ptr %6, align 4
  %135 = load i32, ptr %9, align 4
  %136 = load ptr, ptr @combList, align 8
  %137 = load i32, ptr %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.Comb, ptr %136, i64 %138
  %140 = getelementptr inbounds nuw %struct.Comb, ptr %139, i32 0, i32 0
  store i32 %135, ptr %140, align 4
  %141 = load i32, ptr %10, align 4
  %142 = load ptr, ptr @combList, align 8
  %143 = load i32, ptr %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.Comb, ptr %142, i64 %144
  %146 = getelementptr inbounds nuw %struct.Comb, ptr %145, i32 0, i32 1
  store i32 %141, ptr %146, align 4
  %147 = load i32, ptr %5, align 4
  %148 = load ptr, ptr @combList, align 8
  %149 = load i32, ptr %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.Comb, ptr %148, i64 %150
  %152 = getelementptr inbounds nuw %struct.Comb, ptr %151, i32 0, i32 2
  store i32 %147, ptr %152, align 4
  %153 = load ptr, ptr @combList, align 8
  %154 = load i32, ptr %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.Comb, ptr %153, i64 %155
  %157 = call i32 @calculate(ptr noundef %156)
  %158 = load ptr, ptr @workList, align 8
  %159 = load i32, ptr @listLength, align 4
  %160 = load i32, ptr %3, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, ptr %158, i64 %162
  store i32 %157, ptr %163, align 4
  %164 = load i32, ptr %3, align 4
  %165 = add nsw i32 %164, 1
  %166 = load i32, ptr %6, align 4
  call void @recSearch(i32 noundef %165, i32 noundef %166)
  br label %167

167:                                              ; preds = %109, %101, %96, %75, %127
  %168 = load i32, ptr %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, ptr %8, align 4
  %170 = load i32, ptr %8, align 4
  %171 = load i32, ptr %7, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %75, label %..loopexit_crit_edge, !llvm.loop !13

..loopexit_crit_edge:                             ; preds = %167
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %71
  br label %173

173:                                              ; preds = %.loopexit, %65
  %174 = load i32, ptr %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %7, align 4
  %176 = load i32, ptr %7, align 4
  %177 = load i32, ptr @listLength, align 4
  %178 = load i32, ptr %3, align 4
  %179 = add nsw i32 %177, %178
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %65, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %173
  br label %181

181:                                              ; preds = %._crit_edge, %59
  %182 = load i32, ptr %5, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %5, align 4
  %184 = load i32, ptr %5, align 4
  %185 = icmp sle i32 %184, 4
  br i1 %185, label %59, label %..loopexit8_crit_edge, !llvm.loop !15

..loopexit8_crit_edge:                            ; preds = %181
  br label %.loopexit8

.loopexit8:                                       ; preds = %..loopexit8_crit_edge, %56
  br label %186

186:                                              ; preds = %.loopexit8, %20, %53, %37, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = load i32, ptr %1, align 4
  %3 = load i32, ptr @listLength, align 4
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %25
  %6 = load ptr, ptr @workList, align 8
  %7 = load i32, ptr %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %6, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @goal, align 4
  %12 = sub nsw i32 %10, %11
  %13 = call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = load i32, ptr @best, align 4
  %15 = load i32, ptr @goal, align 4
  %16 = sub nsw i32 %14, %15
  %17 = call i32 @llvm.abs.i32(i32 %16, i1 true)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load ptr, ptr @workList, align 8
  %21 = load i32, ptr %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %20, i64 %22
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr @best, align 4
  br label %25

25:                                               ; preds = %5, %19
  %26 = load i32, ptr %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %1, align 4
  %28 = load i32, ptr %1, align 4
  %29 = load i32, ptr @listLength, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %5, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %25
  br label %31

31:                                               ; preds = %._crit_edge, %0
  %32 = load i32, ptr @best, align 4
  %33 = load i32, ptr @goal, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %56

37:                                               ; preds = %31
  store i32 1, ptr @dmax, align 4
  %38 = load i32, ptr @dmax, align 4
  %39 = load i32, ptr @listLength, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %.lr.ph2, label %50

.lr.ph2:                                          ; preds = %37
  br label %41

41:                                               ; preds = %.lr.ph2, %44
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %42 = load i32, ptr @stopSearch, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %._crit_edge3, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr @dmax, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @dmax, align 4
  %47 = load i32, ptr @dmax, align 4
  %48 = load i32, ptr @listLength, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %41, label %._crit_edge4, !llvm.loop !17

._crit_edge3:                                     ; preds = %41
  br label %50

._crit_edge4:                                     ; preds = %44
  br label %50

50:                                               ; preds = %._crit_edge4, %._crit_edge3, %37
  %51 = load i32, ptr @stopSearch, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load ptr, ptr @solution, align 8
  %55 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %54, i32 noundef %55)
  br label %56

56:                                               ; preds = %53, %50, %35
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
  %8 = call i32 @getchar()
  store i32 %8, ptr %3, align 4
  %9 = icmp ne i32 %8, 10
  %10 = load i32, ptr %3, align 4
  %11 = icmp ne i32 %10, -1
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %0
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = load i32, ptr %3, align 4
  %15 = call ptr @__acrt_iob_func(i32 noundef 0)
  %16 = call i32 @ungetc(i32 noundef %14, ptr noundef %15)
  %17 = call ptr @__acrt_iob_func(i32 noundef 0)
  %18 = load i32, ptr %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %19
  %21 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %17, ptr noundef @.str.2, ptr noundef %20)
  %22 = load i32, ptr %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %2, align 4
  %24 = call i32 @getchar()
  store i32 %24, ptr %3, align 4
  %25 = icmp ne i32 %24, 10
  %26 = load i32, ptr %3, align 4
  %27 = icmp ne i32 %26, -1
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %13, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %13
  br label %29

29:                                               ; preds = %._crit_edge, %0
  %30 = load i32, ptr %2, align 4
  %31 = icmp eq i32 %30, 0
  %spec.store.select = select i1 %31, i32 4, i32 %30
  store i32 %spec.store.select, ptr %2, align 4
  %32 = load i32, ptr %2, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, ptr @listLength, align 4
  %34 = load i32, ptr @listLength, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr @goal, align 4
  %38 = load i32, ptr @listLength, align 4
  %39 = mul nsw i32 2, %38
  %40 = call ptr @newWorkList(i32 noundef %39)
  store ptr %40, ptr @workList, align 8
  %41 = load i32, ptr @listLength, align 4
  %42 = call ptr @newCombList(i32 noundef %41)
  store ptr %42, ptr @combList, align 8
  %43 = load i32, ptr @listLength, align 4
  %44 = call ptr @newCombList(i32 noundef %43)
  store ptr %44, ptr @solution, align 8
  %45 = load ptr, ptr @workList, align 8
  %46 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  %47 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %45, ptr noundef %46, i32 noundef %47)
  %48 = load ptr, ptr @combList, align 8
  %49 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %48, i32 noundef %49)
  %50 = load ptr, ptr @solution, align 8
  %51 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %50, i32 noundef %51)
  %52 = load i32, ptr @listLength, align 4
  ret i32 %52
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
