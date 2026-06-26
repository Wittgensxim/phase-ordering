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
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %11
  %.0 = phi i32 [ 0, %.lr.ph ], [ %12, %11 ]
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds i32, ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %.0 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  store i32 %8, ptr %10, align 4
  br label %11

11:                                               ; preds = %5
  %12 = add nsw i32 %.0, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  br label %14

14:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 0, %1
  br i1 %3, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %8
  %.0 = phi i32 [ 0, %.lr.ph ], [ %9, %8 ]
  %5 = sext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.Comb, ptr %0, i64 %5
  %7 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 2
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %.0, 1
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %4, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %8
  br label %11

11:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %27
  %.0 = phi i32 [ 0, %.lr.ph ], [ %28, %27 ]
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.Comb, ptr %1, i64 %6
  %8 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.Comb, ptr %0, i64 %10
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 0
  store i32 %9, ptr %12, align 4
  %13 = sext i32 %.0 to i64
  %14 = getelementptr inbounds %struct.Comb, ptr %1, i64 %13
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %.0 to i64
  %18 = getelementptr inbounds %struct.Comb, ptr %0, i64 %17
  %19 = getelementptr inbounds nuw %struct.Comb, ptr %18, i32 0, i32 1
  store i32 %16, ptr %19, align 4
  %20 = sext i32 %.0 to i64
  %21 = getelementptr inbounds %struct.Comb, ptr %1, i64 %20
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %.0 to i64
  %25 = getelementptr inbounds %struct.Comb, ptr %0, i64 %24
  %26 = getelementptr inbounds nuw %struct.Comb, ptr %25, i32 0, i32 2
  store i32 %23, ptr %26, align 4
  br label %27

27:                                               ; preds = %5
  %28 = add nsw i32 %.0, 1
  %29 = icmp slt i32 %28, %2
  br i1 %29, label %5, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %27
  br label %30

30:                                               ; preds = %._crit_edge, %3
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
  %3 = icmp slt i32 0, %1
  br i1 %3, label %.lr.ph, label %49

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %46
  %.0 = phi i32 [ 0, %.lr.ph ], [ %47, %46 ]
  %5 = sext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.Comb, ptr %0, i64 %5
  %7 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %8)
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.Comb, ptr %0, i64 %10
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %24 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %18
    i32 3, label %20
    i32 4, label %22
  ]

14:                                               ; preds = %4
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %30

16:                                               ; preds = %4
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %30

18:                                               ; preds = %4
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %30

20:                                               ; preds = %4
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %30

22:                                               ; preds = %4
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %30

24:                                               ; preds = %4
  %25 = sext i32 %.0 to i64
  %26 = getelementptr inbounds %struct.Comb, ptr %0, i64 %25
  %27 = getelementptr inbounds nuw %struct.Comb, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %28)
  br label %30

30:                                               ; preds = %24, %22, %20, %18, %16, %14
  %31 = sext i32 %.0 to i64
  %32 = getelementptr inbounds %struct.Comb, ptr %0, i64 %31
  %33 = getelementptr inbounds nuw %struct.Comb, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %.0 to i64
  %36 = getelementptr inbounds %struct.Comb, ptr %0, i64 %35
  %37 = call i32 @calculate(ptr noundef %36)
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %34, i32 noundef %37)
  %39 = sub nsw i32 %1, 1
  %40 = icmp slt i32 %.0, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %45

43:                                               ; preds = %30
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %.0, 1
  %48 = icmp slt i32 %47, %1
  br i1 %48, label %4, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %46
  br label %49

49:                                               ; preds = %._crit_edge, %2
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %1
  br i1 %4, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %15
  %.0 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %6 = shl i32 1, %.0
  %7 = and i32 %6, %2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %15

10:                                               ; preds = %5
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %13)
  br label %15

15:                                               ; preds = %10, %9
  %16 = add nsw i32 %.0, 1
  %17 = icmp slt i32 %16, %1
  br i1 %17, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %3
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %138

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
  br label %138

44:                                               ; preds = %6
  %45 = icmp sle i32 1, 4
  br i1 %45, label %.lr.ph5, label %137

.lr.ph5:                                          ; preds = %44
  br label %46

46:                                               ; preds = %.lr.ph5, %134
  %.08 = phi i32 [ 1, %.lr.ph5 ], [ %135, %134 ]
  %47 = load i32, ptr @listLength, align 4
  %48 = add nsw i32 %47, %0
  %49 = icmp slt i32 0, %48
  br i1 %49, label %.lr.ph2, label %133

.lr.ph2:                                          ; preds = %46
  br label %50

50:                                               ; preds = %.lr.ph2, %128
  %.010 = phi i32 [ 0, %.lr.ph2 ], [ %129, %128 ]
  %51 = shl i32 1, %.010
  %52 = and i32 %51, %1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %128

55:                                               ; preds = %50
  %56 = icmp slt i32 0, %.010
  br i1 %56, label %.lr.ph, label %127

.lr.ph:                                           ; preds = %55
  br label %57

57:                                               ; preds = %.lr.ph, %124
  %.09 = phi i32 [ 0, %.lr.ph ], [ %125, %124 ]
  %58 = shl i32 1, %.09
  %59 = and i32 %58, %1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %124

62:                                               ; preds = %57
  %63 = load ptr, ptr @workList, align 8
  %64 = sext i32 %.010 to i64
  %65 = getelementptr inbounds i32, ptr %63, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr @workList, align 8
  %68 = sext i32 %.09 to i64
  %69 = getelementptr inbounds i32, ptr %67, i64 %68
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %.08, 3
  br i1 %71, label %74, label %72

