; ModuleID = 'results\paper_full\McGill_exptree\round_001\output.ll'
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
  %8 = add nsw i32 %7, %5
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
  %18 = mul nsw i32 %17, %15
  br label %24

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sdiv i32 %20, %22
  br label %24

24:                                               ; preds = %19, %14, %9, %4, %1
  %.0 = phi i32 [ %23, %19 ], [ %8, %4 ], [ %13, %9 ], [ %18, %14 ], [ 0, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %35, %2
  %.0 = phi i32 [ 0, %2 ], [ %36, %35 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %37

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
  %36 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !11

37:                                               ; preds = %3
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

15:                                               ; preds = %10, %6
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
  br i1 %4, label %98, label %5

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
  %13 = add i32 %0, -1
  %14 = add i32 %13, %12
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
  br i1 %24, label %25, label %98

25:                                               ; preds = %10
  store i32 %17, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %26 = load ptr, ptr @solution, align 8
  %27 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %26, ptr noundef %27, i32 noundef %0)
  %28 = load i32, ptr @best, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %98

31:                                               ; preds = %25
  %32 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %32, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %98

33:                                               ; preds = %96, %5
  %.02 = phi i32 [ %97, %96 ], [ 1, %5 ]
  %34 = icmp sle i32 %.02, 4
  br i1 %34, label %35, label %98

35:                                               ; preds = %94, %33
  %.04 = phi i32 [ %95, %94 ], [ 0, %33 ]
  %36 = load i32, ptr @listLength, align 4
  %37 = add nsw i32 %36, %0
  %38 = icmp slt i32 %.04, %37
  br i1 %38, label %39, label %96

39:                                               ; preds = %35
  %40 = shl i32 1, %.04
  %41 = and i32 %40, %1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %94, label %43

43:                                               ; preds = %92, %39
  %.03 = phi i32 [ %93, %92 ], [ 0, %39 ]
  %44 = icmp slt i32 %.03, %.04
  br i1 %44, label %45, label %94

45:                                               ; preds = %43
  %46 = shl i32 1, %.03
  %47 = and i32 %46, %1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %92, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @workList, align 8
  %51 = sext i32 %.04 to i64
  %52 = getelementptr inbounds i32, ptr %50, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = sext i32 %.03 to i64
  %55 = getelementptr inbounds i32, ptr %50, i64 %54
  %56 = load i32, ptr %55, align 4
  switch i32 %.02, label %60 [
    i32 3, label %57
    i32 4, label %57
  ]

57:                                               ; preds = %49, %49
  %58 = icmp eq i32 %53, 1
  %59 = icmp eq i32 %56, 1
  %or.cond = select i1 %58, i1 true, i1 %59
  br i1 %or.cond, label %92, label %60

60:                                               ; preds = %57, %49
  %61 = icmp eq i32 %53, 0
  %62 = icmp eq i32 %56, 0
  %or.cond1 = select i1 %61, i1 true, i1 %62
  br i1 %or.cond1, label %92, label %63

63:                                               ; preds = %60
  %64 = icmp eq i32 %.02, 4
  br i1 %64, label %65, label %.critedge

65:                                               ; preds = %63
  %66 = srem i32 %53, %56
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %92, label %68

68:                                               ; preds = %65
  %.old3 = icmp slt i32 %53, %56
  br i1 %.old3, label %70, label %71

.critedge:                                        ; preds = %63
  %.old = icmp eq i32 %.02, 2
  %69 = icmp slt i32 %53, %56
  %or.cond4 = select i1 %.old, i1 %69, i1 false
  br i1 %or.cond4, label %70, label %71

70:                                               ; preds = %.critedge, %68
  br label %71

71:                                               ; preds = %70, %.critedge, %68
  %.01 = phi i32 [ %56, %70 ], [ %53, %68 ], [ %53, %.critedge ]
  %.0 = phi i32 [ %53, %70 ], [ %56, %68 ], [ %56, %.critedge ]
  %72 = or i32 %40, %1
  %73 = or i32 %72, %46
  %74 = load ptr, ptr @combList, align 8
  %75 = sext i32 %0 to i64
  %76 = getelementptr inbounds %struct.Comb, ptr %74, i64 %75
  store i32 %.01, ptr %76, align 4
  %77 = load ptr, ptr @combList, align 8
  %78 = getelementptr inbounds %struct.Comb, ptr %77, i64 %75
  %79 = getelementptr inbounds nuw %struct.Comb, ptr %78, i32 0, i32 1
  store i32 %.0, ptr %79, align 4
  %80 = load ptr, ptr @combList, align 8
  %81 = getelementptr inbounds %struct.Comb, ptr %80, i64 %75
  %82 = getelementptr inbounds nuw %struct.Comb, ptr %81, i32 0, i32 2
  store i32 %.02, ptr %82, align 4
  %83 = load ptr, ptr @combList, align 8
  %84 = getelementptr inbounds %struct.Comb, ptr %83, i64 %75
  %85 = call i32 @calculate(ptr noundef %84)
  %86 = load ptr, ptr @workList, align 8
  %87 = load i32, ptr @listLength, align 4
  %88 = add nsw i32 %87, %0
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %86, i64 %89
  store i32 %85, ptr %90, align 4
  %91 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %91, i32 noundef %73)
  br label %92

