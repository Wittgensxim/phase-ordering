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

24:                                               ; preds = %19, %14, %9, %4, %1
  %.0 = phi i32 [ %23, %19 ], [ %8, %4 ], [ %13, %9 ], [ %18, %14 ], [ 0, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 0, %1
  br i1 %3, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %2
  %4 = sub nsw i32 %1, 1
  br label %5

5:                                                ; preds = %.lr.ph, %34
  %.01 = phi i32 [ 0, %.lr.ph ], [ %35, %34 ]
  %6 = sext i32 %.01 to i64
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
  %29 = icmp slt i32 %.01, %4
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %34

32:                                               ; preds = %24
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %34

34:                                               ; preds = %32, %30
  %35 = add nsw i32 %.01, 1
  %36 = icmp slt i32 %35, %1
  br i1 %36, label %5, label %._crit_edge, !llvm.loop !11

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
  br i1 %4, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %14
  %.01 = phi i32 [ 0, %.lr.ph ], [ %15, %14 ]
  %6 = shl i32 1, %.01
  %7 = and i32 %6, %2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = sext i32 %.01 to i64
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %12)
  br label %14

14:                                               ; preds = %9, %5
  %15 = add nsw i32 %.01, 1
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %14
  br label %17

17:                                               ; preds = %._crit_edge, %3
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %99, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @nbNodes, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @nbNodes, align 4
  %8 = load i32, ptr @dmax, align 4
  %9 = icmp eq i32 %0, %8
  br i1 %9, label %12, label %.preheader2

.preheader2:                                      ; preds = %5
  %10 = sext i32 %0 to i64
  %11 = add nsw i32 %0, 1
  br label %.preheader1

12:                                               ; preds = %5
  %13 = load ptr, ptr @workList, align 8
  %14 = load i32, ptr @listLength, align 4
  %15 = add nsw i32 %14, %0
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %13, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr @goal, align 4
  %21 = sub nsw i32 %19, %20
  %22 = call i32 @llvm.abs.i32(i32 %21, i1 true)
  %23 = load i32, ptr @best, align 4
  %24 = sub nsw i32 %23, %20
  %25 = call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %99

27:                                               ; preds = %12
  store i32 %19, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %28 = load ptr, ptr @solution, align 8
  %29 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %28, ptr noundef %29, i32 noundef %0)
  %30 = load i32, ptr @best, align 4
  %31 = load i32, ptr @goal, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %27
  %34 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %34, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %99

.preheader1:                                      ; preds = %.preheader2, %96
  %.027 = phi i32 [ 1, %.preheader2 ], [ %97, %96 ]
  %35 = load i32, ptr @listLength, align 4
  %36 = add nsw i32 %35, %0
  %37 = icmp slt i32 0, %36
  br i1 %37, label %.lr.ph6, label %96

.lr.ph6:                                          ; preds = %.preheader1
  %38 = icmp eq i32 %.027, 4
  %.old = icmp eq i32 %.027, 2
  br label %39

39:                                               ; preds = %.lr.ph6, %91
  %.045 = phi i32 [ 0, %.lr.ph6 ], [ %92, %91 ]
  %40 = shl i32 1, %.045
  %41 = and i32 %40, %1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %91, label %.preheader

.preheader:                                       ; preds = %39
  %43 = icmp slt i32 0, %.045
  br i1 %43, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %44 = sext i32 %.045 to i64
  %45 = or i32 %1, %40
  br label %46

46:                                               ; preds = %.lr.ph, %88
  %.034 = phi i32 [ 0, %.lr.ph ], [ %89, %88 ]
  %47 = shl i32 1, %.034
  %48 = and i32 %47, %1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %88, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @workList, align 8
  %52 = getelementptr inbounds i32, ptr %51, i64 %44
  %53 = load i32, ptr %52, align 4
  %54 = sext i32 %.034 to i64
  %55 = getelementptr inbounds i32, ptr %51, i64 %54
  %56 = load i32, ptr %55, align 4
  switch i32 %.027, label %60 [
    i32 3, label %57
    i32 4, label %57
  ]

57:                                               ; preds = %50, %50
  %58 = icmp eq i32 %53, 1
  %59 = icmp eq i32 %56, 1
  %or.cond = select i1 %58, i1 true, i1 %59
  br i1 %or.cond, label %88, label %60

60:                                               ; preds = %57, %50
  %61 = icmp eq i32 %53, 0
  %62 = icmp eq i32 %56, 0
  %or.cond1 = select i1 %61, i1 true, i1 %62
  br i1 %or.cond1, label %88, label %63

63:                                               ; preds = %60
  br i1 %38, label %64, label %.critedge

64:                                               ; preds = %63
  %65 = srem i32 %53, %56
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %64
  %.old3 = icmp slt i32 %53, %56
  br i1 %.old3, label %69, label %70

