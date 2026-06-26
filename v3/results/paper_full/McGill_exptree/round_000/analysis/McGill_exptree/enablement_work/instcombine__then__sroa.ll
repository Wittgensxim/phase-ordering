; ModuleID = 'results\paper_full\McGill_exptree\McGill_exptree.ll'
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

4:                                                ; preds = %12, %3
  %storemerge = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = icmp slt i32 %storemerge, %2
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %storemerge to i64
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  store i32 %9, ptr %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !7

14:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %9, %2
  %storemerge = phi i32 [ 0, %2 ], [ %10, %9 ]
  %4 = icmp slt i32 %storemerge, %1
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [12 x i8], ptr %0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %26, %3
  %storemerge = phi i32 [ 0, %3 ], [ %27, %26 ]
  %5 = icmp slt i32 %storemerge, %2
  br i1 %5, label %6, label %28

6:                                                ; preds = %4
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [12 x i8], ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %storemerge to i64
  %11 = getelementptr inbounds [12 x i8], ptr %0, i64 %10
  store i32 %9, ptr %11, align 4
  %12 = sext i32 %storemerge to i64
  %13 = getelementptr inbounds [12 x i8], ptr %1, i64 %12
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %storemerge to i64
  %17 = getelementptr inbounds [12 x i8], ptr %0, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %15, ptr %18, align 4
  %19 = sext i32 %storemerge to i64
  %20 = getelementptr inbounds [12 x i8], ptr %1, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %storemerge to i64
  %24 = getelementptr inbounds [12 x i8], ptr %0, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %6
  %27 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !10

28:                                               ; preds = %4
  %29 = sext i32 %2 to i64
  %30 = getelementptr inbounds [12 x i8], ptr %0, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 0, ptr %31, align 4
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
  br label %25

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %10, %12
  br label %25

14:                                               ; preds = %1
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = mul nsw i32 %15, %17
  br label %25

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %22 = load i32, ptr %21, align 4
  %23 = sdiv i32 %20, %22
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %19, %14, %9, %4
  %.0 = phi i32 [ 0, %24 ], [ %8, %4 ], [ %13, %9 ], [ %18, %14 ], [ %23, %19 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %40, %2
  %storemerge = phi i32 [ 0, %2 ], [ %41, %40 ]
  %4 = icmp slt i32 %storemerge, %1
  br i1 %4, label %5, label %42

5:                                                ; preds = %3
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [12 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %8) #8
  %10 = sext i32 %storemerge to i64
  %11 = getelementptr inbounds [12 x i8], ptr %0, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %19 [
    i32 0, label %14
    i32 1, label %15
    i32 2, label %16
    i32 3, label %17
    i32 4, label %18
  ]

14:                                               ; preds = %5
  %putchar5 = call i32 @putchar(i32 32)
  br label %25

15:                                               ; preds = %5
  %putchar4 = call i32 @putchar(i32 43)
  br label %25

16:                                               ; preds = %5
  %putchar3 = call i32 @putchar(i32 45)
  br label %25

17:                                               ; preds = %5
  %putchar2 = call i32 @putchar(i32 42)
  br label %25

18:                                               ; preds = %5
  %putchar1 = call i32 @putchar(i32 58)
  br label %25

19:                                               ; preds = %5
  %20 = sext i32 %storemerge to i64
  %21 = getelementptr inbounds [12 x i8], ptr %0, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = load i32, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %23) #8
  br label %25

25:                                               ; preds = %19, %18, %17, %16, %15, %14
  %26 = sext i32 %storemerge to i64
  %27 = getelementptr inbounds [12 x i8], ptr %0, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 4
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %storemerge to i64
  %31 = getelementptr inbounds [12 x i8], ptr %0, i64 %30
  %32 = call i32 @calculate(ptr noundef %31)
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %29, i32 noundef %32) #8
  %34 = add nsw i32 %1, -1
  %35 = icmp slt i32 %storemerge, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #8
  br label %39

38:                                               ; preds = %25
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %39

39:                                               ; preds = %38, %36
  br label %40

40:                                               ; preds = %39
  %41 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

42:                                               ; preds = %3
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %15, %3
  %storemerge = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = icmp slt i32 %storemerge, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = shl nuw i32 1, %storemerge
  %8 = and i32 %7, %2
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %6
  br label %15

10:                                               ; preds = %6
  %11 = sext i32 %storemerge to i64
  %12 = getelementptr inbounds [4 x i8], ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %13) #8
  br label %15

15:                                               ; preds = %10, %9
  %16 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !12

17:                                               ; preds = %4
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %129