92:                                               ; preds = %71, %65, %60, %57, %45
  %93 = add nsw i32 %.03, 1
  br label %43, !llvm.loop !13

94:                                               ; preds = %43, %39
  %95 = add nsw i32 %.04, 1
  br label %35, !llvm.loop !14

96:                                               ; preds = %35
  %97 = add nsw i32 %.02, 1
  br label %33, !llvm.loop !15

98:                                               ; preds = %33, %31, %25, %10, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %.pre = load i32, ptr @listLength, align 4
  br label %1

1:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp slt i32 %.0, %.pre
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = load ptr, ptr @workList, align 8
  %5 = sext i32 %.0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @goal, align 4
  %9 = sub nsw i32 %7, %8
  %10 = call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = load i32, ptr @best, align 4
  %12 = sub nsw i32 %11, %8
  %13 = call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 %7, ptr @best, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !16

18:                                               ; preds = %1
  %19 = load i32, ptr @best, align 4
  %20 = load i32, ptr @goal, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %41

24:                                               ; preds = %18
  store i32 1, ptr @dmax, align 4
  br label %25

25:                                               ; preds = %32, %24
  %26 = phi i32 [ %.pre1, %32 ], [ %.pre, %24 ]
  %27 = phi i32 [ %34, %32 ], [ 1, %24 ]
  %28 = icmp slt i32 %27, %26
  br i1 %28, label %29, label %._crit_edge

._crit_edge:                                      ; preds = %25
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %35

29:                                               ; preds = %25
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %30 = load i32, ptr @stopSearch, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %split, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @dmax, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @dmax, align 4
  %.pre1 = load i32, ptr @listLength, align 4
  br label %25, !llvm.loop !17

split:                                            ; preds = %29
  br label %35

35:                                               ; preds = %split, %._crit_edge
  %36 = phi i32 [ %30, %split ], [ %.pre2, %._crit_edge ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load ptr, ptr @solution, align 8
  %40 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %39, i32 noundef %40)
  br label %41

41:                                               ; preds = %38, %35, %22
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
  %16 = icmp eq i32 %.0, 0
  %spec.select1 = select i1 %16, i32 4, i32 %.0
  %17 = sub nsw i32 %spec.select1, 1
  store i32 %17, ptr @listLength, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr @goal, align 4
  %21 = mul nsw i32 %17, 2
  %22 = call ptr @newWorkList(i32 noundef %21)
  store ptr %22, ptr @workList, align 8
  %23 = load i32, ptr @listLength, align 4
  %24 = call ptr @newCombList(i32 noundef %23)
  store ptr %24, ptr @combList, align 8
  %25 = load i32, ptr @listLength, align 4
  %26 = call ptr @newCombList(i32 noundef %25)
  store ptr %26, ptr @solution, align 8
  %27 = load ptr, ptr @workList, align 8
  %28 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %27, ptr noundef %1, i32 noundef %28)
  %29 = load ptr, ptr @combList, align 8
  %30 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %29, i32 noundef %30)
  %31 = load ptr, ptr @solution, align 8
  %32 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %31, i32 noundef %32)
  %33 = load i32, ptr @listLength, align 4
  ret i32 %33
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
