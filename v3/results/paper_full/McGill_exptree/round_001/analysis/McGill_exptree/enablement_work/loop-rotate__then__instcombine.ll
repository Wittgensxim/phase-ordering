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
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %10
  %.01 = phi i32 [ 0, %.lr.ph ], [ %11, %10 ]
  %6 = zext nneg i32 %.01 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  store i32 %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %.01, 1
  %12 = icmp slt i32 %11, %2
  br i1 %12, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %10
  br label %13

13:                                               ; preds = %._crit_edge, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %8
  %.01 = phi i32 [ 0, %.lr.ph ], [ %9, %8 ]
  %5 = zext nneg i32 %.01 to i64
  %6 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %.01, 1
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %4, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %8
  br label %11

11:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %16
  %.01 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
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
  br label %16

16:                                               ; preds = %5
  %17 = add nuw nsw i32 %.01, 1
  %18 = icmp slt i32 %17, %2
  br i1 %18, label %5, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge, %3
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
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %29
  %.01 = phi i32 [ 0, %.lr.ph ], [ %30, %29 ]
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
  %putchar = call i32 @putchar(i32 58)
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
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.01, 1
  %31 = icmp slt i32 %30, %1
  br i1 %31, label %4, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge, %2
  %putchar6 = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %14
  %.01 = phi i32 [ 0, %.lr.ph ], [ %15, %14 ]
  %6 = shl nuw i32 1, %.01
  %7 = and i32 %6, %2
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %5
  br label %14

9:                                                ; preds = %5
  %10 = zext nneg i32 %.01 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %12) #8
  br label %14

14:                                               ; preds = %9, %8
  %15 = add nuw nsw i32 %.01, 1
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %14
  br label %17

17:                                               ; preds = %._crit_edge, %3
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
  br label %36

36:                                               ; preds = %35, %112
  %.026 = phi i32 [ 1, %35 ], [ %113, %112 ]
  %37 = load i32, ptr @listLength, align 4
  %38 = add nsw i32 %37, %0
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %.lr.ph4, label %111

.lr.ph4:                                          ; preds = %36
  br label %40

40:                                               ; preds = %.lr.ph4, %106
  %.042 = phi i32 [ 0, %.lr.ph4 ], [ %107, %106 ]
  %41 = shl nuw i32 1, %.042
  %42 = and i32 %41, %1
  %.not7 = icmp eq i32 %42, 0
  br i1 %.not7, label %44, label %43

43:                                               ; preds = %40
  br label %106

44:                                               ; preds = %40
  %.not8 = icmp eq i32 %.042, 0
  br i1 %.not8, label %105, label %.lr.ph

.lr.ph:                                           ; preds = %44
  br label %45

45:                                               ; preds = %.lr.ph, %102
  %.031 = phi i32 [ 0, %.lr.ph ], [ %103, %102 ]
  %46 = shl nuw i32 1, %.031
  %47 = and i32 %46, %1
  %.not9 = icmp eq i32 %47, 0
  br i1 %.not9, label %49, label %48

48:                                               ; preds = %45
  br label %102

49:                                               ; preds = %45
  %50 = load ptr, ptr @workList, align 8
  %51 = zext nneg i32 %.042 to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr %50, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = zext nneg i32 %.031 to i64
  %55 = getelementptr inbounds nuw [4 x i8], ptr %50, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %.026, 3
  br i1 %57, label %60, label %58

58:                                               ; preds = %49
  %59 = icmp eq i32 %.026, 4
  br i1 %59, label %60, label %65

60:                                               ; preds = %58, %49
  %61 = icmp eq i32 %53, 1
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  %63 = icmp eq i32 %56, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %62, %60
  br label %102

65:                                               ; preds = %62, %58
  %66 = icmp eq i32 %53, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %65
  %68 = icmp eq i32 %56, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %67, %65
  br label %102

70:                                               ; preds = %67
  %71 = icmp eq i32 %.026, 4
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = srem i32 %53, %56
  %.not10 = icmp eq i32 %73, 0
  br i1 %.not10, label %75, label %74

74:                                               ; preds = %72
  br label %102

75:                                               ; preds = %72, %70
  br i1 %71, label %78, label %76

