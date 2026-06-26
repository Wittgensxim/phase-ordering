; ModuleID = 'results\paper_full\McGill_exptree\McGill_exptree.ll'
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

4:                                                ; preds = %19, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 0, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %5, label %20

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.Comb, ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.Comb, ptr %1, i64 %indvars.iv
  %10 = getelementptr inbounds nuw %struct.Comb, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %12, i32 0, i32 1
  store i32 %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.Comb, ptr %1, i64 %indvars.iv
  %15 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  %18 = getelementptr inbounds nuw %struct.Comb, ptr %17, i32 0, i32 2
  store i32 %16, ptr %18, align 4
  br label %19

19:                                               ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !10

20:                                               ; preds = %4
  %21 = sext i32 %2 to i64
  %22 = getelementptr inbounds %struct.Comb, ptr %0, i64 %21
  %23 = getelementptr inbounds nuw %struct.Comb, ptr %22, i32 0, i32 2
  store i32 0, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %28 [
    i32 1, label %4
    i32 2, label %10
    i32 3, label %16
    i32 4, label %22
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add nsw i32 %6, %8
  br label %29

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub nsw i32 %12, %14
  br label %29

16:                                               ; preds = %1
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = mul nsw i32 %18, %20
  br label %29

22:                                               ; preds = %1
  %23 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 0
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = sdiv i32 %24, %26
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %22, %16, %10, %4
  %.0 = phi i32 [ 0, %28 ], [ %9, %4 ], [ %15, %10 ], [ %21, %16 ], [ %27, %22 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %3

3:                                                ; preds = %41, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %41 ], [ 0, %2 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %4, label %42

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %6)
  %8 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  %9 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %21 [
    i32 0, label %11
    i32 1, label %13
    i32 2, label %15
    i32 3, label %17
    i32 4, label %19
  ]

11:                                               ; preds = %4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %26

13:                                               ; preds = %4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %26

15:                                               ; preds = %4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %26

17:                                               ; preds = %4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %26

19:                                               ; preds = %4
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %26

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  %23 = getelementptr inbounds nuw %struct.Comb, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %24)
  br label %26

26:                                               ; preds = %21, %19, %17, %15, %13, %11
  %27 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  %28 = getelementptr inbounds nuw %struct.Comb, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.Comb, ptr %0, i64 %indvars.iv
  %31 = call i32 @calculate(ptr noundef %30)
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %29, i32 noundef %31)
  %33 = sub nsw i32 %1, 1
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %indvars.iv, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %40

38:                                               ; preds = %26
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %40

40:                                               ; preds = %38, %36
  br label %41

41:                                               ; preds = %40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %3, !llvm.loop !11

42:                                               ; preds = %3
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br label %135

6:                                                ; preds = %2
  %7 = load i32, ptr @nbNodes, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @nbNodes, align 4
  %9 = load i32, ptr @dmax, align 4
  %10 = icmp eq i32 %0, %9
  br i1 %10, label %11, label %44

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
  %23 = load i32, ptr @goal, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %11
  %28 = load ptr, ptr @workList, align 8
  %29 = load i32, ptr @listLength, align 4
  %30 = add nsw i32 %29, %0
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %28, i64 %32
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr @best, align 4
  store i32 %0, ptr @bestDepth, align 4
  %35 = load ptr, ptr @solution, align 8
  %36 = load ptr, ptr @combList, align 8
  call void @saveSolution(ptr noundef %35, ptr noundef %36, i32 noundef %0)
  %37 = load i32, ptr @best, align 4
  %38 = load i32, ptr @goal, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load ptr, ptr @combList, align 8
  call void @printSolution(ptr noundef %41, i32 noundef %0)
  store i32 1, ptr @stopSearch, align 4
  br label %42

42:                                               ; preds = %40, %27
  br label %43

43:                                               ; preds = %42, %11
  br label %135

44:                                               ; preds = %6
  br label %45

45:                                               ; preds = %132, %44
  %.02 = phi i32 [ 1, %44 ], [ %133, %132 ]
  %exitcond9 = icmp ne i32 %.02, 5
  br i1 %exitcond9, label %46, label %134

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %130, %46
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %130 ], [ 0, %46 ]
  %48 = load i32, ptr @listLength, align 4
  %49 = add nsw i32 %48, %0
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %indvars.iv6, %50
  br i1 %51, label %52, label %131

