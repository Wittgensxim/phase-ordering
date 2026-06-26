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
  br i1 %13, label %159, label %14

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
  br i1 %33, label %34, label %159

34:                                               ; preds = %19
  store i32 %26, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %35 = load ptr, ptr @solution, align 8
  %36 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %35, ptr noundef %36, i32 noundef %0)
  %37 = load i32, ptr @best, align 4
  %38 = load i32, ptr @goal, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %159

40:                                               ; preds = %34
  %41 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %41, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %159

42:                                               ; preds = %14
  store i32 1, ptr %5, align 4
  br label %43

43:                                               ; preds = %157, %42
  %44 = phi i32 [ %55, %157 ], [ %1, %42 ]
  %45 = phi i32 [ %56, %157 ], [ %1, %42 ]
  %46 = phi i32 [ %58, %157 ], [ %0, %42 ]
  %47 = phi i32 [ %158, %157 ], [ 1, %42 ]
  %48 = icmp sle i32 %47, 4
  br i1 %48, label %49, label %159

49:                                               ; preds = %43
  store i32 0, ptr %7, align 4
  br label %50

50:                                               ; preds = %147, %49
  %51 = phi i32 [ %148, %147 ], [ %47, %49 ]
  %52 = phi i32 [ %149, %147 ], [ %47, %49 ]
  %53 = phi i32 [ %150, %147 ], [ %47, %49 ]
  %54 = phi i32 [ %151, %147 ], [ %47, %49 ]
  %55 = phi i32 [ %152, %147 ], [ %44, %49 ]
  %56 = phi i32 [ %153, %147 ], [ %45, %49 ]
  %57 = phi i32 [ %154, %147 ], [ %47, %49 ]
  %58 = phi i32 [ %155, %147 ], [ %46, %49 ]
  %59 = phi i32 [ %156, %147 ], [ 0, %49 ]
  %60 = load i32, ptr @listLength, align 4
  %61 = add nsw i32 %60, %58
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %157

63:                                               ; preds = %50
  %64 = shl i32 1, %59
  %65 = and i32 %64, %56
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %147, label %67

67:                                               ; preds = %63
  store i32 0, ptr %8, align 4
  br label %68

68:                                               ; preds = %136, %67
  %69 = phi i32 [ %137, %136 ], [ %51, %67 ]
  %70 = phi i32 [ %138, %136 ], [ %52, %67 ]
  %71 = phi i32 [ %139, %136 ], [ %53, %67 ]
  %72 = phi i32 [ %140, %136 ], [ %54, %67 ]
  %73 = phi i32 [ %141, %136 ], [ %59, %67 ]
  %74 = phi i32 [ %142, %136 ], [ %55, %67 ]
  %75 = phi i32 [ %143, %136 ], [ %59, %67 ]
  %76 = phi i32 [ %146, %136 ], [ 0, %67 ]
  %77 = phi i32 [ %142, %136 ], [ %56, %67 ]
  %78 = phi i32 [ %144, %136 ], [ %57, %67 ]
  %79 = phi i32 [ %145, %136 ], [ %58, %67 ]
  %80 = icmp slt i32 %76, %75
  br i1 %80, label %81, label %147

81:                                               ; preds = %68
  %82 = shl i32 1, %76
  %83 = and i32 %82, %74
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %136, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr @workList, align 8
  %87 = sext i32 %73 to i64
  %88 = getelementptr inbounds i32, ptr %86, i64 %87
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr %9, align 4
  %90 = sext i32 %76 to i64
  %91 = getelementptr inbounds i32, ptr %86, i64 %90
  %92 = load i32, ptr %91, align 4
  store i32 %92, ptr %10, align 4
  %93 = icmp eq i32 %72, 3
  br i1 %93, label %96, label %94

94:                                               ; preds = %85
  %95 = icmp eq i32 %71, 4
  br i1 %95, label %96, label %100

96:                                               ; preds = %94, %85
  %97 = phi i32 [ 4, %94 ], [ 3, %85 ]
  %98 = icmp eq i32 %89, 1
  %99 = icmp eq i32 %92, 1
  %or.cond = select i1 %98, i1 true, i1 %99
  br i1 %or.cond, label %136, label %100

100:                                              ; preds = %96, %94
  %101 = phi i32 [ %97, %96 ], [ %71, %94 ]
  %102 = icmp eq i32 %89, 0
  %103 = icmp eq i32 %92, 0
  %or.cond1 = select i1 %102, i1 true, i1 %103
  br i1 %or.cond1, label %136, label %104

104:                                              ; preds = %100
  %105 = icmp eq i32 %70, 4
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = srem i32 %89, %92
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %136, label %109

109:                                              ; preds = %106, %104
  switch i32 %69, label %113 [
    i32 4, label %110
    i32 2, label %110
  ]

110:                                              ; preds = %109, %109
  %111 = icmp slt i32 %89, %92
  br i1 %111, label %112, label %113

112:                                              ; preds = %110
  store i32 %89, ptr %11, align 4
  store i32 %92, ptr %9, align 4
  store i32 %89, ptr %10, align 4
  br label %113

