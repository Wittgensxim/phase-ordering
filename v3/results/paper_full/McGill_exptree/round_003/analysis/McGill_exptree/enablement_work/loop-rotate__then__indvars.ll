; ModuleID = 'results\paper_full\McGill_exptree\round_002\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

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
@str = private unnamed_addr constant [2 x i8] c".\00", align 1
@str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @newWorkList(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 4) #7
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  ret ptr %3

5:                                                ; preds = %1
  %6 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %7 = call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %6)
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
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  ret ptr %3

5:                                                ; preds = %1
  %6 = call ptr @__acrt_iob_func(i32 noundef 2) #8
  %7 = call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %6)
  call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initWorkList(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %3
  %wide.trip.count = zext i32 %2 to i64
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %5 ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %7, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %5
  br label %9

9:                                                ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 0, %1
  br i1 %3, label %.lr.ph, label %7

.lr.ph:                                           ; preds = %2
  %wide.trip.count = zext i32 %1 to i64
  br label %4

4:                                                ; preds = %.lr.ph, %4
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %5 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %4, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %4
  br label %7

7:                                                ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %3
  %wide.trip.count = zext i32 %2 to i64
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %5 ]
  %6 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %13, ptr %14, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %5, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %5
  br label %15

15:                                               ; preds = %._crit_edge, %3
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds [12 x i8], ptr %0, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 0, ptr %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %24 [
    i32 1, label %4
    i32 2, label %9
    i32 3, label %14
    i32 4, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %5, %7
  br label %24

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %10, %12
  br label %24

14:                                               ; preds = %1
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = mul nsw i32 %15, %17
  br label %24

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 4
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
  br i1 %3, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  %wide.trip.count = zext i32 %1 to i64
  br label %4

4:                                                ; preds = %.lr.ph, %28
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %28 ]
  %5 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %6) #8
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %15 [
    i32 0, label %10
    i32 1, label %11
    i32 2, label %12
    i32 3, label %13
    i32 4, label %14
  ]

10:                                               ; preds = %4
  %putchar5 = call i32 @putchar(i32 32)
  br label %17

11:                                               ; preds = %4
  %putchar4 = call i32 @putchar(i32 43)
  br label %17

12:                                               ; preds = %4
  %putchar3 = call i32 @putchar(i32 45)
  br label %17

13:                                               ; preds = %4
  %putchar2 = call i32 @putchar(i32 42)
  br label %17

14:                                               ; preds = %4
  %putchar1 = call i32 @putchar(i32 58)
  br label %17

15:                                               ; preds = %4
  %16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %9) #8
  br label %17

17:                                               ; preds = %15, %14, %13, %12, %11, %10
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @calculate(ptr noundef nonnull %5)
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %19, i32 noundef %20) #8
  %22 = add nsw i32 %1, -1
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %indvars.iv, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %28

27:                                               ; preds = %17
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %28

28:                                               ; preds = %27, %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %4, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %28
  br label %29

29:                                               ; preds = %._crit_edge, %2
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %1
  br i1 %4, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %3
  %wide.trip.count = zext i32 %1 to i64
  br label %5

5:                                                ; preds = %.lr.ph, %13
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %13 ]
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, %2
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %11) #8
  br label %13

13:                                               ; preds = %9, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %13
  br label %14

14:                                               ; preds = %._crit_edge, %3
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %92

4:                                                ; preds = %2
  %5 = load i32, ptr @nbNodes, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @nbNodes, align 4
  %7 = load i32, ptr @dmax, align 4
  %8 = icmp eq i32 %0, %7
  br i1 %8, label %9, label %.preheader2

.preheader2:                                      ; preds = %4
  br label %.preheader1

9:                                                ; preds = %4
  %10 = load ptr, ptr @workList, align 8
  %11 = load i32, ptr @listLength, align 4
  %12 = add nsw i32 %11, %0
  %13 = sext i32 %12 to i64
  %14 = getelementptr [4 x i8], ptr %10, i64 %13
  %15 = getelementptr i8, ptr %14, i64 -4
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr @goal, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call i32 @llvm.abs.i32(i32 %18, i1 true)
  %20 = load i32, ptr @best, align 4
  %21 = sub nsw i32 %20, %17
  %22 = call i32 @llvm.abs.i32(i32 %21, i1 true)
  %23 = icmp samesign ult i32 %19, %22
  br i1 %23, label %24, label %92

