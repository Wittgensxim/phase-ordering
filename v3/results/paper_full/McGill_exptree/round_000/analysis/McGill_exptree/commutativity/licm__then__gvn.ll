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
  br label %8, !llvm.loop !7

17:                                               ; preds = %8
  store i32 %9, ptr %7, align 4
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
  br label %6, !llvm.loop !9

14:                                               ; preds = %6
  store i32 %7, ptr %5, align 4
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
  br label %8, !llvm.loop !10

23:                                               ; preds = %8
  store i32 %9, ptr %7, align 4
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
  %6 = sub nsw i32 %1, 1
  br label %7

7:                                                ; preds = %39, %2
  %8 = phi i32 [ %40, %39 ], [ 0, %2 ]
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %10, label %41

10:                                               ; preds = %7
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds %struct.Comb, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %13)
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %12, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %27 [
    i32 0, label %17
    i32 1, label %19
    i32 2, label %21
    i32 3, label %23
    i32 4, label %25
  ]

17:                                               ; preds = %10
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %29

19:                                               ; preds = %10
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %29

21:                                               ; preds = %10
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %29

23:                                               ; preds = %10
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %29

25:                                               ; preds = %10
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %29

27:                                               ; preds = %10
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %16)
  br label %29

29:                                               ; preds = %27, %25, %23, %21, %19, %17
  %30 = getelementptr inbounds nuw %struct.Comb, ptr %12, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = call i32 @calculate(ptr noundef %12)
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %31, i32 noundef %32)
  %34 = icmp slt i32 %8, %6
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %39

37:                                               ; preds = %29
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %39

39:                                               ; preds = %37, %35
  %40 = add nsw i32 %8, 1
  br label %7, !llvm.loop !11

41:                                               ; preds = %7
  store i32 %8, ptr %5, align 4
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
  br label %8, !llvm.loop !12

23:                                               ; preds = %8
  store i32 %9, ptr %7, align 4
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
  br label %141

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
  br label %141

45:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  %46 = sext i32 %0 to i64
  %47 = add nsw i32 %0, 1
  br label %48

48:                                               ; preds = %138, %45
  %.lcssa824.lcssa37 = phi i32 [ %.lcssa824, %138 ], [ undef, %45 ]
  %.lcssa621.lcssa35 = phi i32 [ %.lcssa621, %138 ], [ undef, %45 ]
  %.lcssa418.lcssa33 = phi i32 [ %.lcssa418, %138 ], [ undef, %45 ]
  %.lcssa215.lcssa32 = phi i32 [ %.lcssa215, %138 ], [ undef, %45 ]
  %.lcssa13.lcssa30 = phi i32 [ %.lcssa13, %138 ], [ undef, %45 ]
  %.lcssa1028 = phi i32 [ %56, %138 ], [ undef, %45 ]
  %49 = phi i32 [ %139, %138 ], [ 1, %45 ]
  %50 = icmp sle i32 %49, 4
  br i1 %50, label %51, label %140

51:                                               ; preds = %48
  %52 = icmp eq i32 %49, 3
  %53 = icmp eq i32 %49, 4
  %54 = icmp eq i32 %49, 2
  br label %55

55:                                               ; preds = %136, %51
  %.lcssa824 = phi i32 [ %.lcssa823, %136 ], [ %.lcssa824.lcssa37, %51 ]
  %.lcssa621 = phi i32 [ %.lcssa620, %136 ], [ %.lcssa621.lcssa35, %51 ]
  %.lcssa418 = phi i32 [ %.lcssa417, %136 ], [ %.lcssa418.lcssa33, %51 ]
  %.lcssa215 = phi i32 [ %.lcssa214, %136 ], [ %.lcssa215.lcssa32, %51 ]
  %.lcssa13 = phi i32 [ %.lcssa12, %136 ], [ %.lcssa13.lcssa30, %51 ]
  %56 = phi i32 [ %137, %136 ], [ 0, %51 ]
  %57 = load i32, ptr @listLength, align 4
  %58 = add nsw i32 %57, %0
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %138

