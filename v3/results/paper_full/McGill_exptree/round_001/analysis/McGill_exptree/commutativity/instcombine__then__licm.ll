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

4:                                                ; preds = %11, %3
  %.0 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = zext nneg i32 %.0 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !7

13:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %9, %2
  %.0 = phi i32 [ 0, %2 ], [ %10, %9 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = zext nneg i32 %.0 to i64
  %7 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !9

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %17, %3
  %.0 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %19

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
  br label %17

17:                                               ; preds = %6
  %18 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !10

19:                                               ; preds = %4
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds [12 x i8], ptr %0, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 0, ptr %22, align 4
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
  %3 = add nsw i32 %1, -1
  br label %4

4:                                                ; preds = %30, %2
  %.0 = phi i32 [ 0, %2 ], [ %31, %30 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %32

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
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !11

32:                                               ; preds = %4
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %15, %3
  %.0 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = shl nuw i32 1, %.0
  %8 = and i32 %7, %2
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %6
  br label %15

10:                                               ; preds = %6
  %11 = zext nneg i32 %.0 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %13) #8
  br label %15

15:                                               ; preds = %10, %9
  %16 = add nuw nsw i32 %.0, 1
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
  br label %116

5:                                                ; preds = %2
  %6 = load i32, ptr @nbNodes, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @nbNodes, align 4
  %8 = load i32, ptr @dmax, align 4
  %9 = icmp eq i32 %0, %8
  br i1 %9, label %10, label %35

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
  br i1 %24, label %25, label %34

25:                                               ; preds = %10
  store i32 %17, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %26 = load ptr, ptr @solution, align 8
  %27 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %26, ptr noundef %27, i32 noundef %0)
  %28 = load i32, ptr @best, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %32, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %33

33:                                               ; preds = %31, %25
  br label %34

34:                                               ; preds = %33, %10
  br label %116

35:                                               ; preds = %5
  %36 = sext i32 %0 to i64
  %37 = add nsw i32 %0, 1
  br label %38

38:                                               ; preds = %113, %35
  %.02 = phi i32 [ 1, %35 ], [ %114, %113 ]
  %39 = icmp samesign ult i32 %.02, 5
  br i1 %39, label %40, label %115

40:                                               ; preds = %38
  %41 = icmp eq i32 %.02, 3
  %42 = icmp eq i32 %.02, 4
  %43 = icmp eq i32 %.02, 4
  %44 = icmp eq i32 %.02, 2
  br label %45

45:                                               ; preds = %110, %40
  %.04 = phi i32 [ 0, %40 ], [ %111, %110 ]
  %46 = load i32, ptr @listLength, align 4
  %47 = add nsw i32 %46, %0
  %48 = icmp slt i32 %.04, %47
  br i1 %48, label %49, label %112

49:                                               ; preds = %45
  %50 = shl nuw i32 1, %.04
  %51 = and i32 %50, %1
  %.not1 = icmp eq i32 %51, 0
  br i1 %.not1, label %53, label %52

52:                                               ; preds = %49
  br label %110

53:                                               ; preds = %49
  %54 = zext nneg i32 %.04 to i64
  %55 = or i32 %1, %50
  br label %56

56:                                               ; preds = %107, %53
  %.03 = phi i32 [ 0, %53 ], [ %108, %107 ]
  %57 = icmp samesign ult i32 %.03, %.04
  br i1 %57, label %58, label %109

58:                                               ; preds = %56
  %59 = shl nuw i32 1, %.03
  %60 = and i32 %59, %1
  %.not2 = icmp eq i32 %60, 0
  br i1 %.not2, label %62, label %61

61:                                               ; preds = %58
  br label %107

62:                                               ; preds = %58
  %63 = load ptr, ptr @workList, align 8
  %64 = getelementptr inbounds nuw [4 x i8], ptr %63, i64 %54
  %65 = load i32, ptr %64, align 4
  %66 = zext nneg i32 %.03 to i64
  %67 = getelementptr inbounds nuw [4 x i8], ptr %63, i64 %66
  %68 = load i32, ptr %67, align 4
  br i1 %41, label %70, label %69

69:                                               ; preds = %62
  br i1 %42, label %70, label %75

70:                                               ; preds = %69, %62
  %71 = icmp eq i32 %65, 1
  br i1 %71, label %74, label %72

72:                                               ; preds = %70
  %73 = icmp eq i32 %68, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %72, %70
  br label %107

75:                                               ; preds = %72, %69
  %76 = icmp eq i32 %65, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %75
  %78 = icmp eq i32 %68, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %77, %75
  br label %107

