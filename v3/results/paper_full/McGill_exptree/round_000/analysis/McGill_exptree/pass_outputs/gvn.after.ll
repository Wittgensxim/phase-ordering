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

39:                                               ; preds = %37, %35
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

8:                                                ; preds = %21, %3
  %9 = phi i32 [ %22, %21 ], [ 0, %3 ]
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = shl i32 1, %9
  %13 = and i32 %12, %2
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %21

16:                                               ; preds = %11
  %17 = sext i32 %9 to i64
  %18 = getelementptr inbounds i32, ptr %0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %19)
  br label %21

21:                                               ; preds = %16, %15
  %22 = add nsw i32 %9, 1
  store i32 %22, ptr %7, align 4
  br label %8, !llvm.loop !12

23:                                               ; preds = %8
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
  br label %174

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
  br label %174

45:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  br label %46

46:                                               ; preds = %171, %45
  %47 = phi i32 [ %58, %171 ], [ %1, %45 ]
  %48 = phi i32 [ %59, %171 ], [ %1, %45 ]
  %49 = phi i32 [ %61, %171 ], [ %0, %45 ]
  %50 = phi i32 [ %172, %171 ], [ 1, %45 ]
  %51 = icmp sle i32 %50, 4
  br i1 %51, label %52, label %173

52:                                               ; preds = %46
  store i32 0, ptr %7, align 4
  br label %53

53:                                               ; preds = %161, %52
  %54 = phi i32 [ %162, %161 ], [ %50, %52 ]
  %55 = phi i32 [ %163, %161 ], [ %50, %52 ]
  %56 = phi i32 [ %164, %161 ], [ %50, %52 ]
  %57 = phi i32 [ %165, %161 ], [ %50, %52 ]
  %58 = phi i32 [ %166, %161 ], [ %47, %52 ]
  %59 = phi i32 [ %167, %161 ], [ %48, %52 ]
  %60 = phi i32 [ %168, %161 ], [ %50, %52 ]
  %61 = phi i32 [ %169, %161 ], [ %49, %52 ]
  %62 = phi i32 [ %170, %161 ], [ 0, %52 ]
  %63 = load i32, ptr @listLength, align 4
  %64 = add nsw i32 %63, %61
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %171

66:                                               ; preds = %53
  %67 = shl i32 1, %62
  %68 = and i32 %67, %59
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %161

71:                                               ; preds = %66
  store i32 0, ptr %8, align 4
  br label %72

72:                                               ; preds = %149, %71
  %73 = phi i32 [ %150, %149 ], [ %54, %71 ]
  %74 = phi i32 [ %151, %149 ], [ %55, %71 ]
  %75 = phi i32 [ %152, %149 ], [ %56, %71 ]
  %76 = phi i32 [ %153, %149 ], [ %57, %71 ]
  %77 = phi i32 [ %154, %149 ], [ %62, %71 ]
  %78 = phi i32 [ %155, %149 ], [ %58, %71 ]
  %79 = phi i32 [ %156, %149 ], [ %62, %71 ]
  %80 = phi i32 [ %159, %149 ], [ 0, %71 ]
  %81 = phi i32 [ %155, %149 ], [ %59, %71 ]
  %82 = phi i32 [ %157, %149 ], [ %60, %71 ]
  %83 = phi i32 [ %158, %149 ], [ %61, %71 ]
  %84 = icmp slt i32 %80, %79
  br i1 %84, label %85, label %160

85:                                               ; preds = %72
  %86 = shl i32 1, %80
  %87 = and i32 %86, %78
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %149

90:                                               ; preds = %85
  %91 = load ptr, ptr @workList, align 8
  %92 = sext i32 %77 to i64
  %93 = getelementptr inbounds i32, ptr %91, i64 %92
  %94 = load i32, ptr %93, align 4
  store i32 %94, ptr %9, align 4
  %95 = sext i32 %80 to i64
  %96 = getelementptr inbounds i32, ptr %91, i64 %95
  %97 = load i32, ptr %96, align 4
  store i32 %97, ptr %10, align 4
  %98 = icmp eq i32 %76, 3
  br i1 %98, label %101, label %99

99:                                               ; preds = %90
  %100 = icmp eq i32 %75, 4
  br i1 %100, label %101, label %107

101:                                              ; preds = %99, %90
  %102 = phi i32 [ 4, %99 ], [ 3, %90 ]
  %103 = icmp eq i32 %94, 1
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = icmp eq i32 %97, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %104, %101
  br label %149

107:                                              ; preds = %104, %99
  %108 = phi i32 [ %102, %104 ], [ %75, %99 ]
  %109 = icmp eq i32 %94, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = icmp eq i32 %97, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %110, %107
  br label %149

113:                                              ; preds = %110
  %114 = icmp eq i32 %74, 4
  br i1 %114, label %115, label %119

115:                                              ; preds = %113
  %116 = srem i32 %94, %97
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %149

119:                                              ; preds = %115, %113
  %120 = icmp eq i32 %73, 4
  br i1 %120, label %123, label %121

121:                                              ; preds = %119
  %122 = icmp eq i32 %73, 2
  br i1 %122, label %123, label %126

123:                                              ; preds = %121, %119
  %124 = icmp slt i32 %94, %97
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  store i32 %94, ptr %11, align 4
  store i32 %97, ptr %9, align 4
  store i32 %94, ptr %10, align 4
  br label %126

