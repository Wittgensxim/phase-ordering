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

4:                                                ; preds = %12, %3
  %.0 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  store i32 %9, ptr %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !7

14:                                               ; preds = %4
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

4:                                                ; preds = %28, %3
  %.0 = phi i32 [ 0, %3 ], [ %29, %28 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %30

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.Comb, ptr %1, i64 %7
  %9 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds %struct.Comb, ptr %0, i64 %11
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %12, i32 0, i32 0
  store i32 %10, ptr %13, align 4
  %14 = sext i32 %.0 to i64
  %15 = getelementptr inbounds %struct.Comb, ptr %1, i64 %14
  %16 = getelementptr inbounds nuw %struct.Comb, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds %struct.Comb, ptr %0, i64 %18
  %20 = getelementptr inbounds nuw %struct.Comb, ptr %19, i32 0, i32 1
  store i32 %17, ptr %20, align 4
  %21 = sext i32 %.0 to i64
  %22 = getelementptr inbounds %struct.Comb, ptr %1, i64 %21
  %23 = getelementptr inbounds nuw %struct.Comb, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %.0 to i64
  %26 = getelementptr inbounds %struct.Comb, ptr %0, i64 %25
  %27 = getelementptr inbounds nuw %struct.Comb, ptr %26, i32 0, i32 2
  store i32 %24, ptr %27, align 4
  br label %28

28:                                               ; preds = %6
  %29 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !10

30:                                               ; preds = %4
  %31 = sext i32 %2 to i64
  %32 = getelementptr inbounds %struct.Comb, ptr %0, i64 %31
  %33 = getelementptr inbounds nuw %struct.Comb, ptr %32, i32 0, i32 2
  store i32 0, ptr %33, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %28 [
    i32 1, label %4
    i32 2, label %10
    i32 3, label %16
    i32 4, label %22
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add nsw i32 %6, %8
  br label %29

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub nsw i32 %12, %14
  br label %29

16:                                               ; preds = %1
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = mul nsw i32 %18, %20
  br label %29

22:                                               ; preds = %1
  %23 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = sdiv i32 %24, %26
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %22, %16, %10, %4
  %.0 = phi i32 [ 0, %28 ], [ %9, %4 ], [ %15, %10 ], [ %21, %16 ], [ %27, %22 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %47, %2
  %.0 = phi i32 [ 0, %2 ], [ %48, %47 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %49

5:                                                ; preds = %3
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.Comb, ptr %0, i64 %6
  %8 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %9)
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds %struct.Comb, ptr %0, i64 %11
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %25 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %19
    i32 3, label %21
    i32 4, label %23
  ]

15:                                               ; preds = %5
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %31

17:                                               ; preds = %5
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %31

19:                                               ; preds = %5
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %31

21:                                               ; preds = %5
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %31

23:                                               ; preds = %5
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %31

25:                                               ; preds = %5
  %26 = sext i32 %.0 to i64
  %27 = getelementptr inbounds %struct.Comb, ptr %0, i64 %26
  %28 = getelementptr inbounds nuw %struct.Comb, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %29)
  br label %31

31:                                               ; preds = %25, %23, %21, %19, %17, %15
  %32 = sext i32 %.0 to i64
  %33 = getelementptr inbounds %struct.Comb, ptr %0, i64 %32
  %34 = getelementptr inbounds nuw %struct.Comb, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = sext i32 %.0 to i64
  %37 = getelementptr inbounds %struct.Comb, ptr %0, i64 %36
  %38 = call i32 @calculate(ptr noundef %37)
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %35, i32 noundef %38)
  %40 = sub nsw i32 %1, 1
  %41 = icmp slt i32 %.0, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %46

44:                                               ; preds = %31
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46
  %48 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !11

49:                                               ; preds = %3
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br label %136

6:                                                ; preds = %2
  %7 = load i32, ptr @nbNodes, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @nbNodes, align 4
  %9 = load i32, ptr @dmax, align 4
  %10 = icmp eq i32 %0, %9
  br i1 %10, label %11, label %44

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
  %23 = load i32, ptr @goal, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %11
  %28 = load ptr, ptr @workList, align 8
  %29 = load i32, ptr @listLength, align 4
  %30 = add nsw i32 %29, %0
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %28, i64 %32
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %35 = load ptr, ptr @solution, align 8
  %36 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %35, ptr noundef %36, i32 noundef %0)
  %37 = load i32, ptr @best, align 4
  %38 = load i32, ptr @goal, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %41, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %42

