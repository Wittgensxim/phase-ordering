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
  br i1 %10, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %21
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
  br label %21

21:                                               ; preds = %11
  %22 = load i32, ptr %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %7, align 4
  %24 = load i32, ptr %7, align 4
  %25 = load i32, ptr %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %11, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %21
  br label %27

27:                                               ; preds = %._crit_edge, %3
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
  br i1 %8, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %15
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %10, i64 %12
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 2
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %5, align 4
  %18 = load i32, ptr %5, align 4
  %19 = load i32, ptr %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %9, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  br label %21

21:                                               ; preds = %._crit_edge, %2
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
  br i1 %10, label %.lr.ph, label %51

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %45
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
  br label %45

45:                                               ; preds = %11
  %46 = load i32, ptr %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %7, align 4
  %48 = load i32, ptr %7, align 4
  %49 = load i32, ptr %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %11, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %45
  br label %51

51:                                               ; preds = %._crit_edge, %3
  %52 = load ptr, ptr %4, align 8
  %53 = load i32, ptr %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.Comb, ptr %52, i64 %54
  %56 = getelementptr inbounds nuw %struct.Comb, ptr %55, i32 0, i32 2
  store i32 0, ptr %56, align 4
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
  %14 = add nsw i32 %13, %10
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
  %30 = mul nsw i32 %29, %26
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
  br i1 %8, label %.lr.ph, label %69

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %63
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

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %5, align 4
  %66 = load i32, ptr %5, align 4
  %67 = load i32, ptr %4, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %9, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %63
  br label %69

69:                                               ; preds = %._crit_edge, %2
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br i1 %10, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %3
  br label %11

11:                                               ; preds = %.lr.ph, %25
  %12 = load i32, ptr %7, align 4
  %13 = shl i32 1, %12
  %14 = load i32, ptr %6, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %25

18:                                               ; preds = %11
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %23)
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, ptr %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %7, align 4
  %28 = load i32, ptr %7, align 4
  %29 = load i32, ptr %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %11, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %25
  br label %31

31:                                               ; preds = %._crit_edge, %3
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br label %201

15:                                               ; preds = %2
  %16 = load i32, ptr @nbNodes, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @nbNodes, align 4
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr @dmax, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = load ptr, ptr @workList, align 8
  %23 = load i32, ptr @listLength, align 4
  %24 = load i32, ptr %3, align 4
  %25 = add i32 %23, -1
  %26 = add i32 %25, %24
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %22, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @llvm.abs.i32(i32 %31, i1 true)
  %33 = load i32, ptr @best, align 4
  %34 = load i32, ptr @goal, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @llvm.abs.i32(i32 %35, i1 true)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %21
  %39 = load ptr, ptr @workList, align 8
  %40 = load i32, ptr @listLength, align 4
  %41 = load i32, ptr %3, align 4
  %42 = add i32 %40, -1
  %43 = add i32 %42, %41
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %39, i64 %44
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr @best, align 4
  %47 = load i32, ptr %3, align 4
  store i32 %47, ptr @bestDepth, align 4
  %48 = load ptr, ptr @solution, align 8
  %49 = load ptr, ptr @combList, align 8
  %50 = load i32, ptr %3, align 4
  call void @saveSolution(ptr noundef %48, ptr noundef %49, i32 noundef %50)
  %51 = load i32, ptr @best, align 4
  %52 = load i32, ptr @goal, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load ptr, ptr @combList, align 8
  %56 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %55, i32 noundef %56)
  store i32 1, ptr @stopSearch, align 4
  br label %57

57:                                               ; preds = %54, %38
  br label %58

58:                                               ; preds = %57, %21
  br label %201

59:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  %60 = load i32, ptr %5, align 4
  %61 = icmp sle i32 %60, 4
  br i1 %61, label %.lr.ph5, label %200

.lr.ph5:                                          ; preds = %59
  br label %62

