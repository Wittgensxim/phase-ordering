; ModuleID = 'results\paper_full\McGill_exptree\round_003\output.ll'
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
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 4) #8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  ret ptr %3

5:                                                ; preds = %1
  %6 = call ptr @__acrt_iob_func(i32 noundef 2) #9
  %7 = call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %6)
  call void @exit(i32 noundef 1) #10
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
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 12) #8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  ret ptr %3

5:                                                ; preds = %1
  %6 = call ptr @__acrt_iob_func(i32 noundef 2) #9
  %7 = call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %6)
  call void @exit(i32 noundef 1) #10
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
  %5 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv3
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
  %4 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv3
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
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
  %5 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv3
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %12, ptr %13, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %4, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %4
  br label %14

14:                                               ; preds = %._crit_edge, %3
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds [12 x i8], ptr %0, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %17, align 4
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
  %3 = add nsw i32 %1, -1
  %4 = sext i32 %3 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond2 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond2, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %2
  br label %5

5:                                                ; preds = %.lr.ph, %27
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %27 ]
  %6 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv3
  %7 = load i32, ptr %6, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %7) #9
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %16 [
    i32 0, label %11
    i32 1, label %12
    i32 2, label %13
    i32 3, label %14
    i32 4, label %15
  ]

11:                                               ; preds = %5
  %putchar5 = call i32 @putchar(i32 32)
  br label %18

12:                                               ; preds = %5
  %putchar4 = call i32 @putchar(i32 43)
  br label %18

13:                                               ; preds = %5
  %putchar3 = call i32 @putchar(i32 45)
  br label %18

14:                                               ; preds = %5
  %putchar2 = call i32 @putchar(i32 42)
  br label %18

15:                                               ; preds = %5
  %putchar1 = call i32 @putchar(i32 58)
  br label %18

16:                                               ; preds = %5
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %10) #9
  br label %18

18:                                               ; preds = %16, %15, %14, %13, %12, %11
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @calculate(ptr noundef nonnull %6)
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %20, i32 noundef %21) #9
  %23 = icmp slt i64 %indvars.iv3, %4
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #9
  br label %27

26:                                               ; preds = %18
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %27

27:                                               ; preds = %26, %24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %5, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %27
  br label %28

28:                                               ; preds = %._crit_edge, %2
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond2 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond2, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %4

4:                                                ; preds = %.lr.ph, %12
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ]
  %5 = trunc nuw nsw i64 %indvars.iv3 to i32
  %6 = shl nuw i32 1, %5
  %7 = and i32 %6, %2
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv3
  %10 = load i32, ptr %9, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %10) #9
  br label %12

12:                                               ; preds = %8, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %4, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %12
  br label %13

13:                                               ; preds = %._crit_edge, %3
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
  br i1 %8, label %11, label %.preheader2

.preheader2:                                      ; preds = %4
  %9 = sext i32 %0 to i64
  %10 = add nsw i32 %0, 1
  br label %.preheader1

11:                                               ; preds = %4
  %12 = load ptr, ptr @workList, align 8
  %13 = load i32, ptr @listLength, align 4
  %14 = add nsw i32 %13, %0
  %15 = sext i32 %14 to i64
  %16 = getelementptr [4 x i8], ptr %12, i64 %15
  %17 = getelementptr i8, ptr %16, i64 -4
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr @goal, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = load i32, ptr @best, align 4
  %23 = sub nsw i32 %22, %19
  %24 = call i32 @llvm.abs.i32(i32 %23, i1 true)
  %25 = icmp samesign ult i32 %21, %24
  br i1 %25, label %26, label %92

26:                                               ; preds = %11
  store i32 %18, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %27 = load ptr, ptr @solution, align 8
  %28 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %27, ptr noundef %28, i32 noundef %0)
  %29 = load i32, ptr @best, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %92

32:                                               ; preds = %26
  %33 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %33, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %92

