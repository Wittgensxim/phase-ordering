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

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %12, %6 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  store i32 %9, ptr %11, align 4
  %12 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !7

13:                                               ; preds = %4
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
  %.0 = phi i32 [ 0, %3 ], [ %28, %6 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %29

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
  %28 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !10

29:                                               ; preds = %4
  %30 = sext i32 %2 to i64
  %31 = getelementptr inbounds %struct.Comb, ptr %0, i64 %30
  %32 = getelementptr inbounds nuw %struct.Comb, ptr %31, i32 0, i32 2
  store i32 0, ptr %32, align 4
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

3:                                                ; preds = %46, %2
  %.0 = phi i32 [ 0, %2 ], [ %47, %46 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %48

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

46:                                               ; preds = %42, %44
  %47 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !11

48:                                               ; preds = %3
  %49 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br i1 %4, label %121, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @nbNodes, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @nbNodes, align 4
  %8 = load i32, ptr @dmax, align 4
  %9 = icmp eq i32 %0, %8
  br i1 %9, label %10, label %41

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
  %22 = load i32, ptr @goal, align 4
  %23 = sub nsw i32 %21, %22
  %24 = call i32 @llvm.abs.i32(i32 %23, i1 true)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %121

26:                                               ; preds = %10
  %27 = load ptr, ptr @workList, align 8
  %28 = load i32, ptr @listLength, align 4
  %29 = add nsw i32 %28, %0
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %27, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %34 = load ptr, ptr @solution, align 8
  %35 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %34, ptr noundef %35, i32 noundef %0)
  %36 = load i32, ptr @best, align 4
  %37 = load i32, ptr @goal, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %121

39:                                               ; preds = %26
  %40 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %40, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %121

41:                                               ; preds = %5
  br label %42

42:                                               ; preds = %119, %41
  %.09 = phi i32 [ 1, %41 ], [ %120, %119 ]
  %43 = icmp sle i32 %.09, 4
  br i1 %43, label %44, label %121

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %117, %44
  %.011 = phi i32 [ 0, %44 ], [ %118, %117 ]
  %46 = load i32, ptr @listLength, align 4
  %47 = add nsw i32 %46, %0
  %48 = icmp slt i32 %.011, %47
  br i1 %48, label %49, label %119

49:                                               ; preds = %45
  %50 = shl i32 1, %.011
  %51 = and i32 %50, %1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %117, label %53

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %115, %53
  %.010 = phi i32 [ 0, %53 ], [ %116, %115 ]
  %55 = icmp slt i32 %.010, %.011
  br i1 %55, label %56, label %117

56:                                               ; preds = %54
  %57 = shl i32 1, %.010
  %58 = and i32 %57, %1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %115, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr @workList, align 8
  %62 = sext i32 %.011 to i64
  %63 = getelementptr inbounds i32, ptr %61, i64 %62
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr @workList, align 8
  %66 = sext i32 %.010 to i64
  %67 = getelementptr inbounds i32, ptr %65, i64 %66
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %.09, 3
  %70 = icmp eq i32 %.09, 4
  %or.cond = select i1 %69, i1 true, i1 %70
  br i1 %or.cond, label %71, label %74

71:                                               ; preds = %60
  %72 = icmp eq i32 %64, 1
  %73 = icmp eq i32 %68, 1
  %or.cond3 = select i1 %72, i1 true, i1 %73
  br i1 %or.cond3, label %115, label %74

74:                                               ; preds = %71, %60
  %75 = icmp eq i32 %64, 0
  %76 = icmp eq i32 %68, 0
  %or.cond5 = select i1 %75, i1 true, i1 %76
  br i1 %or.cond5, label %115, label %77

77:                                               ; preds = %74
  %78 = icmp eq i32 %.09, 4
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = srem i32 %64, %68
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %115, label %82

82:                                               ; preds = %79, %77
  %83 = icmp eq i32 %.09, 4
  %84 = icmp eq i32 %.09, 2
  %or.cond7 = select i1 %83, i1 true, i1 %84
  br i1 %or.cond7, label %85, label %88

85:                                               ; preds = %82
  %86 = icmp slt i32 %64, %68
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %82, %87, %85
  %.08 = phi i32 [ %68, %87 ], [ %64, %85 ], [ %64, %82 ]
  %.0 = phi i32 [ %64, %87 ], [ %68, %85 ], [ %68, %82 ]
  %89 = shl i32 1, %.011
  %90 = or i32 %1, %89
  %91 = shl i32 1, %.010
  %92 = or i32 %90, %91
  %93 = load ptr, ptr @combList, align 8
  %94 = sext i32 %0 to i64
  %95 = getelementptr inbounds %struct.Comb, ptr %93, i64 %94
  %96 = getelementptr inbounds nuw %struct.Comb, ptr %95, i32 0, i32 0
  store i32 %.08, ptr %96, align 4
  %97 = load ptr, ptr @combList, align 8
  %98 = sext i32 %0 to i64
  %99 = getelementptr inbounds %struct.Comb, ptr %97, i64 %98
  %100 = getelementptr inbounds nuw %struct.Comb, ptr %99, i32 0, i32 1
  store i32 %.0, ptr %100, align 4
  %101 = load ptr, ptr @combList, align 8
  %102 = sext i32 %0 to i64
  %103 = getelementptr inbounds %struct.Comb, ptr %101, i64 %102
  %104 = getelementptr inbounds nuw %struct.Comb, ptr %103, i32 0, i32 2
  store i32 %.09, ptr %104, align 4
  %105 = load ptr, ptr @combList, align 8
  %106 = sext i32 %0 to i64
  %107 = getelementptr inbounds %struct.Comb, ptr %105, i64 %106
  %108 = call i32 @calculate(ptr noundef %107)
  %109 = load ptr, ptr @workList, align 8
  %110 = load i32, ptr @listLength, align 4
  %111 = add nsw i32 %110, %0
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %109, i64 %112
  store i32 %108, ptr %113, align 4
  %114 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %114, i32 noundef %92)
  br label %115

