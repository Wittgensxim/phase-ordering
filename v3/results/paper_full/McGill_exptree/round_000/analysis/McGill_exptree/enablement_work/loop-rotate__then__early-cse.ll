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
  %9 = icmp slt i32 0, %8
  br i1 %9, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %3
  br label %10

10:                                               ; preds = %.lr.ph, %18
  %11 = load ptr, ptr %5, align 8
  %12 = load i32, ptr %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i32, ptr %16, i64 %13
  store i32 %15, ptr %17, align 4
  br label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %7, align 4
  %21 = load i32, ptr %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %10, label %._crit_edge, !llvm.loop !7

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
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 0, %6
  br i1 %7, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %14
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.Comb, ptr %9, i64 %11
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %12, i32 0, i32 2
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %5, align 4
  %17 = load i32, ptr %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %8, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %14
  br label %19

19:                                               ; preds = %._crit_edge, %2
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
  %9 = icmp slt i32 0, %8
  br i1 %9, label %.lr.ph, label %41

.lr.ph:                                           ; preds = %3
  br label %10

10:                                               ; preds = %.lr.ph, %36
  %11 = load ptr, ptr %5, align 8
  %12 = load i32, ptr %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.Comb, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.Comb, ptr %16, i64 %13
  store i32 %15, ptr %17, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Comb, ptr %18, i64 %20
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.Comb, ptr %24, i64 %20
  %26 = getelementptr inbounds nuw %struct.Comb, ptr %25, i32 0, i32 1
  store i32 %23, ptr %26, align 4
  %27 = load ptr, ptr %5, align 8
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.Comb, ptr %27, i64 %29
  %31 = getelementptr inbounds nuw %struct.Comb, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.Comb, ptr %33, i64 %29
  %35 = getelementptr inbounds nuw %struct.Comb, ptr %34, i32 0, i32 2
  store i32 %32, ptr %35, align 4
  br label %36

36:                                               ; preds = %10
  %37 = load i32, ptr %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %7, align 4
  %39 = load i32, ptr %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %10, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %36
  br label %41

41:                                               ; preds = %._crit_edge, %3
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.Comb, ptr %42, i64 %44
  %46 = getelementptr inbounds nuw %struct.Comb, ptr %45, i32 0, i32 2
  store i32 0, ptr %46, align 4
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
  %7 = icmp slt i32 0, %6
  br i1 %7, label %.lr.ph, label %56

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %51
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.Comb, ptr %9, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %13)
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.Comb, ptr %15, i64 %17
  %19 = getelementptr inbounds nuw %struct.Comb, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %31 [
    i32 0, label %21
    i32 1, label %23
    i32 2, label %25
    i32 3, label %27
    i32 4, label %29
  ]

21:                                               ; preds = %8
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %33

23:                                               ; preds = %8
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %33

25:                                               ; preds = %8
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %33

27:                                               ; preds = %8
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %33

29:                                               ; preds = %8
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %33

31:                                               ; preds = %8
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %20)
  br label %33

33:                                               ; preds = %31, %29, %27, %25, %23, %21
  %34 = load ptr, ptr %3, align 8
  %35 = load i32, ptr %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.Comb, ptr %34, i64 %36
  %38 = getelementptr inbounds nuw %struct.Comb, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = call i32 @calculate(ptr noundef %37)
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %39, i32 noundef %40)
  %42 = load i32, ptr %5, align 4
  %43 = load i32, ptr %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %50

48:                                               ; preds = %33
  %49 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %5, align 4
  %54 = load i32, ptr %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %8, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %51
  br label %56

56:                                               ; preds = %._crit_edge, %2
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  %9 = icmp slt i32 0, %8
  br i1 %9, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %3
  br label %10

10:                                               ; preds = %.lr.ph, %23
  %11 = load i32, ptr %7, align 4
  %12 = shl i32 1, %11
  %13 = load i32, ptr %6, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %23

17:                                               ; preds = %10
  %18 = load ptr, ptr %4, align 8
  %19 = sext i32 %11 to i64
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %21)
  br label %23

23:                                               ; preds = %17, %16
  %24 = load i32, ptr %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %7, align 4
  %26 = load i32, ptr %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %10, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %23
  br label %28