52:                                               ; preds = %47
  %53 = trunc nuw nsw i64 %indvars.iv6 to i32
  %54 = shl i32 1, %53
  %55 = and i32 %54, %1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %130

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %128, %58
  %indvars.iv = phi i64 [ %indvars.iv.next, %128 ], [ 0, %58 ]
  %exitcond = icmp ne i64 %indvars.iv, %indvars.iv6
  br i1 %exitcond, label %60, label %129

60:                                               ; preds = %59
  %61 = trunc nuw nsw i64 %indvars.iv to i32
  %62 = shl i32 1, %61
  %63 = and i32 %62, %1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %128

66:                                               ; preds = %60
  %67 = load ptr, ptr @workList, align 8
  %68 = getelementptr inbounds i32, ptr %67, i64 %indvars.iv6
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr @workList, align 8
  %71 = getelementptr inbounds i32, ptr %70, i64 %indvars.iv
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %.02, 3
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = icmp eq i32 %.02, 4
  br i1 %75, label %76, label %81

76:                                               ; preds = %74, %66
  %77 = icmp eq i32 %69, 1
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  %79 = icmp eq i32 %72, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %78, %76
  br label %128

81:                                               ; preds = %78, %74
  %82 = icmp eq i32 %69, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = icmp eq i32 %72, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %83, %81
  br label %128

86:                                               ; preds = %83
  %87 = icmp eq i32 %.02, 4
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  %89 = srem i32 %69, %72
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %128

92:                                               ; preds = %88, %86
  %93 = icmp eq i32 %.02, 4
  br i1 %93, label %96, label %94

94:                                               ; preds = %92
  %95 = icmp eq i32 %.02, 2
  br i1 %95, label %96, label %99

96:                                               ; preds = %94, %92
  %97 = icmp slt i32 %69, %72
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98, %96, %94
  %.01 = phi i32 [ %72, %98 ], [ %69, %96 ], [ %69, %94 ]
  %.0 = phi i32 [ %69, %98 ], [ %72, %96 ], [ %72, %94 ]
  %100 = trunc nuw nsw i64 %indvars.iv6 to i32
  %101 = shl i32 1, %100
  %102 = or i32 %1, %101
  %103 = trunc nuw nsw i64 %indvars.iv to i32
  %104 = shl i32 1, %103
  %105 = or i32 %102, %104
  %106 = load ptr, ptr @combList, align 8
  %107 = sext i32 %0 to i64
  %108 = getelementptr inbounds %struct.Comb, ptr %106, i64 %107
  %109 = getelementptr inbounds nuw %struct.Comb, ptr %108, i32 0, i32 0
  store i32 %.01, ptr %109, align 4
  %110 = load ptr, ptr @combList, align 8
  %111 = sext i32 %0 to i64
  %112 = getelementptr inbounds %struct.Comb, ptr %110, i64 %111
  %113 = getelementptr inbounds nuw %struct.Comb, ptr %112, i32 0, i32 1
  store i32 %.0, ptr %113, align 4
  %114 = load ptr, ptr @combList, align 8
  %115 = sext i32 %0 to i64
  %116 = getelementptr inbounds %struct.Comb, ptr %114, i64 %115
  %117 = getelementptr inbounds nuw %struct.Comb, ptr %116, i32 0, i32 2
  store i32 %.02, ptr %117, align 4
  %118 = load ptr, ptr @combList, align 8
  %119 = sext i32 %0 to i64
  %120 = getelementptr inbounds %struct.Comb, ptr %118, i64 %119
  %121 = call i32 @calculate(ptr noundef %120)
  %122 = load ptr, ptr @workList, align 8
  %123 = load i32, ptr @listLength, align 4
  %124 = add nsw i32 %123, %0
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %122, i64 %125
  store i32 %121, ptr %126, align 4
  %127 = add nsw i32 %0, 1
  call void @recSearch(i32 noundef %127, i32 noundef %105)
  br label %128

128:                                              ; preds = %99, %91, %85, %80, %65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %59, !llvm.loop !13

129:                                              ; preds = %59
  br label %130

130:                                              ; preds = %129, %57
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %47, !llvm.loop !14