.preheader1:                                      ; preds = %.preheader2, %90
  %.0211 = phi i32 [ 1, %.preheader2 ], [ %91, %90 ]
  %34 = icmp eq i32 %.0211, 4
  %.old = icmp eq i32 %.0211, 2
  %35 = load i32, ptr @listLength, align 4
  %36 = add nsw i32 %35, %0
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 0, %37
  br i1 %38, label %.lr.ph10, label %90

.lr.ph10:                                         ; preds = %.preheader1
  br label %39

39:                                               ; preds = %.lr.ph10, %85
  %indvars.iv28 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next3, %85 ]
  %40 = trunc nuw nsw i64 %indvars.iv28 to i32
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %1
  %.not1 = icmp eq i32 %42, 0
  br i1 %.not1, label %.preheader, label %85

.preheader:                                       ; preds = %39
  %43 = or i32 %1, %41
  %exitcond6 = icmp ne i64 0, %indvars.iv28
  br i1 %exitcond6, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  br label %44

44:                                               ; preds = %.lr.ph, %84
  %indvars.iv7 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %84 ]
  %45 = trunc nuw nsw i64 %indvars.iv7 to i32
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %1
  %.not2 = icmp eq i32 %47, 0
  br i1 %.not2, label %48, label %84

48:                                               ; preds = %44
  %49 = load ptr, ptr @workList, align 8
  %50 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %indvars.iv28
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %indvars.iv7
  %53 = load i32, ptr %52, align 4
  switch i32 %.0211, label %57 [
    i32 3, label %54
    i32 4, label %54
  ]

54:                                               ; preds = %48, %48
  %55 = icmp eq i32 %51, 1
  %56 = icmp eq i32 %53, 1
  %or.cond = select i1 %55, i1 true, i1 %56
  br i1 %or.cond, label %84, label %57

57:                                               ; preds = %54, %48
  %58 = icmp eq i32 %51, 0
  %59 = icmp eq i32 %53, 0
  %or.cond1 = select i1 %58, i1 true, i1 %59
  br i1 %or.cond1, label %84, label %60

60:                                               ; preds = %57
  br i1 %34, label %61, label %.critedge

61:                                               ; preds = %60
  %62 = srem i32 %51, %53
  %.not3 = icmp eq i32 %62, 0
  br i1 %.not3, label %63, label %84

63:                                               ; preds = %61
  %.old3 = icmp slt i32 %51, %53
  br i1 %.old3, label %65, label %66

.critedge:                                        ; preds = %60
  %64 = icmp slt i32 %51, %53
  %or.cond4 = select i1 %.old, i1 %64, i1 false
  br i1 %or.cond4, label %65, label %66

65:                                               ; preds = %.critedge, %63
  br label %66

66:                                               ; preds = %65, %.critedge, %63
  %.01 = phi i32 [ %53, %65 ], [ %51, %63 ], [ %51, %.critedge ]
  %.0 = phi i32 [ %51, %65 ], [ %53, %63 ], [ %53, %.critedge ]
  %67 = or i32 %43, %46
  %68 = load ptr, ptr @combList, align 8
  %69 = getelementptr inbounds [12 x i8], ptr %68, i64 %9
  store i32 %.01, ptr %69, align 4
  %70 = load ptr, ptr @combList, align 8
  %71 = getelementptr inbounds [12 x i8], ptr %70, i64 %9
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 4
  store i32 %.0, ptr %72, align 4
  %73 = load ptr, ptr @combList, align 8
  %74 = getelementptr inbounds [12 x i8], ptr %73, i64 %9
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 8
  store i32 %.0211, ptr %75, align 4
  %76 = load ptr, ptr @combList, align 8
  %77 = getelementptr inbounds [12 x i8], ptr %76, i64 %9
  %78 = call i32 @calculate(ptr noundef %77)
  %79 = load ptr, ptr @workList, align 8
  %80 = load i32, ptr @listLength, align 4
  %81 = add nsw i32 %80, %0
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i8], ptr %79, i64 %82
  store i32 %78, ptr %83, align 4
  call void @recSearch(i32 noundef %10, i32 noundef %67)
  br label %84

