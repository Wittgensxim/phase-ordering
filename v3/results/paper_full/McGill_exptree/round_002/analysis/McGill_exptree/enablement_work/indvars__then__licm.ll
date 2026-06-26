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
  br label %4

4:                                                ; preds = %5, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %5 ], [ 0, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %5, label %9

5:                                                ; preds = %4
  %6 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv
  store i32 %7, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !7

9:                                                ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %3

3:                                                ; preds = %4, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %4 ], [ 0, %2 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %4, label %7

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  %6 = getelementptr inbounds nuw %struct.Comb, ptr %5, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %3, !llvm.loop !9

7:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %4

4:                                                ; preds = %5, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %5 ], [ 0, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %5, label %15

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.Comb, ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !10

15:                                               ; preds = %4
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
  %3 = sub nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  br label %5

5:                                                ; preds = %34, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %34 ], [ 0, %2 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %6, label %35

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
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

12:                                               ; preds = %6
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %24

14:                                               ; preds = %6
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %24

16:                                               ; preds = %6
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %24

18:                                               ; preds = %6
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %24

20:                                               ; preds = %6
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %24

22:                                               ; preds = %6
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %11)
  br label %24

24:                                               ; preds = %22, %20, %18, %16, %14, %12
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = call i32 @calculate(ptr noundef %7)
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %26, i32 noundef %27)
  %29 = icmp slt i64 %indvars.iv, %4
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %34

32:                                               ; preds = %24
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %34

34:                                               ; preds = %32, %30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !11

35:                                               ; preds = %5
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %4

4:                                                ; preds = %14, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 0, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %5, label %15

5:                                                ; preds = %4
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  %7 = shl i32 1, %6
  %8 = and i32 %7, %2
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %12)
  br label %14

14:                                               ; preds = %10, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

15:                                               ; preds = %4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %95, label %5

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
  br i1 %26, label %27, label %95

27:                                               ; preds = %12
  store i32 %19, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %28 = load ptr, ptr @solution, align 8
  %29 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %28, ptr noundef %29, i32 noundef %0)
  %30 = load i32, ptr @best, align 4
  %31 = load i32, ptr @goal, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %95

33:                                               ; preds = %27
  %34 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %34, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %95

35:                                               ; preds = %.preheader2, %93
  %.02 = phi i32 [ %94, %93 ], [ 1, %.preheader2 ]
  %exitcond8 = icmp ne i32 %.02, 5
  br i1 %exitcond8, label %.preheader1, label %.loopexit3

.preheader1:                                      ; preds = %35
  %36 = icmp eq i32 %.02, 4
  %.old = icmp eq i32 %.02, 2
  br label %37

37:                                               ; preds = %.preheader1, %92
  %indvars.iv5 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next6, %92 ]
  %38 = load i32, ptr @listLength, align 4
  %39 = add nsw i32 %38, %0
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %indvars.iv5, %40
  br i1 %41, label %42, label %93

42:                                               ; preds = %37
  %43 = trunc nuw nsw i64 %indvars.iv5 to i32
  %44 = shl i32 1, %43
  %45 = and i32 %44, %1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %92, label %.preheader

.preheader:                                       ; preds = %42
  %47 = or i32 %1, %44
  br label %48

48:                                               ; preds = %.preheader, %91
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %91 ]
  %exitcond = icmp ne i64 %indvars.iv, %indvars.iv5
  br i1 %exitcond, label %49, label %.loopexit

49:                                               ; preds = %48
  %50 = trunc nuw nsw i64 %indvars.iv to i32
  %51 = shl i32 1, %50
  %52 = and i32 %51, %1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %91, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr @workList, align 8
  %56 = getelementptr inbounds i32, ptr %55, i64 %indvars.iv5
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds i32, ptr %55, i64 %indvars.iv
  %59 = load i32, ptr %58, align 4
  switch i32 %.02, label %63 [
    i32 3, label %60
    i32 4, label %60
  ]

60:                                               ; preds = %54, %54
  %61 = icmp eq i32 %57, 1
  %62 = icmp eq i32 %59, 1
  %or.cond = select i1 %61, i1 true, i1 %62
  br i1 %or.cond, label %91, label %63

63:                                               ; preds = %60, %54
  %64 = icmp eq i32 %57, 0
  %65 = icmp eq i32 %59, 0
  %or.cond1 = select i1 %64, i1 true, i1 %65
  br i1 %or.cond1, label %91, label %66

66:                                               ; preds = %63
  br i1 %36, label %67, label %.critedge

67:                                               ; preds = %66
  %68 = srem i32 %57, %59
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %67
  %.old3 = icmp slt i32 %57, %59
  br i1 %.old3, label %72, label %73