62:                                               ; preds = %.lr.ph5, %195
  store i32 0, ptr %7, align 4
  %63 = load i32, ptr %7, align 4
  %64 = load i32, ptr @listLength, align 4
  %65 = load i32, ptr %3, align 4
  %66 = add nsw i32 %65, %64
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %.lr.ph2, label %194

.lr.ph2:                                          ; preds = %62
  br label %68

68:                                               ; preds = %.lr.ph2, %186
  %69 = load i32, ptr %7, align 4
  %70 = shl i32 1, %69
  %71 = load i32, ptr %4, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %186

75:                                               ; preds = %68
  store i32 0, ptr %8, align 4
  %76 = load i32, ptr %8, align 4
  %77 = load i32, ptr %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %.lr.ph, label %185

.lr.ph:                                           ; preds = %75
  br label %79

79:                                               ; preds = %.lr.ph, %179
  %80 = load i32, ptr %8, align 4
  %81 = shl i32 1, %80
  %82 = load i32, ptr %4, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %179

86:                                               ; preds = %79
  %87 = load ptr, ptr @workList, align 8
  %88 = load i32, ptr %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %87, i64 %89
  %91 = load i32, ptr %90, align 4
  store i32 %91, ptr %9, align 4
  %92 = load ptr, ptr @workList, align 8
  %93 = load i32, ptr %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, ptr %92, i64 %94
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %10, align 4
  %97 = load i32, ptr %5, align 4
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %102, label %99

99:                                               ; preds = %86
  %100 = load i32, ptr %5, align 4
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %109

102:                                              ; preds = %99, %86
  %103 = load i32, ptr %9, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %10, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %102
  br label %179

109:                                              ; preds = %105, %99
  %110 = load i32, ptr %9, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr %10, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112, %109
  br label %179

116:                                              ; preds = %112
  %117 = load i32, ptr %5, align 4
  %118 = icmp eq i32 %117, 4
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, ptr %9, align 4
  %121 = load i32, ptr %10, align 4
  %122 = srem i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %179

125:                                              ; preds = %119, %116
  %126 = load i32, ptr %5, align 4
  %127 = icmp eq i32 %126, 4
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %5, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %139

131:                                              ; preds = %128, %125
  %132 = load i32, ptr %9, align 4
  %133 = load i32, ptr %10, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, ptr %9, align 4
  store i32 %136, ptr %11, align 4
  %137 = load i32, ptr %10, align 4
  store i32 %137, ptr %9, align 4
  %138 = load i32, ptr %11, align 4
  store i32 %138, ptr %10, align 4
  br label %139

139:                                              ; preds = %135, %131, %128
  %140 = load i32, ptr %4, align 4
  %141 = load i32, ptr %7, align 4
  %142 = shl i32 1, %141
  %143 = or i32 %142, %140
  %144 = load i32, ptr %8, align 4
  %145 = shl i32 1, %144
  %146 = or i32 %143, %145
  store i32 %146, ptr %6, align 4
  %147 = load i32, ptr %9, align 4
  %148 = load ptr, ptr @combList, align 8
  %149 = load i32, ptr %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.Comb, ptr %148, i64 %150
  %152 = getelementptr inbounds nuw %struct.Comb, ptr %151, i32 0, i32 0
  store i32 %147, ptr %152, align 4
  %153 = load i32, ptr %10, align 4
  %154 = load ptr, ptr @combList, align 8
  %155 = load i32, ptr %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.Comb, ptr %154, i64 %156
  %158 = getelementptr inbounds nuw %struct.Comb, ptr %157, i32 0, i32 1
  store i32 %153, ptr %158, align 4
  %159 = load i32, ptr %5, align 4
  %160 = load ptr, ptr @combList, align 8
  %161 = load i32, ptr %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.Comb, ptr %160, i64 %162
  %164 = getelementptr inbounds nuw %struct.Comb, ptr %163, i32 0, i32 2
  store i32 %159, ptr %164, align 4
  %165 = load ptr, ptr @combList, align 8
  %166 = load i32, ptr %3, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.Comb, ptr %165, i64 %167
  %169 = call i32 @calculate(ptr noundef %168)
  %170 = load ptr, ptr @workList, align 8
  %171 = load i32, ptr @listLength, align 4
  %172 = load i32, ptr %3, align 4
  %173 = add nsw i32 %172, %171
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %170, i64 %174
  store i32 %169, ptr %175, align 4
  %176 = load i32, ptr %3, align 4
  %177 = add nsw i32 %176, 1
  %178 = load i32, ptr %6, align 4
  call void @recSearch(i32 noundef %177, i32 noundef %178)
  br label %179

