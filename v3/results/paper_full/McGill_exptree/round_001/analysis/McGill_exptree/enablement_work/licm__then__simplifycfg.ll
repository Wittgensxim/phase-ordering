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

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %11, %6 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i32, ptr %0, i64 %7
  store i32 %9, ptr %10, align 4
  %11 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !7

12:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %9, %5 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.Comb, ptr %0, i64 %6
  %8 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !9

10:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %17, %6 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %18

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
  %17 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !10

18:                                               ; preds = %4
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds %struct.Comb, ptr %0, i64 %19
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %20, i32 0, i32 2
  store i32 0, ptr %21, align 4
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
  br label %24

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %10, %12
  br label %24

14:                                               ; preds = %1
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = mul nsw i32 %15, %17
  br label %24

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sdiv i32 %20, %22
  br label %24

24:                                               ; preds = %1, %19, %14, %9, %4
  %.0 = phi i32 [ %23, %19 ], [ %8, %4 ], [ %13, %9 ], [ %18, %14 ], [ 0, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = sub nsw i32 %1, 1
  br label %4

4:                                                ; preds = %35, %2
  %.0 = phi i32 [ 0, %2 ], [ %36, %35 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %37

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.Comb, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %9)
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %23 [
    i32 0, label %13
    i32 1, label %15
    i32 2, label %17
    i32 3, label %19
    i32 4, label %21
  ]

13:                                               ; preds = %6
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %25

15:                                               ; preds = %6
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %25

17:                                               ; preds = %6
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %25

19:                                               ; preds = %6
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %25

21:                                               ; preds = %6
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %25

23:                                               ; preds = %6
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %12)
  br label %25

25:                                               ; preds = %23, %21, %19, %17, %15, %13
  %26 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @calculate(ptr noundef %8)
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %27, i32 noundef %28)
  %30 = icmp slt i32 %.0, %3
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %35

33:                                               ; preds = %25
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %35

35:                                               ; preds = %31, %33
  %36 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !11

37:                                               ; preds = %4
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %15, %3
  %.0 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = shl i32 1, %.0
  %8 = and i32 %7, %2
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %13)
  br label %15

15:                                               ; preds = %6, %10
  %16 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !12

17:                                               ; preds = %4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %103, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @nbNodes, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @nbNodes, align 4
  %8 = load i32, ptr @dmax, align 4
  %9 = icmp eq i32 %0, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %5
  %11 = load ptr, ptr @workList, align 8
  %12 = load i32, ptr @listLength, align 4
  %13 = add nsw i32 %12, %0
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %11, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr @goal, align 4
  %19 = sub nsw i32 %17, %18
  %20 = call i32 @llvm.abs.i32(i32 %19, i1 true)
  %21 = load i32, ptr @best, align 4
  %22 = sub nsw i32 %21, %18
  %23 = call i32 @llvm.abs.i32(i32 %22, i1 true)
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %103

25:                                               ; preds = %10
  store i32 %17, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %26 = load ptr, ptr @solution, align 8
  %27 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %26, ptr noundef %27, i32 noundef %0)
  %28 = load i32, ptr @best, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %103

31:                                               ; preds = %25
  %32 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %32, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %103

33:                                               ; preds = %5
  %34 = sext i32 %0 to i64
  %35 = add nsw i32 %0, 1
  br label %36

36:                                               ; preds = %101, %33
  %.02 = phi i32 [ 1, %33 ], [ %102, %101 ]
  %37 = icmp sle i32 %.02, 4
  br i1 %37, label %38, label %103

38:                                               ; preds = %36
  %39 = icmp eq i32 %.02, 4
  %40 = icmp eq i32 %.02, 4
  %41 = icmp eq i32 %.02, 2
  br label %42

42:                                               ; preds = %99, %38
  %.04 = phi i32 [ 0, %38 ], [ %100, %99 ]
  %43 = load i32, ptr @listLength, align 4
  %44 = add nsw i32 %43, %0
  %45 = icmp slt i32 %.04, %44
  br i1 %45, label %46, label %101