60:                                               ; preds = %55
  %61 = shl i32 1, %56
  %62 = and i32 %61, %1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %136

65:                                               ; preds = %60
  %66 = sext i32 %56 to i64
  %67 = or i32 %1, %61
  br label %68

68:                                               ; preds = %129, %65
  %69 = phi i32 [ %130, %129 ], [ %.lcssa824, %65 ]
  %70 = phi i32 [ %131, %129 ], [ %.lcssa621, %65 ]
  %71 = phi i32 [ %132, %129 ], [ %.lcssa418, %65 ]
  %72 = phi i32 [ %133, %129 ], [ %.lcssa215, %65 ]
  %73 = phi i32 [ %134, %129 ], [ 0, %65 ]
  %74 = icmp slt i32 %73, %56
  br i1 %74, label %75, label %135

75:                                               ; preds = %68
  %76 = shl i32 1, %73
  %77 = and i32 %76, %1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %129

80:                                               ; preds = %75
  %81 = load ptr, ptr @workList, align 8
  %82 = getelementptr inbounds i32, ptr %81, i64 %66
  %83 = load i32, ptr %82, align 4
  %84 = sext i32 %73 to i64
  %85 = getelementptr inbounds i32, ptr %81, i64 %84
  %86 = load i32, ptr %85, align 4
  br i1 %52, label %88, label %87

87:                                               ; preds = %80
  br i1 %53, label %88, label %93

88:                                               ; preds = %87, %80
  %89 = icmp eq i32 %83, 1
  br i1 %89, label %92, label %90

90:                                               ; preds = %88
  %91 = icmp eq i32 %86, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %90, %88
  br label %129

93:                                               ; preds = %90, %87
  %94 = icmp eq i32 %83, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %93
  %96 = icmp eq i32 %86, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %95, %93
  br label %129

98:                                               ; preds = %95
  br i1 %53, label %99, label %103

99:                                               ; preds = %98
  %100 = srem i32 %83, %86
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %129

103:                                              ; preds = %99, %98
  br i1 %53, label %105, label %104

104:                                              ; preds = %103
  br i1 %54, label %105, label %108

105:                                              ; preds = %104, %103
  %106 = icmp slt i32 %83, %86
  br i1 %106, label %107, label %108

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107, %105, %104
  %109 = phi i32 [ %83, %107 ], [ %70, %105 ], [ %70, %104 ]
  %110 = phi i32 [ %83, %107 ], [ %86, %105 ], [ %86, %104 ]
  %111 = phi i32 [ %86, %107 ], [ %83, %105 ], [ %83, %104 ]
  %112 = or i32 %67, %76
  %113 = load ptr, ptr @combList, align 8
  %114 = getelementptr inbounds %struct.Comb, ptr %113, i64 %46
  store i32 %111, ptr %114, align 4
  %115 = load ptr, ptr @combList, align 8
  %116 = getelementptr inbounds %struct.Comb, ptr %115, i64 %46
  %117 = getelementptr inbounds nuw %struct.Comb, ptr %116, i32 0, i32 1
  store i32 %110, ptr %117, align 4
  %118 = load ptr, ptr @combList, align 8
  %119 = getelementptr inbounds %struct.Comb, ptr %118, i64 %46
  %120 = getelementptr inbounds nuw %struct.Comb, ptr %119, i32 0, i32 2
  store i32 %49, ptr %120, align 4
  %121 = load ptr, ptr @combList, align 8
  %122 = getelementptr inbounds %struct.Comb, ptr %121, i64 %46
  %123 = call i32 @calculate(ptr noundef %122)
  %124 = load ptr, ptr @workList, align 8
  %125 = load i32, ptr @listLength, align 4
  %126 = add nsw i32 %125, %0
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, ptr %124, i64 %127
  store i32 %123, ptr %128, align 4
  call void @recSearch(i32 noundef %47, i32 noundef %112)
  br label %129