24:                                               ; preds = %9
  store i32 %16, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %25 = load ptr, ptr @solution, align 8
  %26 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %25, ptr noundef %26, i32 noundef %0)
  %27 = load i32, ptr @best, align 4
  %28 = load i32, ptr @goal, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %24
  %31 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %31, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %92

.preheader1:                                      ; preds = %.preheader2, %90
  %.027 = phi i32 [ 1, %.preheader2 ], [ %91, %90 ]
  %32 = load i32, ptr @listLength, align 4
  %33 = add nsw i32 %32, %0
  %34 = icmp slt i32 0, %33
  br i1 %34, label %.lr.ph6, label %90

.lr.ph6:                                          ; preds = %.preheader1
  br label %35

35:                                               ; preds = %.lr.ph6, %85
  %indvars.iv9 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next10, %85 ]
  %36 = trunc nuw nsw i64 %indvars.iv9 to i32
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %1
  %.not1 = icmp eq i32 %38, 0
  br i1 %.not1, label %.preheader, label %85

.preheader:                                       ; preds = %35
  %39 = icmp samesign ult i64 0, %indvars.iv9
  br i1 %39, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  br label %40

40:                                               ; preds = %.lr.ph, %84
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %84 ]
  %41 = trunc nuw nsw i64 %indvars.iv to i32
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %1
  %.not2 = icmp eq i32 %43, 0
  br i1 %.not2, label %44, label %84

44:                                               ; preds = %40
  %45 = load ptr, ptr @workList, align 8
  %46 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %indvars.iv9
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %indvars.iv
  %49 = load i32, ptr %48, align 4
  switch i32 %.027, label %53 [
    i32 3, label %50
    i32 4, label %50
  ]

50:                                               ; preds = %44, %44
  %51 = icmp eq i32 %47, 1
  %52 = icmp eq i32 %49, 1
  %or.cond = select i1 %51, i1 true, i1 %52
  br i1 %or.cond, label %84, label %53

53:                                               ; preds = %50, %44
  %54 = icmp eq i32 %47, 0
  %55 = icmp eq i32 %49, 0
  %or.cond1 = select i1 %54, i1 true, i1 %55
  br i1 %or.cond1, label %84, label %56

56:                                               ; preds = %53
  %57 = icmp eq i32 %.027, 4
  br i1 %57, label %58, label %.critedge

58:                                               ; preds = %56
  %59 = srem i32 %47, %49
  %.not3 = icmp eq i32 %59, 0
  br i1 %.not3, label %60, label %84

60:                                               ; preds = %58
  %.old3 = icmp slt i32 %47, %49
  br i1 %.old3, label %62, label %63

.critedge:                                        ; preds = %56
  %.old = icmp eq i32 %.027, 2
  %61 = icmp slt i32 %47, %49
  %or.cond4 = select i1 %.old, i1 %61, i1 false
  br i1 %or.cond4, label %62, label %63

62:                                               ; preds = %.critedge, %60
  br label %63

63:                                               ; preds = %62, %.critedge, %60
  %.01 = phi i32 [ %49, %62 ], [ %47, %60 ], [ %47, %.critedge ]
  %.0 = phi i32 [ %47, %62 ], [ %49, %60 ], [ %49, %.critedge ]
  %64 = or i32 %1, %37
  %65 = or i32 %64, %42
  %66 = load ptr, ptr @combList, align 8
  %67 = sext i32 %0 to i64
  %68 = getelementptr inbounds [12 x i8], ptr %66, i64 %67
  store i32 %.01, ptr %68, align 4
  %69 = load ptr, ptr @combList, align 8
  %70 = getelementptr inbounds [12 x i8], ptr %69, i64 %67
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 4
  store i32 %.0, ptr %71, align 4
  %72 = load ptr, ptr @combList, align 8
  %73 = getelementptr inbounds [12 x i8], ptr %72, i64 %67
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i32 %.027, ptr %74, align 4
  %75 = load ptr, ptr @combList, align 8
  %76 = getelementptr inbounds [12 x i8], ptr %75, i64 %67
  %77 = call i32 @calculate(ptr noundef %76)
  %78 = load ptr, ptr @workList, align 8
  %79 = load i32, ptr @listLength, align 4
  %80 = add nsw i32 %79, %0
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i8], ptr %78, i64 %81
  store i32 %77, ptr %82, align 4
  %83 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %83, i32 noundef %65)
  br label %84

