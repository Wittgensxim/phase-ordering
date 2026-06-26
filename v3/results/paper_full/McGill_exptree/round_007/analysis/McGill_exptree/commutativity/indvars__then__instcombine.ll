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
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %4

4:                                                ; preds = %5, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %5 ], [ 0, %3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %9, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %7, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !7

9:                                                ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %3

3:                                                ; preds = %4, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %4 ], [ 0, %2 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %7, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %3, !llvm.loop !9

7:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %4

4:                                                ; preds = %5, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %5 ], [ 0, %3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %15, label %5

5:                                                ; preds = %4
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
  br label %4, !llvm.loop !10

15:                                               ; preds = %4
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
  %4 = sext i32 %3 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %5

5:                                                ; preds = %28, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %28 ], [ 0, %2 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %29, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %8) #9
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
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %11) #9
  br label %19

19:                                               ; preds = %17, %16, %15, %14, %13, %12
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @calculate(ptr noundef nonnull %7)
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %21, i32 noundef %22) #9
  %24 = icmp slt i64 %indvars.iv, %4
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #9
  br label %28

27:                                               ; preds = %19
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %28

28:                                               ; preds = %27, %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !11

29:                                               ; preds = %5
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %4

4:                                                ; preds = %13, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %14, label %5

5:                                                ; preds = %4
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, %2
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %11) #9
  br label %13

13:                                               ; preds = %9, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

14:                                               ; preds = %4
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %91

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
  br i1 %25, label %26, label %91

26:                                               ; preds = %11
  store i32 %18, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %27 = load ptr, ptr @solution, align 8
  %28 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %27, ptr noundef %28, i32 noundef %0)
  %29 = load i32, ptr @best, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %91

32:                                               ; preds = %26
  %33 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %33, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %91

34:                                               ; preds = %89, %.preheader2
  %.02 = phi i32 [ %90, %89 ], [ 1, %.preheader2 ]
  %exitcond5.not = icmp eq i32 %.02, 5
  br i1 %exitcond5.not, label %.loopexit3, label %.preheader1

.preheader1:                                      ; preds = %34
  %35 = icmp eq i32 %.02, 4
  %.old = icmp eq i32 %.02, 2
  br label %36

36:                                               ; preds = %88, %.preheader1
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %88 ], [ 0, %.preheader1 ]
  %37 = load i32, ptr @listLength, align 4
  %38 = add nsw i32 %37, %0
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %indvars.iv2, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %36
  %42 = trunc nuw nsw i64 %indvars.iv2 to i32
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %1
  %.not1 = icmp eq i32 %44, 0
  br i1 %.not1, label %.preheader, label %88

.preheader:                                       ; preds = %41
  %45 = or i32 %1, %43
  br label %46

46:                                               ; preds = %87, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %87 ], [ 0, %.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv2
  br i1 %exitcond.not, label %.loopexit, label %47

47:                                               ; preds = %46
  %48 = trunc nuw nsw i64 %indvars.iv to i32
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %1
  %.not2 = icmp eq i32 %50, 0
  br i1 %.not2, label %51, label %87

51:                                               ; preds = %47
  %52 = load ptr, ptr @workList, align 8
  %53 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %indvars.iv2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %indvars.iv
  %56 = load i32, ptr %55, align 4
  switch i32 %.02, label %60 [
    i32 3, label %57
    i32 4, label %57
  ]

57:                                               ; preds = %51, %51
  %58 = icmp eq i32 %54, 1
  %59 = icmp eq i32 %56, 1
  %or.cond = select i1 %58, i1 true, i1 %59
  br i1 %or.cond, label %87, label %60

60:                                               ; preds = %57, %51
  %61 = icmp eq i32 %54, 0
  %62 = icmp eq i32 %56, 0
  %or.cond1 = select i1 %61, i1 true, i1 %62
  br i1 %or.cond1, label %87, label %63

63:                                               ; preds = %60
  br i1 %35, label %64, label %.critedge

64:                                               ; preds = %63
  %65 = srem i32 %54, %56
  %.not3 = icmp eq i32 %65, 0
  br i1 %.not3, label %66, label %87

66:                                               ; preds = %64
  %.old3 = icmp slt i32 %54, %56
  br i1 %.old3, label %68, label %69

.critedge:                                        ; preds = %63
  %67 = icmp slt i32 %54, %56
  %or.cond4 = select i1 %.old, i1 %67, i1 false
  br i1 %or.cond4, label %68, label %69

68:                                               ; preds = %.critedge, %66
  br label %69

69:                                               ; preds = %68, %.critedge, %66
  %.01 = phi i32 [ %56, %68 ], [ %54, %66 ], [ %54, %.critedge ]
  %.0 = phi i32 [ %54, %68 ], [ %56, %66 ], [ %56, %.critedge ]
  %70 = or i32 %45, %49
  %71 = load ptr, ptr @combList, align 8
  %72 = getelementptr inbounds [12 x i8], ptr %71, i64 %9
  store i32 %.01, ptr %72, align 4
  %73 = load ptr, ptr @combList, align 8
  %74 = getelementptr inbounds [12 x i8], ptr %73, i64 %9
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 4
  store i32 %.0, ptr %75, align 4
  %76 = load ptr, ptr @combList, align 8
  %77 = getelementptr inbounds [12 x i8], ptr %76, i64 %9
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i32 %.02, ptr %78, align 4
  %79 = load ptr, ptr @combList, align 8
  %80 = getelementptr inbounds [12 x i8], ptr %79, i64 %9
  %81 = call i32 @calculate(ptr noundef %80)
  %82 = load ptr, ptr @workList, align 8
  %83 = load i32, ptr @listLength, align 4
  %84 = add nsw i32 %83, %0
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i8], ptr %82, i64 %85
  store i32 %81, ptr %86, align 4
  call void @recSearch(i32 noundef %10, i32 noundef %70)
  br label %87

