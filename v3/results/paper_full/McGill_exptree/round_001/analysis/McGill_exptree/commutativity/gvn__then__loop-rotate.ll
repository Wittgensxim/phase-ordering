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
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %.01 = phi i32 [ 0, %.lr.ph ], [ %10, %5 ]
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds i32, ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds i32, ptr %0, i64 %6
  store i32 %8, ptr %9, align 4
  %10 = add nsw i32 %.01, 1
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %5
  br label %12

12:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 0, %1
  br i1 %3, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %.01 = phi i32 [ 0, %.lr.ph ], [ %8, %4 ]
  %5 = sext i32 %.01 to i64
  %6 = getelementptr inbounds %struct.Comb, ptr %0, i64 %5
  %7 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %8 = add nsw i32 %.01, 1
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %4, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %4
  br label %10

10:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %.01 = phi i32 [ 0, %.lr.ph ], [ %16, %5 ]
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds %struct.Comb, ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.Comb, ptr %0, i64 %6
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %9, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %9, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = add nsw i32 %.01, 1
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %5, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %5
  br label %18

18:                                               ; preds = %._crit_edge, %3
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
  %3 = icmp slt i32 0, %1
  br i1 %3, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %34
  %.01 = phi i32 [ 0, %.lr.ph ], [ %35, %34 ]
  %5 = sext i32 %.01 to i64
  %6 = getelementptr inbounds %struct.Comb, ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %7)
  %9 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %21 [
    i32 0, label %11
    i32 1, label %13
    i32 2, label %15
    i32 3, label %17
    i32 4, label %19
  ]

11:                                               ; preds = %4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %23

13:                                               ; preds = %4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %23

15:                                               ; preds = %4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %23

17:                                               ; preds = %4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %23

19:                                               ; preds = %4
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %23

21:                                               ; preds = %4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %10)
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13, %11
  %24 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = call i32 @calculate(ptr noundef %6)
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %25, i32 noundef %26)
  %28 = sub nsw i32 %1, 1
  %29 = icmp slt i32 %.01, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %34

32:                                               ; preds = %23
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %34

34:                                               ; preds = %32, %30
  %35 = add nsw i32 %.01, 1
  %36 = icmp slt i32 %35, %1
  br i1 %36, label %4, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %34
  br label %37

37:                                               ; preds = %._crit_edge, %2
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  %.01 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %6 = shl i32 1, %.01
  %7 = and i32 %6, %2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %15

10:                                               ; preds = %5
  %11 = sext i32 %.01 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %13)
  br label %15

15:                                               ; preds = %10, %9
  %16 = add nsw i32 %.01, 1
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

37:                                               ; preds = %36, %116
  %.026 = phi i32 [ 1, %36 ], [ %117, %116 ]
  %38 = load i32, ptr @listLength, align 4
  %39 = add nsw i32 %38, %0
  %40 = icmp slt i32 0, %39
  br i1 %40, label %.lr.ph4, label %116

.lr.ph4:                                          ; preds = %37
  br label %41

41:                                               ; preds = %.lr.ph4, %111
  %.042 = phi i32 [ 0, %.lr.ph4 ], [ %112, %111 ]
  %42 = shl i32 1, %.042
  %43 = and i32 %42, %1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %111

46:                                               ; preds = %41
  %47 = icmp slt i32 0, %.042
  br i1 %47, label %.lr.ph, label %110

.lr.ph:                                           ; preds = %46
  br label %48

48:                                               ; preds = %.lr.ph, %107
  %.031 = phi i32 [ 0, %.lr.ph ], [ %108, %107 ]
  %49 = shl i32 1, %.031
  %50 = and i32 %49, %1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %107

53:                                               ; preds = %48
  %54 = load ptr, ptr @workList, align 8
  %55 = sext i32 %.042 to i64
  %56 = getelementptr inbounds i32, ptr %54, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = sext i32 %.031 to i64
  %59 = getelementptr inbounds i32, ptr %54, i64 %58
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %.026, 3
  br i1 %61, label %64, label %62

62:                                               ; preds = %53
  %63 = icmp eq i32 %.026, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %62, %53
  %65 = icmp eq i32 %57, 1
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = icmp eq i32 %60, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %66, %64
  br label %107

69:                                               ; preds = %66, %62
  %70 = icmp eq i32 %57, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = icmp eq i32 %60, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %71, %69
  br label %107

74:                                               ; preds = %71
  %75 = icmp eq i32 %.026, 4
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  %77 = srem i32 %57, %60
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %107

80:                                               ; preds = %76, %74
  br i1 %75, label %83, label %81

81:                                               ; preds = %80
  %82 = icmp eq i32 %.026, 2
  br i1 %82, label %83, label %86

