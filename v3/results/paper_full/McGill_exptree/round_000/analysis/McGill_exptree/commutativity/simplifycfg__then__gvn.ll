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
  br label %8

8:                                                ; preds = %11, %3
  %9 = phi i32 [ %16, %11 ], [ 0, %3 ]
  %10 = icmp slt i32 %9, %2
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i32, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i32, ptr %0, i64 %12
  store i32 %14, ptr %15, align 4
  %16 = add nsw i32 %9, 1
  store i32 %16, ptr %7, align 4
  br label %8, !llvm.loop !7

17:                                               ; preds = %8
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
  br label %6

6:                                                ; preds = %9, %2
  %7 = phi i32 [ %13, %9 ], [ 0, %2 ]
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds %struct.Comb, ptr %0, i64 %10
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = add nsw i32 %7, 1
  store i32 %13, ptr %5, align 4
  br label %6, !llvm.loop !9

14:                                               ; preds = %6
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
  br label %8

8:                                                ; preds = %11, %3
  %9 = phi i32 [ %22, %11 ], [ 0, %3 ]
  %10 = icmp slt i32 %9, %2
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.Comb, ptr %0, i64 %12
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds nuw %struct.Comb, ptr %15, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %15, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = add nsw i32 %9, 1
  store i32 %22, ptr %7, align 4
  br label %8, !llvm.loop !10

23:                                               ; preds = %8
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
  br label %6

6:                                                ; preds = %39, %2
  %7 = phi i32 [ %40, %39 ], [ 0, %2 ]
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds %struct.Comb, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %12)
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %26 [
    i32 0, label %16
    i32 1, label %18
    i32 2, label %20
    i32 3, label %22
    i32 4, label %24
  ]

16:                                               ; preds = %9
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %28

18:                                               ; preds = %9
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %28

20:                                               ; preds = %9
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %28

22:                                               ; preds = %9
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %28

24:                                               ; preds = %9
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %28

26:                                               ; preds = %9
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %15)
  br label %28

28:                                               ; preds = %26, %24, %22, %20, %18, %16
  %29 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = call i32 @calculate(ptr noundef %11)
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %30, i32 noundef %31)
  %33 = sub nsw i32 %1, 1
  %34 = icmp slt i32 %7, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %39

37:                                               ; preds = %28
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %39

39:                                               ; preds = %35, %37
  %40 = add nsw i32 %7, 1
  store i32 %40, ptr %5, align 4
  br label %6, !llvm.loop !11

41:                                               ; preds = %6
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
  br label %8

8:                                                ; preds = %20, %3
  %9 = phi i32 [ %21, %20 ], [ 0, %3 ]
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = shl i32 1, %9
  %13 = and i32 %12, %2
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = sext i32 %9 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %18)
  br label %20

20:                                               ; preds = %11, %15
  %21 = add nsw i32 %9, 1
  store i32 %21, ptr %7, align 4
  br label %8, !llvm.loop !12

22:                                               ; preds = %8
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br i1 %13, label %154, label %14

14:                                               ; preds = %2
  %15 = load i32, ptr @nbNodes, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @nbNodes, align 4
  %17 = load i32, ptr @dmax, align 4
  %18 = icmp eq i32 %0, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = load ptr, ptr @workList, align 8
  %21 = load i32, ptr @listLength, align 4
  %22 = add nsw i32 %21, %0
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %20, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr @goal, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = load i32, ptr @best, align 4
  %31 = sub nsw i32 %30, %27
  %32 = call i32 @llvm.abs.i32(i32 %31, i1 true)
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %154

34:                                               ; preds = %19
  store i32 %26, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %35 = load ptr, ptr @solution, align 8
  %36 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %35, ptr noundef %36, i32 noundef %0)
  %37 = load i32, ptr @best, align 4
  %38 = load i32, ptr @goal, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %154

40:                                               ; preds = %34
  %41 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %41, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %154

42:                                               ; preds = %14
  store i32 1, ptr %5, align 4
  br label %43

