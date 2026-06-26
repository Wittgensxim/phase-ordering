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
  %8 = icmp slt i32 0, %2
  br i1 %8, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %10 = phi i32 [ 0, %.lr.ph ], [ %15, %9 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds i32, ptr %0, i64 %11
  store i32 %13, ptr %14, align 4
  %15 = add nsw i32 %10, 1
  store i32 %15, ptr %7, align 4
  %16 = icmp slt i32 %15, %2
  br i1 %16, label %9, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %9
  br label %17

17:                                               ; preds = %._crit_edge, %3
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
  %6 = icmp slt i32 0, %1
  br i1 %6, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %8 = phi i32 [ 0, %.lr.ph ], [ %12, %7 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.Comb, ptr %0, i64 %9
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %10, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = add nsw i32 %8, 1
  store i32 %12, ptr %5, align 4
  %13 = icmp slt i32 %12, %1
  br i1 %13, label %7, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %7
  br label %14

14:                                               ; preds = %._crit_edge, %2
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
  %8 = icmp slt i32 0, %2
  br i1 %8, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %10 = phi i32 [ 0, %.lr.ph ], [ %21, %9 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.Comb, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.Comb, ptr %0, i64 %11
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %12, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds nuw %struct.Comb, ptr %12, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = add nsw i32 %10, 1
  store i32 %21, ptr %7, align 4
  %22 = icmp slt i32 %21, %2
  br i1 %22, label %9, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %9
  br label %23

23:                                               ; preds = %._crit_edge, %3
  %24 = sext i32 %2 to i64
  %25 = getelementptr inbounds %struct.Comb, ptr %0, i64 %24
  %26 = getelementptr inbounds nuw %struct.Comb, ptr %25, i32 0, i32 2
  store i32 0, ptr %26, align 4
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
  %28 = phi i32 [ 0, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %6 ]
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
  %6 = icmp slt i32 0, %1
  br i1 %6, label %.lr.ph, label %41

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %38
  %8 = phi i32 [ 0, %.lr.ph ], [ %39, %38 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.Comb, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %11)
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %10, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %25 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %19
    i32 3, label %21
    i32 4, label %23
  ]

15:                                               ; preds = %7
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %27

17:                                               ; preds = %7
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %27

19:                                               ; preds = %7
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %27

21:                                               ; preds = %7
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %27

23:                                               ; preds = %7
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %27

25:                                               ; preds = %7
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %14)
  br label %27

27:                                               ; preds = %25, %23, %21, %19, %17, %15
  %28 = getelementptr inbounds nuw %struct.Comb, ptr %10, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @calculate(ptr noundef %10)
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %29, i32 noundef %30)
  %32 = sub nsw i32 %1, 1
  %33 = icmp slt i32 %8, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %38

36:                                               ; preds = %27
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %38

38:                                               ; preds = %36, %34
  %39 = add nsw i32 %8, 1
  store i32 %39, ptr %5, align 4
  %40 = icmp slt i32 %39, %1
  br i1 %40, label %7, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %38
  br label %41

41:                                               ; preds = %._crit_edge, %2
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  %8 = icmp slt i32 0, %1
  br i1 %8, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %3
  br label %9

9:                                                ; preds = %.lr.ph, %20
  %10 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %11 = shl i32 1, %10
  %12 = and i32 %11, %2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %20

15:                                               ; preds = %9
  %16 = sext i32 %10 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %18)
  br label %20

20:                                               ; preds = %15, %14
  %21 = add nsw i32 %10, 1
  store i32 %21, ptr %7, align 4
  %22 = icmp slt i32 %21, %1
  br i1 %22, label %9, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %20
  br label %23

23:                                               ; preds = %._crit_edge, %3
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  %18 = load i32, ptr @dmax, align 4
  %19 = icmp eq i32 %0, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %15
  %21 = load ptr, ptr @workList, align 8
  %22 = load i32, ptr @listLength, align 4
  %23 = add nsw i32 %22, %0
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
  br i1 %34, label %35, label %44

35:                                               ; preds = %20
  store i32 %27, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %36 = load ptr, ptr @solution, align 8
  %37 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %36, ptr noundef %37, i32 noundef %0)
  %38 = load i32, ptr @best, align 4
  %39 = load i32, ptr @goal, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %42, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %43

43:                                               ; preds = %41, %35
  br label %44

44:                                               ; preds = %43, %20
  br label %178

45:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  br i1 true, label %.lr.ph5, label %._crit_edge7

._crit_edge7:                                     ; preds = %45
  br label %177

.lr.ph5:                                          ; preds = %45
  %.pre = load i32, ptr @listLength, align 4
  br label %46

