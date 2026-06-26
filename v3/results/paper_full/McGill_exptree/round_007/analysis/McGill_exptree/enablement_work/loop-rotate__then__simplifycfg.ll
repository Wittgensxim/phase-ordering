; ModuleID = 'results\paper_full\McGill_exptree\round_006\output.ll'
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
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.01 = phi i32 [ %9, %.lr.ph ], [ 0, %3 ]
  %5 = zext nneg i32 %.01 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  store i32 %7, ptr %8, align 4
  %9 = add nuw nsw i32 %.01, 1
  %10 = icmp slt i32 %9, %2
  br i1 %10, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.01 = phi i32 [ %7, %.lr.ph ], [ 0, %2 ]
  %4 = zext nneg i32 %.01 to i64
  %5 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %4
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %6, align 4
  %7 = add nuw nsw i32 %.01, 1
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %2
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.01 = phi i32 [ %15, %.lr.ph ], [ 0, %3 ]
  %5 = zext nneg i32 %.01 to i64
  %6 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %5
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %13, ptr %14, align 4
  %15 = add nuw nsw i32 %.01, 1
  %16 = icmp slt i32 %15, %2
  br i1 %16, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %3
  %17 = sext i32 %2 to i64
  %18 = getelementptr inbounds [12 x i8], ptr %0, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %19, align 4
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
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %27
  %.01 = phi i32 [ %28, %27 ], [ 0, %2 ]
  %5 = zext nneg i32 %.01 to i64
  %6 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %7) #8
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %16 [
    i32 0, label %11
    i32 1, label %12
    i32 2, label %13
    i32 3, label %14
    i32 4, label %15
  ]

11:                                               ; preds = %.lr.ph
  %putchar5 = call i32 @putchar(i32 32)
  br label %18

12:                                               ; preds = %.lr.ph
  %putchar4 = call i32 @putchar(i32 43)
  br label %18

13:                                               ; preds = %.lr.ph
  %putchar3 = call i32 @putchar(i32 45)
  br label %18

14:                                               ; preds = %.lr.ph
  %putchar2 = call i32 @putchar(i32 42)
  br label %18

15:                                               ; preds = %.lr.ph
  %putchar1 = call i32 @putchar(i32 58)
  br label %18

16:                                               ; preds = %.lr.ph
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %10) #8
  br label %18

18:                                               ; preds = %16, %15, %14, %13, %12, %11
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @calculate(ptr noundef nonnull %6)
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %20, i32 noundef %21) #8
  %23 = icmp slt i32 %.01, %3
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %27

26:                                               ; preds = %18
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %27

27:                                               ; preds = %26, %24
  %28 = add nuw nsw i32 %.01, 1
  %29 = icmp slt i32 %28, %1
  br i1 %29, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %27, %2
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %1
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %3, %12
  %.01 = phi i32 [ %13, %12 ], [ 0, %3 ]
  %5 = shl nuw i32 1, %.01
  %6 = and i32 %5, %2
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %12

7:                                                ; preds = %.lr.ph
  %8 = zext nneg i32 %.01 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %10) #8
  br label %12

12:                                               ; preds = %7, %.lr.ph
  %13 = add nuw nsw i32 %.01, 1
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %12, %3
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %.loopexit3

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
  br i1 %25, label %26, label %.loopexit3

26:                                               ; preds = %11
  store i32 %18, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %27 = load ptr, ptr @solution, align 8
  %28 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %27, ptr noundef %28, i32 noundef %0)
  %29 = load i32, ptr @best, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %.loopexit3

32:                                               ; preds = %26
  %33 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %33, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %.loopexit3

.preheader1:                                      ; preds = %.preheader2, %._crit_edge
  %.024 = phi i32 [ 1, %.preheader2 ], [ %89, %._crit_edge ]
  %34 = icmp eq i32 %.024, 4
  %.old = icmp eq i32 %.024, 2
  %35 = load i32, ptr @listLength, align 4
  %36 = add nsw i32 %35, %0
  %37 = icmp slt i32 0, %36
  br i1 %37, label %.lr.ph3, label %._crit_edge