46:                                               ; preds = %42
  %47 = shl i32 1, %.04
  %48 = and i32 %47, %1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %99, label %50

50:                                               ; preds = %46
  %51 = sext i32 %.04 to i64
  %52 = or i32 %1, %47
  br label %53

53:                                               ; preds = %97, %50
  %.03 = phi i32 [ 0, %50 ], [ %98, %97 ]
  %54 = icmp slt i32 %.03, %.04
  br i1 %54, label %55, label %99

55:                                               ; preds = %53
  %56 = shl i32 1, %.03
  %57 = and i32 %56, %1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %97, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @workList, align 8
  %61 = getelementptr inbounds i32, ptr %60, i64 %51
  %62 = load i32, ptr %61, align 4
  %63 = sext i32 %.03 to i64
  %64 = getelementptr inbounds i32, ptr %60, i64 %63
  %65 = load i32, ptr %64, align 4
  switch i32 %.02, label %69 [
    i32 3, label %66
    i32 4, label %66
  ]

66:                                               ; preds = %59, %59
  %67 = icmp eq i32 %62, 1
  %68 = icmp eq i32 %65, 1
  %or.cond = select i1 %67, i1 true, i1 %68
  br i1 %or.cond, label %97, label %69

69:                                               ; preds = %66, %59
  %70 = icmp eq i32 %62, 0
  %71 = icmp eq i32 %65, 0
  %or.cond1 = select i1 %70, i1 true, i1 %71
  br i1 %or.cond1, label %97, label %72

72:                                               ; preds = %69
  br i1 %40, label %73, label %.critedge

73:                                               ; preds = %72
  %74 = srem i32 %62, %65
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %97, label %76

76:                                               ; preds = %73
  %brmerge = or i1 %40, %41
  %77 = icmp slt i32 %62, %65
  %or.cond2 = select i1 %brmerge, i1 %77, i1 false
  br i1 %or.cond2, label %78, label %79

.critedge:                                        ; preds = %72
  %.old = icmp slt i32 %62, %65
  %or.cond3 = select i1 %41, i1 %.old, i1 false
  br i1 %or.cond3, label %78, label %79

78:                                               ; preds = %.critedge, %76
  br label %79

79:                                               ; preds = %76, %78, %.critedge
  %.01 = phi i32 [ %65, %78 ], [ %62, %76 ], [ %62, %.critedge ]
  %.0 = phi i32 [ %62, %78 ], [ %65, %76 ], [ %65, %.critedge ]
  %80 = or i32 %52, %56
  %81 = load ptr, ptr @combList, align 8
  %82 = getelementptr inbounds %struct.Comb, ptr %81, i64 %34
  store i32 %.01, ptr %82, align 4
  %83 = load ptr, ptr @combList, align 8
  %84 = getelementptr inbounds %struct.Comb, ptr %83, i64 %34
  %85 = getelementptr inbounds nuw %struct.Comb, ptr %84, i32 0, i32 1
  store i32 %.0, ptr %85, align 4
  %86 = load ptr, ptr @combList, align 8
  %87 = getelementptr inbounds %struct.Comb, ptr %86, i64 %34
  %88 = getelementptr inbounds nuw %struct.Comb, ptr %87, i32 0, i32 2
  store i32 %.02, ptr %88, align 4
  %89 = load ptr, ptr @combList, align 8
  %90 = getelementptr inbounds %struct.Comb, ptr %89, i64 %34
  %91 = call i32 @calculate(ptr noundef %90)
  %92 = load ptr, ptr @workList, align 8
  %93 = load i32, ptr @listLength, align 4
  %94 = add nsw i32 %93, %0
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %92, i64 %95
  store i32 %91, ptr %96, align 4
  call void @recSearch(i32 noundef %35, i32 noundef %80)
  br label %97