131:                                              ; preds = %47
  br label %132

132:                                              ; preds = %131
  %133 = add nuw nsw i32 %.02, 1
  br label %45, !llvm.loop !15

134:                                              ; preds = %45
  br label %135

135:                                              ; preds = %134, %43, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  br label %1

1:                                                ; preds = %22, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %22 ], [ 0, %0 ]
  %2 = load i32, ptr @listLength, align 4
  %3 = sext i32 %2 to i64
  %4 = icmp slt i64 %indvars.iv, %3
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load ptr, ptr @workList, align 8
  %7 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr @goal, align 4
  %10 = sub nsw i32 %8, %9
  %11 = call i32 @llvm.abs.i32(i32 %10, i1 true)
  %12 = load i32, ptr @best, align 4
  %13 = load i32, ptr @goal, align 4
  %14 = sub nsw i32 %12, %13
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load ptr, ptr @workList, align 8
  %19 = getelementptr inbounds i32, ptr %18, i64 %indvars.iv
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr @best, align 4
  br label %21

21:                                               ; preds = %17, %5
  br label %22

22:                                               ; preds = %21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !16

23:                                               ; preds = %1
  %24 = load i32, ptr @best, align 4
  %25 = load i32, ptr @goal, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %48

29:                                               ; preds = %23
  store i32 1, ptr @dmax, align 4
  br label %30

30:                                               ; preds = %39, %29
  %31 = load i32, ptr @dmax, align 4
  %32 = load i32, ptr @listLength, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %.loopexit

34:                                               ; preds = %30
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %35 = load i32, ptr @stopSearch, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %42

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr @dmax, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @dmax, align 4
  br label %30, !llvm.loop !17

.loopexit:                                        ; preds = %30
  br label %42

42:                                               ; preds = %.loopexit, %37
  %43 = load i32, ptr @stopSearch, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load ptr, ptr @solution, align 8
  %47 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %46, i32 noundef %47)
  br label %48

48:                                               ; preds = %45, %42, %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  store i32 13, ptr %2, align 16
  %3 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 1
  store i32 32, ptr %3, align 4
  %4 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 2
  store i32 14, ptr %4, align 8
  %5 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 3
  store i32 1412, ptr %5, align 4
  br label %6

6:                                                ; preds = %13, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %0 ]
  %7 = call i32 @getchar()
  %8 = icmp ne i32 %7, 10
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = icmp ne i32 %7, -1
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i1 [ false, %6 ], [ %10, %9 ]
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = call ptr @__acrt_iob_func(i32 noundef 0)
  %15 = call i32 @ungetc(i32 noundef %7, ptr noundef %14)
  %16 = call ptr @__acrt_iob_func(i32 noundef 0)
  %17 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %indvars.iv
  %18 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %16, ptr noundef @.str.2, ptr noundef %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %6, !llvm.loop !18

19:                                               ; preds = %11
  %.0.lcssa.wide = phi i64 [ %indvars.iv, %11 ]
  %20 = trunc nuw nsw i64 %.0.lcssa.wide to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22, %19
  %.1 = phi i32 [ 4, %22 ], [ %20, %19 ]
  %24 = sub nsw i32 %.1, 1
  store i32 %24, ptr @listLength, align 4
  %25 = load i32, ptr @listLength, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr @goal, align 4
  %29 = load i32, ptr @listLength, align 4
  %30 = mul nsw i32 2, %29
  %31 = call ptr @newWorkList(i32 noundef %30)
  store ptr %31, ptr @workList, align 8
  %32 = load i32, ptr @listLength, align 4
  %33 = call ptr @newCombList(i32 noundef %32)
  store ptr %33, ptr @combList, align 8
  %34 = load i32, ptr @listLength, align 4
  %35 = call ptr @newCombList(i32 noundef %34)
  store ptr %35, ptr @solution, align 8
  %36 = load ptr, ptr @workList, align 8
  %37 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  %38 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %36, ptr noundef %37, i32 noundef %38)
  %39 = load ptr, ptr @combList, align 8
  %40 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %39, i32 noundef %40)
  %41 = load ptr, ptr @solution, align 8
  %42 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %41, i32 noundef %42)
  %43 = load i32, ptr @listLength, align 4
  ret i32 %43
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
