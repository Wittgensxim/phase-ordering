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
  br i1 %exitcond2, label %.lr.ph, label %8

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %5 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv3
  store i32 %6, ptr %7, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %4
  br label %8

8:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond2 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond2, label %.lr.ph, label %6

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv3
  %5 = getelementptr inbounds nuw %struct.Comb, ptr %4, i32 0, i32 2
  store i32 0, ptr %5, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %3, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %3
  br label %6

6:                                                ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond2 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond2, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
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
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %4, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %4
  br label %14

14:                                               ; preds = %._crit_edge, %3
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds %struct.Comb, ptr %0, i64 %15
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %16, i32 0, i32 2
  store i32 0, ptr %17, align 4
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
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond2 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond2, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %.lr.ph, %33
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %33 ]
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
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %3, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %33
  br label %34

34:                                               ; preds = %._crit_edge, %2
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond2 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond2, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %13
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %13 ]
  %5 = trunc nuw nsw i64 %indvars.iv3 to i32
  %6 = shl i32 1, %5
  %7 = and i32 %6, %2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv3
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %11)
  br label %13

13:                                               ; preds = %9, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %4, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %13
  br label %14

14:                                               ; preds = %._crit_edge, %3
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %96, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @nbNodes, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @nbNodes, align 4
  %8 = load i32, ptr @dmax, align 4
  %9 = icmp eq i32 %0, %8
  br i1 %9, label %10, label %.preheader2

.preheader2:                                      ; preds = %5
  br label %.preheader1

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
  br i1 %24, label %25, label %96

25:                                               ; preds = %10
  store i32 %17, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %26 = load ptr, ptr @solution, align 8
  %27 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %26, ptr noundef %27, i32 noundef %0)
  %28 = load i32, ptr @best, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %25
  %32 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %32, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %96

.preheader1:                                      ; preds = %.preheader2, %94
  %.0214 = phi i32 [ 1, %.preheader2 ], [ %95, %94 ]
  %33 = load i32, ptr @listLength, align 4
  %34 = add nsw i32 %33, %0
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 0, %35
  br i1 %36, label %.lr.ph13, label %94

.lr.ph13:                                         ; preds = %.preheader1
  br label %37

37:                                               ; preds = %.lr.ph13, %89
  %indvars.iv511 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next6, %89 ]
  %38 = trunc nuw nsw i64 %indvars.iv511 to i32
  %39 = shl i32 1, %38
  %40 = and i32 %39, %1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %89, label %.preheader

.preheader:                                       ; preds = %37
  %exitcond9 = icmp ne i64 0, %indvars.iv511
  br i1 %exitcond9, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  br label %42

42:                                               ; preds = %.lr.ph, %88
  %indvars.iv10 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %88 ]
  %43 = trunc nuw nsw i64 %indvars.iv10 to i32
  %44 = shl i32 1, %43
  %45 = and i32 %44, %1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr @workList, align 8
  %49 = getelementptr inbounds i32, ptr %48, i64 %indvars.iv511
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds i32, ptr %48, i64 %indvars.iv10
  %52 = load i32, ptr %51, align 4
  switch i32 %.0214, label %56 [
    i32 3, label %53
    i32 4, label %53
  ]

53:                                               ; preds = %47, %47
  %54 = icmp eq i32 %50, 1
  %55 = icmp eq i32 %52, 1
  %or.cond = select i1 %54, i1 true, i1 %55
  br i1 %or.cond, label %88, label %56

56:                                               ; preds = %53, %47
  %57 = icmp eq i32 %50, 0
  %58 = icmp eq i32 %52, 0
  %or.cond1 = select i1 %57, i1 true, i1 %58
  br i1 %or.cond1, label %88, label %59

59:                                               ; preds = %56
  %60 = icmp eq i32 %.0214, 4
  br i1 %60, label %61, label %.critedge

61:                                               ; preds = %59
  %62 = srem i32 %50, %52
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %61
  %.old3 = icmp slt i32 %50, %52
  br i1 %.old3, label %66, label %67

.critedge:                                        ; preds = %59
  %.old = icmp eq i32 %.0214, 2
  %65 = icmp slt i32 %50, %52
  %or.cond4 = select i1 %.old, i1 %65, i1 false
  br i1 %or.cond4, label %66, label %67

66:                                               ; preds = %.critedge, %64
  br label %67

