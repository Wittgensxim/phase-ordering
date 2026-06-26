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
  br label %175

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
  br label %175

45:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  br label %46

46:                                               ; preds = %45, %171
  %47 = phi i32 [ 1, %45 ], [ %172, %171 ]
  %48 = phi i32 [ %0, %45 ], [ %.lcssa8, %171 ]
  %49 = phi i32 [ %1, %45 ], [ %.lcssa10, %171 ]
  %50 = phi i32 [ %1, %45 ], [ %.lcssa11, %171 ]
  store i32 0, ptr %7, align 4
  %51 = load i32, ptr @listLength, align 4
  %52 = add nsw i32 %51, %48
  %53 = icmp slt i32 0, %52
  br i1 %53, label %.lr.ph20, label %171

.lr.ph20:                                         ; preds = %46
  br label %54

54:                                               ; preds = %.lr.ph20, %157
  %55 = phi i32 [ 0, %.lr.ph20 ], [ %167, %157 ]
  %56 = phi i32 [ %48, %.lr.ph20 ], [ %166, %157 ]
  %57 = phi i32 [ %47, %.lr.ph20 ], [ %165, %157 ]
  %58 = phi i32 [ %49, %.lr.ph20 ], [ %164, %157 ]
  %59 = phi i32 [ %50, %.lr.ph20 ], [ %163, %157 ]
  %60 = phi i32 [ %47, %.lr.ph20 ], [ %162, %157 ]
  %61 = phi i32 [ %47, %.lr.ph20 ], [ %161, %157 ]
  %62 = phi i32 [ %47, %.lr.ph20 ], [ %160, %157 ]
  %63 = phi i32 [ %47, %.lr.ph20 ], [ %159, %157 ]
  %64 = shl i32 1, %55
  %65 = and i32 %64, %58
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %157

68:                                               ; preds = %54
  store i32 0, ptr %8, align 4
  %69 = icmp slt i32 0, %55
  br i1 %69, label %.lr.ph, label %156

.lr.ph:                                           ; preds = %68
  br label %70

70:                                               ; preds = %.lr.ph, %144
  %71 = phi i32 [ %56, %.lr.ph ], [ %153, %144 ]
  %72 = phi i32 [ %57, %.lr.ph ], [ %152, %144 ]
  %73 = phi i32 [ 0, %.lr.ph ], [ %154, %144 ]
  %74 = phi i32 [ %55, %.lr.ph ], [ %151, %144 ]
  %75 = phi i32 [ %59, %.lr.ph ], [ %150, %144 ]
  %76 = phi i32 [ %55, %.lr.ph ], [ %149, %144 ]
  %77 = phi i32 [ %60, %.lr.ph ], [ %148, %144 ]
  %78 = phi i32 [ %61, %.lr.ph ], [ %147, %144 ]
  %79 = phi i32 [ %62, %.lr.ph ], [ %146, %144 ]
  %80 = phi i32 [ %63, %.lr.ph ], [ %145, %144 ]
  %81 = shl i32 1, %73
  %82 = and i32 %81, %75
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %144

85:                                               ; preds = %70
  %86 = load ptr, ptr @workList, align 8
  %87 = sext i32 %76 to i64
  %88 = getelementptr inbounds i32, ptr %86, i64 %87
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr %9, align 4
  %90 = sext i32 %73 to i64
  %91 = getelementptr inbounds i32, ptr %86, i64 %90
  %92 = load i32, ptr %91, align 4
  store i32 %92, ptr %10, align 4
  %93 = icmp eq i32 %77, 3
  br i1 %93, label %96, label %94

94:                                               ; preds = %85
  %95 = icmp eq i32 %78, 4
  br i1 %95, label %96, label %102

96:                                               ; preds = %94, %85
  %97 = phi i32 [ 4, %94 ], [ 3, %85 ]
  %98 = icmp eq i32 %89, 1
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = icmp eq i32 %92, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %99, %96
  br label %144

102:                                              ; preds = %99, %94
  %103 = phi i32 [ %97, %99 ], [ %78, %94 ]
  %104 = icmp eq i32 %89, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = icmp eq i32 %92, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %105, %102
  br label %144

108:                                              ; preds = %105
  %109 = icmp eq i32 %79, 4
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  %111 = srem i32 %89, %92
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %144

114:                                              ; preds = %110, %108
  %115 = icmp eq i32 %80, 4
  br i1 %115, label %118, label %116