28:                                               ; preds = %._crit_edge, %3
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
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %178

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
  br label %178

49:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  br i1 true, label %.lr.ph5, label %177

.lr.ph5:                                          ; preds = %49
  br label %50

50:                                               ; preds = %.lr.ph5, %173
  store i32 0, ptr %7, align 4
  %51 = load i32, ptr @listLength, align 4
  %52 = load i32, ptr %3, align 4
  %53 = add nsw i32 %51, %52
  %54 = icmp slt i32 0, %53
  br i1 %54, label %.lr.ph2, label %172

.lr.ph2:                                          ; preds = %50
  br label %55

55:                                               ; preds = %.lr.ph2, %165
  %56 = load i32, ptr %7, align 4
  %57 = shl i32 1, %56
  %58 = load i32, ptr %4, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %165

62:                                               ; preds = %55
  store i32 0, ptr %8, align 4
  %63 = load i32, ptr %7, align 4
  %64 = icmp slt i32 0, %63
  br i1 %64, label %.lr.ph, label %164

.lr.ph:                                           ; preds = %62
  br label %65

65:                                               ; preds = %.lr.ph, %159
  %66 = load i32, ptr %8, align 4
  %67 = shl i32 1, %66
  %68 = load i32, ptr %4, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %159

72:                                               ; preds = %65
  %73 = load ptr, ptr @workList, align 8
  %74 = load i32, ptr %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %73, i64 %75
  %77 = load i32, ptr %76, align 4
  store i32 %77, ptr %9, align 4
  %78 = load ptr, ptr @workList, align 8
  %79 = load i32, ptr %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %78, i64 %80
  %82 = load i32, ptr %81, align 4
  store i32 %82, ptr %10, align 4
  %83 = load i32, ptr %5, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %87, label %85

85:                                               ; preds = %72
  %86 = icmp eq i32 %83, 4
  br i1 %86, label %87, label %94

87:                                               ; preds = %85, %72
  %88 = load i32, ptr %9, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, ptr %10, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %87
  br label %159

94:                                               ; preds = %90, %85
  %95 = load i32, ptr %9, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %10, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97, %94
  br label %159

101:                                              ; preds = %97
  %102 = load i32, ptr %5, align 4
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = srem i32 %95, %98
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %159

108:                                              ; preds = %104, %101
  %109 = load i32, ptr %5, align 4
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = icmp eq i32 %109, 2
  br i1 %112, label %113, label %120

113:                                              ; preds = %111, %108
  %114 = load i32, ptr %9, align 4
  %115 = load i32, ptr %10, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  store i32 %114, ptr %11, align 4
  %118 = load i32, ptr %10, align 4
  store i32 %118, ptr %9, align 4
  %119 = load i32, ptr %11, align 4
  store i32 %119, ptr %10, align 4
  br label %120

120:                                              ; preds = %117, %113, %111
  %121 = load i32, ptr %4, align 4
  %122 = load i32, ptr %7, align 4
  %123 = shl i32 1, %122
  %124 = or i32 %121, %123
  %125 = load i32, ptr %8, align 4
  %126 = shl i32 1, %125
  %127 = or i32 %124, %126
  store i32 %127, ptr %6, align 4
  %128 = load i32, ptr %9, align 4
  %129 = load ptr, ptr @combList, align 8
  %130 = load i32, ptr %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.Comb, ptr %129, i64 %131
  store i32 %128, ptr %132, align 4
  %133 = load i32, ptr %10, align 4
  %134 = load ptr, ptr @combList, align 8
  %135 = load i32, ptr %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.Comb, ptr %134, i64 %136
  %138 = getelementptr inbounds nuw %struct.Comb, ptr %137, i32 0, i32 1
  store i32 %133, ptr %138, align 4
  %139 = load i32, ptr %5, align 4
  %140 = load ptr, ptr @combList, align 8
  %141 = load i32, ptr %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.Comb, ptr %140, i64 %142
  %144 = getelementptr inbounds nuw %struct.Comb, ptr %143, i32 0, i32 2
  store i32 %139, ptr %144, align 4
  %145 = load ptr, ptr @combList, align 8
  %146 = load i32, ptr %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.Comb, ptr %145, i64 %147
  %149 = call i32 @calculate(ptr noundef %148)
  %150 = load ptr, ptr @workList, align 8
  %151 = load i32, ptr @listLength, align 4
  %152 = load i32, ptr %3, align 4
  %153 = add nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, ptr %150, i64 %154
  store i32 %149, ptr %155, align 4
  %156 = load i32, ptr %3, align 4
  %157 = add nsw i32 %156, 1
  %158 = load i32, ptr %6, align 4
  call void @recSearch(i32 noundef %157, i32 noundef %158)
  br label %159

