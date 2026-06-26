; ModuleID = 'results\paper_full\McGill_exptree\round_004\output.ll'
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
  %3 = add nsw i32 %1, -1
  %4 = icmp slt i32 0, %1
  br i1 %4, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  %5 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %.lr.ph, %28
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %28 ]
  %7 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %8) #8
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %17 [
    i32 0, label %12
    i32 1, label %13
    i32 2, label %14
    i32 3, label %15
    i32 4, label %16
  ]

12:                                               ; preds = %6
  %putchar5 = call i32 @putchar(i32 32)
  br label %19

13:                                               ; preds = %6
  %putchar4 = call i32 @putchar(i32 43)
  br label %19

14:                                               ; preds = %6
  %putchar3 = call i32 @putchar(i32 45)
  br label %19

15:                                               ; preds = %6
  %putchar2 = call i32 @putchar(i32 42)
  br label %19

16:                                               ; preds = %6
  %putchar1 = call i32 @putchar(i32 58)
  br label %19

17:                                               ; preds = %6
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %11) #8
  br label %19

19:                                               ; preds = %17, %16, %15, %14, %13, %12
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @calculate(ptr noundef nonnull %7)
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %21, i32 noundef %22) #8
  %24 = icmp slt i64 %indvars.iv, %5
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %28

27:                                               ; preds = %19
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %28

28:                                               ; preds = %27, %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %6, label %._crit_edge, !llvm.loop !11

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
  %.024 = phi i32 [ 1, %.preheader2 ], [ %91, %90 ]
  %34 = icmp eq i32 %.024, 4
  %.old = icmp eq i32 %.024, 2
  %35 = load i32, ptr @listLength, align 4
  %36 = add nsw i32 %35, %0
  %37 = icmp slt i32 0, %36
  br i1 %37, label %.lr.ph3, label %90

.lr.ph3:                                          ; preds = %.preheader1
  br label %38

38:                                               ; preds = %.lr.ph3, %85
  %indvars.iv6 = phi i64 [ 0, %.lr.ph3 ], [ %indvars.iv.next7, %85 ]
  %39 = trunc nuw nsw i64 %indvars.iv6 to i32
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %1
  %.not1 = icmp eq i32 %41, 0
  br i1 %.not1, label %.preheader, label %85

.preheader:                                       ; preds = %38
  %42 = or i32 %1, %40
  %43 = icmp samesign ult i64 0, %indvars.iv6
  br i1 %43, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  br label %44

44:                                               ; preds = %.lr.ph, %84
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %84 ]
  %45 = trunc nuw nsw i64 %indvars.iv to i32
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %1
  %.not2 = icmp eq i32 %47, 0
  br i1 %.not2, label %48, label %84

48:                                               ; preds = %44
  %49 = load ptr, ptr @workList, align 8
  %50 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %indvars.iv6
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %indvars.iv
  %53 = load i32, ptr %52, align 4
  switch i32 %.024, label %57 [
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
  %67 = or i32 %42, %46
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
  store i32 %.024, ptr %75, align 4
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
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %indvars.iv6
  br i1 %exitcond, label %44, label %..loopexit_crit_edge, !llvm.loop !13

..loopexit_crit_edge:                             ; preds = %84
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %85

85:                                               ; preds = %.loopexit, %38
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %86 = load i32, ptr @listLength, align 4
  %87 = add nsw i32 %86, %0
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %indvars.iv.next7, %88
  br i1 %89, label %38, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %85
  br label %90

90:                                               ; preds = %._crit_edge, %.preheader1
  %91 = add nuw nsw i32 %.024, 1
  %exitcond9 = icmp ne i32 %91, 5
  br i1 %exitcond9, label %.preheader1, label %.loopexit3, !llvm.loop !15

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
  %3 = icmp slt i32 0, %.pre
  br i1 %3, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %0
  %wide.trip.count = zext i32 %.pre to i64
  br label %4

4:                                                ; preds = %.lr.ph, %14
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %5 = phi i32 [ %best.promoted, %.lr.ph ], [ %15, %14 ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sub nsw i32 %7, %2
  %9 = call i32 @llvm.abs.i32(i32 %8, i1 true)
  %10 = sub nsw i32 %5, %2
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = icmp samesign ult i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 %7, ptr @best, align 4
  br label %14

14:                                               ; preds = %13, %4
  %15 = phi i32 [ %7, %13 ], [ %5, %4 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %4, label %._crit_edge4, !llvm.loop !16

._crit_edge4:                                     ; preds = %14
  %split5 = phi i32 [ %15, %14 ]
  br label %16

16:                                               ; preds = %._crit_edge4, %0
  %.lcssa1 = phi i32 [ %split5, %._crit_edge4 ], [ %best.promoted, %0 ]
  %17 = icmp eq i32 %.lcssa1, %2
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %33

19:                                               ; preds = %16
  store i32 1, ptr @dmax, align 4
  %20 = icmp slt i32 1, %.pre
  br i1 %20, label %.lr.ph7, label %._crit_edge

.lr.ph7:                                          ; preds = %19
  br label %21

.._crit_edge_crit_edge:                           ; preds = %23
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %19
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %27

21:                                               ; preds = %.lr.ph7, %23
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %22 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %22, 0
  br i1 %.not, label %23, label %split

23:                                               ; preds = %21
  %24 = load i32, ptr @dmax, align 4
  %25 = add nsw i32 %24, 1
  %.pre1 = load i32, ptr @listLength, align 4
  store i32 %25, ptr @dmax, align 4
  %26 = icmp slt i32 %25, %.pre1
  br i1 %26, label %21, label %.._crit_edge_crit_edge, !llvm.loop !17

split:                                            ; preds = %21
  %.lcssa = phi i32 [ %22, %21 ]
  br label %27

27:                                               ; preds = %split, %._crit_edge
  %28 = phi i32 [ %.lcssa, %split ], [ %.pre2, %._crit_edge ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr @solution, align 8
  %32 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %31, i32 noundef %32)
  br label %33

33:                                               ; preds = %30, %27, %18
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