43:                                               ; preds = %152, %42
  %44 = phi i32 [ %54, %152 ], [ %1, %42 ]
  %45 = phi i32 [ %55, %152 ], [ %1, %42 ]
  %46 = phi i32 [ %57, %152 ], [ %0, %42 ]
  %47 = phi i32 [ %153, %152 ], [ 1, %42 ]
  %48 = icmp sle i32 %47, 4
  br i1 %48, label %49, label %154

49:                                               ; preds = %43
  store i32 0, ptr %7, align 4
  br label %50

50:                                               ; preds = %143, %49
  %51 = phi i32 [ %144, %143 ], [ %47, %49 ]
  %52 = phi i32 [ %145, %143 ], [ %47, %49 ]
  %53 = phi i32 [ %146, %143 ], [ %47, %49 ]
  %54 = phi i32 [ %147, %143 ], [ %44, %49 ]
  %55 = phi i32 [ %148, %143 ], [ %45, %49 ]
  %56 = phi i32 [ %149, %143 ], [ %47, %49 ]
  %57 = phi i32 [ %150, %143 ], [ %46, %49 ]
  %58 = phi i32 [ %151, %143 ], [ 0, %49 ]
  %59 = load i32, ptr @listLength, align 4
  %60 = add nsw i32 %59, %57
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %152

62:                                               ; preds = %50
  %63 = shl i32 1, %58
  %64 = and i32 %63, %55
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %143, label %66

66:                                               ; preds = %62
  store i32 0, ptr %8, align 4
  br label %67

67:                                               ; preds = %133, %66
  %68 = phi i32 [ %134, %133 ], [ %51, %66 ]
  %69 = phi i32 [ %135, %133 ], [ %52, %66 ]
  %70 = phi i32 [ %136, %133 ], [ %53, %66 ]
  %71 = phi i32 [ %137, %133 ], [ %58, %66 ]
  %72 = phi i32 [ %138, %133 ], [ %54, %66 ]
  %73 = phi i32 [ %139, %133 ], [ %58, %66 ]
  %74 = phi i32 [ %142, %133 ], [ 0, %66 ]
  %75 = phi i32 [ %138, %133 ], [ %55, %66 ]
  %76 = phi i32 [ %140, %133 ], [ %56, %66 ]
  %77 = phi i32 [ %141, %133 ], [ %57, %66 ]
  %78 = icmp slt i32 %74, %73
  br i1 %78, label %79, label %143

79:                                               ; preds = %67
  %80 = shl i32 1, %74
  %81 = and i32 %80, %72
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %133, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @workList, align 8
  %85 = sext i32 %71 to i64
  %86 = getelementptr inbounds i32, ptr %84, i64 %85
  %87 = load i32, ptr %86, align 4
  store i32 %87, ptr %9, align 4
  %88 = sext i32 %74 to i64
  %89 = getelementptr inbounds i32, ptr %84, i64 %88
  %90 = load i32, ptr %89, align 4
  store i32 %90, ptr %10, align 4
  %91 = icmp eq i32 %76, 3
  %92 = icmp eq i32 %70, 4
  %or.cond = select i1 %91, i1 true, i1 %92
  br i1 %or.cond, label %93, label %96

93:                                               ; preds = %83
  %94 = icmp eq i32 %87, 1
  %95 = icmp eq i32 %90, 1
  %or.cond3 = select i1 %94, i1 true, i1 %95
  br i1 %or.cond3, label %133, label %96

96:                                               ; preds = %93, %83
  %97 = icmp eq i32 %87, 0
  %98 = icmp eq i32 %90, 0
  %or.cond5 = select i1 %97, i1 true, i1 %98
  br i1 %or.cond5, label %133, label %99

99:                                               ; preds = %96
  %100 = icmp eq i32 %69, 4
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = srem i32 %87, %90
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %133, label %104

104:                                              ; preds = %101, %99
  %105 = icmp eq i32 %68, 4
  %106 = icmp eq i32 %68, 2
  %or.cond7 = select i1 %105, i1 true, i1 %106
  br i1 %or.cond7, label %107, label %110