83:                                               ; preds = %81, %80
  %84 = icmp slt i32 %57, %60
  br i1 %84, label %85, label %86

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85, %83, %81
  %.01 = phi i32 [ %60, %85 ], [ %57, %83 ], [ %57, %81 ]
  %.0 = phi i32 [ %57, %85 ], [ %60, %83 ], [ %60, %81 ]
  %87 = or i32 %1, %42
  %88 = or i32 %87, %49
  %89 = load ptr, ptr @combList, align 8
  %90 = sext i32 %0 to i64
  %91 = getelementptr inbounds %struct.Comb, ptr %89, i64 %90
  store i32 %.01, ptr %91, align 4
  %92 = load ptr, ptr @combList, align 8
  %93 = getelementptr inbounds %struct.Comb, ptr %92, i64 %90
  %94 = getelementptr inbounds nuw %struct.Comb, ptr %93, i32 0, i32 1
  store i32 %.0, ptr %94, align 4
  %95 = load ptr, ptr @combList, align 8
  %96 = getelementptr inbounds %struct.Comb, ptr %95, i64 %90
  %97 = getelementptr inbounds nuw %struct.Comb, ptr %96, i32 0, i32 2
  store i32 %.026, ptr %97, align 4
  %98 = load ptr, ptr @combList, align 8
  %99 = getelementptr inbounds %struct.Comb, ptr %98, i64 %90
  %100 = call i32 @calculate(ptr noundef %99)
  %101 = load ptr, ptr @workList, align 8
  %102 = load i32, ptr @listLength, align 4
  %103 = add nsw i32 %102, %0
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, ptr %101, i64 %104
  store i32 %100, ptr %105, align 4
  %106 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %106, i32 noundef %88)
  br label %107

107:                                              ; preds = %86, %79, %73, %68, %52
  %108 = add nsw i32 %.031, 1
  %109 = icmp slt i32 %108, %.042
  br i1 %109, label %48, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %107
  br label %110

110:                                              ; preds = %._crit_edge, %46
  br label %111

111:                                              ; preds = %110, %45
  %112 = add nsw i32 %.042, 1
  %113 = load i32, ptr @listLength, align 4
  %114 = add nsw i32 %113, %0
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %41, label %._crit_edge5, !llvm.loop !14

._crit_edge5:                                     ; preds = %111
  br label %116

116:                                              ; preds = %._crit_edge5, %37
  %117 = add nsw i32 %.026, 1
  %118 = icmp sle i32 %117, 4
  br i1 %118, label %37, label %119, !llvm.loop !15

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %119, %35, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %.pre = load i32, ptr @listLength, align 4
  %1 = icmp slt i32 0, %.pre
  br i1 %1, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %15
  %.03 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %3 = load ptr, ptr @workList, align 8
  %4 = sext i32 %.03 to i64
  %5 = getelementptr inbounds i32, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr @goal, align 4
  %8 = sub nsw i32 %6, %7
  %9 = call i32 @llvm.abs.i32(i32 %8, i1 true)
  %10 = load i32, ptr @best, align 4
  %11 = sub nsw i32 %10, %7
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 %6, ptr @best, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = add nsw i32 %.03, 1
  %17 = icmp slt i32 %16, %.pre
  br i1 %17, label %2, label %._crit_edge5, !llvm.loop !16

._crit_edge5:                                     ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge5, %0
  %19 = load i32, ptr @best, align 4
  %20 = load i32, ptr @goal, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %40

24:                                               ; preds = %18
  store i32 1, ptr @dmax, align 4
  %25 = icmp slt i32 1, %.pre
  br i1 %25, label %.lr.ph7, label %._crit_edge

.lr.ph7:                                          ; preds = %24
  br label %26

.._crit_edge_crit_edge:                           ; preds = %30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %24
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %34

26:                                               ; preds = %.lr.ph7, %30
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %27 = load i32, ptr @stopSearch, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  %.lcssa = phi i32 [ %27, %26 ]
  br label %34

30:                                               ; preds = %26
  %31 = load i32, ptr @dmax, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr @dmax, align 4
  %.pre1 = load i32, ptr @listLength, align 4
  %33 = icmp slt i32 %32, %.pre1
  br i1 %33, label %26, label %.._crit_edge_crit_edge, !llvm.loop !17

34:                                               ; preds = %._crit_edge, %29
  %35 = phi i32 [ %.pre2, %._crit_edge ], [ %.lcssa, %29 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load ptr, ptr @solution, align 8
  %39 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %38, i32 noundef %39)
  br label %40

40:                                               ; preds = %37, %34, %22
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
  %.0.lcssa = phi i32 [ %.0, %10 ]
  %21 = icmp eq i32 %.0.lcssa, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %20
  %.1 = phi i32 [ 4, %22 ], [ %.0.lcssa, %20 ]
  %24 = sub nsw i32 %.1, 1
  store i32 %24, ptr @listLength, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr @goal, align 4
  %28 = mul nsw i32 2, %24
  %29 = call ptr @newWorkList(i32 noundef %28)
  store ptr %29, ptr @workList, align 8
  %30 = load i32, ptr @listLength, align 4
  %31 = call ptr @newCombList(i32 noundef %30)
  store ptr %31, ptr @combList, align 8
  %32 = load i32, ptr @listLength, align 4
  %33 = call ptr @newCombList(i32 noundef %32)
  store ptr %33, ptr @solution, align 8
  %34 = load ptr, ptr @workList, align 8
  %35 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %34, ptr noundef %1, i32 noundef %35)
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
