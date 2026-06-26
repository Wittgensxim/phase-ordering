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
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 4) #7
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  ret ptr %3

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str) #8
  call void @exit(i32 noundef 1) #9
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
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 12) #7
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  ret ptr %3

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1) #8
  call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initWorkList(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond2 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond2, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %8
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %5 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv3
  store i32 %6, ptr %7, align 4
  br label %8

8:                                                ; preds = %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %8
  br label %9

9:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond2 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond2, label %.lr.ph, label %7

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %.lr.ph, %6
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %4 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv3
  %5 = getelementptr inbounds nuw %struct.Comb, ptr %4, i32 0, i32 2
  store i32 0, ptr %5, align 4
  br label %6

6:                                                ; preds = %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %3, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %6
  br label %7

7:                                                ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond2 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond2, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %14
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %5 = getelementptr inbounds %struct.Comb, ptr %1, i64 %indvars.iv3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv3
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds nuw %struct.Comb, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %4, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %14
  br label %15

15:                                               ; preds = %._crit_edge, %3
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds %struct.Comb, ptr %0, i64 %16
  %18 = getelementptr inbounds nuw %struct.Comb, ptr %17, i32 0, i32 2
  store i32 0, ptr %18, align 4
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
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond2 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond2, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %.lr.ph, %34
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %34 ]
  %4 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv3
  %5 = load i32, ptr %4, align 4
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %5)
  %7 = getelementptr inbounds nuw %struct.Comb, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %19 [
    i32 0, label %9
    i32 1, label %11
    i32 2, label %13
    i32 3, label %15
    i32 4, label %17
  ]

9:                                                ; preds = %3
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %21

11:                                               ; preds = %3
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %21

13:                                               ; preds = %3
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %21

15:                                               ; preds = %3
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %21

17:                                               ; preds = %3
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %21

19:                                               ; preds = %3
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %8)
  br label %21

21:                                               ; preds = %19, %17, %15, %13, %11, %9
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @calculate(ptr noundef %4)
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %23, i32 noundef %24)
  %26 = sub nsw i32 %1, 1
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %indvars.iv3, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %33

31:                                               ; preds = %21
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %3, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %34
  br label %35

35:                                               ; preds = %._crit_edge, %2
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond2 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond2, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %14
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %5 = trunc nuw nsw i64 %indvars.iv3 to i32
  %6 = shl i32 1, %5
  %7 = and i32 %6, %2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv3
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %12)
  br label %14

14:                                               ; preds = %10, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %4, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %14
  br label %15

15:                                               ; preds = %._crit_edge, %3
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %118

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
  br label %118

36:                                               ; preds = %6
  br label %37

37:                                               ; preds = %36, %115
  %.0213 = phi i32 [ 1, %36 ], [ %116, %115 ]
  %38 = load i32, ptr @listLength, align 4
  %39 = add nsw i32 %38, %0
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 0, %40
  br i1 %41, label %.lr.ph11, label %114

.lr.ph11:                                         ; preds = %37
  br label %42

42:                                               ; preds = %.lr.ph11, %109
  %indvars.iv28 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next3, %109 ]
  %43 = trunc nuw nsw i64 %indvars.iv28 to i32
  %44 = shl i32 1, %43
  %45 = and i32 %44, %1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %109

48:                                               ; preds = %42
  %exitcond6 = icmp ne i64 0, %indvars.iv28
  br i1 %exitcond6, label %.lr.ph, label %108

.lr.ph:                                           ; preds = %48
  br label %49

49:                                               ; preds = %.lr.ph, %107
  %indvars.iv7 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %107 ]
  %50 = trunc nuw nsw i64 %indvars.iv7 to i32
  %51 = shl i32 1, %50
  %52 = and i32 %51, %1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %107

55:                                               ; preds = %49
  %56 = load ptr, ptr @workList, align 8
  %57 = getelementptr inbounds i32, ptr %56, i64 %indvars.iv28
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds i32, ptr %56, i64 %indvars.iv7
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %.0213, 3
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = icmp eq i32 %.0213, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %62, %55
  %65 = icmp eq i32 %58, 1
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = icmp eq i32 %60, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %66, %64
  br label %107

69:                                               ; preds = %66, %62
  %70 = icmp eq i32 %58, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = icmp eq i32 %60, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %71, %69
  br label %107

74:                                               ; preds = %71
  %75 = icmp eq i32 %.0213, 4
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  %77 = srem i32 %58, %60
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %107