5:                                                ; preds = %2
  %6 = load i32, ptr @nbNodes, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @nbNodes, align 4
  %8 = load i32, ptr @dmax, align 4
  %9 = icmp eq i32 %0, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %5
  %11 = load ptr, ptr @workList, align 8
  %12 = load i32, ptr @listLength, align 4
  %13 = add nsw i32 %12, %0
  %14 = sext i32 %13 to i64
  %15 = getelementptr [4 x i8], ptr %11, i64 %14
  %16 = getelementptr i8, ptr %15, i64 -4
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr @goal, align 4
  %19 = sub nsw i32 %17, %18
  %20 = call i32 @llvm.abs.i32(i32 %19, i1 true)
  %21 = load i32, ptr @best, align 4
  %22 = sub nsw i32 %21, %18
  %23 = call i32 @llvm.abs.i32(i32 %22, i1 true)
  %24 = icmp samesign ult i32 %20, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %10
  %26 = load ptr, ptr @workList, align 8
  %27 = load i32, ptr @listLength, align 4
  %28 = add nsw i32 %27, %0
  %29 = sext i32 %28 to i64
  %30 = getelementptr [4 x i8], ptr %26, i64 %29
  %31 = getelementptr i8, ptr %30, i64 -4
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %33 = load ptr, ptr @solution, align 8
  %34 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %33, ptr noundef %34, i32 noundef %0)
  %35 = load i32, ptr @best, align 4
  %36 = load i32, ptr @goal, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %39, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %40

40:                                               ; preds = %38, %25
  br label %41

41:                                               ; preds = %40, %10
  br label %129

42:                                               ; preds = %5
  br label %43

43:                                               ; preds = %126, %42
  %storemerge = phi i32 [ 1, %42 ], [ %127, %126 ]
  %44 = icmp slt i32 %storemerge, 5
  br i1 %44, label %45, label %128

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %123, %45
  %storemerge1 = phi i32 [ 0, %45 ], [ %124, %123 ]
  %47 = load i32, ptr @listLength, align 4
  %48 = add nsw i32 %47, %0
  %49 = icmp slt i32 %storemerge1, %48
  br i1 %49, label %50, label %125

50:                                               ; preds = %46
  %51 = shl nuw i32 1, %storemerge1
  %52 = and i32 %51, %1
  %.not2 = icmp eq i32 %52, 0
  br i1 %.not2, label %54, label %53

53:                                               ; preds = %50
  br label %123

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %120, %54
  %storemerge3 = phi i32 [ 0, %54 ], [ %121, %120 ]
  %56 = icmp slt i32 %storemerge3, %storemerge1
  br i1 %56, label %57, label %122

57:                                               ; preds = %55
  %58 = shl nuw i32 1, %storemerge3
  %59 = and i32 %58, %1
  %.not4 = icmp eq i32 %59, 0
  br i1 %.not4, label %61, label %60

60:                                               ; preds = %57
  br label %120

61:                                               ; preds = %57
  %62 = load ptr, ptr @workList, align 8
  %63 = sext i32 %storemerge1 to i64
  %64 = getelementptr inbounds [4 x i8], ptr %62, i64 %63
  %65 = load i32, ptr %64, align 4
  %66 = sext i32 %storemerge3 to i64
  %67 = getelementptr inbounds [4 x i8], ptr %62, i64 %66
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %storemerge, 3
  br i1 %69, label %72, label %70

70:                                               ; preds = %61
  %71 = icmp eq i32 %storemerge, 4
  br i1 %71, label %72, label %77

72:                                               ; preds = %70, %61
  %73 = icmp eq i32 %65, 1
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = icmp eq i32 %68, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %74, %72
  br label %120

77:                                               ; preds = %74, %70
  %78 = icmp eq i32 %65, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = icmp eq i32 %68, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %79, %77
  br label %120

82:                                               ; preds = %79
  %83 = icmp eq i32 %storemerge, 4
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = srem i32 %65, %68
  %.not5 = icmp eq i32 %85, 0
  br i1 %.not5, label %87, label %86

86:                                               ; preds = %84
  br label %120

87:                                               ; preds = %84, %82
  %88 = icmp eq i32 %storemerge, 4
  br i1 %88, label %91, label %89

89:                                               ; preds = %87
  %90 = icmp eq i32 %storemerge, 2
  br i1 %90, label %91, label %94

91:                                               ; preds = %89, %87
  %92 = icmp slt i32 %65, %68
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %91, %89
  %.046 = phi i32 [ %68, %93 ], [ %65, %91 ], [ %65, %89 ]
  %.0 = phi i32 [ %65, %93 ], [ %68, %91 ], [ %68, %89 ]
  %95 = shl nuw i32 1, %storemerge1
  %96 = or i32 %1, %95
  %97 = shl nuw i32 1, %storemerge3
  %98 = or i32 %96, %97
  %99 = load ptr, ptr @combList, align 8
  %100 = sext i32 %0 to i64
  %101 = getelementptr inbounds [12 x i8], ptr %99, i64 %100
  store i32 %.046, ptr %101, align 4
  %102 = load ptr, ptr @combList, align 8
  %103 = sext i32 %0 to i64
  %104 = getelementptr inbounds [12 x i8], ptr %102, i64 %103
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 4
  store i32 %.0, ptr %105, align 4
  %106 = load ptr, ptr @combList, align 8
  %107 = sext i32 %0 to i64
  %108 = getelementptr inbounds [12 x i8], ptr %106, i64 %107
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 8
  store i32 %storemerge, ptr %109, align 4
  %110 = load ptr, ptr @combList, align 8
  %111 = sext i32 %0 to i64
  %112 = getelementptr inbounds [12 x i8], ptr %110, i64 %111
  %113 = call i32 @calculate(ptr noundef %112)
  %114 = load ptr, ptr @workList, align 8
  %115 = load i32, ptr @listLength, align 4
  %116 = add nsw i32 %115, %0
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i8], ptr %114, i64 %117
  store i32 %113, ptr %118, align 4
  %119 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %119, i32 noundef %98)
  br label %120