42:                                               ; preds = %40, %27
  br label %43

43:                                               ; preds = %42, %11
  br label %136

44:                                               ; preds = %6
  br label %45

45:                                               ; preds = %133, %44
  %.0 = phi i32 [ 1, %44 ], [ %134, %133 ]
  %46 = icmp sle i32 %.0, 4
  br i1 %46, label %47, label %135

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %130, %47
  %.052 = phi i32 [ 0, %47 ], [ %131, %130 ]
  %49 = load i32, ptr @listLength, align 4
  %50 = add nsw i32 %49, %0
  %51 = icmp slt i32 %.052, %50
  br i1 %51, label %52, label %132

52:                                               ; preds = %48
  %53 = shl i32 1, %.052
  %54 = and i32 %53, %1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %130

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %127, %57
  %.051 = phi i32 [ 0, %57 ], [ %128, %127 ]
  %59 = icmp slt i32 %.051, %.052
  br i1 %59, label %60, label %129

60:                                               ; preds = %58
  %61 = shl i32 1, %.051
  %62 = and i32 %61, %1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %127

65:                                               ; preds = %60
  %66 = load ptr, ptr @workList, align 8
  %67 = sext i32 %.052 to i64
  %68 = getelementptr inbounds i32, ptr %66, i64 %67
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr @workList, align 8
  %71 = sext i32 %.051 to i64
  %72 = getelementptr inbounds i32, ptr %70, i64 %71
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %.0, 3
  br i1 %74, label %77, label %75

75:                                               ; preds = %65
  %76 = icmp eq i32 %.0, 4
  br i1 %76, label %77, label %82

77:                                               ; preds = %75, %65
  %78 = icmp eq i32 %69, 1
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = icmp eq i32 %73, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %79, %77
  br label %127

82:                                               ; preds = %79, %75
  %83 = icmp eq i32 %69, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %82
  %85 = icmp eq i32 %73, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %84, %82
  br label %127

87:                                               ; preds = %84
  %88 = icmp eq i32 %.0, 4
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  %90 = srem i32 %69, %73
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %127

93:                                               ; preds = %89, %87
  %94 = icmp eq i32 %.0, 4
  br i1 %94, label %97, label %95

95:                                               ; preds = %93
  %96 = icmp eq i32 %.0, 2
  br i1 %96, label %97, label %100

97:                                               ; preds = %95, %93
  %98 = icmp slt i32 %69, %73
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99, %97, %95
  %.050 = phi i32 [ %73, %99 ], [ %69, %97 ], [ %69, %95 ]
  %.049 = phi i32 [ %69, %99 ], [ %73, %97 ], [ %73, %95 ]
  %101 = shl i32 1, %.052
  %102 = or i32 %1, %101
  %103 = shl i32 1, %.051
  %104 = or i32 %102, %103
  %105 = load ptr, ptr @combList, align 8
  %106 = sext i32 %0 to i64
  %107 = getelementptr inbounds %struct.Comb, ptr %105, i64 %106
  %108 = getelementptr inbounds nuw %struct.Comb, ptr %107, i32 0, i32 0
  store i32 %.050, ptr %108, align 4
  %109 = load ptr, ptr @combList, align 8
  %110 = sext i32 %0 to i64
  %111 = getelementptr inbounds %struct.Comb, ptr %109, i64 %110
  %112 = getelementptr inbounds nuw %struct.Comb, ptr %111, i32 0, i32 1
  store i32 %.049, ptr %112, align 4
  %113 = load ptr, ptr @combList, align 8
  %114 = sext i32 %0 to i64
  %115 = getelementptr inbounds %struct.Comb, ptr %113, i64 %114
  %116 = getelementptr inbounds nuw %struct.Comb, ptr %115, i32 0, i32 2
  store i32 %.0, ptr %116, align 4
  %117 = load ptr, ptr @combList, align 8
  %118 = sext i32 %0 to i64
  %119 = getelementptr inbounds %struct.Comb, ptr %117, i64 %118
  %120 = call i32 @calculate(ptr noundef %119)
  %121 = load ptr, ptr @workList, align 8
  %122 = load i32, ptr @listLength, align 4
  %123 = add nsw i32 %122, %0
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %121, i64 %124
  store i32 %120, ptr %125, align 4
  %126 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %126, i32 noundef %104)
  br label %127

