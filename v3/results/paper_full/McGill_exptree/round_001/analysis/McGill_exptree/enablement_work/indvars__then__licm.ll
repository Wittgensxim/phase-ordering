; ModuleID = 'results\paper_full\McGill_exptree\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/McGill/exptree.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.Comb = type { i32, i32, i32 }

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

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @newWorkList(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = call ptr @calloc(i64 noundef %2, i64 noundef 4) #7
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  ret ptr %3

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str) #8
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
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  ret ptr %3

6:                                                ; preds = %1
  %7 = call ptr @__acrt_iob_func(i32 noundef 2)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1) #8
  call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initWorkList(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %4

4:                                                ; preds = %9, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %5, label %10

5:                                                ; preds = %4
  %6 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv
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
  %wide.trip.count = zext i32 %smax to i64
  br label %3

3:                                                ; preds = %7, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %7 ], [ 0, %2 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %4, label %8

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  %6 = getelementptr inbounds nuw %struct.Comb, ptr %5, i32 0, i32 2
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
  %wide.trip.count = zext i32 %smax to i64
  br label %4

4:                                                ; preds = %15, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %5, label %16

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.Comb, ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %6, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !10

16:                                               ; preds = %4
  %17 = sext i32 %2 to i64
  %18 = getelementptr inbounds %struct.Comb, ptr %0, i64 %17
  %19 = getelementptr inbounds nuw %struct.Comb, ptr %18, i32 0, i32 2
  store i32 0, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %24 [
    i32 1, label %4
    i32 2, label %9
    i32 3, label %14
    i32 4, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %5, %7
  br label %25

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %10, %12
  br label %25

14:                                               ; preds = %1
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = mul nsw i32 %15, %17
  br label %25

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
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
  %wide.trip.count = zext i32 %smax to i64
  %3 = sub nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  br label %5

5:                                                ; preds = %35, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %35 ], [ 0, %2 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %6, label %36

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %8)
  %10 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %22 [
    i32 0, label %12
    i32 1, label %14
    i32 2, label %16
    i32 3, label %18
    i32 4, label %20
  ]

12:                                               ; preds = %6
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %24

14:                                               ; preds = %6
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %24

16:                                               ; preds = %6
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %24

18:                                               ; preds = %6
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %24

20:                                               ; preds = %6
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %24

22:                                               ; preds = %6
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %11)
  br label %24

24:                                               ; preds = %22, %20, %18, %16, %14, %12
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %7, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = call i32 @calculate(ptr noundef %7)
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %26, i32 noundef %27)
  %29 = icmp slt i64 %indvars.iv, %4
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %34

32:                                               ; preds = %24
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !11

36:                                               ; preds = %5
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %4

4:                                                ; preds = %15, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %5, label %16

5:                                                ; preds = %4
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  %7 = shl i32 1, %6
  %8 = and i32 %7, %2
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %13)
  br label %15

15:                                               ; preds = %11, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

16:                                               ; preds = %4
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @stopSearch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %117

6:                                                ; preds = %2
  %7 = load i32, ptr @nbNodes, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @nbNodes, align 4
  %9 = load i32, ptr @dmax, align 4
  %10 = icmp eq i32 %0, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  %12 = load ptr, ptr @workList, align 8
  %13 = load i32, ptr @listLength, align 4
  %14 = add nsw i32 %13, %0
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %12, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr @goal, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = load i32, ptr @best, align 4
  %23 = sub nsw i32 %22, %19
  %24 = call i32 @llvm.abs.i32(i32 %23, i1 true)
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %11
  store i32 %18, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %27 = load ptr, ptr @solution, align 8
  %28 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %27, ptr noundef %28, i32 noundef %0)
  %29 = load i32, ptr @best, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %33, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %34

34:                                               ; preds = %32, %26
  br label %35

35:                                               ; preds = %34, %11
  br label %117

36:                                               ; preds = %6
  %37 = sext i32 %0 to i64
  %38 = add nsw i32 %0, 1
  br label %39

39:                                               ; preds = %114, %36
  %.02 = phi i32 [ 1, %36 ], [ %115, %114 ]
  %exitcond5 = icmp ne i32 %.02, 5
  br i1 %exitcond5, label %40, label %116

