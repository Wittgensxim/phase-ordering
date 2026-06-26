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
  br i1 %4, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %.01 = phi i32 [ 0, %.lr.ph ], [ %10, %5 ]
  %6 = zext nneg i32 %.01 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  store i32 %8, ptr %9, align 4
  %10 = add nuw nsw i32 %.01, 1
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
  %5 = zext nneg i32 %.01 to i64
  %6 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %7, align 4
  %8 = add nuw nsw i32 %.01, 1
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
  %6 = zext nneg i32 %.01 to i64
  %7 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %6
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i32 %.01, 1
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %5, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %5
  br label %18

18:                                               ; preds = %._crit_edge, %3
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds [12 x i8], ptr %0, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 0, ptr %21, align 4
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
  br i1 %3, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %28
  %.01 = phi i32 [ 0, %.lr.ph ], [ %29, %28 ]
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

11:                                               ; preds = %4
  %putchar5 = call i32 @putchar(i32 32)
  br label %18

12:                                               ; preds = %4
  %putchar4 = call i32 @putchar(i32 43)
  br label %18

13:                                               ; preds = %4
  %putchar3 = call i32 @putchar(i32 45)
  br label %18

14:                                               ; preds = %4
  %putchar2 = call i32 @putchar(i32 42)
  br label %18

15:                                               ; preds = %4
  %putchar1 = call i32 @putchar(i32 58)
  br label %18

16:                                               ; preds = %4
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %10) #8
  br label %18

18:                                               ; preds = %16, %15, %14, %13, %12, %11
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @calculate(ptr noundef nonnull %6)
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %20, i32 noundef %21) #8
  %23 = add nsw i32 %1, -1
  %24 = icmp slt i32 %.01, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %28

27:                                               ; preds = %18
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %28

28:                                               ; preds = %27, %25
  %29 = add nuw nsw i32 %.01, 1
  %30 = icmp slt i32 %29, %1
  br i1 %30, label %4, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge, %2
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 0, %1
  br i1 %4, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %13
  %.01 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %6 = shl nuw i32 1, %.01
  %7 = and i32 %6, %2
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %13

8:                                                ; preds = %5
  %9 = zext nneg i32 %.01 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %11) #8
  br label %13

13:                                               ; preds = %8, %5
  %14 = add nuw nsw i32 %.01, 1
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %13
  br label %16

16:                                               ; preds = %._crit_edge, %3
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %95

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
  br i1 %23, label %24, label %95

24:                                               ; preds = %9
  store i32 %16, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %25 = load ptr, ptr @solution, align 8
  %26 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %25, ptr noundef %26, i32 noundef %0)
  %27 = load i32, ptr @best, align 4
  %28 = load i32, ptr @goal, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %95

30:                                               ; preds = %24
  %31 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %31, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %95

.preheader1:                                      ; preds = %.preheader2, %92
  %.027 = phi i32 [ 1, %.preheader2 ], [ %93, %92 ]
  %32 = load i32, ptr @listLength, align 4
  %33 = add nsw i32 %32, %0
  %34 = icmp slt i32 0, %33
  br i1 %34, label %.lr.ph6, label %92

.lr.ph6:                                          ; preds = %.preheader1
  br label %35

35:                                               ; preds = %.lr.ph6, %87
  %.045 = phi i32 [ 0, %.lr.ph6 ], [ %88, %87 ]
  %36 = shl nuw i32 1, %.045
  %37 = and i32 %36, %1
  %.not1 = icmp eq i32 %37, 0
  br i1 %.not1, label %.preheader, label %87

.preheader:                                       ; preds = %35
  %38 = icmp samesign ult i32 0, %.045
  br i1 %38, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  br label %39

39:                                               ; preds = %.lr.ph, %84
  %.034 = phi i32 [ 0, %.lr.ph ], [ %85, %84 ]
  %40 = shl nuw i32 1, %.034
  %41 = and i32 %40, %1
  %.not2 = icmp eq i32 %41, 0
  br i1 %.not2, label %42, label %84

42:                                               ; preds = %39
  %43 = load ptr, ptr @workList, align 8
  %44 = zext nneg i32 %.045 to i64
  %45 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = zext nneg i32 %.034 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %47
  %49 = load i32, ptr %48, align 4
  switch i32 %.027, label %53 [
    i32 3, label %50
    i32 4, label %50
  ]