46:                                               ; preds = %.lr.ph5, %169
  %.pre89 = phi i32 [ %.pre, %.lr.ph5 ], [ %.pre810, %169 ]
  %47 = phi i32 [ %.pre, %.lr.ph5 ], [ %170, %169 ]
  %48 = phi i32 [ 1, %.lr.ph5 ], [ %175, %169 ]
  %49 = phi i32 [ %1, %.lr.ph5 ], [ %171, %169 ]
  %50 = phi i32 [ %1, %.lr.ph5 ], [ %172, %169 ]
  %51 = phi i32 [ %0, %.lr.ph5 ], [ %173, %169 ]
  %52 = phi i32 [ %.pre, %.lr.ph5 ], [ %174, %169 ]
  store i32 0, ptr %7, align 4
  %53 = add nsw i32 %52, %51
  %54 = icmp slt i32 0, %53
  br i1 %54, label %.lr.ph2, label %169

.lr.ph2:                                          ; preds = %46
  br label %55

55:                                               ; preds = %.lr.ph2, %158
  %.pre811 = phi i32 [ %.pre89, %.lr.ph2 ], [ %.pre812, %158 ]
  %56 = phi i32 [ %47, %.lr.ph2 ], [ %159, %158 ]
  %57 = phi i32 [ %51, %.lr.ph2 ], [ %0, %158 ]
  %58 = phi i32 [ %48, %.lr.ph2 ], [ %160, %158 ]
  %59 = phi i32 [ %48, %.lr.ph2 ], [ %161, %158 ]
  %60 = phi i32 [ %48, %.lr.ph2 ], [ %162, %158 ]
  %61 = phi i32 [ %48, %.lr.ph2 ], [ %163, %158 ]
  %62 = phi i32 [ %49, %.lr.ph2 ], [ %164, %158 ]
  %63 = phi i32 [ %50, %.lr.ph2 ], [ %165, %158 ]
  %64 = phi i32 [ 0, %.lr.ph2 ], [ %166, %158 ]
  %65 = shl i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %158

69:                                               ; preds = %55
  store i32 0, ptr %8, align 4
  %70 = icmp slt i32 0, %64
  br i1 %70, label %.lr.ph, label %151

.lr.ph:                                           ; preds = %69
  br label %71

71:                                               ; preds = %.lr.ph, %142
  %72 = phi i32 [ %57, %.lr.ph ], [ %143, %142 ]
  %73 = phi i32 [ %58, %.lr.ph ], [ %144, %142 ]
  %74 = phi i32 [ %59, %.lr.ph ], [ %145, %142 ]
  %75 = phi i32 [ %60, %.lr.ph ], [ %146, %142 ]
  %76 = phi i32 [ %61, %.lr.ph ], [ %147, %142 ]
  %77 = phi i32 [ %62, %.lr.ph ], [ %148, %142 ]
  %78 = phi i32 [ 0, %.lr.ph ], [ %149, %142 ]
  %79 = shl i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %142

83:                                               ; preds = %71
  %84 = load ptr, ptr @workList, align 8
  %85 = sext i32 %64 to i64
  %86 = getelementptr inbounds i32, ptr %84, i64 %85
  %87 = load i32, ptr %86, align 4
  store i32 %87, ptr %9, align 4
  %88 = sext i32 %78 to i64
  %89 = getelementptr inbounds i32, ptr %84, i64 %88
  %90 = load i32, ptr %89, align 4
  store i32 %90, ptr %10, align 4
  %91 = icmp eq i32 %76, 3
  br i1 %91, label %94, label %92

92:                                               ; preds = %83
  %93 = icmp eq i32 %75, 4
  br i1 %93, label %94, label %100

94:                                               ; preds = %92, %83
  %95 = phi i32 [ 4, %92 ], [ 3, %83 ]
  %96 = icmp eq i32 %87, 1
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = icmp eq i32 %90, 1
  br i1 %98, label %99, label %100

99:                                               ; preds = %97, %94
  br label %142

100:                                              ; preds = %97, %92
  %101 = phi i32 [ %95, %97 ], [ %75, %92 ]
  %102 = icmp eq i32 %87, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = icmp eq i32 %90, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %103, %100
  br label %142

106:                                              ; preds = %103
  %107 = icmp eq i32 %74, 4
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  %109 = srem i32 %87, %90
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %142

112:                                              ; preds = %108, %106
  %113 = icmp eq i32 %73, 4
  br i1 %113, label %116, label %114

114:                                              ; preds = %112
  %115 = icmp eq i32 %73, 2
  br i1 %115, label %116, label %119

116:                                              ; preds = %114, %112
  %117 = icmp slt i32 %87, %90
  br i1 %117, label %118, label %119