84:                                               ; preds = %63, %58, %53, %50, %40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %indvars.iv9
  br i1 %exitcond, label %40, label %..loopexit_crit_edge, !llvm.loop !13

..loopexit_crit_edge:                             ; preds = %84
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %85

85:                                               ; preds = %.loopexit, %35
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %86 = load i32, ptr @listLength, align 4
  %87 = add nsw i32 %86, %0
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %indvars.iv.next10, %88
  br i1 %89, label %35, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %85
  br label %90

90:                                               ; preds = %._crit_edge, %.preheader1
  %91 = add nuw nsw i32 %.027, 1
  %exitcond12 = icmp ne i32 %91, 5
  br i1 %exitcond12, label %.preheader1, label %.loopexit3, !llvm.loop !15

.loopexit3:                                       ; preds = %90
  br label %92

92:                                               ; preds = %.loopexit3, %30, %24, %9, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %.pre = load i32, ptr @listLength, align 4
  %1 = icmp slt i32 0, %.pre
  br i1 %1, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %0
  %wide.trip.count = zext i32 %.pre to i64
  br label %2

2:                                                ; preds = %.lr.ph, %14
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %3 = load ptr, ptr @workList, align 8
  %4 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr @goal, align 4
  %7 = sub nsw i32 %5, %6
  %8 = call i32 @llvm.abs.i32(i32 %7, i1 true)
  %9 = load i32, ptr @best, align 4
  %10 = sub nsw i32 %9, %6
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = icmp samesign ult i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 %5, ptr @best, align 4
  br label %14

14:                                               ; preds = %13, %2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %2, label %._crit_edge3, !llvm.loop !16

._crit_edge3:                                     ; preds = %14
  br label %15

15:                                               ; preds = %._crit_edge3, %0
  %16 = load i32, ptr @best, align 4
  %17 = load i32, ptr @goal, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %34

20:                                               ; preds = %15
  store i32 1, ptr @dmax, align 4
  %21 = icmp slt i32 1, %.pre
  br i1 %21, label %.lr.ph5, label %._crit_edge

.lr.ph5:                                          ; preds = %20
  br label %22

.._crit_edge_crit_edge:                           ; preds = %24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %20
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %28

22:                                               ; preds = %.lr.ph5, %24
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %23 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %24, label %split

24:                                               ; preds = %22
  %25 = load i32, ptr @dmax, align 4
  %26 = add nsw i32 %25, 1
  %.pre1 = load i32, ptr @listLength, align 4
  store i32 %26, ptr @dmax, align 4
  %27 = icmp slt i32 %26, %.pre1
  br i1 %27, label %22, label %.._crit_edge_crit_edge, !llvm.loop !17

split:                                            ; preds = %22
  %.lcssa = phi i32 [ %23, %22 ]
  br label %28

28:                                               ; preds = %split, %._crit_edge
  %29 = phi i32 [ %.lcssa, %split ], [ %.pre2, %._crit_edge ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load ptr, ptr @solution, align 8
  %33 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %32, i32 noundef %33)
  br label %34

34:                                               ; preds = %31, %28, %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  store i32 13, ptr %1, align 16
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1412, ptr %4, align 4
  br label %5

5:                                                ; preds = %8, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %8 ], [ 0, %0 ]
  %6 = call i32 @getchar() #8
  %7 = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %6, label %8 [
    i32 -1, label %14
    i32 10, label %14
  ]

8:                                                ; preds = %5
  %9 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %10 = call i32 @ungetc(i32 noundef %6, ptr noundef %9) #8
  %11 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %12 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %13 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !18

14:                                               ; preds = %5, %5
  %.0.lcssa = phi i32 [ %7, %5 ], [ %7, %5 ]
  %15 = icmp eq i32 %.0.lcssa, 0
  %16 = add nsw i32 %.0.lcssa, -1
  %17 = select i1 %15, i32 3, i32 %16
  store i32 %17, ptr @listLength, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %1, i64 %18
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr @goal, align 4
  %21 = shl nsw i32 %17, 1
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
  call void @initWorkList(ptr noundef %27, ptr noundef nonnull %1, i32 noundef %28)
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
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @search()
  br label %5

5:                                                ; preds = %4, %2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

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