80:                                               ; preds = %77
  br i1 %43, label %81, label %84

81:                                               ; preds = %80
  %82 = srem i32 %65, %68
  %.not3 = icmp eq i32 %82, 0
  br i1 %.not3, label %84, label %83

83:                                               ; preds = %81
  br label %107

84:                                               ; preds = %81, %80
  br i1 %43, label %86, label %85

85:                                               ; preds = %84
  br i1 %44, label %86, label %89

86:                                               ; preds = %85, %84
  %87 = icmp slt i32 %65, %68
  br i1 %87, label %88, label %89

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %88, %86, %85
  %.01 = phi i32 [ %68, %88 ], [ %65, %86 ], [ %65, %85 ]
  %.0 = phi i32 [ %65, %88 ], [ %68, %86 ], [ %68, %85 ]
  %90 = or i32 %55, %59
  %91 = load ptr, ptr @combList, align 8
  %92 = getelementptr inbounds [12 x i8], ptr %91, i64 %36
  store i32 %.01, ptr %92, align 4
  %93 = load ptr, ptr @combList, align 8
  %94 = getelementptr inbounds [12 x i8], ptr %93, i64 %36
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 4
  store i32 %.0, ptr %95, align 4
  %96 = load ptr, ptr @combList, align 8
  %97 = getelementptr inbounds [12 x i8], ptr %96, i64 %36
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 8
  store i32 %.02, ptr %98, align 4
  %99 = load ptr, ptr @combList, align 8
  %100 = getelementptr inbounds [12 x i8], ptr %99, i64 %36
  %101 = call i32 @calculate(ptr noundef %100)
  %102 = load ptr, ptr @workList, align 8
  %103 = load i32, ptr @listLength, align 4
  %104 = add nsw i32 %103, %0
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i8], ptr %102, i64 %105
  store i32 %101, ptr %106, align 4
  call void @recSearch(i32 noundef %37, i32 noundef %90)
  br label %107

107:                                              ; preds = %89, %83, %79, %74, %61
  %108 = add nuw nsw i32 %.03, 1
  br label %56, !llvm.loop !13

109:                                              ; preds = %56
  br label %110

110:                                              ; preds = %109, %52
  %111 = add nuw nsw i32 %.04, 1
  br label %45, !llvm.loop !14

112:                                              ; preds = %45
  br label %113

113:                                              ; preds = %112
  %114 = add nuw nsw i32 %.02, 1
  br label %38, !llvm.loop !15

115:                                              ; preds = %38
  br label %116

116:                                              ; preds = %115, %34, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = load ptr, ptr @workList, align 8
  %3 = load i32, ptr @goal, align 4
  %best.promoted = load i32, ptr @best, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = phi i32 [ %best.promoted, %0 ], [ %18, %19 ]
  %.0 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %6 = icmp slt i32 %.0, %1
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = zext nneg i32 %.0 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sub nsw i32 %10, %3
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = sub nsw i32 %5, %3
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp samesign ult i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  store i32 %10, ptr @best, align 4
  br label %17

17:                                               ; preds = %16, %7
  %18 = phi i32 [ %10, %16 ], [ %5, %7 ]
  br label %19

19:                                               ; preds = %17
  %20 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !16

21:                                               ; preds = %4
  %22 = load i32, ptr @best, align 4
  %23 = load i32, ptr @goal, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %43

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %34, %26
  %storemerge = phi i32 [ 1, %26 ], [ %36, %34 ]
  store i32 %storemerge, ptr @dmax, align 4
  %28 = load i32, ptr @listLength, align 4
  %29 = icmp slt i32 %storemerge, %28
  br i1 %29, label %30, label %.loopexit

30:                                               ; preds = %27
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %31 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %31, 0
  br i1 %.not, label %33, label %32

32:                                               ; preds = %30
  br label %37

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr @dmax, align 4
  %36 = add nsw i32 %35, 1
  br label %27, !llvm.loop !17

.loopexit:                                        ; preds = %27
  br label %37

37:                                               ; preds = %.loopexit, %32
  %38 = load i32, ptr @stopSearch, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr @solution, align 8
  %42 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %41, i32 noundef %42)
  br label %43

43:                                               ; preds = %40, %37, %25
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
  %15 = zext nneg i32 %.0 to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %15
  %17 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #8
  %18 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !18

19:                                               ; preds = %9
  %.0.lcssa = phi i32 [ %.0, %9 ]
  %20 = icmp eq i32 %.0.lcssa, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %19
  %.1 = phi i32 [ 4, %21 ], [ %.0.lcssa, %19 ]
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