118:                                              ; preds = %116
  store i32 %87, ptr %11, align 4
  store i32 %90, ptr %9, align 4
  store i32 %87, ptr %10, align 4
  br label %119

119:                                              ; preds = %118, %116, %114
  %120 = phi i32 [ %87, %118 ], [ %90, %116 ], [ %90, %114 ]
  %121 = phi i32 [ %90, %118 ], [ %87, %116 ], [ %87, %114 ]
  %122 = or i32 %1, %65
  %123 = or i32 %122, %79
  store i32 %123, ptr %6, align 4
  %124 = load ptr, ptr @combList, align 8
  %125 = sext i32 %72 to i64
  %126 = getelementptr inbounds %struct.Comb, ptr %124, i64 %125
  store i32 %121, ptr %126, align 4
  %127 = load ptr, ptr @combList, align 8
  %128 = getelementptr inbounds %struct.Comb, ptr %127, i64 %125
  %129 = getelementptr inbounds nuw %struct.Comb, ptr %128, i32 0, i32 1
  store i32 %120, ptr %129, align 4
  %130 = load ptr, ptr @combList, align 8
  %131 = getelementptr inbounds %struct.Comb, ptr %130, i64 %125
  %132 = getelementptr inbounds nuw %struct.Comb, ptr %131, i32 0, i32 2
  store i32 %48, ptr %132, align 4
  %133 = load ptr, ptr @combList, align 8
  %134 = getelementptr inbounds %struct.Comb, ptr %133, i64 %125
  %135 = call i32 @calculate(ptr noundef %134)
  %136 = load ptr, ptr @workList, align 8
  %137 = load i32, ptr @listLength, align 4
  %138 = add nsw i32 %137, %72
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %136, i64 %139
  store i32 %135, ptr %140, align 4
  %141 = add nsw i32 %57, 1
  call void @recSearch(i32 noundef %141, i32 noundef %123)
  br label %142

142:                                              ; preds = %119, %111, %105, %99, %82
  %143 = phi i32 [ %57, %119 ], [ %72, %111 ], [ %72, %105 ], [ %72, %99 ], [ %72, %82 ]
  %144 = phi i32 [ %48, %119 ], [ %73, %111 ], [ %73, %105 ], [ %73, %99 ], [ %73, %82 ]
  %145 = phi i32 [ %48, %119 ], [ 4, %111 ], [ %74, %105 ], [ %74, %99 ], [ %74, %82 ]
  %146 = phi i32 [ %48, %119 ], [ 4, %111 ], [ %75, %105 ], [ %75, %99 ], [ %75, %82 ]
  %147 = phi i32 [ %48, %119 ], [ 4, %111 ], [ %101, %105 ], [ %95, %99 ], [ %76, %82 ]
  %148 = phi i32 [ %1, %119 ], [ %77, %111 ], [ %77, %105 ], [ %77, %99 ], [ %77, %82 ]
  %149 = add nsw i32 %78, 1
  store i32 %149, ptr %8, align 4
  %150 = icmp slt i32 %149, %64
  br i1 %150, label %71, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %142
  %.pre8.pre = load i32, ptr @listLength, align 4
  br label %151

151:                                              ; preds = %._crit_edge, %69
  %.pre8 = phi i32 [ %.pre8.pre, %._crit_edge ], [ %.pre811, %69 ]
  %152 = phi i32 [ %144, %._crit_edge ], [ %58, %69 ]
  %153 = phi i32 [ %145, %._crit_edge ], [ %59, %69 ]
  %154 = phi i32 [ %146, %._crit_edge ], [ %60, %69 ]
  %155 = phi i32 [ %147, %._crit_edge ], [ %61, %69 ]
  %156 = phi i32 [ %148, %._crit_edge ], [ %62, %69 ]
  %157 = phi i32 [ %148, %._crit_edge ], [ %63, %69 ]
  br label %158

158:                                              ; preds = %151, %68
  %.pre812 = phi i32 [ %.pre8, %151 ], [ %.pre811, %68 ]
  %159 = phi i32 [ %.pre8, %151 ], [ %56, %68 ]
  %160 = phi i32 [ %152, %151 ], [ %58, %68 ]
  %161 = phi i32 [ %153, %151 ], [ %59, %68 ]
  %162 = phi i32 [ %154, %151 ], [ %60, %68 ]
  %163 = phi i32 [ %155, %151 ], [ %61, %68 ]
  %164 = phi i32 [ %156, %151 ], [ %62, %68 ]
  %165 = phi i32 [ %157, %151 ], [ %63, %68 ]
  %166 = add nsw i32 %64, 1
  store i32 %166, ptr %7, align 4
  %167 = add nsw i32 %159, %0
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %55, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %158
  br label %169