80:                                               ; preds = %76, %74
  br i1 %75, label %83, label %81

81:                                               ; preds = %80
  %82 = icmp eq i32 %.0213, 2
  br i1 %82, label %83, label %86

83:                                               ; preds = %81, %80
  %84 = icmp slt i32 %58, %60
  br i1 %84, label %85, label %86

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85, %83, %81
  %.01 = phi i32 [ %60, %85 ], [ %58, %83 ], [ %58, %81 ]
  %.0 = phi i32 [ %58, %85 ], [ %60, %83 ], [ %60, %81 ]
  %87 = or i32 %1, %44
  %88 = or i32 %87, %51
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
  store i32 %.0213, ptr %97, align 4
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

107:                                              ; preds = %86, %79, %73, %68, %54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %indvars.iv28
  br i1 %exitcond, label %49, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %107
  br label %108

108:                                              ; preds = %._crit_edge, %48
  br label %109

109:                                              ; preds = %108, %47
  %indvars.iv29 = phi i64 [ %indvars.iv28, %108 ], [ %indvars.iv28, %47 ]
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv29, 1
  %110 = load i32, ptr @listLength, align 4
  %111 = add nsw i32 %110, %0
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %indvars.iv.next3, %112
  br i1 %113, label %42, label %._crit_edge12, !llvm.loop !14

._crit_edge12:                                    ; preds = %109
  br label %114

114:                                              ; preds = %._crit_edge12, %37
  br label %115

115:                                              ; preds = %114
  %116 = add nuw nsw i32 %.0213, 1
  %exitcond5 = icmp ne i32 %116, 5
  br i1 %exitcond5, label %37, label %117, !llvm.loop !15

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117, %35, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = sext i32 %1 to i64
  %3 = icmp slt i64 0, %2
  br i1 %3, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %0
  br label %4

4:                                                ; preds = %.lr.ph, %17
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %17 ]
  %5 = load ptr, ptr @workList, align 8
  %6 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv2
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @goal, align 4
  %9 = sub nsw i32 %7, %8
  %10 = call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = load i32, ptr @best, align 4
  %12 = sub nsw i32 %11, %8
  %13 = call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 %7, ptr @best, align 4
  br label %16

16:                                               ; preds = %15, %4
  br label %17

17:                                               ; preds = %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1
  %18 = load i32, ptr @listLength, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %indvars.iv.next, %19
  br i1 %20, label %4, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %17
  br label %21

21:                                               ; preds = %._crit_edge, %0
  %22 = load i32, ptr @best, align 4
  %23 = load i32, ptr @goal, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %48

27:                                               ; preds = %21
  store i32 1, ptr @dmax, align 4
  %28 = load i32, ptr @dmax, align 4
  %29 = load i32, ptr @listLength, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %.lr.ph4, label %.loopexit

.lr.ph4:                                          ; preds = %27
  br label %31

31:                                               ; preds = %.lr.ph4, %36
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %32 = load i32, ptr @stopSearch, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %42

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35
  %37 = load i32, ptr @dmax, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @dmax, align 4
  %39 = load i32, ptr @dmax, align 4
  %40 = load i32, ptr @listLength, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %31, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %36
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %27
  br label %42

42:                                               ; preds = %.loopexit, %34
  %43 = load i32, ptr @stopSearch, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load ptr, ptr @solution, align 8
  %47 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %46, i32 noundef %47)
  br label %48

48:                                               ; preds = %45, %42, %25
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
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 0, %0 ]
  %6 = call i32 @getchar()
  %7 = icmp ne i32 %6, 10
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = icmp ne i32 %6, -1
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i1 [ false, %5 ], [ %9, %8 ]
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = call ptr @__acrt_iob_func(i32 noundef 0)
  %14 = call i32 @ungetc(i32 noundef %6, ptr noundef %13)
  %15 = call ptr @__acrt_iob_func(i32 noundef 0)
  %16 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %indvars.iv
  %17 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %15, ptr noundef @.str.2, ptr noundef %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !18

18:                                               ; preds = %10
  %.0.lcssa.wide = phi i64 [ %indvars.iv, %10 ]
  %19 = trunc nuw nsw i64 %.0.lcssa.wide to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21, %18
  %.1 = phi i32 [ 4, %21 ], [ %19, %18 ]
  %23 = sub nsw i32 %.1, 1
  store i32 %23, ptr @listLength, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr @goal, align 4
  %27 = load i32, ptr @listLength, align 4
  %28 = mul nsw i32 2, %27
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { allocsize(0,1) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