115:                                              ; preds = %79, %74, %71, %56, %88
  %116 = add nsw i32 %.010, 1
  br label %54, !llvm.loop !13

117:                                              ; preds = %54, %49
  %118 = add nsw i32 %.011, 1
  br label %45, !llvm.loop !14

119:                                              ; preds = %45
  %120 = add nsw i32 %.09, 1
  br label %42, !llvm.loop !15

121:                                              ; preds = %42, %10, %39, %26, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  br label %1

1:                                                ; preds = %22, %0
  %.0 = phi i32 [ 0, %0 ], [ %23, %22 ]
  %2 = load i32, ptr @listLength, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %24

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

22:                                               ; preds = %4, %17
  %23 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !16

24:                                               ; preds = %1
  %25 = load i32, ptr @best, align 4
  %26 = load i32, ptr @goal, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %47

30:                                               ; preds = %24
  store i32 1, ptr @dmax, align 4
  br label %31

31:                                               ; preds = %38, %30
  %32 = load i32, ptr @dmax, align 4
  %33 = load i32, ptr @listLength, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %36 = load i32, ptr @stopSearch, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @dmax, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr @dmax, align 4
  br label %31, !llvm.loop !17

41:                                               ; preds = %35, %31
  %42 = load i32, ptr @stopSearch, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr @solution, align 8
  %46 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %45, i32 noundef %46)
  br label %47

47:                                               ; preds = %44, %41, %28
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

6:                                                ; preds = %11, %0
  %.0 = phi i32 [ 0, %0 ], [ %18, %11 ]
  %7 = call i32 @getchar()
  %8 = icmp ne i32 %7, 10
  %9 = icmp ne i32 %7, -1
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = call ptr @__acrt_iob_func(i32 noundef 0)
  %13 = call i32 @ungetc(i32 noundef %7, ptr noundef %12)
  %14 = call ptr @__acrt_iob_func(i32 noundef 0)
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %15
  %17 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %14, ptr noundef @.str.2, ptr noundef %16)
  %18 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !18

19:                                               ; preds = %6
  %20 = icmp eq i32 %.0, 0
  %spec.store.select = select i1 %20, i32 4, i32 %.0
  %21 = sub nsw i32 %spec.store.select, 1
  store i32 %21, ptr @listLength, align 4
  %22 = load i32, ptr @listLength, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr @goal, align 4
  %26 = load i32, ptr @listLength, align 4
  %27 = mul nsw i32 2, %26
  %28 = call ptr @newWorkList(i32 noundef %27)
  store ptr %28, ptr @workList, align 8
  %29 = load i32, ptr @listLength, align 4
  %30 = call ptr @newCombList(i32 noundef %29)
  store ptr %30, ptr @combList, align 8
  %31 = load i32, ptr @listLength, align 4
  %32 = call ptr @newCombList(i32 noundef %31)
  store ptr %32, ptr @solution, align 8
  %33 = load ptr, ptr @workList, align 8
  %34 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  %35 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %33, ptr noundef %34, i32 noundef %35)
  %36 = load ptr, ptr @combList, align 8
  %37 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %36, i32 noundef %37)
  %38 = load ptr, ptr @solution, align 8
  %39 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %38, i32 noundef %39)
  %40 = load i32, ptr @listLength, align 4
  ret i32 %40
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