.lr.ph3:                                          ; preds = %.preheader1, %.loopexit
  %.042 = phi i32 [ %85, %.loopexit ], [ 0, %.preheader1 ]
  %38 = shl nuw i32 1, %.042
  %39 = and i32 %38, %1
  %.not1 = icmp eq i32 %39, 0
  br i1 %.not1, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.lr.ph3
  %40 = zext nneg i32 %.042 to i64
  %41 = or i32 %1, %38
  %42 = icmp samesign ult i32 0, %.042
  br i1 %42, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %82
  %.031 = phi i32 [ %83, %82 ], [ 0, %.preheader ]
  %43 = shl nuw i32 1, %.031
  %44 = and i32 %43, %1
  %.not2 = icmp eq i32 %44, 0
  br i1 %.not2, label %45, label %82

45:                                               ; preds = %.lr.ph
  %46 = load ptr, ptr @workList, align 8
  %47 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %40
  %48 = load i32, ptr %47, align 4
  %49 = zext nneg i32 %.031 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %49
  %51 = load i32, ptr %50, align 4
  switch i32 %.024, label %55 [
    i32 3, label %52
    i32 4, label %52
  ]

52:                                               ; preds = %45, %45
  %53 = icmp eq i32 %48, 1
  %54 = icmp eq i32 %51, 1
  %or.cond = select i1 %53, i1 true, i1 %54
  br i1 %or.cond, label %82, label %55

55:                                               ; preds = %52, %45
  %56 = icmp eq i32 %48, 0
  %57 = icmp eq i32 %51, 0
  %or.cond1 = select i1 %56, i1 true, i1 %57
  br i1 %or.cond1, label %82, label %58

58:                                               ; preds = %55
  br i1 %34, label %59, label %.critedge

59:                                               ; preds = %58
  %60 = srem i32 %48, %51
  %.not3 = icmp eq i32 %60, 0
  br i1 %.not3, label %61, label %82

61:                                               ; preds = %59
  %.old3 = icmp slt i32 %48, %51
  br i1 %.old3, label %63, label %64

.critedge:                                        ; preds = %58
  %62 = icmp slt i32 %48, %51
  %or.cond4 = select i1 %.old, i1 %62, i1 false
  br i1 %or.cond4, label %63, label %64

63:                                               ; preds = %.critedge, %61
  br label %64

64:                                               ; preds = %63, %.critedge, %61
  %.01 = phi i32 [ %51, %63 ], [ %48, %61 ], [ %48, %.critedge ]
  %.0 = phi i32 [ %48, %63 ], [ %51, %61 ], [ %51, %.critedge ]
  %65 = or i32 %41, %43
  %66 = load ptr, ptr @combList, align 8
  %67 = getelementptr inbounds [12 x i8], ptr %66, i64 %9
  store i32 %.01, ptr %67, align 4
  %68 = load ptr, ptr @combList, align 8
  %69 = getelementptr inbounds [12 x i8], ptr %68, i64 %9
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 4
  store i32 %.0, ptr %70, align 4
  %71 = load ptr, ptr @combList, align 8
  %72 = getelementptr inbounds [12 x i8], ptr %71, i64 %9
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i32 %.024, ptr %73, align 4
  %74 = load ptr, ptr @combList, align 8
  %75 = getelementptr inbounds [12 x i8], ptr %74, i64 %9
  %76 = call i32 @calculate(ptr noundef %75)
  %77 = load ptr, ptr @workList, align 8
  %78 = load i32, ptr @listLength, align 4
  %79 = add nsw i32 %78, %0
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i8], ptr %77, i64 %80
  store i32 %76, ptr %81, align 4
  call void @recSearch(i32 noundef %10, i32 noundef %65)
  br label %82