113:                                              ; preds = %109, %112, %110
  %114 = phi i32 [ %89, %112 ], [ %92, %110 ], [ %92, %109 ]
  %115 = phi i32 [ %92, %112 ], [ %89, %110 ], [ %89, %109 ]
  %116 = or i32 %1, %64
  %117 = or i32 %116, %82
  store i32 %117, ptr %6, align 4
  %118 = load ptr, ptr @combList, align 8
  %119 = sext i32 %79 to i64
  %120 = getelementptr inbounds %struct.Comb, ptr %118, i64 %119
  store i32 %115, ptr %120, align 4
  %121 = load ptr, ptr @combList, align 8
  %122 = getelementptr inbounds %struct.Comb, ptr %121, i64 %119
  %123 = getelementptr inbounds nuw %struct.Comb, ptr %122, i32 0, i32 1
  store i32 %114, ptr %123, align 4
  %124 = load ptr, ptr @combList, align 8
  %125 = getelementptr inbounds %struct.Comb, ptr %124, i64 %119
  %126 = getelementptr inbounds nuw %struct.Comb, ptr %125, i32 0, i32 2
  store i32 %47, ptr %126, align 4
  %127 = load ptr, ptr @combList, align 8
  %128 = getelementptr inbounds %struct.Comb, ptr %127, i64 %119
  %129 = call i32 @calculate(ptr noundef %128)
  %130 = load ptr, ptr @workList, align 8
  %131 = load i32, ptr @listLength, align 4
  %132 = add nsw i32 %131, %79
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, ptr %130, i64 %133
  store i32 %129, ptr %134, align 4
  %135 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %135, i32 noundef %117)
  br label %136

136:                                              ; preds = %106, %100, %96, %81, %113
  %137 = phi i32 [ %47, %113 ], [ %69, %100 ], [ %69, %96 ], [ %69, %81 ], [ %69, %106 ]
  %138 = phi i32 [ %47, %113 ], [ %70, %100 ], [ %70, %96 ], [ %70, %81 ], [ 4, %106 ]
  %139 = phi i32 [ %47, %113 ], [ %71, %100 ], [ %71, %96 ], [ %71, %81 ], [ 4, %106 ]
  %140 = phi i32 [ %47, %113 ], [ %101, %100 ], [ %97, %96 ], [ %72, %81 ], [ 4, %106 ]
  %141 = phi i32 [ %59, %113 ], [ %73, %100 ], [ %73, %96 ], [ %73, %81 ], [ %73, %106 ]
  %142 = phi i32 [ %1, %113 ], [ %74, %100 ], [ %74, %96 ], [ %74, %81 ], [ %74, %106 ]
  %143 = phi i32 [ %59, %113 ], [ %73, %100 ], [ %73, %96 ], [ %75, %81 ], [ %73, %106 ]
  %144 = phi i32 [ %47, %113 ], [ %101, %100 ], [ %97, %96 ], [ %78, %81 ], [ 4, %106 ]
  %145 = phi i32 [ %0, %113 ], [ %79, %100 ], [ %79, %96 ], [ %79, %81 ], [ %79, %106 ]
  %146 = add nsw i32 %76, 1
  store i32 %146, ptr %8, align 4
  br label %68, !llvm.loop !13

147:                                              ; preds = %68, %63
  %148 = phi i32 [ %51, %63 ], [ %69, %68 ]
  %149 = phi i32 [ %52, %63 ], [ %70, %68 ]
  %150 = phi i32 [ %53, %63 ], [ %71, %68 ]
  %151 = phi i32 [ %54, %63 ], [ %72, %68 ]
  %152 = phi i32 [ %55, %63 ], [ %74, %68 ]
  %153 = phi i32 [ %56, %63 ], [ %77, %68 ]
  %154 = phi i32 [ %57, %63 ], [ %78, %68 ]
  %155 = phi i32 [ %58, %63 ], [ %79, %68 ]
  %156 = add nsw i32 %59, 1
  store i32 %156, ptr %7, align 4
  br label %50, !llvm.loop !14

157:                                              ; preds = %50
  %158 = add nsw i32 %57, 1
  store i32 %158, ptr %5, align 4
  br label %43, !llvm.loop !15

159:                                              ; preds = %43, %19, %40, %34, %2
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
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr @dmax, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @dmax, align 4
  %.pre1 = load i32, ptr @listLength, align 4
  br label %27, !llvm.loop !17

37:                                               ; preds = %31, %._crit_edge
  %38 = phi i32 [ %.pre2, %._crit_edge ], [ %32, %31 ]
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

7:                                                ; preds = %10, %0
  %8 = phi i32 [ %17, %10 ], [ 0, %0 ]
  %9 = call i32 @getchar()
  store i32 %9, ptr %3, align 4
  switch i32 %9, label %10 [
    i32 -1, label %18
    i32 10, label %18
  ]

10:                                               ; preds = %7
  %11 = call ptr @__acrt_iob_func(i32 noundef 0)
  %12 = call i32 @ungetc(i32 noundef %9, ptr noundef %11)
  %13 = call ptr @__acrt_iob_func(i32 noundef 0)
  %14 = sext i32 %8 to i64
  %15 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %14
  %16 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %13, ptr noundef @.str.2, ptr noundef %15)
  %17 = add nsw i32 %8, 1
  store i32 %17, ptr %2, align 4
  br label %7, !llvm.loop !18

18:                                               ; preds = %7, %7
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  store i32 4, ptr %2, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ 4, %20 ], [ %8, %18 ]
  %23 = sub nsw i32 %22, 1
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