.critedge:                                        ; preds = %66
  %71 = icmp slt i32 %57, %59
  %or.cond4 = select i1 %.old, i1 %71, i1 false
  br i1 %or.cond4, label %72, label %73

72:                                               ; preds = %.critedge, %70
  br label %73

73:                                               ; preds = %72, %.critedge, %70
  %.01 = phi i32 [ %59, %72 ], [ %57, %70 ], [ %57, %.critedge ]
  %.0 = phi i32 [ %57, %72 ], [ %59, %70 ], [ %59, %.critedge ]
  %74 = or i32 %47, %51
  %75 = load ptr, ptr @combList, align 8
  %76 = getelementptr inbounds %struct.Comb, ptr %75, i64 %10
  store i32 %.01, ptr %76, align 4
  %77 = load ptr, ptr @combList, align 8
  %78 = getelementptr inbounds %struct.Comb, ptr %77, i64 %10
  %79 = getelementptr inbounds nuw %struct.Comb, ptr %78, i32 0, i32 1
  store i32 %.0, ptr %79, align 4
  %80 = load ptr, ptr @combList, align 8
  %81 = getelementptr inbounds %struct.Comb, ptr %80, i64 %10
  %82 = getelementptr inbounds nuw %struct.Comb, ptr %81, i32 0, i32 2
  store i32 %.02, ptr %82, align 4
  %83 = load ptr, ptr @combList, align 8
  %84 = getelementptr inbounds %struct.Comb, ptr %83, i64 %10
  %85 = call i32 @calculate(ptr noundef %84)
  %86 = load ptr, ptr @workList, align 8
  %87 = load i32, ptr @listLength, align 4
  %88 = add nsw i32 %87, %0
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %86, i64 %89
  store i32 %85, ptr %90, align 4
  call void @recSearch(i32 noundef %11, i32 noundef %74)
  br label %91

91:                                               ; preds = %73, %67, %63, %60, %49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %48, !llvm.loop !13

.loopexit:                                        ; preds = %48
  br label %92

92:                                               ; preds = %.loopexit, %42
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %37, !llvm.loop !14

93:                                               ; preds = %37
  %94 = add nuw nsw i32 %.02, 1
  br label %35, !llvm.loop !15

.loopexit3:                                       ; preds = %35
  br label %95

95:                                               ; preds = %.loopexit3, %33, %27, %12, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = sext i32 %1 to i64
  %3 = load ptr, ptr @workList, align 8
  %4 = load i32, ptr @goal, align 4
  %best.promoted = load i32, ptr @best, align 4
  br label %5

5:                                                ; preds = %17, %0
  %6 = phi i32 [ %18, %17 ], [ %best.promoted, %0 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %0 ]
  %7 = icmp slt i64 %indvars.iv, %2
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %11 = sub nsw i32 %10, %4
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = sub nsw i32 %6, %4
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 %10, ptr @best, align 4
  br label %17

17:                                               ; preds = %16, %8
  %18 = phi i32 [ %10, %16 ], [ %6, %8 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !16

19:                                               ; preds = %5
  %20 = load i32, ptr @best, align 4
  %21 = load i32, ptr @goal, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %42

25:                                               ; preds = %19
  store i32 1, ptr @dmax, align 4
  br label %26

26:                                               ; preds = %33, %25
  %27 = load i32, ptr @dmax, align 4
  %28 = load i32, ptr @listLength, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %31 = load i32, ptr @stopSearch, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr @dmax, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @dmax, align 4
  br label %26, !llvm.loop !17

36:                                               ; preds = %30, %26
  %37 = load i32, ptr @stopSearch, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load ptr, ptr @solution, align 8
  %41 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %40, i32 noundef %41)
  br label %42

42:                                               ; preds = %39, %36, %23
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
  %indvars.iv = phi i64 [ %indvars.iv.next, %7 ], [ 0, %0 ]
  %6 = call i32 @getchar()
  switch i32 %6, label %7 [
    i32 -1, label %13
    i32 10, label %13
  ]

7:                                                ; preds = %5
  %8 = call ptr @__acrt_iob_func(i32 noundef 0)
  %9 = call i32 @ungetc(i32 noundef %6, ptr noundef %8)
  %10 = call ptr @__acrt_iob_func(i32 noundef 0)
  %11 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %indvars.iv
  %12 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %10, ptr noundef @.str.2, ptr noundef %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !18

13:                                               ; preds = %5, %5
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %5 ], [ %indvars.iv, %5 ]
  %14 = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %15 = icmp eq i32 %14, 0
  %spec.select1 = select i1 %15, i32 4, i32 %14
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
