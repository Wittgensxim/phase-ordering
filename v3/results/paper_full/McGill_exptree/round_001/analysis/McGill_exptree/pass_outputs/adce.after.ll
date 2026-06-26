; ModuleID = 'results\paper_full\McGill_exptree\round_000\output.ll'
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
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 4) #6
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  ret ptr %3

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str) #7
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
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 12) #6
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  ret ptr %3

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initWorkList(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %11, %3
  %.0 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i32, ptr %0, i64 %7
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !7

13:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %9, %2
  %.0 = phi i32 [ 0, %2 ], [ %10, %9 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.Comb, ptr %0, i64 %6
  %8 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 2
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !9

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %17, %3
  %.0 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.Comb, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.Comb, ptr %0, i64 %7
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %10, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds nuw %struct.Comb, ptr %10, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %6
  %18 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !10

19:                                               ; preds = %4
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds %struct.Comb, ptr %0, i64 %20
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %21, i32 0, i32 2
  store i32 0, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %24 [
    i32 1, label %4
    i32 2, label %9
    i32 3, label %14
    i32 4, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %5, %7
  br label %25

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %10, %12
  br label %25

14:                                               ; preds = %1
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = mul nsw i32 %15, %17
  br label %25

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sdiv i32 %20, %22
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %19, %14, %9, %4
  %.0 = phi i32 [ 0, %24 ], [ %8, %4 ], [ %13, %9 ], [ %18, %14 ], [ %23, %19 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %36, %2
  %.0 = phi i32 [ 0, %2 ], [ %37, %36 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %38

5:                                                ; preds = %3
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.Comb, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %8)
  %10 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %22 [
    i32 0, label %12
    i32 1, label %14
    i32 2, label %16
    i32 3, label %18
    i32 4, label %20
  ]

12:                                               ; preds = %5
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %24

14:                                               ; preds = %5
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %24

16:                                               ; preds = %5
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %24

18:                                               ; preds = %5
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %24

20:                                               ; preds = %5
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %24

22:                                               ; preds = %5
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %11)
  br label %24

24:                                               ; preds = %22, %20, %18, %16, %14, %12
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = call i32 @calculate(ptr noundef %7)
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %26, i32 noundef %27)
  %29 = sub nsw i32 %1, 1
  %30 = icmp slt i32 %.0, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %35

33:                                               ; preds = %24
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35
  %37 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !11

38:                                               ; preds = %3
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %16, %3
  %.0 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = shl i32 1, %.0
  %8 = and i32 %7, %2
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %16

11:                                               ; preds = %6
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %14)
  br label %16

16:                                               ; preds = %11, %10
  %17 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !12

18:                                               ; preds = %4
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %120

6:                                                ; preds = %2
  %7 = load i32, ptr @nbNodes, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @nbNodes, align 4
  %9 = load i32, ptr @dmax, align 4
  %10 = icmp eq i32 %0, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  %12 = load ptr, ptr @workList, align 8
  %13 = load i32, ptr @listLength, align 4
  %14 = add nsw i32 %13, %0
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %12, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr @goal, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = load i32, ptr @best, align 4
  %23 = sub nsw i32 %22, %19
  %24 = call i32 @llvm.abs.i32(i32 %23, i1 true)
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %11
  store i32 %18, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %27 = load ptr, ptr @solution, align 8
  %28 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %27, ptr noundef %28, i32 noundef %0)
  %29 = load i32, ptr @best, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %33, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %34

34:                                               ; preds = %32, %26
  br label %35

35:                                               ; preds = %34, %11
  br label %120

36:                                               ; preds = %6
  br label %37

37:                                               ; preds = %117, %36
  %.02 = phi i32 [ 1, %36 ], [ %118, %117 ]
  %38 = icmp sle i32 %.02, 4
  br i1 %38, label %39, label %119

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %114, %39
  %.04 = phi i32 [ 0, %39 ], [ %115, %114 ]
  %41 = load i32, ptr @listLength, align 4
  %42 = add nsw i32 %41, %0
  %43 = icmp slt i32 %.04, %42
  br i1 %43, label %44, label %116

44:                                               ; preds = %40
  %45 = shl i32 1, %.04
  %46 = and i32 %45, %1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %114

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %111, %49
  %.03 = phi i32 [ 0, %49 ], [ %112, %111 ]
  %51 = icmp slt i32 %.03, %.04
  br i1 %51, label %52, label %113

52:                                               ; preds = %50
  %53 = shl i32 1, %.03
  %54 = and i32 %53, %1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %111

57:                                               ; preds = %52
  %58 = load ptr, ptr @workList, align 8
  %59 = sext i32 %.04 to i64
  %60 = getelementptr inbounds i32, ptr %58, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = sext i32 %.03 to i64
  %63 = getelementptr inbounds i32, ptr %58, i64 %62
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %.02, 3
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = icmp eq i32 %.02, 4
  br i1 %67, label %68, label %73

68:                                               ; preds = %66, %57
  %69 = icmp eq i32 %61, 1
  br i1 %69, label %72, label %70

70:                                               ; preds = %68
  %71 = icmp eq i32 %64, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %70, %68
  br label %111

73:                                               ; preds = %70, %66
  %74 = icmp eq i32 %61, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %76 = icmp eq i32 %64, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %75, %73
  br label %111

78:                                               ; preds = %75
  %79 = icmp eq i32 %.02, 4
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  %81 = srem i32 %61, %64
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %111

84:                                               ; preds = %80, %78
  br i1 %79, label %87, label %85