67:                                               ; preds = %66, %.critedge, %64
  %.01 = phi i32 [ %52, %66 ], [ %50, %64 ], [ %50, %.critedge ]
  %.0 = phi i32 [ %50, %66 ], [ %52, %64 ], [ %52, %.critedge ]
  %68 = or i32 %1, %39
  %69 = or i32 %68, %44
  %70 = load ptr, ptr @combList, align 8
  %71 = sext i32 %0 to i64
  %72 = getelementptr inbounds %struct.Comb, ptr %70, i64 %71
  store i32 %.01, ptr %72, align 4
  %73 = load ptr, ptr @combList, align 8
  %74 = getelementptr inbounds %struct.Comb, ptr %73, i64 %71
  %75 = getelementptr inbounds nuw %struct.Comb, ptr %74, i32 0, i32 1
  store i32 %.0, ptr %75, align 4
  %76 = load ptr, ptr @combList, align 8
  %77 = getelementptr inbounds %struct.Comb, ptr %76, i64 %71
  %78 = getelementptr inbounds nuw %struct.Comb, ptr %77, i32 0, i32 2
  store i32 %.0214, ptr %78, align 4
  %79 = load ptr, ptr @combList, align 8
  %80 = getelementptr inbounds %struct.Comb, ptr %79, i64 %71
  %81 = call i32 @calculate(ptr noundef %80)
  %82 = load ptr, ptr @workList, align 8
  %83 = load i32, ptr @listLength, align 4
  %84 = add nsw i32 %83, %0
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %82, i64 %85
  store i32 %81, ptr %86, align 4
  %87 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %87, i32 noundef %69)
  br label %88

88:                                               ; preds = %67, %61, %56, %53, %42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv10, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %indvars.iv511
  br i1 %exitcond, label %42, label %..loopexit_crit_edge, !llvm.loop !13

..loopexit_crit_edge:                             ; preds = %88
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %89

89:                                               ; preds = %.loopexit, %37
  %indvars.iv512 = phi i64 [ %indvars.iv511, %.loopexit ], [ %indvars.iv511, %37 ]
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv512, 1
  %90 = load i32, ptr @listLength, align 4
  %91 = add nsw i32 %90, %0
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %indvars.iv.next6, %92
  br i1 %93, label %37, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %89
  br label %94

94:                                               ; preds = %._crit_edge, %.preheader1
  %95 = add nuw nsw i32 %.0214, 1
  %exitcond8 = icmp ne i32 %95, 5
  br i1 %exitcond8, label %.preheader1, label %.loopexit3, !llvm.loop !15

.loopexit3:                                       ; preds = %94
  br label %96

96:                                               ; preds = %.loopexit3, %31, %25, %10, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = sext i32 %1 to i64
  %3 = icmp slt i64 0, %2
  br i1 %3, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %0
  br label %4

4:                                                ; preds = %.lr.ph, %16
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ]
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
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1
  %17 = load i32, ptr @listLength, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %indvars.iv.next, %18
  br i1 %19, label %4, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %16
  br label %20

20:                                               ; preds = %._crit_edge, %0
  %21 = load i32, ptr @best, align 4
  %22 = load i32, ptr @goal, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %45

26:                                               ; preds = %20
  store i32 1, ptr @dmax, align 4
  %27 = load i32, ptr @dmax, align 4
  %28 = load i32, ptr @listLength, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %.lr.ph4, label %39

.lr.ph4:                                          ; preds = %26
  br label %30

30:                                               ; preds = %.lr.ph4, %33
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %31 = load i32, ptr @stopSearch, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %._crit_edge5, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr @dmax, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @dmax, align 4
  %36 = load i32, ptr @dmax, align 4
  %37 = load i32, ptr @listLength, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %30, label %._crit_edge6, !llvm.loop !17

._crit_edge5:                                     ; preds = %30
  br label %39

._crit_edge6:                                     ; preds = %33
  br label %39

39:                                               ; preds = %._crit_edge6, %._crit_edge5, %26
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

5:                                                ; preds = %8, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %8 ], [ 0, %0 ]
  %6 = call i32 @getchar()
  %7 = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %6, label %8 [
    i32 -1, label %14
    i32 10, label %14
  ]

8:                                                ; preds = %5
  %9 = call ptr @__acrt_iob_func(i32 noundef 0)
  %10 = call i32 @ungetc(i32 noundef %6, ptr noundef %9)
  %11 = call ptr @__acrt_iob_func(i32 noundef 0)
  %12 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %indvars.iv
  %13 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %11, ptr noundef @.str.2, ptr noundef %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !18

14:                                               ; preds = %5, %5
  %.0.lcssa = phi i32 [ %7, %5 ], [ %7, %5 ]
  %15 = icmp eq i32 %.0.lcssa, 0
  %spec.select1 = select i1 %15, i32 4, i32 %.0.lcssa
  %16 = sub nsw i32 %spec.select1, 1
  store i32 %16, ptr @listLength, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr @goal, align 4
  %20 = load i32, ptr @listLength, align 4
  %21 = mul nsw i32 2, %20
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