97:                                               ; preds = %73, %69, %66, %55, %79
  %98 = add nsw i32 %.03, 1
  br label %53, !llvm.loop !13

99:                                               ; preds = %53, %46
  %100 = add nsw i32 %.04, 1
  br label %42, !llvm.loop !14

101:                                              ; preds = %42
  %102 = add nsw i32 %.02, 1
  br label %36, !llvm.loop !15

103:                                              ; preds = %36, %10, %31, %25, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = load ptr, ptr @workList, align 8
  %3 = load i32, ptr @goal, align 4
  %best.promoted = load i32, ptr @best, align 4
  br label %4

4:                                                ; preds = %17, %0
  %5 = phi i32 [ %best.promoted, %0 ], [ %18, %17 ]
  %.0 = phi i32 [ 0, %0 ], [ %19, %17 ]
  %6 = icmp slt i32 %.0, %1
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = sext i32 %.0 to i64
  %9 = getelementptr inbounds i32, ptr %2, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sub nsw i32 %10, %3
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = sub nsw i32 %5, %3
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  store i32 %10, ptr @best, align 4
  br label %17

17:                                               ; preds = %7, %16
  %18 = phi i32 [ %10, %16 ], [ %5, %7 ]
  %19 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !16

20:                                               ; preds = %4
  %21 = load i32, ptr @best, align 4
  %22 = load i32, ptr @goal, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %42

26:                                               ; preds = %20
  store i32 1, ptr @dmax, align 4
  br label %27

27:                                               ; preds = %34, %26
  %28 = load i32, ptr @dmax, align 4
  %29 = load i32, ptr @listLength, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %.loopexit

31:                                               ; preds = %27
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %32 = load i32, ptr @stopSearch, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %.loopexit, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr @dmax, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @dmax, align 4
  br label %27, !llvm.loop !17

.loopexit:                                        ; preds = %27, %31
  %37 = load i32, ptr @stopSearch, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %.loopexit
  %40 = load ptr, ptr @solution, align 8
  %41 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %40, i32 noundef %41)
  br label %42

42:                                               ; preds = %39, %.loopexit, %24
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

5:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %14, %7 ]
  %6 = call i32 @getchar()
  switch i32 %6, label %7 [
    i32 -1, label %15
    i32 10, label %15
  ]

7:                                                ; preds = %5
  %8 = call ptr @__acrt_iob_func(i32 noundef 0)
  %9 = call i32 @ungetc(i32 noundef %6, ptr noundef %8)
  %10 = call ptr @__acrt_iob_func(i32 noundef 0)
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %11
  %13 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %10, ptr noundef @.str.2, ptr noundef %12)
  %14 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !18

15:                                               ; preds = %5, %5
  %.0.lcssa = phi i32 [ %.0, %5 ], [ %.0, %5 ]
  %16 = icmp eq i32 %.0.lcssa, 0
  %spec.select1 = select i1 %16, i32 4, i32 %.0.lcssa
  %17 = sub nsw i32 %spec.select1, 1
  store i32 %17, ptr @listLength, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr @goal, align 4
  %21 = load i32, ptr @listLength, align 4
  %22 = mul nsw i32 2, %21
  %23 = call ptr @newWorkList(i32 noundef %22)
  store ptr %23, ptr @workList, align 8
  %24 = load i32, ptr @listLength, align 4
  %25 = call ptr @newCombList(i32 noundef %24)
  store ptr %25, ptr @combList, align 8
  %26 = load i32, ptr @listLength, align 4
  %27 = call ptr @newCombList(i32 noundef %26)
  store ptr %27, ptr @solution, align 8
  %28 = load ptr, ptr @workList, align 8
  %29 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %28, ptr noundef %1, i32 noundef %29)
  %30 = load ptr, ptr @combList, align 8
  %31 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %30, i32 noundef %31)
  %32 = load ptr, ptr @solution, align 8
  %33 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %32, i32 noundef %33)
  %34 = load i32, ptr @listLength, align 4
  ret i32 %34
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