107:                                              ; preds = %104
  %108 = icmp slt i32 %87, %90
  br i1 %108, label %109, label %110

109:                                              ; preds = %107
  store i32 %87, ptr %11, align 4
  store i32 %90, ptr %9, align 4
  store i32 %87, ptr %10, align 4
  br label %110

110:                                              ; preds = %104, %109, %107
  %111 = phi i32 [ %90, %104 ], [ %87, %109 ], [ %90, %107 ]
  %112 = phi i32 [ %87, %104 ], [ %90, %109 ], [ %87, %107 ]
  %113 = or i32 %1, %63
  %114 = or i32 %113, %80
  store i32 %114, ptr %6, align 4
  %115 = load ptr, ptr @combList, align 8
  %116 = sext i32 %77 to i64
  %117 = getelementptr inbounds %struct.Comb, ptr %115, i64 %116
  store i32 %112, ptr %117, align 4
  %118 = load ptr, ptr @combList, align 8
  %119 = getelementptr inbounds %struct.Comb, ptr %118, i64 %116
  %120 = getelementptr inbounds nuw %struct.Comb, ptr %119, i32 0, i32 1
  store i32 %111, ptr %120, align 4
  %121 = load ptr, ptr @combList, align 8
  %122 = getelementptr inbounds %struct.Comb, ptr %121, i64 %116
  %123 = getelementptr inbounds nuw %struct.Comb, ptr %122, i32 0, i32 2
  store i32 %47, ptr %123, align 4
  %124 = load ptr, ptr @combList, align 8
  %125 = getelementptr inbounds %struct.Comb, ptr %124, i64 %116
  %126 = call i32 @calculate(ptr noundef %125)
  %127 = load ptr, ptr @workList, align 8
  %128 = load i32, ptr @listLength, align 4
  %129 = add nsw i32 %128, %77
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, ptr %127, i64 %130
  store i32 %126, ptr %131, align 4
  %132 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %132, i32 noundef %114)
  br label %133

133:                                              ; preds = %101, %96, %93, %79, %110
  %134 = phi i32 [ %68, %101 ], [ %68, %96 ], [ %68, %93 ], [ %68, %79 ], [ %47, %110 ]
  %135 = phi i32 [ 4, %101 ], [ %69, %96 ], [ %69, %93 ], [ %69, %79 ], [ %47, %110 ]
  %136 = phi i32 [ 4, %101 ], [ %70, %96 ], [ %70, %93 ], [ %70, %79 ], [ %47, %110 ]
  %137 = phi i32 [ %71, %101 ], [ %71, %96 ], [ %71, %93 ], [ %71, %79 ], [ %58, %110 ]
  %138 = phi i32 [ %72, %101 ], [ %72, %96 ], [ %72, %93 ], [ %72, %79 ], [ %1, %110 ]
  %139 = phi i32 [ %71, %101 ], [ %71, %96 ], [ %71, %93 ], [ %73, %79 ], [ %58, %110 ]
  %140 = phi i32 [ 4, %101 ], [ %70, %96 ], [ %70, %93 ], [ %76, %79 ], [ %47, %110 ]
  %141 = phi i32 [ %77, %101 ], [ %77, %96 ], [ %77, %93 ], [ %77, %79 ], [ %0, %110 ]
  %142 = add nsw i32 %74, 1
  store i32 %142, ptr %8, align 4
  br label %67, !llvm.loop !13

143:                                              ; preds = %67, %62
  %144 = phi i32 [ %68, %67 ], [ %51, %62 ]
  %145 = phi i32 [ %69, %67 ], [ %52, %62 ]
  %146 = phi i32 [ %70, %67 ], [ %53, %62 ]
  %147 = phi i32 [ %72, %67 ], [ %54, %62 ]
  %148 = phi i32 [ %75, %67 ], [ %55, %62 ]
  %149 = phi i32 [ %76, %67 ], [ %56, %62 ]
  %150 = phi i32 [ %77, %67 ], [ %57, %62 ]
  %151 = add nsw i32 %58, 1
  store i32 %151, ptr %7, align 4
  br label %50, !llvm.loop !14