129:                                              ; preds = %108, %102, %97, %92, %79
  %130 = phi i32 [ %112, %108 ], [ %69, %102 ], [ %69, %97 ], [ %69, %92 ], [ %69, %79 ]
  %131 = phi i32 [ %109, %108 ], [ %70, %102 ], [ %70, %97 ], [ %70, %92 ], [ %70, %79 ]
  %132 = phi i32 [ %110, %108 ], [ %86, %102 ], [ %86, %97 ], [ %86, %92 ], [ %71, %79 ]
  %133 = phi i32 [ %111, %108 ], [ %83, %102 ], [ %83, %97 ], [ %83, %92 ], [ %72, %79 ]
  %134 = add nsw i32 %73, 1
  br label %68, !llvm.loop !13

135:                                              ; preds = %68
  br label %136

136:                                              ; preds = %135, %64
  %.lcssa823 = phi i32 [ %69, %135 ], [ %.lcssa824, %64 ]
  %.lcssa620 = phi i32 [ %70, %135 ], [ %.lcssa621, %64 ]
  %.lcssa417 = phi i32 [ %71, %135 ], [ %.lcssa418, %64 ]
  %.lcssa214 = phi i32 [ %72, %135 ], [ %.lcssa215, %64 ]
  %.lcssa12 = phi i32 [ %73, %135 ], [ %.lcssa13, %64 ]
  %137 = add nsw i32 %56, 1
  br label %55, !llvm.loop !14

138:                                              ; preds = %55
  %139 = add nsw i32 %49, 1
  br label %48, !llvm.loop !15

140:                                              ; preds = %48
  store i32 %49, ptr %5, align 4
  store i32 %.lcssa1028, ptr %7, align 4
  store i32 %.lcssa13.lcssa30, ptr %8, align 4
  store i32 %.lcssa215.lcssa32, ptr %9, align 4
  store i32 %.lcssa418.lcssa33, ptr %10, align 4
  store i32 %.lcssa621.lcssa35, ptr %11, align 4
  store i32 %.lcssa824.lcssa37, ptr %6, align 4
  br label %141

141:                                              ; preds = %140, %44, %14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = load i32, ptr @listLength, align 4
  %3 = load ptr, ptr @workList, align 8
  %4 = load i32, ptr @goal, align 4
  %best.promoted = load i32, ptr @best, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = phi i32 [ %20, %19 ], [ %best.promoted, %0 ]
  %7 = phi i32 [ %21, %19 ], [ 0, %0 ]
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds i32, ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %12, %4
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = sub nsw i32 %6, %4
  %16 = call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 %12, ptr @best, align 4
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i32 [ %12, %18 ], [ %6, %9 ]
  %21 = add nsw i32 %7, 1
  br label %5, !llvm.loop !16

22:                                               ; preds = %5
  store i32 %7, ptr %1, align 4
  %23 = icmp eq i32 %6, %4
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %44

26:                                               ; preds = %22
  store i32 1, ptr @dmax, align 4
  br label %27

27:                                               ; preds = %35, %26
  %28 = phi i32 [ %.pre, %35 ], [ %2, %26 ]
  %29 = phi i32 [ %37, %35 ], [ 1, %26 ]
  %30 = icmp slt i32 %29, %28
  br i1 %30, label %31, label %.loopexit

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
  %.pre = load i32, ptr @listLength, align 4
  br label %27, !llvm.loop !17

.loopexit:                                        ; preds = %27
  %.pre1 = load i32, ptr @stopSearch, align 4
  br label %38

38:                                               ; preds = %.loopexit, %34
  %39 = phi i32 [ %.pre1, %.loopexit ], [ %32, %34 ]
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
  br label %7, !llvm.loop !18

23:                                               ; preds = %13
  store i32 %9, ptr %3, align 4
  store i32 %8, ptr %2, align 4
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