76:                                               ; preds = %75
  %77 = icmp eq i32 %.026, 2
  br i1 %77, label %78, label %81

78:                                               ; preds = %76, %75
  %79 = icmp slt i32 %53, %56
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80, %78, %76
  %.01 = phi i32 [ %56, %80 ], [ %53, %78 ], [ %53, %76 ]
  %.0 = phi i32 [ %53, %80 ], [ %56, %78 ], [ %56, %76 ]
  %82 = or i32 %1, %41
  %83 = or i32 %82, %46
  %84 = load ptr, ptr @combList, align 8
  %85 = sext i32 %0 to i64
  %86 = getelementptr inbounds [12 x i8], ptr %84, i64 %85
  store i32 %.01, ptr %86, align 4
  %87 = load ptr, ptr @combList, align 8
  %88 = getelementptr inbounds [12 x i8], ptr %87, i64 %85
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 4
  store i32 %.0, ptr %89, align 4
  %90 = load ptr, ptr @combList, align 8
  %91 = getelementptr inbounds [12 x i8], ptr %90, i64 %85
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 8
  store i32 %.026, ptr %92, align 4
  %93 = load ptr, ptr @combList, align 8
  %94 = getelementptr inbounds [12 x i8], ptr %93, i64 %85
  %95 = call i32 @calculate(ptr noundef %94)
  %96 = load ptr, ptr @workList, align 8
  %97 = load i32, ptr @listLength, align 4
  %98 = add nsw i32 %97, %0
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i8], ptr %96, i64 %99
  store i32 %95, ptr %100, align 4
  %101 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %101, i32 noundef %83)
  br label %102

102:                                              ; preds = %81, %74, %69, %64, %48
  %103 = add nuw nsw i32 %.031, 1
  %104 = icmp samesign ult i32 %103, %.042
  br i1 %104, label %45, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %102
  br label %105

105:                                              ; preds = %._crit_edge, %44
  br label %106

106:                                              ; preds = %105, %43
  %107 = add nuw nsw i32 %.042, 1
  %108 = load i32, ptr @listLength, align 4
  %109 = add nsw i32 %108, %0
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %40, label %._crit_edge5, !llvm.loop !14

._crit_edge5:                                     ; preds = %106
  br label %111

111:                                              ; preds = %._crit_edge5, %36
  br label %112

112:                                              ; preds = %111
  %113 = add nuw nsw i32 %.026, 1
  %114 = icmp samesign ult i32 %.026, 4
  br i1 %114, label %36, label %115, !llvm.loop !15

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %115, %34, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %17
  %.01 = phi i32 [ 0, %.lr.ph ], [ %18, %17 ]
  %4 = load ptr, ptr @workList, align 8
  %5 = zext nneg i32 %.01 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @goal, align 4
  %9 = sub nsw i32 %7, %8
  %10 = call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = load i32, ptr @best, align 4
  %12 = sub nsw i32 %11, %8
  %13 = call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = icmp samesign ult i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 %7, ptr @best, align 4
  br label %16

16:                                               ; preds = %15, %3
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.01, 1
  %19 = load i32, ptr @listLength, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %3, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %17
  br label %21

21:                                               ; preds = %._crit_edge, %0
  %22 = load i32, ptr @best, align 4
  %23 = load i32, ptr @goal, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %44

26:                                               ; preds = %21
  store i32 1, ptr @dmax, align 4
  %27 = load i32, ptr @listLength, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %.lr.ph3, label %.loopexit

.lr.ph3:                                          ; preds = %26
  br label %29

29:                                               ; preds = %.lr.ph3, %33
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %30 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %30, 0
  br i1 %.not, label %32, label %31

31:                                               ; preds = %29
  br label %38

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32
  %34 = load i32, ptr @dmax, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @dmax, align 4
  %36 = load i32, ptr @listLength, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %29, label %..loopexit_crit_edge, !llvm.loop !17

..loopexit_crit_edge:                             ; preds = %33
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %26
  br label %38

38:                                               ; preds = %.loopexit, %31
  %39 = load i32, ptr @stopSearch, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load ptr, ptr @solution, align 8
  %43 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %42, i32 noundef %43)
  br label %44

44:                                               ; preds = %41, %38, %25
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