152:                                              ; preds = %50
  %153 = add nsw i32 %56, 1
  store i32 %153, ptr %5, align 4
  br label %43, !llvm.loop !15

154:                                              ; preds = %43, %19, %40, %34, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %.pre = load i32, ptr @listLength, align 4
  br label %2

2:                                                ; preds = %18, %0
  %3 = phi i32 [ %19, %18 ], [ 0, %0 ]
  %4 = icmp slt i32 %3, %.pre
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load ptr, ptr @workList, align 8
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr @goal, align 4
  %11 = sub nsw i32 %9, %10
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = load i32, ptr @best, align 4
  %14 = sub nsw i32 %13, %10
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 %9, ptr @best, align 4
  br label %18

18:                                               ; preds = %5, %17
  %19 = add nsw i32 %3, 1
  store i32 %19, ptr %1, align 4
  br label %2, !llvm.loop !16

20:                                               ; preds = %2
  %21 = load i32, ptr @best, align 4
  %22 = load i32, ptr @goal, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %43

26:                                               ; preds = %20
  store i32 1, ptr @dmax, align 4
  br label %27

27:                                               ; preds = %34, %26
  %28 = phi i32 [ %.pre1, %34 ], [ %.pre, %26 ]
  %29 = phi i32 [ %36, %34 ], [ 1, %26 ]
  %30 = icmp slt i32 %29, %28
  br i1 %30, label %31, label %._crit_edge

._crit_edge:                                      ; preds = %27
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %37

31:                                               ; preds = %27
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %32 = load i32, ptr @stopSearch, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %split, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr @dmax, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @dmax, align 4
  %.pre1 = load i32, ptr @listLength, align 4
  br label %27, !llvm.loop !17

split:                                            ; preds = %31
  br label %37

37:                                               ; preds = %split, %._crit_edge
  %38 = phi i32 [ %32, %split ], [ %.pre2, %._crit_edge ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr @solution, align 8
  %42 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %41, i32 noundef %42)
  br label %43

43:                                               ; preds = %40, %37, %24
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

7:                                                ; preds = %13, %0
  %8 = phi i32 [ %20, %13 ], [ 0, %0 ]
  %9 = call i32 @getchar()
  store i32 %9, ptr %3, align 4
  %10 = icmp ne i32 %9, 10
  %11 = icmp ne i32 %9, -1
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = call ptr @__acrt_iob_func(i32 noundef 0)
  %15 = call i32 @ungetc(i32 noundef %9, ptr noundef %14)
  %16 = call ptr @__acrt_iob_func(i32 noundef 0)
  %17 = sext i32 %8 to i64
  %18 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %17
  %19 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %16, ptr noundef @.str.2, ptr noundef %18)
  %20 = add nsw i32 %8, 1
  store i32 %20, ptr %2, align 4
  br label %7, !llvm.loop !18

21:                                               ; preds = %7
  %22 = icmp eq i32 %8, 0
  %spec.store.select = select i1 %22, i32 4, i32 %8
  store i32 %spec.store.select, ptr %2, align 4
  %23 = sub nsw i32 %spec.store.select, 1
  store i32 %23, ptr @listLength, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr @goal, align 4
  %27 = mul nsw i32 2, %23
  %28 = call ptr @newWorkList(i32 noundef %27)
  store ptr %28, ptr @workList, align 8
  %29 = load i32, ptr @listLength, align 4
  %30 = call ptr @newCombList(i32 noundef %29)
  store ptr %30, ptr @combList, align 8
  %31 = load i32, ptr @listLength, align 4
  %32 = call ptr @newCombList(i32 noundef %31)
  store ptr %32, ptr @solution, align 8
  %33 = load ptr, ptr @workList, align 8
  %34 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %33, ptr noundef %1, i32 noundef %34)
  %35 = load ptr, ptr @combList, align 8
  %36 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %35, i32 noundef %36)
  %37 = load ptr, ptr @solution, align 8
  %38 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %37, i32 noundef %38)
  %39 = load i32, ptr @listLength, align 4
  ret i32 %39
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
