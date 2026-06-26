; ModuleID = 'results\paper_full\McGill_exptree\round_000\output.ll'
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

24:                                               ; preds = %1, %19, %14, %9, %4
  %.0 = phi i32 [ %23, %19 ], [ %8, %4 ], [ %13, %9 ], [ %18, %14 ], [ 0, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %29, %2
  %.0 = phi i32 [ 0, %2 ], [ %30, %29 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %31

5:                                                ; preds = %3
  %6 = zext nneg i32 %.0 to i64
  %7 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %6
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

12:                                               ; preds = %5
  %putchar5 = call i32 @putchar(i32 32)
  br label %19

13:                                               ; preds = %5
  %putchar4 = call i32 @putchar(i32 43)
  br label %19

14:                                               ; preds = %5
  %putchar3 = call i32 @putchar(i32 45)
  br label %19

15:                                               ; preds = %5
  %putchar2 = call i32 @putchar(i32 42)
  br label %19

16:                                               ; preds = %5
  %putchar1 = call i32 @putchar(i32 58)
  br label %19

17:                                               ; preds = %5
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %11) #8
  br label %19

19:                                               ; preds = %17, %16, %15, %14, %13, %12
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @calculate(ptr noundef nonnull %7)
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %21, i32 noundef %22) #8
  %24 = add nsw i32 %1, -1
  %25 = icmp slt i32 %.0, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %29

28:                                               ; preds = %19
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %29

29:                                               ; preds = %26, %28
  %30 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !11

31:                                               ; preds = %3
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

14:                                               ; preds = %6, %9
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
  br i1 %.not, label %4, label %95

4:                                                ; preds = %2
  %5 = load i32, ptr @nbNodes, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @nbNodes, align 4
  %7 = load i32, ptr @dmax, align 4
  %8 = icmp eq i32 %0, %7
  br i1 %8, label %9, label %32

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

32:                                               ; preds = %4, %93
  %.02 = phi i32 [ %94, %93 ], [ 1, %4 ]
  %33 = icmp samesign ult i32 %.02, 5
  br i1 %33, label %34, label %95

34:                                               ; preds = %32, %91
  %.04 = phi i32 [ %92, %91 ], [ 0, %32 ]
  %35 = load i32, ptr @listLength, align 4
  %36 = add nsw i32 %35, %0
  %37 = icmp slt i32 %.04, %36
  br i1 %37, label %38, label %93

38:                                               ; preds = %34
  %39 = shl nuw i32 1, %.04
  %40 = and i32 %39, %1
  %.not1 = icmp eq i32 %40, 0
  br i1 %.not1, label %41, label %91

41:                                               ; preds = %38, %89
  %.03 = phi i32 [ %90, %89 ], [ 0, %38 ]
  %42 = icmp samesign ult i32 %.03, %.04
  br i1 %42, label %43, label %91

43:                                               ; preds = %41
  %44 = shl nuw i32 1, %.03
  %45 = and i32 %44, %1
  %.not2 = icmp eq i32 %45, 0
  br i1 %.not2, label %46, label %89

46:                                               ; preds = %43
  %47 = load ptr, ptr @workList, align 8
  %48 = zext nneg i32 %.04 to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = zext nneg i32 %.03 to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %51
  %53 = load i32, ptr %52, align 4
  switch i32 %.02, label %57 [
    i32 3, label %54
    i32 4, label %54
  ]

54:                                               ; preds = %46, %46
  %55 = icmp eq i32 %50, 1
  %56 = icmp eq i32 %53, 1
  %or.cond = select i1 %55, i1 true, i1 %56
  br i1 %or.cond, label %89, label %57

57:                                               ; preds = %54, %46
  %58 = icmp eq i32 %50, 0
  %59 = icmp eq i32 %53, 0
  %or.cond4 = select i1 %58, i1 true, i1 %59
  br i1 %or.cond4, label %89, label %60

60:                                               ; preds = %57
  %61 = icmp eq i32 %.02, 4
  br i1 %61, label %62, label %.critedge

62:                                               ; preds = %60
  %63 = srem i32 %50, %53
  %.not3 = icmp eq i32 %63, 0
  br i1 %.not3, label %64, label %89

64:                                               ; preds = %62
  %65 = icmp eq i32 %.02, 2
  %or.cond5 = or i1 %61, %65
  %.old6 = icmp slt i32 %50, %53
  %or.cond8 = select i1 %or.cond5, i1 %.old6, i1 false
  br i1 %or.cond8, label %67, label %68