127:                                              ; preds = %100, %92, %86, %81, %64
  %128 = add nsw i32 %.051, 1
  br label %58, !llvm.loop !13

129:                                              ; preds = %58
  br label %130

130:                                              ; preds = %129, %56
  %131 = add nsw i32 %.052, 1
  br label %48, !llvm.loop !14

132:                                              ; preds = %48
  br label %133

133:                                              ; preds = %132
  %134 = add nsw i32 %.0, 1
  br label %45, !llvm.loop !15

135:                                              ; preds = %45
  br label %136

136:                                              ; preds = %135, %43, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  br label %1

1:                                                ; preds = %23, %0
  %.0 = phi i32 [ 0, %0 ], [ %24, %23 ]
  %2 = load i32, ptr @listLength, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = load ptr, ptr @workList, align 8
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr @goal, align 4
  %10 = sub nsw i32 %8, %9
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = load i32, ptr @best, align 4
  %13 = load i32, ptr @goal, align 4
  %14 = sub nsw i32 %12, %13
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load ptr, ptr @workList, align 8
  %19 = sext i32 %.0 to i64
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr @best, align 4
  br label %22

22:                                               ; preds = %17, %4
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !16

25:                                               ; preds = %1
  %26 = load i32, ptr @best, align 4
  %27 = load i32, ptr @goal, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %50

31:                                               ; preds = %25
  store i32 1, ptr @dmax, align 4
  br label %32

32:                                               ; preds = %41, %31
  %33 = load i32, ptr @dmax, align 4
  %34 = load i32, ptr @listLength, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %.loopexit

36:                                               ; preds = %32
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %37 = load i32, ptr @stopSearch, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %44

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr @dmax, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @dmax, align 4
  br label %32, !llvm.loop !17

.loopexit:                                        ; preds = %32
  br label %44

44:                                               ; preds = %.loopexit, %39
  %45 = load i32, ptr @stopSearch, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load ptr, ptr @solution, align 8
  %49 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %48, i32 noundef %49)
  br label %50

50:                                               ; preds = %47, %44, %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  store i32 13, ptr %2, align 16
  %3 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 1
  store i32 32, ptr %3, align 4
  %4 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 2
  store i32 14, ptr %4, align 8
  %5 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 3
  store i32 1412, ptr %5, align 4
  br label %6

6:                                                ; preds = %13, %0
  %.0 = phi i32 [ 0, %0 ], [ %20, %13 ]
  %7 = call i32 @getchar()
  %8 = icmp ne i32 %7, 10
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = icmp ne i32 %7, -1
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i1 [ false, %6 ], [ %10, %9 ]
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = call ptr @__acrt_iob_func(i32 noundef 0)
  %15 = call i32 @ungetc(i32 noundef %7, ptr noundef %14)
  %16 = call ptr @__acrt_iob_func(i32 noundef 0)
  %17 = sext i32 %.0 to i64
  %18 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %17
  %19 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %16, ptr noundef @.str.2, ptr noundef %18)
  %20 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !18

21:                                               ; preds = %11
  %.0.lcssa = phi i32 [ %.0, %11 ]
  %22 = icmp eq i32 %.0.lcssa, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23, %21
  %.1 = phi i32 [ 4, %23 ], [ %.0.lcssa, %21 ]
  %25 = sub nsw i32 %.1, 1
  store i32 %25, ptr @listLength, align 4
  %26 = load i32, ptr @listLength, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr @goal, align 4
  %30 = load i32, ptr @listLength, align 4
  %31 = mul nsw i32 2, %30
  %32 = call ptr @newWorkList(i32 noundef %31)
  store ptr %32, ptr @workList, align 8
  %33 = load i32, ptr @listLength, align 4
  %34 = call ptr @newCombList(i32 noundef %33)
  store ptr %34, ptr @combList, align 8
  %35 = load i32, ptr @listLength, align 4
  %36 = call ptr @newCombList(i32 noundef %35)
  store ptr %36, ptr @solution, align 8
  %37 = load ptr, ptr @workList, align 8
  %38 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  %39 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %37, ptr noundef %38, i32 noundef %39)
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