116:                                              ; preds = %114
  %117 = icmp eq i32 %80, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %116, %114
  %119 = icmp slt i32 %89, %92
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  store i32 %89, ptr %11, align 4
  store i32 %92, ptr %9, align 4
  store i32 %89, ptr %10, align 4
  br label %121

121:                                              ; preds = %120, %118, %116
  %122 = phi i32 [ %89, %120 ], [ %92, %118 ], [ %92, %116 ]
  %123 = phi i32 [ %92, %120 ], [ %89, %118 ], [ %89, %116 ]
  %124 = or i32 %1, %64
  %125 = or i32 %124, %81
  store i32 %125, ptr %6, align 4
  %126 = load ptr, ptr @combList, align 8
  %127 = sext i32 %71 to i64
  %128 = getelementptr inbounds %struct.Comb, ptr %126, i64 %127
  store i32 %123, ptr %128, align 4
  %129 = load ptr, ptr @combList, align 8
  %130 = getelementptr inbounds %struct.Comb, ptr %129, i64 %127
  %131 = getelementptr inbounds nuw %struct.Comb, ptr %130, i32 0, i32 1
  store i32 %122, ptr %131, align 4
  %132 = load ptr, ptr @combList, align 8
  %133 = getelementptr inbounds %struct.Comb, ptr %132, i64 %127
  %134 = getelementptr inbounds nuw %struct.Comb, ptr %133, i32 0, i32 2
  store i32 %47, ptr %134, align 4
  %135 = load ptr, ptr @combList, align 8
  %136 = getelementptr inbounds %struct.Comb, ptr %135, i64 %127
  %137 = call i32 @calculate(ptr noundef %136)
  %138 = load ptr, ptr @workList, align 8
  %139 = load i32, ptr @listLength, align 4
  %140 = add nsw i32 %139, %71
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, ptr %138, i64 %141
  store i32 %137, ptr %142, align 4
  %143 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %143, i32 noundef %125)
  br label %144

144:                                              ; preds = %121, %113, %107, %101, %84
  %145 = phi i32 [ %47, %121 ], [ %80, %113 ], [ %80, %107 ], [ %80, %101 ], [ %80, %84 ]
  %146 = phi i32 [ %47, %121 ], [ 4, %113 ], [ %79, %107 ], [ %79, %101 ], [ %79, %84 ]
  %147 = phi i32 [ %47, %121 ], [ 4, %113 ], [ %78, %107 ], [ %78, %101 ], [ %78, %84 ]
  %148 = phi i32 [ %47, %121 ], [ 4, %113 ], [ %103, %107 ], [ %97, %101 ], [ %77, %84 ]
  %149 = phi i32 [ %55, %121 ], [ %76, %113 ], [ %76, %107 ], [ %76, %101 ], [ %76, %84 ]
  %150 = phi i32 [ %1, %121 ], [ %75, %113 ], [ %75, %107 ], [ %75, %101 ], [ %75, %84 ]
  %151 = phi i32 [ %55, %121 ], [ %76, %113 ], [ %76, %107 ], [ %76, %101 ], [ %74, %84 ]
  %152 = phi i32 [ %47, %121 ], [ 4, %113 ], [ %103, %107 ], [ %97, %101 ], [ %72, %84 ]
  %153 = phi i32 [ %0, %121 ], [ %71, %113 ], [ %71, %107 ], [ %71, %101 ], [ %71, %84 ]
  %154 = add nsw i32 %73, 1
  store i32 %154, ptr %8, align 4
  %155 = icmp slt i32 %154, %151
  br i1 %155, label %70, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %144
  %split = phi i32 [ %145, %144 ]
  %split12 = phi i32 [ %146, %144 ]
  %split13 = phi i32 [ %147, %144 ]
  %split14 = phi i32 [ %148, %144 ]
  %split15 = phi i32 [ %150, %144 ]
  %split16 = phi i32 [ %150, %144 ]
  %split17 = phi i32 [ %152, %144 ]
  %split18 = phi i32 [ %153, %144 ]
  br label %156

156:                                              ; preds = %._crit_edge, %68
  %.lcssa7 = phi i32 [ %split, %._crit_edge ], [ %63, %68 ]
  %.lcssa6 = phi i32 [ %split12, %._crit_edge ], [ %62, %68 ]
  %.lcssa5 = phi i32 [ %split13, %._crit_edge ], [ %61, %68 ]
  %.lcssa4 = phi i32 [ %split14, %._crit_edge ], [ %60, %68 ]
  %.lcssa3 = phi i32 [ %split15, %._crit_edge ], [ %59, %68 ]
  %.lcssa2 = phi i32 [ %split16, %._crit_edge ], [ %58, %68 ]
  %.lcssa1 = phi i32 [ %split17, %._crit_edge ], [ %57, %68 ]
  %.lcssa = phi i32 [ %split18, %._crit_edge ], [ %56, %68 ]
  br label %157