.critedge:                                        ; preds = %63
  %68 = icmp slt i32 %53, %56
  %or.cond4 = select i1 %.old, i1 %68, i1 false
  br i1 %or.cond4, label %69, label %70

69:                                               ; preds = %.critedge, %67
  br label %70

70:                                               ; preds = %69, %.critedge, %67
  %.01 = phi i32 [ %56, %69 ], [ %53, %67 ], [ %53, %.critedge ]
  %.0 = phi i32 [ %53, %69 ], [ %56, %67 ], [ %56, %.critedge ]
  %71 = or i32 %45, %47
  %72 = load ptr, ptr @combList, align 8
  %73 = getelementptr inbounds %struct.Comb, ptr %72, i64 %10
  store i32 %.01, ptr %73, align 4
  %74 = load ptr, ptr @combList, align 8
  %75 = getelementptr inbounds %struct.Comb, ptr %74, i64 %10
  %76 = getelementptr inbounds nuw %struct.Comb, ptr %75, i32 0, i32 1
  store i32 %.0, ptr %76, align 4
  %77 = load ptr, ptr @combList, align 8
  %78 = getelementptr inbounds %struct.Comb, ptr %77, i64 %10
  %79 = getelementptr inbounds nuw %struct.Comb, ptr %78, i32 0, i32 2
  store i32 %.027, ptr %79, align 4
  %80 = load ptr, ptr @combList, align 8
  %81 = getelementptr inbounds %struct.Comb, ptr %80, i64 %10
  %82 = call i32 @calculate(ptr noundef %81)
  %83 = load ptr, ptr @workList, align 8
  %84 = load i32, ptr @listLength, align 4
  %85 = add nsw i32 %84, %0
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %83, i64 %86
  store i32 %82, ptr %87, align 4
  call void @recSearch(i32 noundef %11, i32 noundef %71)
  br label %88

88:                                               ; preds = %70, %64, %60, %57, %46
  %89 = add nsw i32 %.034, 1
  %90 = icmp slt i32 %89, %.045
  br i1 %90, label %46, label %..loopexit_crit_edge, !llvm.loop !13

..loopexit_crit_edge:                             ; preds = %88
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %91

91:                                               ; preds = %.loopexit, %39
  %92 = add nsw i32 %.045, 1
  %93 = load i32, ptr @listLength, align 4
  %94 = add nsw i32 %93, %0
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %39, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %91
  br label %96

96:                                               ; preds = %._crit_edge, %.preheader1
  %97 = add nsw i32 %.027, 1
  %98 = icmp sle i32 %97, 4
  br i1 %98, label %.preheader1, label %.loopexit3, !llvm.loop !15

.loopexit3:                                       ; preds = %96
  br label %99

99:                                               ; preds = %.loopexit3, %33, %27, %12, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = icmp slt i32 0, %1
  br i1 %2, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %0
  %3 = load ptr, ptr @workList, align 8
  %4 = load i32, ptr @goal, align 4
  %5 = load i32, ptr @listLength, align 4
  %best.promoted = load i32, ptr @best, align 4
  br label %6

6:                                                ; preds = %.lr.ph, %17
  %7 = phi i32 [ %best.promoted, %.lr.ph ], [ %18, %17 ]
  %.01 = phi i32 [ 0, %.lr.ph ], [ %19, %17 ]
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds i32, ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sub nsw i32 %10, %4
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = sub nsw i32 %7, %4
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 %10, ptr @best, align 4
  br label %17

17:                                               ; preds = %16, %6
  %18 = phi i32 [ %10, %16 ], [ %7, %6 ]
  %19 = add nsw i32 %.01, 1
  %20 = icmp slt i32 %19, %5
  br i1 %20, label %6, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %17
  br label %21

21:                                               ; preds = %._crit_edge, %0
  %22 = load i32, ptr @best, align 4
  %23 = load i32, ptr @goal, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %46

27:                                               ; preds = %21
  store i32 1, ptr @dmax, align 4
  %28 = load i32, ptr @dmax, align 4
  %29 = load i32, ptr @listLength, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %.lr.ph3, label %40

.lr.ph3:                                          ; preds = %27
  br label %31

31:                                               ; preds = %.lr.ph3, %34
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %32 = load i32, ptr @stopSearch, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %._crit_edge4, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr @dmax, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @dmax, align 4
  %37 = load i32, ptr @dmax, align 4
  %38 = load i32, ptr @listLength, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %31, label %._crit_edge5, !llvm.loop !17

._crit_edge4:                                     ; preds = %31
  br label %40

._crit_edge5:                                     ; preds = %34
  br label %40

40:                                               ; preds = %._crit_edge5, %._crit_edge4, %27
  %41 = load i32, ptr @stopSearch, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load ptr, ptr @solution, align 8
  %45 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %43, %40, %25
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