120:                                              ; preds = %94, %86, %81, %76, %60
  %121 = add nsw i32 %storemerge3, 1
  br label %55, !llvm.loop !13

122:                                              ; preds = %55
  br label %123

123:                                              ; preds = %122, %53
  %124 = add nsw i32 %storemerge1, 1
  br label %46, !llvm.loop !14

125:                                              ; preds = %46
  br label %126

126:                                              ; preds = %125
  %127 = add nsw i32 %storemerge, 1
  br label %43, !llvm.loop !15

128:                                              ; preds = %43
  br label %129

129:                                              ; preds = %128, %41, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  br label %1

1:                                                ; preds = %22, %0
  %storemerge = phi i32 [ 0, %0 ], [ %23, %22 ]
  %2 = load i32, ptr @listLength, align 4
  %3 = icmp slt i32 %storemerge, %2
  br i1 %3, label %4, label %24

4:                                                ; preds = %1
  %5 = load ptr, ptr @workList, align 8
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr @goal, align 4
  %10 = sub nsw i32 %8, %9
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = load i32, ptr @best, align 4
  %13 = sub nsw i32 %12, %9
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp samesign ult i32 %11, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load ptr, ptr @workList, align 8
  %18 = sext i32 %storemerge to i64
  %19 = getelementptr inbounds [4 x i8], ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr @best, align 4
  br label %21

21:                                               ; preds = %16, %4
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !16

24:                                               ; preds = %1
  %25 = load i32, ptr @best, align 4
  %26 = load i32, ptr @goal, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %46

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %37, %29
  %storemerge1 = phi i32 [ 1, %29 ], [ %39, %37 ]
  store i32 %storemerge1, ptr @dmax, align 4
  %31 = load i32, ptr @listLength, align 4
  %32 = icmp slt i32 %storemerge1, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %34 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %34, 0
  br i1 %.not, label %36, label %35

35:                                               ; preds = %33
  br label %40

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr @dmax, align 4
  %39 = add nsw i32 %38, 1
  br label %30, !llvm.loop !17

40:                                               ; preds = %35, %30
  %41 = load i32, ptr @stopSearch, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load ptr, ptr @solution, align 8
  %45 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %43, %40, %28
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

5:                                                ; preds = %11, %0
  %.0 = phi i32 [ 0, %0 ], [ %18, %11 ]
  %6 = call i32 @getchar() #8
  %.not = icmp eq i32 %6, 10
  br i1 %.not, label %9, label %7

7:                                                ; preds = %5
  %8 = icmp ne i32 %6, -1
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i1 [ false, %5 ], [ %8, %7 ]
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %13 = call i32 @ungetc(i32 noundef %6, ptr noundef %12) #8
  %14 = call ptr @__acrt_iob_func(i32 noundef 0) #8
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %1, i64 %15
  %17 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #8
  %18 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !18

19:                                               ; preds = %9
  %20 = icmp eq i32 %.0, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %19
  %.1 = phi i32 [ 4, %21 ], [ %.0, %19 ]
  %23 = add nsw i32 %.1, -1
  store i32 %23, ptr @listLength, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %1, i64 %24
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr @goal, align 4
  %27 = shl nsw i32 %23, 1
  %28 = call ptr @newWorkList(i32 noundef %27)
  store ptr %28, ptr @workList, align 8
  %29 = load i32, ptr @listLength, align 4
  %30 = call ptr @newCombList(i32 noundef %29)
  store ptr %30, ptr @combList, align 8
  %31 = load i32, ptr @listLength, align 4
  %32 = call ptr @newCombList(i32 noundef %31)
  store ptr %32, ptr @solution, align 8
  %33 = load ptr, ptr @workList, align 8
  %34 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %33, ptr noundef nonnull %1, i32 noundef %34)
  %35 = load ptr, ptr @combList, align 8
  %36 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %35, i32 noundef %36)
  %37 = load ptr, ptr @solution, align 8
  %38 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %37, i32 noundef %38)
  %39 = load i32, ptr @listLength, align 4
  ret i32 %39
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