169:                                              ; preds = %._crit_edge3, %46
  %.pre810 = phi i32 [ %.pre812, %._crit_edge3 ], [ %.pre89, %46 ]
  %170 = phi i32 [ %159, %._crit_edge3 ], [ %47, %46 ]
  %171 = phi i32 [ %164, %._crit_edge3 ], [ %49, %46 ]
  %172 = phi i32 [ %165, %._crit_edge3 ], [ %50, %46 ]
  %173 = phi i32 [ %0, %._crit_edge3 ], [ %51, %46 ]
  %174 = phi i32 [ %159, %._crit_edge3 ], [ %52, %46 ]
  %175 = add nsw i32 %48, 1
  store i32 %175, ptr %5, align 4
  %176 = icmp sle i32 %175, 4
  br i1 %176, label %46, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %169
  br label %177

177:                                              ; preds = %._crit_edge7, %._crit_edge6
  br label %178

178:                                              ; preds = %177, %44, %14
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
  %.pre5 = load i32, ptr @best, align 4
  %.pre6 = load i32, ptr @goal, align 4
  br i1 %3, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %0
  %.pre = load ptr, ptr @workList, align 8
  br label %4

4:                                                ; preds = %.lr.ph, %19
  %5 = phi i32 [ %.pre5, %.lr.ph ], [ %20, %19 ]
  %6 = phi i32 [ 0, %.lr.ph ], [ %22, %19 ]
  %7 = phi ptr [ %.pre, %.lr.ph ], [ %21, %19 ]
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sub nsw i32 %10, %.pre6
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = sub nsw i32 %5, %.pre6
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = getelementptr inbounds i32, ptr %.pre, i64 %8
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr @best, align 4
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi i32 [ %18, %16 ], [ %5, %4 ]
  %21 = phi ptr [ %.pre, %16 ], [ %7, %4 ]
  %22 = add nsw i32 %6, 1
  store i32 %22, ptr %1, align 4
  %23 = icmp slt i32 %22, %2
  br i1 %23, label %4, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %19
  br label %24

24:                                               ; preds = %._crit_edge, %0
  %25 = phi i32 [ %20, %._crit_edge ], [ %.pre5, %0 ]
  %26 = icmp eq i32 %25, %.pre6
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %46

29:                                               ; preds = %24
  store i32 1, ptr @dmax, align 4
  %30 = icmp slt i32 1, %2
  br i1 %30, label %.lr.ph2, label %..loopexit_crit_edge8

..loopexit_crit_edge8:                            ; preds = %29
  %.pre7.pre = load i32, ptr @stopSearch, align 4
  br label %.loopexit

.lr.ph2:                                          ; preds = %29
  br label %31

31:                                               ; preds = %.lr.ph2, %35
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %32 = load i32, ptr @stopSearch, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %40

35:                                               ; preds = %31
  %36 = load i32, ptr @dmax, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @dmax, align 4
  %38 = load i32, ptr @listLength, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %31, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %35
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge8, %..loopexit_crit_edge
  %.pre7 = phi i32 [ %.pre7.pre, %..loopexit_crit_edge8 ], [ 0, %..loopexit_crit_edge ]
  br label %40

40:                                               ; preds = %.loopexit, %34
  %41 = phi i32 [ %.pre7, %.loopexit ], [ %32, %34 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load ptr, ptr @solution, align 8
  %45 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %43, %40, %27
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

7:                                                ; preds = %15, %0
  %8 = phi i32 [ %22, %15 ], [ 0, %0 ]
  %9 = call i32 @getchar()
  store i32 %9, ptr %3, align 4
  %10 = icmp ne i32 %9, 10
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = icmp ne i32 %9, -1
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i1 [ false, %7 ], [ %12, %11 ]
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = call ptr @__acrt_iob_func(i32 noundef 0)
  %17 = call i32 @ungetc(i32 noundef %9, ptr noundef %16)
  %18 = call ptr @__acrt_iob_func(i32 noundef 0)
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %19
  %21 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %18, ptr noundef @.str.2, ptr noundef %20)
  %22 = add nsw i32 %8, 1
  store i32 %22, ptr %2, align 4
  br label %7, !llvm.loop !18

23:                                               ; preds = %13
  %24 = icmp eq i32 %8, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store i32 4, ptr %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ 4, %25 ], [ %8, %23 ]
  %28 = sub nsw i32 %27, 1
  store i32 %28, ptr @listLength, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr @goal, align 4
  %32 = mul nsw i32 2, %28
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
  call void @initWorkList(ptr noundef %38, ptr noundef %1, i32 noundef %39)
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