40:                                               ; preds = %39
  %41 = icmp eq i32 %.02, 3
  %42 = icmp eq i32 %.02, 4
  %43 = icmp eq i32 %.02, 4
  %44 = icmp eq i32 %.02, 2
  br label %45

45:                                               ; preds = %112, %40
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %112 ], [ 0, %40 ]
  %46 = load i32, ptr @listLength, align 4
  %47 = add nsw i32 %46, %0
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %indvars.iv2, %48
  br i1 %49, label %50, label %113

50:                                               ; preds = %45
  %51 = trunc nuw nsw i64 %indvars.iv2 to i32
  %52 = shl i32 1, %51
  %53 = and i32 %52, %1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %112

56:                                               ; preds = %50
  %57 = or i32 %1, %52
  br label %58

58:                                               ; preds = %110, %56
  %indvars.iv = phi i64 [ %indvars.iv.next, %110 ], [ 0, %56 ]
  %exitcond = icmp ne i64 %indvars.iv, %indvars.iv2
  br i1 %exitcond, label %59, label %111

59:                                               ; preds = %58
  %60 = trunc nuw nsw i64 %indvars.iv to i32
  %61 = shl i32 1, %60
  %62 = and i32 %61, %1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %110

65:                                               ; preds = %59
  %66 = load ptr, ptr @workList, align 8
  %67 = getelementptr inbounds i32, ptr %66, i64 %indvars.iv2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds i32, ptr %66, i64 %indvars.iv
  %70 = load i32, ptr %69, align 4
  br i1 %41, label %72, label %71

71:                                               ; preds = %65
  br i1 %42, label %72, label %77

72:                                               ; preds = %71, %65
  %73 = icmp eq i32 %68, 1
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = icmp eq i32 %70, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %74, %72
  br label %110

77:                                               ; preds = %74, %71
  %78 = icmp eq i32 %68, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = icmp eq i32 %70, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %79, %77
  br label %110

82:                                               ; preds = %79
  br i1 %43, label %83, label %87

83:                                               ; preds = %82
  %84 = srem i32 %68, %70
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %110

87:                                               ; preds = %83, %82
  br i1 %43, label %89, label %88

88:                                               ; preds = %87
  br i1 %44, label %89, label %92

89:                                               ; preds = %88, %87
  %90 = icmp slt i32 %68, %70
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %91, %89, %88
  %.01 = phi i32 [ %70, %91 ], [ %68, %89 ], [ %68, %88 ]
  %.0 = phi i32 [ %68, %91 ], [ %70, %89 ], [ %70, %88 ]
  %93 = or i32 %57, %61
  %94 = load ptr, ptr @combList, align 8
  %95 = getelementptr inbounds %struct.Comb, ptr %94, i64 %37
  store i32 %.01, ptr %95, align 4
  %96 = load ptr, ptr @combList, align 8
  %97 = getelementptr inbounds %struct.Comb, ptr %96, i64 %37
  %98 = getelementptr inbounds nuw %struct.Comb, ptr %97, i32 0, i32 1
  store i32 %.0, ptr %98, align 4
  %99 = load ptr, ptr @combList, align 8
  %100 = getelementptr inbounds %struct.Comb, ptr %99, i64 %37
  %101 = getelementptr inbounds nuw %struct.Comb, ptr %100, i32 0, i32 2
  store i32 %.02, ptr %101, align 4
  %102 = load ptr, ptr @combList, align 8
  %103 = getelementptr inbounds %struct.Comb, ptr %102, i64 %37
  %104 = call i32 @calculate(ptr noundef %103)
  %105 = load ptr, ptr @workList, align 8
  %106 = load i32, ptr @listLength, align 4
  %107 = add nsw i32 %106, %0
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %105, i64 %108
  store i32 %104, ptr %109, align 4
  call void @recSearch(i32 noundef %38, i32 noundef %93)
  br label %110

110:                                              ; preds = %92, %86, %81, %76, %64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %58, !llvm.loop !13

111:                                              ; preds = %58
  br label %112