84:                                               ; preds = %66, %61, %57, %54, %44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %indvars.iv28
  br i1 %exitcond, label %44, label %..loopexit_crit_edge, !llvm.loop !13

..loopexit_crit_edge:                             ; preds = %84
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %85

85:                                               ; preds = %.loopexit, %39
  %indvars.iv29 = phi i64 [ %indvars.iv28, %.loopexit ], [ %indvars.iv28, %39 ]
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv29, 1
  %86 = load i32, ptr @listLength, align 4
  %87 = add nsw i32 %86, %0
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %indvars.iv.next3, %88
  br i1 %89, label %39, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %85
  br label %90

90:                                               ; preds = %._crit_edge, %.preheader1
  %91 = add nuw nsw i32 %.0211, 1
  %exitcond5 = icmp ne i32 %91, 5
  br i1 %exitcond5, label %.preheader1, label %.loopexit3, !llvm.loop !15

.loopexit3:                                       ; preds = %90
  br label %92

92:                                               ; preds = %.loopexit3, %32, %26, %11, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %.pre = load i32, ptr @listLength, align 4
  %1 = load ptr, ptr @workList, align 8
  %2 = load i32, ptr @goal, align 4
  %best.promoted = load i32, ptr @best, align 4
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond3 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond3, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %13
  %4 = phi i32 [ %best.promoted, %.lr.ph ], [ %14, %13 ]
  %indvars.iv4 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %13 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv4
  %6 = load i32, ptr %5, align 4
  %7 = sub nsw i32 %6, %2
  %8 = call i32 @llvm.abs.i32(i32 %7, i1 true)
  %9 = sub nsw i32 %4, %2
  %10 = call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = icmp samesign ult i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 %6, ptr @best, align 4
  br label %13

13:                                               ; preds = %12, %3
  %14 = phi i32 [ %6, %12 ], [ %4, %3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %3, label %._crit_edge6, !llvm.loop !16

._crit_edge6:                                     ; preds = %13
  %split7 = phi i32 [ %14, %13 ]
  br label %15

15:                                               ; preds = %._crit_edge6, %0
  %.lcssa1 = phi i32 [ %split7, %._crit_edge6 ], [ %best.promoted, %0 ]
  %16 = icmp eq i32 %.lcssa1, %2
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %32

18:                                               ; preds = %15
  store i32 1, ptr @dmax, align 4
  %19 = icmp slt i32 1, %.pre
  br i1 %19, label %.lr.ph9, label %._crit_edge

.lr.ph9:                                          ; preds = %18
  br label %20

.._crit_edge_crit_edge:                           ; preds = %22
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %18
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %26

20:                                               ; preds = %.lr.ph9, %22
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %21 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %22, label %split

22:                                               ; preds = %20
  %23 = load i32, ptr @dmax, align 4
  %24 = add nsw i32 %23, 1
  %.pre1 = load i32, ptr @listLength, align 4
  store i32 %24, ptr @dmax, align 4
  %25 = icmp slt i32 %24, %.pre1
  br i1 %25, label %20, label %.._crit_edge_crit_edge, !llvm.loop !17

split:                                            ; preds = %20
  %.lcssa = phi i32 [ %21, %20 ]
  br label %26

26:                                               ; preds = %split, %._crit_edge
  %27 = phi i32 [ %.lcssa, %split ], [ %.pre2, %._crit_edge ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load ptr, ptr @solution, align 8
  %31 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %30, i32 noundef %31)
  br label %32

32:                                               ; preds = %29, %26, %17
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
  %6 = call i32 @getchar() #9
  %7 = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %6, label %8 [
    i32 -1, label %14
    i32 10, label %14
  ]

8:                                                ; preds = %5
  %9 = call ptr @__acrt_iob_func(i32 noundef 0) #9
  %10 = call i32 @ungetc(i32 noundef %6, ptr noundef %9) #9
  %11 = call ptr @__acrt_iob_func(i32 noundef 0) #9
  %12 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %13 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #9
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind }
attributes #10 = { cold noreturn nounwind }

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