159:                                              ; preds = %120, %107, %100, %93, %71
  %160 = load i32, ptr %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr %8, align 4
  %162 = load i32, ptr %7, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %65, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %159
  br label %164

164:                                              ; preds = %._crit_edge, %62
  br label %165

165:                                              ; preds = %164, %61
  %166 = load i32, ptr %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %7, align 4
  %168 = load i32, ptr @listLength, align 4
  %169 = load i32, ptr %3, align 4
  %170 = add nsw i32 %168, %169
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %55, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %165
  br label %172

172:                                              ; preds = %._crit_edge3, %50
  br label %173

173:                                              ; preds = %172
  %174 = load i32, ptr %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %5, align 4
  %176 = icmp sle i32 %175, 4
  br i1 %176, label %50, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %173
  br label %177

177:                                              ; preds = %._crit_edge6, %49
  br label %178

178:                                              ; preds = %177, %48, %14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = load i32, ptr @listLength, align 4
  %3 = icmp slt i32 0, %2
  br i1 %3, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %0
  br label %4

4:                                                ; preds = %.lr.ph, %19
  %5 = load ptr, ptr @workList, align 8
  %6 = load i32, ptr %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr @goal, align 4
  %11 = sub nsw i32 %9, %10
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = load i32, ptr @best, align 4
  %14 = sub nsw i32 %13, %10
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 %9, ptr @best, align 4
  br label %18

18:                                               ; preds = %17, %4
  br label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %1, align 4
  %22 = load i32, ptr @listLength, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %4, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %19
  br label %24

24:                                               ; preds = %._crit_edge, %0
  %25 = load i32, ptr @best, align 4
  %26 = load i32, ptr @goal, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %49

30:                                               ; preds = %24
  store i32 1, ptr @dmax, align 4
  %31 = load i32, ptr @listLength, align 4
  %32 = icmp slt i32 1, %31
  br i1 %32, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %30
  br label %33

33:                                               ; preds = %.lr.ph2, %38
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %34 = load i32, ptr @stopSearch, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %43

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = load i32, ptr @dmax, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr @dmax, align 4
  %41 = load i32, ptr @listLength, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %33, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %38
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %30
  br label %43

43:                                               ; preds = %.loopexit, %36
  %44 = load i32, ptr @stopSearch, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load ptr, ptr @solution, align 8
  %48 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %47, i32 noundef %48)
  br label %49

49:                                               ; preds = %46, %43, %28
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

7:                                                ; preds = %14, %0
  %8 = call i32 @getchar()
  store i32 %8, ptr %3, align 4
  %9 = icmp ne i32 %8, 10
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = icmp ne i32 %8, -1
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i1 [ false, %7 ], [ %11, %10 ]
  br i1 %13, label %14, label %25

14:                                               ; preds = %12
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
  br label %7, !llvm.loop !18

25:                                               ; preds = %12
  %26 = load i32, ptr %2, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 4, ptr %2, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, ptr %2, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, ptr @listLength, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr @goal, align 4
  %35 = load i32, ptr @listLength, align 4
  %36 = mul nsw i32 2, %35
  %37 = call ptr @newWorkList(i32 noundef %36)
  store ptr %37, ptr @workList, align 8
  %38 = load i32, ptr @listLength, align 4
  %39 = call ptr @newCombList(i32 noundef %38)
  store ptr %39, ptr @combList, align 8
  %40 = load i32, ptr @listLength, align 4
  %41 = call ptr @newCombList(i32 noundef %40)
  store ptr %41, ptr @solution, align 8
  %42 = load ptr, ptr @workList, align 8
  %43 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %42, ptr noundef %1, i32 noundef %43)
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