82:                                               ; preds = %64, %59, %55, %52, %.lr.ph
  %83 = add nuw nsw i32 %.031, 1
  %84 = icmp samesign ult i32 %83, %.042
  br i1 %84, label %.lr.ph, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %.preheader, %82, %.lr.ph3
  %85 = add nuw nsw i32 %.042, 1
  %86 = load i32, ptr @listLength, align 4
  %87 = add nsw i32 %86, %0
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %.lr.ph3, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %.loopexit, %.preheader1
  %89 = add nuw nsw i32 %.024, 1
  %90 = icmp samesign ult i32 %89, 5
  br i1 %90, label %.preheader1, label %.loopexit3, !llvm.loop !15

.loopexit3:                                       ; preds = %._crit_edge, %32, %26, %11, %2
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
  br i1 %3, label %.lr.ph, label %._crit_edge4

.lr.ph:                                           ; preds = %0, %14
  %.02 = phi i32 [ %16, %14 ], [ 0, %0 ]
  %4 = phi i32 [ %15, %14 ], [ %best.promoted, %0 ]
  %5 = zext nneg i32 %.02 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sub nsw i32 %7, %2
  %9 = call i32 @llvm.abs.i32(i32 %8, i1 true)
  %10 = sub nsw i32 %4, %2
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = icmp samesign ult i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %.lr.ph
  store i32 %7, ptr @best, align 4
  br label %14

14:                                               ; preds = %13, %.lr.ph
  %15 = phi i32 [ %7, %13 ], [ %4, %.lr.ph ]
  %16 = add nuw nsw i32 %.02, 1
  %17 = icmp slt i32 %16, %.pre
  br i1 %17, label %.lr.ph, label %._crit_edge4, !llvm.loop !16

._crit_edge4:                                     ; preds = %14, %0
  %.lcssa1 = phi i32 [ %best.promoted, %0 ], [ %15, %14 ]
  %18 = icmp eq i32 %.lcssa1, %2
  br i1 %18, label %19, label %20

19:                                               ; preds = %._crit_edge4
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %32

20:                                               ; preds = %._crit_edge4
  store i32 1, ptr @dmax, align 4
  %21 = icmp slt i32 1, %.pre
  br i1 %21, label %.lr.ph7, label %._crit_edge

._crit_edge:                                      ; preds = %23, %20
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %split

.lr.ph7:                                          ; preds = %20, %23
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %22 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %22, 0
  br i1 %.not, label %23, label %split

23:                                               ; preds = %.lr.ph7
  %24 = load i32, ptr @dmax, align 4
  %25 = add nsw i32 %24, 1
  %.pre1 = load i32, ptr @listLength, align 4
  store i32 %25, ptr @dmax, align 4
  %26 = icmp slt i32 %25, %.pre1
  br i1 %26, label %.lr.ph7, label %._crit_edge, !llvm.loop !17

split:                                            ; preds = %.lr.ph7, %._crit_edge
  %27 = phi i32 [ %.pre2, %._crit_edge ], [ %22, %.lr.ph7 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %split
  %30 = load ptr, ptr @solution, align 8
  %31 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %30, i32 noundef %31)
  br label %32

32:                                               ; preds = %29, %split, %19
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

5:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %14, %7 ]
  %6 = call i32 @getchar() #8
  switch i32 %6, label %7 [
    i32 -1, label %15
    i32 10, label %15
  ]

7:                                                ; preds = %5
  %8 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %9 = call i32 @ungetc(i32 noundef %6, ptr noundef %8) #8
  %10 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %11 = zext nneg i32 %.0 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %11
  %13 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #8
  %14 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !18

15:                                               ; preds = %5, %5
  %.0.lcssa = phi i32 [ %.0, %5 ], [ %.0, %5 ]
  %16 = icmp eq i32 %.0.lcssa, 0
  %17 = add nsw i32 %.0.lcssa, -1
  %18 = select i1 %16, i32 3, i32 %17
  store i32 %18, ptr @listLength, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %1, i64 %19
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr @goal, align 4
  %22 = shl nsw i32 %18, 1
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
  call void @initWorkList(ptr noundef %28, ptr noundef nonnull %1, i32 noundef %29)
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
