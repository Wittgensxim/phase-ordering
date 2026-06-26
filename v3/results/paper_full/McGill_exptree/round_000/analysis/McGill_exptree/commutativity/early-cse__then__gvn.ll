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
  br label %166

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
  br label %166

45:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  br label %46

46:                                               ; preds = %163, %45
  %47 = phi i32 [ %57, %163 ], [ %1, %45 ]
  %48 = phi i32 [ %58, %163 ], [ %1, %45 ]
  %49 = phi i32 [ %60, %163 ], [ %0, %45 ]
  %50 = phi i32 [ %164, %163 ], [ 1, %45 ]
  %51 = icmp sle i32 %50, 4
  br i1 %51, label %52, label %165

52:                                               ; preds = %46
  store i32 0, ptr %7, align 4
  br label %53

53:                                               ; preds = %154, %52
  %54 = phi i32 [ %155, %154 ], [ %50, %52 ]
  %55 = phi i32 [ %156, %154 ], [ %50, %52 ]
  %56 = phi i32 [ %157, %154 ], [ %50, %52 ]
  %57 = phi i32 [ %158, %154 ], [ %47, %52 ]
  %58 = phi i32 [ %159, %154 ], [ %48, %52 ]
  %59 = phi i32 [ %160, %154 ], [ %50, %52 ]
  %60 = phi i32 [ %161, %154 ], [ %49, %52 ]
  %61 = phi i32 [ %162, %154 ], [ 0, %52 ]
  %62 = load i32, ptr @listLength, align 4
  %63 = add nsw i32 %62, %60
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %163

65:                                               ; preds = %53
  %66 = shl i32 1, %61
  %67 = and i32 %66, %58
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %154

70:                                               ; preds = %65
  store i32 0, ptr %8, align 4
  br label %71

71:                                               ; preds = %144, %70
  %72 = phi i32 [ %145, %144 ], [ %54, %70 ]
  %73 = phi i32 [ %146, %144 ], [ %55, %70 ]
  %74 = phi i32 [ %147, %144 ], [ %56, %70 ]
  %75 = phi i32 [ %148, %144 ], [ %57, %70 ]
  %76 = phi i32 [ %149, %144 ], [ %61, %70 ]
  %77 = phi i32 [ %152, %144 ], [ 0, %70 ]
  %78 = phi i32 [ %148, %144 ], [ %58, %70 ]
  %79 = phi i32 [ %150, %144 ], [ %59, %70 ]
  %80 = phi i32 [ %151, %144 ], [ %60, %70 ]
  %81 = icmp slt i32 %77, %76
  br i1 %81, label %82, label %153

82:                                               ; preds = %71
  %83 = shl i32 1, %77
  %84 = and i32 %83, %75
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %144

87:                                               ; preds = %82
  %88 = load ptr, ptr @workList, align 8
  %89 = sext i32 %76 to i64
  %90 = getelementptr inbounds i32, ptr %88, i64 %89
  %91 = load i32, ptr %90, align 4
  store i32 %91, ptr %9, align 4
  %92 = sext i32 %77 to i64
  %93 = getelementptr inbounds i32, ptr %88, i64 %92
  %94 = load i32, ptr %93, align 4
  store i32 %94, ptr %10, align 4
  %95 = icmp eq i32 %74, 3
  br i1 %95, label %98, label %96

96:                                               ; preds = %87
  %97 = icmp eq i32 %74, 4
  br i1 %97, label %98, label %103

98:                                               ; preds = %96, %87
  %99 = icmp eq i32 %91, 1
  br i1 %99, label %102, label %100

100:                                              ; preds = %98
  %101 = icmp eq i32 %94, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %100, %98
  br label %144

103:                                              ; preds = %100, %96
  %104 = icmp eq i32 %91, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %103
  %106 = icmp eq i32 %94, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %105, %103
  br label %144

108:                                              ; preds = %105
  %109 = icmp eq i32 %73, 4
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  %111 = srem i32 %91, %94
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %144

114:                                              ; preds = %110, %108
  %115 = icmp eq i32 %72, 4
  br i1 %115, label %118, label %116