179:                                              ; preds = %139, %124, %115, %108, %85
  %180 = load i32, ptr %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, ptr %8, align 4
  %182 = load i32, ptr %8, align 4
  %183 = load i32, ptr %7, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %79, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %179
  br label %185

185:                                              ; preds = %._crit_edge, %75
  br label %186

186:                                              ; preds = %185, %74
  %187 = load i32, ptr %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr %7, align 4
  %189 = load i32, ptr %7, align 4
  %190 = load i32, ptr @listLength, align 4
  %191 = load i32, ptr %3, align 4
  %192 = add nsw i32 %191, %190
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %68, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %186
  br label %194

194:                                              ; preds = %._crit_edge3, %62
  br label %195

195:                                              ; preds = %194
  %196 = load i32, ptr %5, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %5, align 4
  %198 = load i32, ptr %5, align 4
  %199 = icmp sle i32 %198, 4
  br i1 %199, label %62, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %195
  br label %200

200:                                              ; preds = %._crit_edge6, %59
  br label %201

201:                                              ; preds = %200, %58, %14
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
  br i1 %4, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %26
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

25:                                               ; preds = %19, %5
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %1, align 4
  %29 = load i32, ptr %1, align 4
  %30 = load i32, ptr @listLength, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %5, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %26
  br label %32

32:                                               ; preds = %._crit_edge, %0
  %33 = load i32, ptr @best, align 4
  %34 = load i32, ptr @goal, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %59

38:                                               ; preds = %32
  store i32 1, ptr @dmax, align 4
  %39 = load i32, ptr @dmax, align 4
  %40 = load i32, ptr @listLength, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %38
  br label %42

42:                                               ; preds = %.lr.ph2, %47
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %43 = load i32, ptr @stopSearch, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %53

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46
  %48 = load i32, ptr @dmax, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr @dmax, align 4
  %50 = load i32, ptr @dmax, align 4
  %51 = load i32, ptr @listLength, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %42, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %47
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %38
  br label %53

53:                                               ; preds = %.loopexit, %45
  %54 = load i32, ptr @stopSearch, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load ptr, ptr @solution, align 8
  %58 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %57, i32 noundef %58)
  br label %59

59:                                               ; preds = %56, %53, %36
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

8:                                                ; preds = %16, %0
  %9 = call i32 @getchar()
  store i32 %9, ptr %3, align 4
  %10 = icmp ne i32 %9, 10
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, ptr %3, align 4
  %13 = icmp ne i32 %12, -1
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = load i32, ptr %3, align 4
  %18 = call ptr @__acrt_iob_func(i32 noundef 0)
  %19 = call i32 @ungetc(i32 noundef %17, ptr noundef %18)
  %20 = call ptr @__acrt_iob_func(i32 noundef 0)
  %21 = load i32, ptr %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %22
  %24 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %20, ptr noundef @.str.2, ptr noundef %23)
  %25 = load i32, ptr %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %2, align 4
  br label %8, !llvm.loop !18

27:                                               ; preds = %14
  %28 = load i32, ptr %2, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 4, ptr %2, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, ptr %2, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, ptr @listLength, align 4
  %34 = load i32, ptr @listLength, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr @goal, align 4
  %38 = load i32, ptr @listLength, align 4
  %39 = mul nsw i32 %38, 2
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