112:                                              ; preds = %111, %55
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %45, !llvm.loop !14

113:                                              ; preds = %45
  br label %114

114:                                              ; preds = %113
  %115 = add nuw nsw i32 %.02, 1
  br label %39, !llvm.loop !15

116:                                              ; preds = %39
  br label %117

117:                                              ; preds = %116, %35, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = load i32, ptr @listLength, align 4
  %2 = sext i32 %1 to i64
  %3 = load ptr, ptr @workList, align 8
  %4 = load i32, ptr @goal, align 4
  %best.promoted = load i32, ptr @best, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = phi i32 [ %18, %19 ], [ %best.promoted, %0 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 0, %0 ]
  %7 = icmp slt i64 %indvars.iv, %2
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %11 = sub nsw i32 %10, %4
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = sub nsw i32 %6, %4
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 %10, ptr @best, align 4
  br label %17

17:                                               ; preds = %16, %8
  %18 = phi i32 [ %10, %16 ], [ %6, %8 ]
  br label %19

19:                                               ; preds = %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !16

20:                                               ; preds = %5
  %21 = load i32, ptr @best, align 4
  %22 = load i32, ptr @goal, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %45

26:                                               ; preds = %20
  store i32 1, ptr @dmax, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, ptr @dmax, align 4
  %29 = load i32, ptr @listLength, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %.loopexit

31:                                               ; preds = %27
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %32 = load i32, ptr @stopSearch, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %39

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35
  %37 = load i32, ptr @dmax, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @dmax, align 4
  br label %27, !llvm.loop !17

.loopexit:                                        ; preds = %27
  br label %39

39:                                               ; preds = %.loopexit, %34
  %40 = load i32, ptr @stopSearch, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load ptr, ptr @solution, align 8
  %44 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %43, i32 noundef %44)
  br label %45

45:                                               ; preds = %42, %39, %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  store i32 13, ptr %1, align 16
  %2 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 1
  store i32 32, ptr %2, align 4
  %3 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 2
  store i32 14, ptr %3, align 8
  %4 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 3
  store i32 1412, ptr %4, align 4
  br label %5

5:                                                ; preds = %12, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 0, %0 ]
  %6 = call i32 @getchar()
  %7 = icmp ne i32 %6, 10
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = icmp ne i32 %6, -1
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i1 [ false, %5 ], [ %9, %8 ]
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = call ptr @__acrt_iob_func(i32 noundef 0)
  %14 = call i32 @ungetc(i32 noundef %6, ptr noundef %13)
  %15 = call ptr @__acrt_iob_func(i32 noundef 0)
  %16 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %indvars.iv
  %17 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %15, ptr noundef @.str.2, ptr noundef %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !18

18:                                               ; preds = %10
  %.0.lcssa.wide = phi i64 [ %indvars.iv, %10 ]
  %19 = trunc nuw nsw i64 %.0.lcssa.wide to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21, %18
  %.1 = phi i32 [ 4, %21 ], [ %19, %18 ]
  %23 = sub nsw i32 %.1, 1
  store i32 %23, ptr @listLength, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr @goal, align 4
  %27 = load i32, ptr @listLength, align 4
  %28 = mul nsw i32 2, %27
  %29 = call ptr @newWorkList(i32 noundef %28)
  store ptr %29, ptr @workList, align 8
  %30 = load i32, ptr @listLength, align 4
  %31 = call ptr @newCombList(i32 noundef %30)
  store ptr %31, ptr @combList, align 8
  %32 = load i32, ptr @listLength, align 4
  %33 = call ptr @newCombList(i32 noundef %32)
  store ptr %33, ptr @solution, align 8
  %34 = load ptr, ptr @workList, align 8
  %35 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %34, ptr noundef %1, i32 noundef %35)
  %36 = load ptr, ptr @combList, align 8
  %37 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %36, i32 noundef %37)
  %38 = load ptr, ptr @solution, align 8
  %39 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %38, i32 noundef %39)
  %40 = load i32, ptr @listLength, align 4
  ret i32 %40
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
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @search()
  br label %6

6:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { allocsize(0,1) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