157:                                              ; preds = %156, %67
  %158 = phi i32 [ %55, %156 ], [ %55, %67 ]
  %159 = phi i32 [ %.lcssa7, %156 ], [ %63, %67 ]
  %160 = phi i32 [ %.lcssa6, %156 ], [ %62, %67 ]
  %161 = phi i32 [ %.lcssa5, %156 ], [ %61, %67 ]
  %162 = phi i32 [ %.lcssa4, %156 ], [ %60, %67 ]
  %163 = phi i32 [ %.lcssa3, %156 ], [ %59, %67 ]
  %164 = phi i32 [ %.lcssa2, %156 ], [ %58, %67 ]
  %165 = phi i32 [ %.lcssa1, %156 ], [ %57, %67 ]
  %166 = phi i32 [ %.lcssa, %156 ], [ %56, %67 ]
  %167 = add nsw i32 %158, 1
  store i32 %167, ptr %7, align 4
  %168 = load i32, ptr @listLength, align 4
  %169 = add nsw i32 %168, %166
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %54, label %._crit_edge21, !llvm.loop !14

._crit_edge21:                                    ; preds = %157
  %split22 = phi i32 [ %163, %157 ]
  %split23 = phi i32 [ %164, %157 ]
  %split24 = phi i32 [ %165, %157 ]
  %split25 = phi i32 [ %166, %157 ]
  br label %171

171:                                              ; preds = %._crit_edge21, %46
  %.lcssa11 = phi i32 [ %split22, %._crit_edge21 ], [ %50, %46 ]
  %.lcssa10 = phi i32 [ %split23, %._crit_edge21 ], [ %49, %46 ]
  %.lcssa9 = phi i32 [ %split24, %._crit_edge21 ], [ %47, %46 ]
  %.lcssa8 = phi i32 [ %split25, %._crit_edge21 ], [ %48, %46 ]
  %172 = add nsw i32 %.lcssa9, 1
  store i32 %172, ptr %5, align 4
  %173 = icmp sle i32 %172, 4
  br i1 %173, label %46, label %174, !llvm.loop !15

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %174, %44, %14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %.pre = load i32, ptr @listLength, align 4
  %2 = icmp slt i32 0, %.pre
  br i1 %2, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %17
  %4 = phi i32 [ 0, %.lr.ph ], [ %18, %17 ]
  %5 = load ptr, ptr @workList, align 8
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr @goal, align 4
  %10 = sub nsw i32 %8, %9
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = load i32, ptr @best, align 4
  %13 = sub nsw i32 %12, %9
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 %8, ptr @best, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = add nsw i32 %4, 1
  store i32 %18, ptr %1, align 4
  %19 = icmp slt i32 %18, %.pre
  br i1 %19, label %3, label %._crit_edge4, !llvm.loop !16

._crit_edge4:                                     ; preds = %17
  br label %20

20:                                               ; preds = %._crit_edge4, %0
  %21 = load i32, ptr @best, align 4
  %22 = load i32, ptr @goal, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %42

26:                                               ; preds = %20
  store i32 1, ptr @dmax, align 4
  %27 = icmp slt i32 1, %.pre
  br i1 %27, label %.lr.ph6, label %._crit_edge

.lr.ph6:                                          ; preds = %26
  br label %28

.._crit_edge_crit_edge:                           ; preds = %32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %26
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %36

28:                                               ; preds = %.lr.ph6, %32
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %29 = load i32, ptr @stopSearch, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  %.lcssa = phi i32 [ %29, %28 ]
  br label %36

32:                                               ; preds = %28
  %33 = load i32, ptr @dmax, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @dmax, align 4
  %.pre1 = load i32, ptr @listLength, align 4
  %35 = icmp slt i32 %34, %.pre1
  br i1 %35, label %28, label %.._crit_edge_crit_edge, !llvm.loop !17

36:                                               ; preds = %._crit_edge, %31
  %37 = phi i32 [ %.pre2, %._crit_edge ], [ %.lcssa, %31 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load ptr, ptr @solution, align 8
  %41 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %40, i32 noundef %41)
  br label %42

42:                                               ; preds = %39, %36, %24
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
  %.lcssa = phi i32 [ %8, %13 ]
  %24 = icmp eq i32 %.lcssa, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store i32 4, ptr %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ 4, %25 ], [ %.lcssa, %23 ]
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
