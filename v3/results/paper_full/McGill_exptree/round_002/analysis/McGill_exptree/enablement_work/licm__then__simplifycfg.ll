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

35:                                               ; preds = %33, %31
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
  br i1 %4, label %.loopexit3, label %5

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
  br label %35

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
  br i1 %26, label %27, label %.loopexit3

27:                                               ; preds = %12
  store i32 %19, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %28 = load ptr, ptr @solution, align 8
  %29 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %28, ptr noundef %29, i32 noundef %0)
  %30 = load i32, ptr @best, align 4
  %31 = load i32, ptr @goal, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %.loopexit3

33:                                               ; preds = %27
  %34 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %34, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %.loopexit3

35:                                               ; preds = %.preheader2, %95
  %.02 = phi i32 [ %96, %95 ], [ 1, %.preheader2 ]
  %36 = icmp sle i32 %.02, 4
  br i1 %36, label %.preheader1, label %.loopexit3

.preheader1:                                      ; preds = %35
  %37 = icmp eq i32 %.02, 4
  %.old = icmp eq i32 %.02, 2
  br label %38

38:                                               ; preds = %.preheader1, %.loopexit
  %.04 = phi i32 [ %94, %.loopexit ], [ 0, %.preheader1 ]
  %39 = load i32, ptr @listLength, align 4
  %40 = add nsw i32 %39, %0
  %41 = icmp slt i32 %.04, %40
  br i1 %41, label %42, label %95

42:                                               ; preds = %38
  %43 = shl i32 1, %.04
  %44 = and i32 %43, %1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %42
  %46 = sext i32 %.04 to i64
  %47 = or i32 %1, %43
  br label %48

48:                                               ; preds = %.preheader, %92
  %.03 = phi i32 [ %93, %92 ], [ 0, %.preheader ]
  %49 = icmp slt i32 %.03, %.04
  br i1 %49, label %50, label %.loopexit

50:                                               ; preds = %48
  %51 = shl i32 1, %.03
  %52 = and i32 %51, %1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %92, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr @workList, align 8
  %56 = getelementptr inbounds i32, ptr %55, i64 %46
  %57 = load i32, ptr %56, align 4
  %58 = sext i32 %.03 to i64
  %59 = getelementptr inbounds i32, ptr %55, i64 %58
  %60 = load i32, ptr %59, align 4
  switch i32 %.02, label %64 [
    i32 3, label %61
    i32 4, label %61
  ]

61:                                               ; preds = %54, %54
  %62 = icmp eq i32 %57, 1
  %63 = icmp eq i32 %60, 1
  %or.cond = select i1 %62, i1 true, i1 %63
  br i1 %or.cond, label %92, label %64

64:                                               ; preds = %61, %54
  %65 = icmp eq i32 %57, 0
  %66 = icmp eq i32 %60, 0
  %or.cond1 = select i1 %65, i1 true, i1 %66
  br i1 %or.cond1, label %92, label %67

67:                                               ; preds = %64
  br i1 %37, label %68, label %.critedge

68:                                               ; preds = %67
  %69 = srem i32 %57, %60
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %68
  %.old3 = icmp slt i32 %57, %60
  br i1 %.old3, label %73, label %74

.critedge:                                        ; preds = %67
  %72 = icmp slt i32 %57, %60
  %or.cond4 = select i1 %.old, i1 %72, i1 false
  br i1 %or.cond4, label %73, label %74

73:                                               ; preds = %.critedge, %71
  br label %74

74:                                               ; preds = %73, %.critedge, %71
  %.01 = phi i32 [ %60, %73 ], [ %57, %71 ], [ %57, %.critedge ]
  %.0 = phi i32 [ %57, %73 ], [ %60, %71 ], [ %60, %.critedge ]
  %75 = or i32 %47, %51
  %76 = load ptr, ptr @combList, align 8
  %77 = getelementptr inbounds %struct.Comb, ptr %76, i64 %10
  store i32 %.01, ptr %77, align 4
  %78 = load ptr, ptr @combList, align 8
  %79 = getelementptr inbounds %struct.Comb, ptr %78, i64 %10
  %80 = getelementptr inbounds nuw %struct.Comb, ptr %79, i32 0, i32 1
  store i32 %.0, ptr %80, align 4
  %81 = load ptr, ptr @combList, align 8
  %82 = getelementptr inbounds %struct.Comb, ptr %81, i64 %10
  %83 = getelementptr inbounds nuw %struct.Comb, ptr %82, i32 0, i32 2
  store i32 %.02, ptr %83, align 4
  %84 = load ptr, ptr @combList, align 8
  %85 = getelementptr inbounds %struct.Comb, ptr %84, i64 %10
  %86 = call i32 @calculate(ptr noundef %85)
  %87 = load ptr, ptr @workList, align 8
  %88 = load i32, ptr @listLength, align 4
  %89 = add nsw i32 %88, %0
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %87, i64 %90
  store i32 %86, ptr %91, align 4
  call void @recSearch(i32 noundef %11, i32 noundef %75)
  br label %92

92:                                               ; preds = %74, %68, %64, %61, %50
  %93 = add nsw i32 %.03, 1
  br label %48, !llvm.loop !13

.loopexit:                                        ; preds = %48, %42
  %94 = add nsw i32 %.04, 1
  br label %38, !llvm.loop !14

95:                                               ; preds = %38
  %96 = add nsw i32 %.02, 1
  br label %35, !llvm.loop !15

.loopexit3:                                       ; preds = %35, %33, %27, %12, %2
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

17:                                               ; preds = %16, %7
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
  br label %43

26:                                               ; preds = %20
  store i32 1, ptr @dmax, align 4
  br label %27

27:                                               ; preds = %34, %26
  %28 = load i32, ptr @dmax, align 4
  %29 = load i32, ptr @listLength, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %32 = load i32, ptr @stopSearch, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr @dmax, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @dmax, align 4
  br label %27, !llvm.loop !17

37:                                               ; preds = %31, %27
  %38 = load i32, ptr @stopSearch, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr @solution, align 8
  %42 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %41, i32 noundef %42)
  br label %43

43:                                               ; preds = %40, %37, %24
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
