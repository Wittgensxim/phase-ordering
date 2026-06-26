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

4:                                                ; preds = %13, %3
  %5 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  store i32 %10, ptr %12, align 4
  br label %13

13:                                               ; preds = %7
  %14 = add nsw i32 %5, 1
  br label %4, !llvm.loop !7

15:                                               ; preds = %4
  %.lcssa = phi i32 [ %5, %4 ]
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi i32 [ %11, %10 ], [ 0, %2 ]
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.Comb, ptr %0, i64 %7
  %9 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 2
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %4, 1
  br label %3, !llvm.loop !9

12:                                               ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %29, %3
  %5 = phi i32 [ %30, %29 ], [ 0, %3 ]
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds %struct.Comb, ptr %1, i64 %8
  %10 = getelementptr inbounds nuw %struct.Comb, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %0, i64 %12
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 0
  store i32 %11, ptr %14, align 4
  %15 = sext i32 %5 to i64
  %16 = getelementptr inbounds %struct.Comb, ptr %1, i64 %15
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds %struct.Comb, ptr %0, i64 %19
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %20, i32 0, i32 1
  store i32 %18, ptr %21, align 4
  %22 = sext i32 %5 to i64
  %23 = getelementptr inbounds %struct.Comb, ptr %1, i64 %22
  %24 = getelementptr inbounds nuw %struct.Comb, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %5 to i64
  %27 = getelementptr inbounds %struct.Comb, ptr %0, i64 %26
  %28 = getelementptr inbounds nuw %struct.Comb, ptr %27, i32 0, i32 2
  store i32 %25, ptr %28, align 4
  br label %29

29:                                               ; preds = %7
  %30 = add nsw i32 %5, 1
  br label %4, !llvm.loop !10

31:                                               ; preds = %4
  %.lcssa = phi i32 [ %5, %4 ]
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds %struct.Comb, ptr %0, i64 %32
  %34 = getelementptr inbounds nuw %struct.Comb, ptr %33, i32 0, i32 2
  store i32 0, ptr %34, align 4
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
  %3 = sub nsw i32 %1, 1
  br label %4

4:                                                ; preds = %48, %2
  %5 = phi i32 [ %49, %48 ], [ 0, %2 ]
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %50

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds %struct.Comb, ptr %0, i64 %8
  %10 = getelementptr inbounds nuw %struct.Comb, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %11)
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds %struct.Comb, ptr %0, i64 %13
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %27 [
    i32 0, label %17
    i32 1, label %19
    i32 2, label %21
    i32 3, label %23
    i32 4, label %25
  ]

17:                                               ; preds = %7
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %33

19:                                               ; preds = %7
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %33

21:                                               ; preds = %7
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %33

23:                                               ; preds = %7
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %33

25:                                               ; preds = %7
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %33

27:                                               ; preds = %7
  %28 = sext i32 %5 to i64
  %29 = getelementptr inbounds %struct.Comb, ptr %0, i64 %28
  %30 = getelementptr inbounds nuw %struct.Comb, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %31)
  br label %33

33:                                               ; preds = %27, %25, %23, %21, %19, %17
  %34 = sext i32 %5 to i64
  %35 = getelementptr inbounds %struct.Comb, ptr %0, i64 %34
  %36 = getelementptr inbounds nuw %struct.Comb, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = sext i32 %5 to i64
  %39 = getelementptr inbounds %struct.Comb, ptr %0, i64 %38
  %40 = call i32 @calculate(ptr noundef %39)
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %37, i32 noundef %40)
  %42 = icmp slt i32 %5, %3
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %47

45:                                               ; preds = %33
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47
  %49 = add nsw i32 %5, 1
  br label %4, !llvm.loop !11

50:                                               ; preds = %4
  %.lcssa = phi i32 [ %5, %4 ]
  %51 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %17, %3
  %5 = phi i32 [ %18, %17 ], [ 0, %3 ]
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = shl i32 1, %5
  %9 = and i32 %8, %2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %17

12:                                               ; preds = %7
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %15)
  br label %17

17:                                               ; preds = %12, %11
  %18 = add nsw i32 %5, 1
  br label %4, !llvm.loop !12

19:                                               ; preds = %4
  %.lcssa = phi i32 [ %5, %4 ]
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %150

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
  br label %150

44:                                               ; preds = %6
  %45 = sext i32 %0 to i64
  %46 = sext i32 %0 to i64
  %47 = sext i32 %0 to i64
  %48 = sext i32 %0 to i64
  %49 = add nsw i32 %0, 1
  br label %50