50:                                               ; preds = %42, %42
  %51 = icmp eq i32 %46, 1
  %52 = icmp eq i32 %49, 1
  %or.cond = select i1 %51, i1 true, i1 %52
  br i1 %or.cond, label %84, label %53

53:                                               ; preds = %50, %42
  %54 = icmp eq i32 %46, 0
  %55 = icmp eq i32 %49, 0
  %or.cond1 = select i1 %54, i1 true, i1 %55
  br i1 %or.cond1, label %84, label %56

56:                                               ; preds = %53
  %57 = icmp eq i32 %.027, 4
  br i1 %57, label %58, label %.critedge

58:                                               ; preds = %56
  %59 = srem i32 %46, %49
  %.not3 = icmp eq i32 %59, 0
  br i1 %.not3, label %60, label %84

60:                                               ; preds = %58
  %.old3 = icmp slt i32 %46, %49
  br i1 %.old3, label %62, label %63

.critedge:                                        ; preds = %56
  %.old = icmp eq i32 %.027, 2
  %61 = icmp slt i32 %46, %49
  %or.cond4 = select i1 %.old, i1 %61, i1 false
  br i1 %or.cond4, label %62, label %63

62:                                               ; preds = %.critedge, %60
  br label %63

63:                                               ; preds = %62, %.critedge, %60
  %.01 = phi i32 [ %49, %62 ], [ %46, %60 ], [ %46, %.critedge ]
  %.0 = phi i32 [ %46, %62 ], [ %49, %60 ], [ %49, %.critedge ]
  %64 = or i32 %1, %36
  %65 = or i32 %64, %40
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

84:                                               ; preds = %63, %58, %53, %50, %39
  %85 = add nuw nsw i32 %.034, 1
  %86 = icmp samesign ult i32 %85, %.045
  br i1 %86, label %39, label %..loopexit_crit_edge, !llvm.loop !13

..loopexit_crit_edge:                             ; preds = %84
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %87

87:                                               ; preds = %.loopexit, %35
  %88 = add nuw nsw i32 %.045, 1
  %89 = load i32, ptr @listLength, align 4
  %90 = add nsw i32 %89, %0
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %35, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %87
  br label %92

92:                                               ; preds = %._crit_edge, %.preheader1
  %93 = add nuw nsw i32 %.027, 1
  %94 = icmp samesign ult i32 %93, 5
  br i1 %94, label %.preheader1, label %.loopexit3, !llvm.loop !15

.loopexit3:                                       ; preds = %92
  br label %95

95:                                               ; preds = %.loopexit3, %30, %24, %9, %2
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
  %.01 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %3 = load ptr, ptr @workList, align 8
  %4 = zext nneg i32 %.01 to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr @goal, align 4
  %8 = sub nsw i32 %6, %7
  %9 = call i32 @llvm.abs.i32(i32 %8, i1 true)
  %10 = load i32, ptr @best, align 4
  %11 = sub nsw i32 %10, %7
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = icmp samesign ult i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 %6, ptr @best, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = add nuw nsw i32 %.01, 1
  %17 = icmp slt i32 %16, %.pre
  br i1 %17, label %2, label %._crit_edge3, !llvm.loop !16

._crit_edge3:                                     ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge3, %0
  %19 = load i32, ptr @best, align 4
  %20 = load i32, ptr @goal, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %37

23:                                               ; preds = %18
  store i32 1, ptr @dmax, align 4
  %24 = icmp slt i32 1, %.pre
  br i1 %24, label %.lr.ph5, label %._crit_edge

.lr.ph5:                                          ; preds = %23
  br label %25

.._crit_edge_crit_edge:                           ; preds = %27
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %23
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %31

25:                                               ; preds = %.lr.ph5, %27
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %26 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %26, 0
  br i1 %.not, label %27, label %split

27:                                               ; preds = %25
  %28 = load i32, ptr @dmax, align 4
  %29 = add nsw i32 %28, 1
  %.pre1 = load i32, ptr @listLength, align 4
  store i32 %29, ptr @dmax, align 4
  %30 = icmp slt i32 %29, %.pre1
  br i1 %30, label %25, label %.._crit_edge_crit_edge, !llvm.loop !17

split:                                            ; preds = %25
  %.lcssa = phi i32 [ %26, %25 ]
  br label %31

31:                                               ; preds = %split, %._crit_edge
  %32 = phi i32 [ %.lcssa, %split ], [ %.pre2, %._crit_edge ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr @solution, align 8
  %36 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %35, i32 noundef %36)
  br label %37

37:                                               ; preds = %34, %31, %22
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
