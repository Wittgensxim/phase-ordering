; ModuleID = 'results\paper_full\McGill_exptree\round_005\output.ll'
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
define dso_local nonnull ptr @newWorkList(i32 noundef %0) #0 {
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
define dso_local nonnull ptr @newCombList(i32 noundef %0) #0 {
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
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %11, %6 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = zext nneg i32 %.0 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %.0, 1
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
  %6 = zext nneg i32 %.0 to i64
  %7 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %8, align 4
  %9 = add nuw nsw i32 %.0, 1
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
  %7 = zext nneg i32 %.0 to i64
  %8 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %7
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %15, ptr %16, align 4
  %17 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !10

18:                                               ; preds = %4
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
  %3 = add nsw i32 %1, -1
  br label %4

4:                                                ; preds = %29, %2
  %.0 = phi i32 [ 0, %2 ], [ %30, %29 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %31

6:                                                ; preds = %4
  %7 = zext nneg i32 %.0 to i64
  %8 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9) #8
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 1, label %14
    i32 2, label %15
    i32 3, label %16
    i32 4, label %17
  ]

13:                                               ; preds = %6
  %putchar5 = call i32 @putchar(i32 32)
  br label %20

14:                                               ; preds = %6
  %putchar4 = call i32 @putchar(i32 43)
  br label %20

15:                                               ; preds = %6
  %putchar3 = call i32 @putchar(i32 45)
  br label %20

16:                                               ; preds = %6
  %putchar2 = call i32 @putchar(i32 42)
  br label %20

17:                                               ; preds = %6
  %putchar1 = call i32 @putchar(i32 58)
  br label %20

18:                                               ; preds = %6
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %12) #8
  br label %20

20:                                               ; preds = %18, %17, %16, %15, %14, %13
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @calculate(ptr noundef nonnull %8)
  %24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %22, i32 noundef %23) #8
  %25 = icmp slt i32 %.0, %3
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %29

28:                                               ; preds = %20
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %29

29:                                               ; preds = %28, %26
  %30 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !11

31:                                               ; preds = %4
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %14, %3
  %.0 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = shl nuw i32 1, %.0
  %8 = and i32 %7, %2
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %9, label %14

9:                                                ; preds = %6
  %10 = zext nneg i32 %.0 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %12) #8
  br label %14

14:                                               ; preds = %9, %6
  %15 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !12

16:                                               ; preds = %4
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %94

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
  br label %34

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
  br i1 %25, label %26, label %94

26:                                               ; preds = %11
  store i32 %18, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %27 = load ptr, ptr @solution, align 8
  %28 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %27, ptr noundef %28, i32 noundef %0)
  %29 = load i32, ptr @best, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %94

32:                                               ; preds = %26
  %33 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %33, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %94

34:                                               ; preds = %92, %.preheader2
  %.02 = phi i32 [ %93, %92 ], [ 1, %.preheader2 ]
  %35 = icmp samesign ult i32 %.02, 5
  br i1 %35, label %.preheader1, label %.loopexit3

.preheader1:                                      ; preds = %34
  %36 = icmp eq i32 %.02, 4
  %.old = icmp eq i32 %.02, 2
  br label %37

37:                                               ; preds = %90, %.preheader1
  %.04 = phi i32 [ %91, %90 ], [ 0, %.preheader1 ]
  %38 = load i32, ptr @listLength, align 4
  %39 = add nsw i32 %38, %0
  %40 = icmp slt i32 %.04, %39
  br i1 %40, label %41, label %92

41:                                               ; preds = %37
  %42 = shl nuw i32 1, %.04
  %43 = and i32 %42, %1
  %.not1 = icmp eq i32 %43, 0
  br i1 %.not1, label %.preheader, label %90

.preheader:                                       ; preds = %41
  %44 = zext nneg i32 %.04 to i64
  %45 = or i32 %1, %42
  br label %46

46:                                               ; preds = %88, %.preheader
  %.03 = phi i32 [ %89, %88 ], [ 0, %.preheader ]
  %47 = icmp samesign ult i32 %.03, %.04
  br i1 %47, label %48, label %.loopexit

48:                                               ; preds = %46
  %49 = shl nuw i32 1, %.03
  %50 = and i32 %49, %1
  %.not2 = icmp eq i32 %50, 0
  br i1 %.not2, label %51, label %88

51:                                               ; preds = %48
  %52 = load ptr, ptr @workList, align 8
  %53 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %44
  %54 = load i32, ptr %53, align 4
  %55 = zext nneg i32 %.03 to i64
  %56 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %55
  %57 = load i32, ptr %56, align 4
  switch i32 %.02, label %61 [
    i32 3, label %58
    i32 4, label %58
  ]

58:                                               ; preds = %51, %51
  %59 = icmp eq i32 %54, 1
  %60 = icmp eq i32 %57, 1
  %or.cond = select i1 %59, i1 true, i1 %60
  br i1 %or.cond, label %88, label %61