50:                                               ; preds = %147, %44
  %.lcssa824.lcssa37 = phi i32 [ %.lcssa824.lcssa, %147 ], [ undef, %44 ]
  %.lcssa621.lcssa35 = phi i32 [ %.lcssa621.lcssa, %147 ], [ undef, %44 ]
  %.lcssa418.lcssa33 = phi i32 [ %.lcssa418.lcssa, %147 ], [ undef, %44 ]
  %.lcssa215.lcssa32 = phi i32 [ %.lcssa215.lcssa, %147 ], [ undef, %44 ]
  %.lcssa13.lcssa30 = phi i32 [ %.lcssa13.lcssa, %147 ], [ undef, %44 ]
  %.lcssa1028 = phi i32 [ %.lcssa10, %147 ], [ undef, %44 ]
  %51 = phi i32 [ %148, %147 ], [ 1, %44 ]
  %52 = icmp sle i32 %51, 4
  br i1 %52, label %53, label %149

53:                                               ; preds = %50
  %54 = icmp eq i32 %51, 3
  %55 = icmp eq i32 %51, 4
  %56 = icmp eq i32 %51, 4
  %57 = icmp eq i32 %51, 4
  %58 = icmp eq i32 %51, 2
  br label %59

59:                                               ; preds = %144, %53
  %.lcssa824 = phi i32 [ %.lcssa823, %144 ], [ %.lcssa824.lcssa37, %53 ]
  %.lcssa621 = phi i32 [ %.lcssa620, %144 ], [ %.lcssa621.lcssa35, %53 ]
  %.lcssa418 = phi i32 [ %.lcssa417, %144 ], [ %.lcssa418.lcssa33, %53 ]
  %.lcssa215 = phi i32 [ %.lcssa214, %144 ], [ %.lcssa215.lcssa32, %53 ]
  %.lcssa13 = phi i32 [ %.lcssa12, %144 ], [ %.lcssa13.lcssa30, %53 ]
  %60 = phi i32 [ %145, %144 ], [ 0, %53 ]
  %61 = load i32, ptr @listLength, align 4
  %62 = add nsw i32 %61, %0
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %146

64:                                               ; preds = %59
  %65 = shl i32 1, %60
  %66 = and i32 %65, %1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %144

69:                                               ; preds = %64
  %70 = sext i32 %60 to i64
  %71 = shl i32 1, %60
  %72 = or i32 %1, %71
  br label %73

73:                                               ; preds = %137, %69
  %74 = phi i32 [ %138, %137 ], [ %.lcssa824, %69 ]
  %75 = phi i32 [ %139, %137 ], [ %.lcssa621, %69 ]
  %76 = phi i32 [ %140, %137 ], [ %.lcssa418, %69 ]
  %77 = phi i32 [ %141, %137 ], [ %.lcssa215, %69 ]
  %78 = phi i32 [ %142, %137 ], [ 0, %69 ]
  %79 = icmp slt i32 %78, %60
  br i1 %79, label %80, label %143

80:                                               ; preds = %73
  %81 = shl i32 1, %78
  %82 = and i32 %81, %1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %137

85:                                               ; preds = %80
  %86 = load ptr, ptr @workList, align 8
  %87 = getelementptr inbounds i32, ptr %86, i64 %70
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr @workList, align 8
  %90 = sext i32 %78 to i64
  %91 = getelementptr inbounds i32, ptr %89, i64 %90
  %92 = load i32, ptr %91, align 4
  br i1 %54, label %94, label %93

93:                                               ; preds = %85
  br i1 %55, label %94, label %99

94:                                               ; preds = %93, %85
  %95 = icmp eq i32 %88, 1
  br i1 %95, label %98, label %96

96:                                               ; preds = %94
  %97 = icmp eq i32 %92, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %96, %94
  br label %137

99:                                               ; preds = %96, %93
  %100 = icmp eq i32 %88, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %99
  %102 = icmp eq i32 %92, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %101, %99
  br label %137

104:                                              ; preds = %101
  br i1 %56, label %105, label %109

105:                                              ; preds = %104
  %106 = srem i32 %88, %92
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %137

109:                                              ; preds = %105, %104
  br i1 %57, label %111, label %110

110:                                              ; preds = %109
  br i1 %58, label %111, label %114