.critedge:                                        ; preds = %60
  %.old = icmp eq i32 %.02, 2
  %66 = icmp slt i32 %50, %53
  %or.cond7 = select i1 %.old, i1 %66, i1 false
  br i1 %or.cond7, label %67, label %68

67:                                               ; preds = %64, %.critedge
  br label %68

68:                                               ; preds = %64, %67, %.critedge
  %.01 = phi i32 [ %53, %67 ], [ %50, %64 ], [ %50, %.critedge ]
  %.0 = phi i32 [ %50, %67 ], [ %53, %64 ], [ %53, %.critedge ]
  %69 = or i32 %1, %39
  %70 = or i32 %69, %44
  %71 = load ptr, ptr @combList, align 8
  %72 = sext i32 %0 to i64
  %73 = getelementptr inbounds [12 x i8], ptr %71, i64 %72
  store i32 %.01, ptr %73, align 4
  %74 = load ptr, ptr @combList, align 8
  %75 = getelementptr inbounds [12 x i8], ptr %74, i64 %72
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 4
  store i32 %.0, ptr %76, align 4
  %77 = load ptr, ptr @combList, align 8
  %78 = getelementptr inbounds [12 x i8], ptr %77, i64 %72
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 8
  store i32 %.02, ptr %79, align 4
  %80 = load ptr, ptr @combList, align 8
  %81 = getelementptr inbounds [12 x i8], ptr %80, i64 %72
  %82 = call i32 @calculate(ptr noundef %81)
  %83 = load ptr, ptr @workList, align 8
  %84 = load i32, ptr @listLength, align 4
  %85 = add nsw i32 %84, %0
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i8], ptr %83, i64 %86
  store i32 %82, ptr %87, align 4
  %88 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %88, i32 noundef %70)
  br label %89

89:                                               ; preds = %62, %57, %54, %43, %68
  %90 = add nuw nsw i32 %.03, 1
  br label %41, !llvm.loop !13

91:                                               ; preds = %41, %38
  %92 = add nuw nsw i32 %.04, 1
  br label %34, !llvm.loop !14

93:                                               ; preds = %34
  %94 = add nuw nsw i32 %.02, 1
  br label %32, !llvm.loop !15

95:                                               ; preds = %32, %9, %30, %24, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  br label %1

1:                                                ; preds = %17, %0
  %.0 = phi i32 [ 0, %0 ], [ %18, %17 ]
  %2 = load i32, ptr @listLength, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %19

4:                                                ; preds = %1
  %5 = load ptr, ptr @workList, align 8
  %6 = zext nneg i32 %.0 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr @goal, align 4
  %10 = sub nsw i32 %8, %9
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = load i32, ptr @best, align 4
  %13 = sub nsw i32 %12, %9
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp samesign ult i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 %8, ptr @best, align 4
  br label %17

17:                                               ; preds = %4, %16
  %18 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !16

19:                                               ; preds = %1
  %20 = load i32, ptr @best, align 4
  %21 = load i32, ptr @goal, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %38

24:                                               ; preds = %19, %29
  %storemerge = phi i32 [ %31, %29 ], [ 1, %19 ]
  store i32 %storemerge, ptr @dmax, align 4
  %25 = load i32, ptr @listLength, align 4
  %26 = icmp slt i32 %storemerge, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %28 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %28, 0
  br i1 %.not, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32, ptr @dmax, align 4
  %31 = add nsw i32 %30, 1
  br label %24, !llvm.loop !17

32:                                               ; preds = %27, %24
  %33 = load i32, ptr @stopSearch, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load ptr, ptr @solution, align 8
  %37 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %36, i32 noundef %37)
  br label %38

38:                                               ; preds = %35, %32, %23
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
  %.0 = phi i32 [ 0, %0 ], [ %15, %8 ]
  %6 = call i32 @getchar() #8
  %.not = icmp eq i32 %6, 10
  %7 = icmp ne i32 %6, -1
  %spec.select = select i1 %.not, i1 false, i1 %7
  br i1 %spec.select, label %8, label %16

8:                                                ; preds = %5
  %9 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %10 = call i32 @ungetc(i32 noundef %6, ptr noundef %9) #8
  %11 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %12 = zext nneg i32 %.0 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %12
  %14 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #8
  %15 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !18

16:                                               ; preds = %5
  %17 = icmp eq i32 %.0, 0
  %spec.select1 = select i1 %17, i32 4, i32 %.0
  %18 = add nsw i32 %spec.select1, -1
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