87:                                               ; preds = %69, %64, %60, %57, %47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %46, !llvm.loop !13

.loopexit:                                        ; preds = %46
  br label %88

88:                                               ; preds = %.loopexit, %41
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %36, !llvm.loop !14

89:                                               ; preds = %36
  %90 = add nuw nsw i32 %.02, 1
  br label %34, !llvm.loop !15

.loopexit3:                                       ; preds = %34
  br label %91

91:                                               ; preds = %.loopexit3, %32, %26, %11, %2
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
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %3

3:                                                ; preds = %14, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 0, %0 ]
  %4 = phi i32 [ %15, %14 ], [ %best.promoted, %0 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sub nsw i32 %7, %2
  %9 = call i32 @llvm.abs.i32(i32 %8, i1 true)
  %10 = sub nsw i32 %4, %2
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = icmp samesign ult i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store i32 %7, ptr @best, align 4
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i32 [ %7, %13 ], [ %4, %5 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %3, !llvm.loop !16

16:                                               ; preds = %3
  %17 = icmp eq i32 %4, %2
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %34

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %26, %19
  %21 = phi i32 [ %.pre, %19 ], [ %.pre1, %26 ]
  %storemerge = phi i32 [ 1, %19 ], [ %28, %26 ]
  store i32 %storemerge, ptr @dmax, align 4
  %22 = icmp slt i32 %storemerge, %21
  br i1 %22, label %24, label %._crit_edge

._crit_edge:                                      ; preds = %20
  %.pre2 = load i32, ptr @stopSearch, align 4
  %23 = icmp eq i32 %.pre2, 0
  br label %29

24:                                               ; preds = %20
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %25 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %25, 0
  br i1 %.not, label %26, label %split

26:                                               ; preds = %24
  %27 = load i32, ptr @dmax, align 4
  %28 = add nsw i32 %27, 1
  %.pre1 = load i32, ptr @listLength, align 4
  br label %20, !llvm.loop !17

split:                                            ; preds = %24
  br label %29

29:                                               ; preds = %split, %._crit_edge
  %30 = phi i1 [ false, %split ], [ %23, %._crit_edge ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load ptr, ptr @solution, align 8
  %33 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %32, i32 noundef %33)
  br label %34

34:                                               ; preds = %31, %29, %18
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
  %indvars.iv = phi i64 [ %indvars.iv.next, %7 ], [ 0, %0 ]
  %6 = call i32 @getchar() #9
  switch i32 %6, label %7 [
    i32 -1, label %13
    i32 10, label %13
  ]

7:                                                ; preds = %5
  %8 = call ptr @__acrt_iob_func(i32 noundef 0) #9
  %9 = call i32 @ungetc(i32 noundef %6, ptr noundef %8) #9
  %10 = call ptr @__acrt_iob_func(i32 noundef 0) #9
  %11 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %12 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !18

13:                                               ; preds = %5, %5
  %14 = trunc nuw nsw i64 %indvars.iv to i32
  %15 = icmp eq i64 %indvars.iv, 0
  %16 = add nsw i32 %14, -1
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