61:                                               ; preds = %58, %51
  %62 = icmp eq i32 %54, 0
  %63 = icmp eq i32 %57, 0
  %or.cond1 = select i1 %62, i1 true, i1 %63
  br i1 %or.cond1, label %88, label %64

64:                                               ; preds = %61
  br i1 %36, label %65, label %.critedge

65:                                               ; preds = %64
  %66 = srem i32 %54, %57
  %.not3 = icmp eq i32 %66, 0
  br i1 %.not3, label %67, label %88

67:                                               ; preds = %65
  %.old3 = icmp slt i32 %54, %57
  br i1 %.old3, label %69, label %70

.critedge:                                        ; preds = %64
  %68 = icmp slt i32 %54, %57
  %or.cond4 = select i1 %.old, i1 %68, i1 false
  br i1 %or.cond4, label %69, label %70

69:                                               ; preds = %.critedge, %67
  br label %70

70:                                               ; preds = %69, %.critedge, %67
  %.01 = phi i32 [ %57, %69 ], [ %54, %67 ], [ %54, %.critedge ]
  %.0 = phi i32 [ %54, %69 ], [ %57, %67 ], [ %57, %.critedge ]
  %71 = or i32 %45, %49
  %72 = load ptr, ptr @combList, align 8
  %73 = getelementptr inbounds [12 x i8], ptr %72, i64 %9
  store i32 %.01, ptr %73, align 4
  %74 = load ptr, ptr @combList, align 8
  %75 = getelementptr inbounds [12 x i8], ptr %74, i64 %9
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 4
  store i32 %.0, ptr %76, align 4
  %77 = load ptr, ptr @combList, align 8
  %78 = getelementptr inbounds [12 x i8], ptr %77, i64 %9
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 8
  store i32 %.02, ptr %79, align 4
  %80 = load ptr, ptr @combList, align 8
  %81 = getelementptr inbounds [12 x i8], ptr %80, i64 %9
  %82 = call i32 @calculate(ptr noundef %81)
  %83 = load ptr, ptr @workList, align 8
  %84 = load i32, ptr @listLength, align 4
  %85 = add nsw i32 %84, %0
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i8], ptr %83, i64 %86
  store i32 %82, ptr %87, align 4
  call void @recSearch(i32 noundef %10, i32 noundef %71)
  br label %88

88:                                               ; preds = %70, %65, %61, %58, %48
  %89 = add nuw nsw i32 %.03, 1
  br label %46, !llvm.loop !13

.loopexit:                                        ; preds = %46
  br label %90

90:                                               ; preds = %.loopexit, %41
  %91 = add nuw nsw i32 %.04, 1
  br label %37, !llvm.loop !14

92:                                               ; preds = %37
  %93 = add nuw nsw i32 %.02, 1
  br label %34, !llvm.loop !15

.loopexit3:                                       ; preds = %34
  br label %94

94:                                               ; preds = %.loopexit3, %32, %26, %11, %2
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
  br label %3

3:                                                ; preds = %16, %0
  %4 = phi i32 [ %best.promoted, %0 ], [ %17, %16 ]
  %.0 = phi i32 [ 0, %0 ], [ %18, %16 ]
  %5 = icmp slt i32 %.0, %.pre
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = zext nneg i32 %.0 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sub nsw i32 %9, %2
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = sub nsw i32 %4, %2
  %13 = call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = icmp samesign ult i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  store i32 %9, ptr @best, align 4
  br label %16

16:                                               ; preds = %15, %6
  %17 = phi i32 [ %9, %15 ], [ %4, %6 ]
  %18 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !16

19:                                               ; preds = %3
  %20 = icmp eq i32 %4, %2
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %37

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %28, %22
  %24 = phi i32 [ %.pre, %22 ], [ %.pre1, %28 ]
  %storemerge = phi i32 [ 1, %22 ], [ %30, %28 ]
  store i32 %storemerge, ptr @dmax, align 4
  %25 = icmp slt i32 %storemerge, %24
  br i1 %25, label %26, label %._crit_edge

._crit_edge:                                      ; preds = %23
  %.pre2 = load i32, ptr @stopSearch, align 4
  br label %31

26:                                               ; preds = %23
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %27 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %27, 0
  br i1 %.not, label %28, label %split

28:                                               ; preds = %26
  %29 = load i32, ptr @dmax, align 4
  %30 = add nsw i32 %29, 1
  %.pre1 = load i32, ptr @listLength, align 4
  br label %23, !llvm.loop !17

split:                                            ; preds = %26
  br label %31

31:                                               ; preds = %split, %._crit_edge
  %32 = phi i32 [ %27, %split ], [ %.pre2, %._crit_edge ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr @solution, align 8
  %36 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %35, i32 noundef %36)
  br label %37

37:                                               ; preds = %34, %31, %21
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
  %16 = icmp eq i32 %.0, 0
  %17 = add nsw i32 %.0, -1
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
