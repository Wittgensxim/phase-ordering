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

4:                                                ; preds = %9, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %10, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %7, ptr %8, align 4
  br label %9

9:                                                ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !7

10:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %3

3:                                                ; preds = %7, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %7 ], [ 0, %2 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %8, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %3, !llvm.loop !9

8:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %4

4:                                                ; preds = %15, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %16, label %5

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
  br label %15

15:                                               ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !10

16:                                               ; preds = %4
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
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %3

3:                                                ; preds = %29, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %29 ], [ 0, %2 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %30, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %6) #9
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %15 [
    i32 0, label %10
    i32 1, label %11
    i32 2, label %12
    i32 3, label %13
    i32 4, label %14
  ]

10:                                               ; preds = %4
  %putchar6 = call i32 @putchar(i32 32)
  br label %17

11:                                               ; preds = %4
  %putchar5 = call i32 @putchar(i32 43)
  br label %17

12:                                               ; preds = %4
  %putchar4 = call i32 @putchar(i32 45)
  br label %17

13:                                               ; preds = %4
  %putchar3 = call i32 @putchar(i32 42)
  br label %17

14:                                               ; preds = %4
  %putchar2 = call i32 @putchar(i32 58)
  br label %17

15:                                               ; preds = %4
  %16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %9) #9
  br label %17

17:                                               ; preds = %15, %14, %13, %12, %11, %10
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @calculate(ptr noundef nonnull %5)
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %19, i32 noundef %20) #9
  %22 = add nsw i32 %1, -1
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %indvars.iv, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #9
  br label %28

27:                                               ; preds = %17
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %28

28:                                               ; preds = %27, %25
  br label %29

29:                                               ; preds = %28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %3, !llvm.loop !11

30:                                               ; preds = %3
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %4

4:                                                ; preds = %14, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 0, %3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %15, label %5

5:                                                ; preds = %4
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, %2
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  br label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %12) #9
  br label %14

14:                                               ; preds = %10, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

15:                                               ; preds = %4
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %113

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
  br label %113

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %110, %35
  %.02 = phi i32 [ 1, %35 ], [ %111, %110 ]
  %exitcond5.not = icmp eq i32 %.02, 5
  br i1 %exitcond5.not, label %112, label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %108, %37
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %108 ], [ 0, %37 ]
  %39 = load i32, ptr @listLength, align 4
  %40 = add nsw i32 %39, %0
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %indvars.iv2, %41
  br i1 %42, label %43, label %109

43:                                               ; preds = %38
  %44 = trunc nuw nsw i64 %indvars.iv2 to i32
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %1
  %.not6 = icmp eq i32 %46, 0
  br i1 %.not6, label %48, label %47

47:                                               ; preds = %43
  br label %108

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %106, %48
  %indvars.iv = phi i64 [ %indvars.iv.next, %106 ], [ 0, %48 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv2
  br i1 %exitcond.not, label %107, label %50

50:                                               ; preds = %49
  %51 = trunc nuw nsw i64 %indvars.iv to i32
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %1
  %.not7 = icmp eq i32 %53, 0
  br i1 %.not7, label %55, label %54

54:                                               ; preds = %50
  br label %106

55:                                               ; preds = %50
  %56 = load ptr, ptr @workList, align 8
  %57 = getelementptr inbounds nuw [4 x i8], ptr %56, i64 %indvars.iv2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds nuw [4 x i8], ptr %56, i64 %indvars.iv
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %.02, 3
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = icmp eq i32 %.02, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %62, %55
  %65 = icmp eq i32 %58, 1
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = icmp eq i32 %60, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %66, %64
  br label %106

69:                                               ; preds = %66, %62
  %70 = icmp eq i32 %58, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = icmp eq i32 %60, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %71, %69
  br label %106

74:                                               ; preds = %71
  %75 = icmp eq i32 %.02, 4
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = srem i32 %58, %60
  %.not8 = icmp eq i32 %77, 0
  br i1 %.not8, label %79, label %78

78:                                               ; preds = %76
  br label %106

79:                                               ; preds = %76, %74
  br i1 %75, label %82, label %80

80:                                               ; preds = %79
  %81 = icmp eq i32 %.02, 2
  br i1 %81, label %82, label %85

82:                                               ; preds = %80, %79
  %83 = icmp slt i32 %58, %60
  br i1 %83, label %84, label %85

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84, %82, %80
  %.01 = phi i32 [ %60, %84 ], [ %58, %82 ], [ %58, %80 ]
  %.0 = phi i32 [ %58, %84 ], [ %60, %82 ], [ %60, %80 ]
  %86 = or i32 %1, %45
  %87 = or i32 %86, %52
  %88 = load ptr, ptr @combList, align 8
  %89 = sext i32 %0 to i64
  %90 = getelementptr inbounds [12 x i8], ptr %88, i64 %89
  store i32 %.01, ptr %90, align 4
  %91 = load ptr, ptr @combList, align 8
  %92 = getelementptr inbounds [12 x i8], ptr %91, i64 %89
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 4
  store i32 %.0, ptr %93, align 4
  %94 = load ptr, ptr @combList, align 8
  %95 = getelementptr inbounds [12 x i8], ptr %94, i64 %89
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 8
  store i32 %.02, ptr %96, align 4
  %97 = load ptr, ptr @combList, align 8
  %98 = getelementptr inbounds [12 x i8], ptr %97, i64 %89
  %99 = call i32 @calculate(ptr noundef %98)
  %100 = load ptr, ptr @workList, align 8
  %101 = load i32, ptr @listLength, align 4
  %102 = add nsw i32 %101, %0
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i8], ptr %100, i64 %103
  store i32 %99, ptr %104, align 4
  %105 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %105, i32 noundef %87)
  br label %106