111:                                              ; preds = %110, %109
  %112 = icmp slt i32 %88, %92
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113, %111, %110
  %115 = phi i32 [ %88, %113 ], [ %75, %111 ], [ %75, %110 ]
  %116 = phi i32 [ %88, %113 ], [ %92, %111 ], [ %92, %110 ]
  %117 = phi i32 [ %92, %113 ], [ %88, %111 ], [ %88, %110 ]
  %118 = shl i32 1, %78
  %119 = or i32 %72, %118
  %120 = load ptr, ptr @combList, align 8
  %121 = getelementptr inbounds %struct.Comb, ptr %120, i64 %45
  %122 = getelementptr inbounds nuw %struct.Comb, ptr %121, i32 0, i32 0
  store i32 %117, ptr %122, align 4
  %123 = load ptr, ptr @combList, align 8
  %124 = getelementptr inbounds %struct.Comb, ptr %123, i64 %46
  %125 = getelementptr inbounds nuw %struct.Comb, ptr %124, i32 0, i32 1
  store i32 %116, ptr %125, align 4
  %126 = load ptr, ptr @combList, align 8
  %127 = getelementptr inbounds %struct.Comb, ptr %126, i64 %47
  %128 = getelementptr inbounds nuw %struct.Comb, ptr %127, i32 0, i32 2
  store i32 %51, ptr %128, align 4
  %129 = load ptr, ptr @combList, align 8
  %130 = getelementptr inbounds %struct.Comb, ptr %129, i64 %48
  %131 = call i32 @calculate(ptr noundef %130)
  %132 = load ptr, ptr @workList, align 8
  %133 = load i32, ptr @listLength, align 4
  %134 = add nsw i32 %133, %0
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, ptr %132, i64 %135
  store i32 %131, ptr %136, align 4
  call void @recSearch(i32 noundef %49, i32 noundef %119)
  br label %137

137:                                              ; preds = %114, %108, %103, %98, %84
  %138 = phi i32 [ %119, %114 ], [ %74, %108 ], [ %74, %103 ], [ %74, %98 ], [ %74, %84 ]
  %139 = phi i32 [ %115, %114 ], [ %75, %108 ], [ %75, %103 ], [ %75, %98 ], [ %75, %84 ]
  %140 = phi i32 [ %116, %114 ], [ %92, %108 ], [ %92, %103 ], [ %92, %98 ], [ %76, %84 ]
  %141 = phi i32 [ %117, %114 ], [ %88, %108 ], [ %88, %103 ], [ %88, %98 ], [ %77, %84 ]
  %142 = add nsw i32 %78, 1
  br label %73, !llvm.loop !13

143:                                              ; preds = %73
  %.lcssa8 = phi i32 [ %74, %73 ]
  %.lcssa6 = phi i32 [ %75, %73 ]
  %.lcssa4 = phi i32 [ %76, %73 ]
  %.lcssa2 = phi i32 [ %77, %73 ]
  %.lcssa = phi i32 [ %78, %73 ]
  br label %144

144:                                              ; preds = %143, %68
  %.lcssa823 = phi i32 [ %.lcssa8, %143 ], [ %.lcssa824, %68 ]
  %.lcssa620 = phi i32 [ %.lcssa6, %143 ], [ %.lcssa621, %68 ]
  %.lcssa417 = phi i32 [ %.lcssa4, %143 ], [ %.lcssa418, %68 ]
  %.lcssa214 = phi i32 [ %.lcssa2, %143 ], [ %.lcssa215, %68 ]
  %.lcssa12 = phi i32 [ %.lcssa, %143 ], [ %.lcssa13, %68 ]
  %145 = add nsw i32 %60, 1
  br label %59, !llvm.loop !14

146:                                              ; preds = %59
  %.lcssa824.lcssa = phi i32 [ %.lcssa824, %59 ]
  %.lcssa621.lcssa = phi i32 [ %.lcssa621, %59 ]
  %.lcssa418.lcssa = phi i32 [ %.lcssa418, %59 ]
  %.lcssa215.lcssa = phi i32 [ %.lcssa215, %59 ]
  %.lcssa13.lcssa = phi i32 [ %.lcssa13, %59 ]
  %.lcssa10 = phi i32 [ %60, %59 ]
  br label %147

147:                                              ; preds = %146
  %148 = add nsw i32 %51, 1
  br label %50, !llvm.loop !15