72:                                               ; preds = %62
  %73 = icmp eq i32 %.08, 4
  br i1 %73, label %74, label %79

74:                                               ; preds = %72, %62
  %75 = icmp eq i32 %66, 1
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %77 = icmp eq i32 %70, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %76, %74
  br label %124

79:                                               ; preds = %76, %72
  %80 = icmp eq i32 %66, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %79
  %82 = icmp eq i32 %70, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %81, %79
  br label %124

84:                                               ; preds = %81
  %85 = icmp eq i32 %.08, 4
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = srem i32 %66, %70
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %124

90:                                               ; preds = %86, %84
  %91 = icmp eq i32 %.08, 4
  br i1 %91, label %94, label %92

92:                                               ; preds = %90
  %93 = icmp eq i32 %.08, 2
  br i1 %93, label %94, label %97

94:                                               ; preds = %92, %90
  %95 = icmp slt i32 %66, %70
  br i1 %95, label %96, label %97

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %94, %92
  %.07 = phi i32 [ %70, %96 ], [ %66, %94 ], [ %66, %92 ]
  %.0 = phi i32 [ %66, %96 ], [ %70, %94 ], [ %70, %92 ]
  %98 = shl i32 1, %.010
  %99 = or i32 %1, %98
  %100 = shl i32 1, %.09
  %101 = or i32 %99, %100
  %102 = load ptr, ptr @combList, align 8
  %103 = sext i32 %0 to i64
  %104 = getelementptr inbounds %struct.Comb, ptr %102, i64 %103
  %105 = getelementptr inbounds nuw %struct.Comb, ptr %104, i32 0, i32 0
  store i32 %.07, ptr %105, align 4
  %106 = load ptr, ptr @combList, align 8
  %107 = sext i32 %0 to i64
  %108 = getelementptr inbounds %struct.Comb, ptr %106, i64 %107
  %109 = getelementptr inbounds nuw %struct.Comb, ptr %108, i32 0, i32 1
  store i32 %.0, ptr %109, align 4
  %110 = load ptr, ptr @combList, align 8
  %111 = sext i32 %0 to i64
  %112 = getelementptr inbounds %struct.Comb, ptr %110, i64 %111
  %113 = getelementptr inbounds nuw %struct.Comb, ptr %112, i32 0, i32 2
  store i32 %.08, ptr %113, align 4
  %114 = load ptr, ptr @combList, align 8
  %115 = sext i32 %0 to i64
  %116 = getelementptr inbounds %struct.Comb, ptr %114, i64 %115
  %117 = call i32 @calculate(ptr noundef %116)
  %118 = load ptr, ptr @workList, align 8
  %119 = load i32, ptr @listLength, align 4
  %120 = add nsw i32 %119, %0
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, ptr %118, i64 %121
  store i32 %117, ptr %122, align 4
  %123 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %123, i32 noundef %101)
  br label %124

124:                                              ; preds = %97, %89, %83, %78, %61
  %125 = add nsw i32 %.09, 1
  %126 = icmp slt i32 %125, %.010
  br i1 %126, label %57, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %124
  br label %127

127:                                              ; preds = %._crit_edge, %55
  br label %128

128:                                              ; preds = %127, %54
  %129 = add nsw i32 %.010, 1
  %130 = load i32, ptr @listLength, align 4
  %131 = add nsw i32 %130, %0
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %50, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %128
  br label %133

133:                                              ; preds = %._crit_edge3, %46
  br label %134

134:                                              ; preds = %133
  %135 = add nsw i32 %.08, 1
  %136 = icmp sle i32 %135, 4
  br i1 %136, label %46, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %134
  br label %137

137:                                              ; preds = %._crit_edge6, %44
  br label %138

138:                                              ; preds = %137, %43, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = icmp slt i32 0, %1
  br i1 %2, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %22
  %.0 = phi i32 [ 0, %.lr.ph ], [ %23, %22 ]
  %4 = load ptr, ptr @workList, align 8
  %5 = sext i32 %.0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @goal, align 4
  %9 = sub nsw i32 %7, %8
  %10 = call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = load i32, ptr @best, align 4
  %12 = load i32, ptr @goal, align 4
  %13 = sub nsw i32 %11, %12
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load ptr, ptr @workList, align 8
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr @best, align 4
  br label %21

21:                                               ; preds = %16, %3
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.0, 1
  %24 = load i32, ptr @listLength, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %3, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %22
  br label %26

26:                                               ; preds = %._crit_edge, %0
  %27 = load i32, ptr @best, align 4
  %28 = load i32, ptr @goal, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %53

32:                                               ; preds = %26
  store i32 1, ptr @dmax, align 4
  %33 = load i32, ptr @dmax, align 4
  %34 = load i32, ptr @listLength, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %32
  br label %36

36:                                               ; preds = %.lr.ph2, %41
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %37 = load i32, ptr @stopSearch, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %47

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr @dmax, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @dmax, align 4
  %44 = load i32, ptr @dmax, align 4
  %45 = load i32, ptr @listLength, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %36, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %41
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %32
  br label %47

47:                                               ; preds = %.loopexit, %39
  %48 = load i32, ptr @stopSearch, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load ptr, ptr @solution, align 8
  %52 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %51, i32 noundef %52)
  br label %53

53:                                               ; preds = %50, %47, %30
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
  %22 = icmp eq i32 %.0, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23, %21
  %.1 = phi i32 [ 4, %23 ], [ %.0, %21 ]
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