116:                                              ; preds = %114
  %117 = icmp eq i32 %72, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %116, %114
  %119 = icmp slt i32 %91, %94
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  store i32 %91, ptr %11, align 4
  store i32 %94, ptr %9, align 4
  store i32 %91, ptr %10, align 4
  br label %121

121:                                              ; preds = %120, %118, %116
  %122 = phi i32 [ %91, %120 ], [ %94, %118 ], [ %94, %116 ]
  %123 = phi i32 [ %94, %120 ], [ %91, %118 ], [ %91, %116 ]
  %124 = or i32 %1, %66
  %125 = or i32 %124, %83
  store i32 %125, ptr %6, align 4
  %126 = load ptr, ptr @combList, align 8
  %127 = sext i32 %80 to i64
  %128 = getelementptr inbounds %struct.Comb, ptr %126, i64 %127
  store i32 %123, ptr %128, align 4
  %129 = load ptr, ptr @combList, align 8
  %130 = getelementptr inbounds %struct.Comb, ptr %129, i64 %127
  %131 = getelementptr inbounds nuw %struct.Comb, ptr %130, i32 0, i32 1
  store i32 %122, ptr %131, align 4
  %132 = load ptr, ptr @combList, align 8
  %133 = getelementptr inbounds %struct.Comb, ptr %132, i64 %127
  %134 = getelementptr inbounds nuw %struct.Comb, ptr %133, i32 0, i32 2
  store i32 %50, ptr %134, align 4
  %135 = load ptr, ptr @combList, align 8
  %136 = getelementptr inbounds %struct.Comb, ptr %135, i64 %127
  %137 = call i32 @calculate(ptr noundef %136)
  %138 = load ptr, ptr @workList, align 8
  %139 = load i32, ptr @listLength, align 4
  %140 = add nsw i32 %139, %80
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, ptr %138, i64 %141
  store i32 %137, ptr %142, align 4
  %143 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %143, i32 noundef %125)
  br label %144

144:                                              ; preds = %121, %113, %107, %102, %86
  %145 = phi i32 [ %50, %121 ], [ %72, %113 ], [ %72, %107 ], [ %72, %102 ], [ %72, %86 ]
  %146 = phi i32 [ %50, %121 ], [ 4, %113 ], [ %73, %107 ], [ %73, %102 ], [ %73, %86 ]
  %147 = phi i32 [ %50, %121 ], [ 4, %113 ], [ %74, %107 ], [ %74, %102 ], [ %74, %86 ]
  %148 = phi i32 [ %1, %121 ], [ %75, %113 ], [ %75, %107 ], [ %75, %102 ], [ %75, %86 ]
  %149 = phi i32 [ %61, %121 ], [ %76, %113 ], [ %76, %107 ], [ %76, %102 ], [ %76, %86 ]
  %150 = phi i32 [ %50, %121 ], [ 4, %113 ], [ %74, %107 ], [ %74, %102 ], [ %79, %86 ]
  %151 = phi i32 [ %0, %121 ], [ %80, %113 ], [ %80, %107 ], [ %80, %102 ], [ %80, %86 ]
  %152 = add nsw i32 %77, 1
  store i32 %152, ptr %8, align 4
  br label %71, !llvm.loop !13

153:                                              ; preds = %71
  br label %154

154:                                              ; preds = %153, %69
  %155 = phi i32 [ %72, %153 ], [ %54, %69 ]
  %156 = phi i32 [ %73, %153 ], [ %55, %69 ]
  %157 = phi i32 [ %74, %153 ], [ %56, %69 ]
  %158 = phi i32 [ %75, %153 ], [ %57, %69 ]
  %159 = phi i32 [ %78, %153 ], [ %58, %69 ]
  %160 = phi i32 [ %79, %153 ], [ %59, %69 ]
  %161 = phi i32 [ %80, %153 ], [ %60, %69 ]
  %162 = add nsw i32 %61, 1
  store i32 %162, ptr %7, align 4
  br label %53, !llvm.loop !14

163:                                              ; preds = %53
  %164 = add nsw i32 %59, 1
  store i32 %164, ptr %5, align 4
  br label %46, !llvm.loop !15

165:                                              ; preds = %46
  br label %166

166:                                              ; preds = %165, %44, %14
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