149:                                              ; preds = %50
  %.lcssa824.lcssa37.lcssa = phi i32 [ %.lcssa824.lcssa37, %50 ]
  %.lcssa621.lcssa35.lcssa = phi i32 [ %.lcssa621.lcssa35, %50 ]
  %.lcssa418.lcssa33.lcssa = phi i32 [ %.lcssa418.lcssa33, %50 ]
  %.lcssa215.lcssa32.lcssa = phi i32 [ %.lcssa215.lcssa32, %50 ]
  %.lcssa13.lcssa30.lcssa = phi i32 [ %.lcssa13.lcssa30, %50 ]
  %.lcssa1028.lcssa = phi i32 [ %.lcssa1028, %50 ]
  %.lcssa26 = phi i32 [ %51, %50 ]
  br label %150

150:                                              ; preds = %149, %43, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = load ptr, ptr @workList, align 8
  %3 = load i32, ptr @goal, align 4
  %4 = load i32, ptr @goal, align 4
  %5 = load ptr, ptr @workList, align 8
  %best.promoted = load i32, ptr @best, align 4
  br label %6

6:                                                ; preds = %25, %0
  %7 = phi i32 [ %24, %25 ], [ %best.promoted, %0 ]
  %8 = phi i32 [ %26, %25 ], [ 0, %0 ]
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds i32, ptr %2, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sub nsw i32 %13, %3
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = sub nsw i32 %7, %4
  %17 = call i32 @llvm.abs.i32(i32 %16, i1 true)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds i32, ptr %5, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr @best, align 4
  br label %23

23:                                               ; preds = %19, %10
  %24 = phi i32 [ %22, %19 ], [ %7, %10 ]
  br label %25

25:                                               ; preds = %23
  %26 = add nsw i32 %8, 1
  br label %6, !llvm.loop !16

27:                                               ; preds = %6
  %.lcssa = phi i32 [ %8, %6 ]
  %28 = load i32, ptr @best, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %52

33:                                               ; preds = %27
  store i32 1, ptr @dmax, align 4
  br label %34

34:                                               ; preds = %43, %33
  %35 = load i32, ptr @dmax, align 4
  %36 = load i32, ptr @listLength, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %.loopexit

38:                                               ; preds = %34
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %39 = load i32, ptr @stopSearch, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %46

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr @dmax, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr @dmax, align 4
  br label %34, !llvm.loop !17

.loopexit:                                        ; preds = %34
  br label %46

46:                                               ; preds = %.loopexit, %41
  %47 = load i32, ptr @stopSearch, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load ptr, ptr @solution, align 8
  %51 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %50, i32 noundef %51)
  br label %52

52:                                               ; preds = %49, %46, %31
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

6:                                                ; preds = %14, %0
  %7 = phi i32 [ %21, %14 ], [ 0, %0 ]
  %8 = call i32 @getchar()
  %9 = icmp ne i32 %8, 10
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = icmp ne i32 %8, -1
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i1 [ false, %6 ], [ %11, %10 ]
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = call ptr @__acrt_iob_func(i32 noundef 0)
  %16 = call i32 @ungetc(i32 noundef %8, ptr noundef %15)
  %17 = call ptr @__acrt_iob_func(i32 noundef 0)
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %18
  %20 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %17, ptr noundef @.str.2, ptr noundef %19)
  %21 = add nsw i32 %7, 1
  br label %6, !llvm.loop !18

22:                                               ; preds = %12
  %.lcssa1 = phi i32 [ %7, %12 ]
  %.lcssa = phi i32 [ %8, %12 ]
  %23 = icmp eq i32 %.lcssa1, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %22
  %.0 = phi i32 [ 4, %24 ], [ %.lcssa1, %22 ]
  %26 = sub nsw i32 %.0, 1
  store i32 %26, ptr @listLength, align 4
  %27 = load i32, ptr @listLength, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr @goal, align 4
  %31 = load i32, ptr @listLength, align 4
  %32 = mul nsw i32 2, %31
  %33 = call ptr @newWorkList(i32 noundef %32)
  store ptr %33, ptr @workList, align 8
  %34 = load i32, ptr @listLength, align 4
  %35 = call ptr @newCombList(i32 noundef %34)
  store ptr %35, ptr @combList, align 8
  %36 = load i32, ptr @listLength, align 4
  %37 = call ptr @newCombList(i32 noundef %36)
  store ptr %37, ptr @solution, align 8
  %38 = load ptr, ptr @workList, align 8
  %39 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  %40 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %38, ptr noundef %39, i32 noundef %40)
  %41 = load ptr, ptr @combList, align 8
  %42 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %41, i32 noundef %42)
  %43 = load ptr, ptr @solution, align 8
  %44 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %43, i32 noundef %44)
  %45 = load i32, ptr @listLength, align 4
  ret i32 %45
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