126:                                              ; preds = %125, %123, %121
  %127 = phi i32 [ %94, %125 ], [ %97, %123 ], [ %97, %121 ]
  %128 = phi i32 [ %97, %125 ], [ %94, %123 ], [ %94, %121 ]
  %129 = or i32 %1, %67
  %130 = or i32 %129, %86
  store i32 %130, ptr %6, align 4
  %131 = load ptr, ptr @combList, align 8
  %132 = sext i32 %83 to i64
  %133 = getelementptr inbounds %struct.Comb, ptr %131, i64 %132
  store i32 %128, ptr %133, align 4
  %134 = load ptr, ptr @combList, align 8
  %135 = getelementptr inbounds %struct.Comb, ptr %134, i64 %132
  %136 = getelementptr inbounds nuw %struct.Comb, ptr %135, i32 0, i32 1
  store i32 %127, ptr %136, align 4
  %137 = load ptr, ptr @combList, align 8
  %138 = getelementptr inbounds %struct.Comb, ptr %137, i64 %132
  %139 = getelementptr inbounds nuw %struct.Comb, ptr %138, i32 0, i32 2
  store i32 %50, ptr %139, align 4
  %140 = load ptr, ptr @combList, align 8
  %141 = getelementptr inbounds %struct.Comb, ptr %140, i64 %132
  %142 = call i32 @calculate(ptr noundef %141)
  %143 = load ptr, ptr @workList, align 8
  %144 = load i32, ptr @listLength, align 4
  %145 = add nsw i32 %144, %83
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, ptr %143, i64 %146
  store i32 %142, ptr %147, align 4
  %148 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %148, i32 noundef %130)
  br label %149

149:                                              ; preds = %126, %118, %112, %106, %89
  %150 = phi i32 [ %50, %126 ], [ %73, %118 ], [ %73, %112 ], [ %73, %106 ], [ %73, %89 ]
  %151 = phi i32 [ %50, %126 ], [ 4, %118 ], [ %74, %112 ], [ %74, %106 ], [ %74, %89 ]
  %152 = phi i32 [ %50, %126 ], [ 4, %118 ], [ %75, %112 ], [ %75, %106 ], [ %75, %89 ]
  %153 = phi i32 [ %50, %126 ], [ 4, %118 ], [ %108, %112 ], [ %102, %106 ], [ %76, %89 ]
  %154 = phi i32 [ %62, %126 ], [ %77, %118 ], [ %77, %112 ], [ %77, %106 ], [ %77, %89 ]
  %155 = phi i32 [ %1, %126 ], [ %78, %118 ], [ %78, %112 ], [ %78, %106 ], [ %78, %89 ]
  %156 = phi i32 [ %62, %126 ], [ %77, %118 ], [ %77, %112 ], [ %77, %106 ], [ %79, %89 ]
  %157 = phi i32 [ %50, %126 ], [ 4, %118 ], [ %108, %112 ], [ %102, %106 ], [ %82, %89 ]
  %158 = phi i32 [ %0, %126 ], [ %83, %118 ], [ %83, %112 ], [ %83, %106 ], [ %83, %89 ]
  %159 = add nsw i32 %80, 1
  store i32 %159, ptr %8, align 4
  br label %72, !llvm.loop !13

160:                                              ; preds = %72
  br label %161

161:                                              ; preds = %160, %70
  %162 = phi i32 [ %73, %160 ], [ %54, %70 ]
  %163 = phi i32 [ %74, %160 ], [ %55, %70 ]
  %164 = phi i32 [ %75, %160 ], [ %56, %70 ]
  %165 = phi i32 [ %76, %160 ], [ %57, %70 ]
  %166 = phi i32 [ %78, %160 ], [ %58, %70 ]
  %167 = phi i32 [ %81, %160 ], [ %59, %70 ]
  %168 = phi i32 [ %82, %160 ], [ %60, %70 ]
  %169 = phi i32 [ %83, %160 ], [ %61, %70 ]
  %170 = add nsw i32 %62, 1
  store i32 %170, ptr %7, align 4
  br label %53, !llvm.loop !14

171:                                              ; preds = %53
  %172 = add nsw i32 %60, 1
  store i32 %172, ptr %5, align 4
  br label %46, !llvm.loop !15

173:                                              ; preds = %46
  br label %174

174:                                              ; preds = %173, %44, %14
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

18:                                               ; preds = %17, %5
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
  br label %44

26:                                               ; preds = %20
  store i32 1, ptr @dmax, align 4
  br label %27

27:                                               ; preds = %35, %26
  %28 = phi i32 [ %.pre1, %35 ], [ %.pre, %26 ]
  %29 = phi i32 [ %37, %35 ], [ 1, %26 ]
  %30 = icmp slt i32 %29, %28
  br i1 %30, label %31, label %._crit_edge

._crit_edge:                                      ; preds = %27
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %38

31:                                               ; preds = %27
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %32 = load i32, ptr @stopSearch, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %38

35:                                               ; preds = %31
  %36 = load i32, ptr @dmax, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @dmax, align 4
  %.pre1 = load i32, ptr @listLength, align 4
  br label %27, !llvm.loop !17

38:                                               ; preds = %._crit_edge, %34
  %39 = phi i32 [ %.pre2, %._crit_edge ], [ %32, %34 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load ptr, ptr @solution, align 8
  %43 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %42, i32 noundef %43)
  br label %44

44:                                               ; preds = %41, %38, %24
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