85:                                               ; preds = %84
  %86 = icmp eq i32 %.02, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %85, %84
  %88 = icmp slt i32 %61, %64
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89, %87, %85
  %.01 = phi i32 [ %64, %89 ], [ %61, %87 ], [ %61, %85 ]
  %.0 = phi i32 [ %61, %89 ], [ %64, %87 ], [ %64, %85 ]
  %91 = or i32 %1, %45
  %92 = or i32 %91, %53
  %93 = load ptr, ptr @combList, align 8
  %94 = sext i32 %0 to i64
  %95 = getelementptr inbounds %struct.Comb, ptr %93, i64 %94
  store i32 %.01, ptr %95, align 4
  %96 = load ptr, ptr @combList, align 8
  %97 = getelementptr inbounds %struct.Comb, ptr %96, i64 %94
  %98 = getelementptr inbounds nuw %struct.Comb, ptr %97, i32 0, i32 1
  store i32 %.0, ptr %98, align 4
  %99 = load ptr, ptr @combList, align 8
  %100 = getelementptr inbounds %struct.Comb, ptr %99, i64 %94
  %101 = getelementptr inbounds nuw %struct.Comb, ptr %100, i32 0, i32 2
  store i32 %.02, ptr %101, align 4
  %102 = load ptr, ptr @combList, align 8
  %103 = getelementptr inbounds %struct.Comb, ptr %102, i64 %94
  %104 = call i32 @calculate(ptr noundef %103)
  %105 = load ptr, ptr @workList, align 8
  %106 = load i32, ptr @listLength, align 4
  %107 = add nsw i32 %106, %0
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %105, i64 %108
  store i32 %104, ptr %109, align 4
  %110 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %110, i32 noundef %92)
  br label %111

111:                                              ; preds = %90, %83, %77, %72, %56
  %112 = add nsw i32 %.03, 1
  br label %50, !llvm.loop !13

113:                                              ; preds = %50
  br label %114

114:                                              ; preds = %113, %48
  %115 = add nsw i32 %.04, 1
  br label %40, !llvm.loop !14

116:                                              ; preds = %40
  br label %117

117:                                              ; preds = %116
  %118 = add nsw i32 %.02, 1
  br label %37, !llvm.loop !15

119:                                              ; preds = %37
  br label %120

120:                                              ; preds = %119, %35, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  br label %1

1:                                                ; preds = %18, %0
  %.0 = phi i32 [ 0, %0 ], [ %19, %18 ]
  %2 = load i32, ptr @listLength, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = load ptr, ptr @workList, align 8
  %6 = sext i32 %.0 to i64
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

16:                                               ; preds = %4
  store i32 %8, ptr @best, align 4
  br label %17

17:                                               ; preds = %16, %4
  br label %18

18:                                               ; preds = %17
  %19 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !16

20:                                               ; preds = %1
  %21 = load i32, ptr @best, align 4
  %22 = load i32, ptr @goal, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %45

26:                                               ; preds = %20
  store i32 1, ptr @dmax, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, ptr @dmax, align 4
  %29 = load i32, ptr @listLength, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %32 = load i32, ptr @stopSearch, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %39

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35
  %37 = load i32, ptr @dmax, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @dmax, align 4
  br label %27, !llvm.loop !17

39:                                               ; preds = %34, %27
  %40 = load i32, ptr @stopSearch, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load ptr, ptr @solution, align 8
  %44 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %43, i32 noundef %44)
  br label %45

45:                                               ; preds = %42, %39, %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  store i32 13, ptr %1, align 16
  %2 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 1
  store i32 32, ptr %2, align 4
  %3 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 2
  store i32 14, ptr %3, align 8
  %4 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 3
  store i32 1412, ptr %4, align 4
  br label %5

5:                                                ; preds = %12, %0
  %.0 = phi i32 [ 0, %0 ], [ %19, %12 ]
  %6 = call i32 @getchar()
  %7 = icmp ne i32 %6, 10
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = icmp ne i32 %6, -1
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i1 [ false, %5 ], [ %9, %8 ]
  br i1 %11, label %12, label %20

12:                                               ; preds = %10
  %13 = call ptr @__acrt_iob_func(i32 noundef 0)
  %14 = call i32 @ungetc(i32 noundef %6, ptr noundef %13)
  %15 = call ptr @__acrt_iob_func(i32 noundef 0)
  %16 = sext i32 %.0 to i64
  %17 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %16
  %18 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %15, ptr noundef @.str.2, ptr noundef %17)
  %19 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !18

20:                                               ; preds = %10
  %21 = icmp eq i32 %.0, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %20
  %.1 = phi i32 [ 4, %22 ], [ %.0, %20 ]
  %24 = sub nsw i32 %.1, 1
  store i32 %24, ptr @listLength, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr @goal, align 4
  %28 = load i32, ptr @listLength, align 4
  %29 = mul nsw i32 2, %28
  %30 = call ptr @newWorkList(i32 noundef %29)
  store ptr %30, ptr @workList, align 8
  %31 = load i32, ptr @listLength, align 4
  %32 = call ptr @newCombList(i32 noundef %31)
  store ptr %32, ptr @combList, align 8
  %33 = load i32, ptr @listLength, align 4
  %34 = call ptr @newCombList(i32 noundef %33)
  store ptr %34, ptr @solution, align 8
  %35 = load ptr, ptr @workList, align 8
  %36 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %35, ptr noundef %1, i32 noundef %36)
  %37 = load ptr, ptr @combList, align 8
  %38 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %37, i32 noundef %38)
  %39 = load ptr, ptr @solution, align 8
  %40 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %39, i32 noundef %40)
  %41 = load i32, ptr @listLength, align 4
  ret i32 %41
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
  %3 = call i32 @getInput()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @search()
  br label %6

6:                                                ; preds = %5, %2
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