106:                                              ; preds = %85, %78, %73, %68, %54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %49, !llvm.loop !13

107:                                              ; preds = %49
  br label %108

108:                                              ; preds = %107, %47
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %38, !llvm.loop !14

109:                                              ; preds = %38
  br label %110

110:                                              ; preds = %109
  %111 = add nuw nsw i32 %.02, 1
  br label %36, !llvm.loop !15

112:                                              ; preds = %36
  br label %113

113:                                              ; preds = %112, %34, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  br label %1

1:                                                ; preds = %18, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %18 ], [ 0, %0 ]
  %2 = load i32, ptr @listLength, align 4
  %3 = sext i32 %2 to i64
  %4 = icmp slt i64 %indvars.iv, %3
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load ptr, ptr @workList, align 8
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr @goal, align 4
  %10 = sub nsw i32 %8, %9
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = load i32, ptr @best, align 4
  %13 = sub nsw i32 %12, %9
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp samesign ult i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 %8, ptr @best, align 4
  br label %17

17:                                               ; preds = %16, %5
  br label %18

18:                                               ; preds = %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !16

19:                                               ; preds = %1
  %20 = load i32, ptr @best, align 4
  %21 = load i32, ptr @goal, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %41

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %32, %24
  %storemerge = phi i32 [ 1, %24 ], [ %34, %32 ]
  store i32 %storemerge, ptr @dmax, align 4
  %26 = load i32, ptr @listLength, align 4
  %27 = icmp slt i32 %storemerge, %26
  br i1 %27, label %28, label %.loopexit

28:                                               ; preds = %25
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %29 = load i32, ptr @stopSearch, align 4
  %.not = icmp eq i32 %29, 0
  br i1 %.not, label %31, label %30

30:                                               ; preds = %28
  br label %35

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31
  %33 = load i32, ptr @dmax, align 4
  %34 = add nsw i32 %33, 1
  br label %25, !llvm.loop !17

.loopexit:                                        ; preds = %25
  br label %35

35:                                               ; preds = %.loopexit, %30
  %36 = load i32, ptr @stopSearch, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load ptr, ptr @solution, align 8
  %40 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %39, i32 noundef %40)
  br label %41

41:                                               ; preds = %38, %35, %23
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
  %indvars.iv = phi i64 [ %indvars.iv.next, %11 ], [ 0, %0 ]
  %6 = call i32 @getchar() #9
  %.not = icmp eq i32 %6, 10
  br i1 %.not, label %9, label %7

7:                                                ; preds = %5
  %8 = icmp ne i32 %6, -1
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i1 [ false, %5 ], [ %8, %7 ]
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = call ptr @__acrt_iob_func(i32 noundef 0) #9
  %13 = call i32 @ungetc(i32 noundef %6, ptr noundef %12) #9
  %14 = call ptr @__acrt_iob_func(i32 noundef 0) #9
  %15 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %16 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !18

17:                                               ; preds = %9
  %18 = trunc nuw nsw i64 %indvars.iv to i32
  %19 = icmp eq i64 %indvars.iv, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %17
  %.1 = phi i32 [ 4, %20 ], [ %18, %17 ]
  %22 = add nsw i32 %.1, -1
  store i32 %22, ptr @listLength, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr %1, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr @goal, align 4
  %26 = shl nsw i32 %22, 1
  %27 = call ptr @newWorkList(i32 noundef %26)
  store ptr %27, ptr @workList, align 8
  %28 = load i32, ptr @listLength, align 4
  %29 = call ptr @newCombList(i32 noundef %28)
  store ptr %29, ptr @combList, align 8
  %30 = load i32, ptr @listLength, align 4
  %31 = call ptr @newCombList(i32 noundef %30)
  store ptr %31, ptr @solution, align 8
  %32 = load ptr, ptr @workList, align 8
  %33 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %32, ptr noundef nonnull %1, i32 noundef %33)
  %34 = load ptr, ptr @combList, align 8
  %35 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %34, i32 noundef %35)
  %36 = load ptr, ptr @solution, align 8
  %37 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %36, i32 noundef %37)
  %38 = load i32, ptr @listLength, align 4
  ret i32 %38
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

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
