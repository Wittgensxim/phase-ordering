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
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = sext i32 %0 to i64
  %5 = call ptr @calloc(i64 noundef %4, i64 noundef 4) #6
  store ptr %5, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  ret ptr %5

8:                                                ; preds = %1
  %9 = call ptr @__acrt_iob_func(i32 noundef 2)
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str) #7
  call void @exit(i32 noundef 1) #8
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
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = sext i32 %0 to i64
  %5 = call ptr @calloc(i64 noundef %4, i64 noundef 12) #6
  store ptr %5, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  ret ptr %5

8:                                                ; preds = %1
  %9 = call ptr @__acrt_iob_func(i32 noundef 2)
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.1) #7
  call void @exit(i32 noundef 1) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initWorkList(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  %8 = load i32, ptr %6, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  br label %11

11:                                               ; preds = %19, %3
  %12 = phi i32 [ %20, %19 ], [ 0, %3 ]
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i32, ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i32, ptr %10, i64 %15
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %14
  %20 = add nsw i32 %12, 1
  br label %11, !llvm.loop !7

21:                                               ; preds = %11
  store i32 %12, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initCombList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = load ptr, ptr %3, align 8
  br label %8

8:                                                ; preds = %15, %2
  %9 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %10 = icmp slt i32 %9, %6
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds %struct.Comb, ptr %7, i64 %12
  %14 = getelementptr inbounds nuw %struct.Comb, ptr %13, i32 0, i32 2
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11
  %16 = add nsw i32 %9, 1
  br label %8, !llvm.loop !9

17:                                               ; preds = %8
  store i32 %9, ptr %5, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveSolution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  %8 = load i32, ptr %6, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  br label %11

11:                                               ; preds = %25, %3
  %12 = phi i32 [ %26, %25 ], [ 0, %3 ]
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %struct.Comb, ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.Comb, ptr %10, i64 %15
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds nuw %struct.Comb, ptr %16, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds nuw %struct.Comb, ptr %18, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %16, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds nuw %struct.Comb, ptr %18, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %14
  %26 = add nsw i32 %12, 1
  br label %11, !llvm.loop !10

27:                                               ; preds = %11
  store i32 %12, ptr %7, align 4
  %28 = load ptr, ptr %4, align 8
  %29 = load i32, ptr %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.Comb, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw %struct.Comb, ptr %31, i32 0, i32 2
  store i32 0, ptr %32, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %26 [
    i32 1, label %6
    i32 2, label %11
    i32 3, label %16
    i32 4, label %21
  ]

6:                                                ; preds = %1
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %7, %9
  store i32 %10, ptr %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load i32, ptr %0, align 4
  %13 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub nsw i32 %12, %14
  store i32 %15, ptr %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load i32, ptr %0, align 4
  %18 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = mul nsw i32 %17, %19
  store i32 %20, ptr %2, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load i32, ptr %0, align 4
  %23 = getelementptr inbounds nuw %struct.Comb, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = sdiv i32 %22, %24
  store i32 %25, ptr %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %27

27:                                               ; preds = %26, %21, %16, %11, %6
  %28 = load i32, ptr %2, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = sub nsw i32 %6, 1
  br label %9

9:                                                ; preds = %42, %2
  %10 = phi i32 [ %43, %42 ], [ 0, %2 ]
  %11 = icmp slt i32 %10, %6
  br i1 %11, label %12, label %44

12:                                               ; preds = %9
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds %struct.Comb, ptr %7, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %15)
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %29 [
    i32 0, label %19
    i32 1, label %21
    i32 2, label %23
    i32 3, label %25
    i32 4, label %27
  ]

19:                                               ; preds = %12
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %31

21:                                               ; preds = %12
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %31

23:                                               ; preds = %12
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %31

25:                                               ; preds = %12
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %31

27:                                               ; preds = %12
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %31

29:                                               ; preds = %12
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %18)
  br label %31

31:                                               ; preds = %29, %27, %25, %23, %21, %19
  %32 = getelementptr inbounds nuw %struct.Comb, ptr %14, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = call i32 @calculate(ptr noundef %14)
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %33, i32 noundef %34)
  %36 = icmp slt i32 %10, %8
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %41

39:                                               ; preds = %31
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41
  %43 = add nsw i32 %10, 1
  br label %9, !llvm.loop !11

44:                                               ; preds = %9
  store i32 %10, ptr %5, align 4
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printList(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  %10 = load ptr, ptr %4, align 8
  br label %11

11:                                               ; preds = %24, %3
  %12 = phi i32 [ %25, %24 ], [ 0, %3 ]
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = shl i32 1, %12
  %16 = and i32 %15, %9
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %24

19:                                               ; preds = %14
  %20 = sext i32 %12 to i64
  %21 = getelementptr inbounds i32, ptr %10, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %22)
  br label %24

24:                                               ; preds = %19, %18
  %25 = add nsw i32 %12, 1
  br label %11, !llvm.loop !12

26:                                               ; preds = %11
  store i32 %12, ptr %7, align 4
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @recSearch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %12 = load i32, ptr @stopSearch, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %148

15:                                               ; preds = %2
  %16 = load i32, ptr @nbNodes, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @nbNodes, align 4
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr @dmax, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = load ptr, ptr @workList, align 8
  %23 = load i32, ptr @listLength, align 4
  %24 = add nsw i32 %23, %18
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %22, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr @goal, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @llvm.abs.i32(i32 %30, i1 true)
  %32 = load i32, ptr @best, align 4
  %33 = sub nsw i32 %32, %29
  %34 = call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %21
  store i32 %28, ptr @best, align 4
  %37 = load i32, ptr %3, align 4
  store i32 %37, ptr @bestDepth, align 4
  %38 = load ptr, ptr @solution, align 8
  %39 = load ptr, ptr @combList, align 8
  %40 = load i32, ptr %3, align 4
  call void @saveSolution(ptr noundef %38, ptr noundef %39, i32 noundef %40)
  %41 = load i32, ptr @best, align 4
  %42 = load i32, ptr @goal, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load ptr, ptr @combList, align 8
  %46 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %45, i32 noundef %46)
  store i32 1, ptr @stopSearch, align 4
  br label %47

47:                                               ; preds = %44, %36
  br label %48

48:                                               ; preds = %47, %21
  br label %148

49:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  %50 = load i32, ptr %3, align 4
  %51 = load i32, ptr %4, align 4
  %52 = sext i32 %50 to i64
  %53 = add nsw i32 %50, 1
  %.promoted27 = load i32, ptr %7, align 4
  %.promoted29 = load i32, ptr %8, align 4
  %.promoted31 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %10, align 4
  %.promoted34 = load i32, ptr %11, align 4
  %.promoted36 = load i32, ptr %6, align 4
  br label %54

54:                                               ; preds = %145, %49
  %.lcssa824.lcssa37 = phi i32 [ %.lcssa824, %145 ], [ %.promoted36, %49 ]
  %.lcssa621.lcssa35 = phi i32 [ %.lcssa621, %145 ], [ %.promoted34, %49 ]
  %.lcssa418.lcssa33 = phi i32 [ %.lcssa418, %145 ], [ %.promoted, %49 ]
  %.lcssa215.lcssa32 = phi i32 [ %.lcssa215, %145 ], [ %.promoted31, %49 ]
  %.lcssa13.lcssa30 = phi i32 [ %.lcssa13, %145 ], [ %.promoted29, %49 ]
  %.lcssa1028 = phi i32 [ %62, %145 ], [ %.promoted27, %49 ]
  %55 = phi i32 [ %146, %145 ], [ 1, %49 ]
  %56 = icmp sle i32 %55, 4
  br i1 %56, label %57, label %147

57:                                               ; preds = %54
  %58 = icmp eq i32 %55, 3
  %59 = icmp eq i32 %55, 4
  %60 = icmp eq i32 %55, 2
  br label %61

61:                                               ; preds = %142, %57
  %.lcssa824 = phi i32 [ %.lcssa823, %142 ], [ %.lcssa824.lcssa37, %57 ]
  %.lcssa621 = phi i32 [ %.lcssa620, %142 ], [ %.lcssa621.lcssa35, %57 ]
  %.lcssa418 = phi i32 [ %.lcssa417, %142 ], [ %.lcssa418.lcssa33, %57 ]
  %.lcssa215 = phi i32 [ %.lcssa214, %142 ], [ %.lcssa215.lcssa32, %57 ]
  %.lcssa13 = phi i32 [ %.lcssa12, %142 ], [ %.lcssa13.lcssa30, %57 ]
  %62 = phi i32 [ %143, %142 ], [ 0, %57 ]
  %63 = load i32, ptr @listLength, align 4
  %64 = add nsw i32 %63, %50
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %144

66:                                               ; preds = %61
  %67 = shl i32 1, %62
  %68 = and i32 %67, %51
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %142

71:                                               ; preds = %66
  %72 = sext i32 %62 to i64
  %73 = or i32 %51, %67
  br label %74

74:                                               ; preds = %135, %71
  %75 = phi i32 [ %136, %135 ], [ %.lcssa824, %71 ]
  %76 = phi i32 [ %137, %135 ], [ %.lcssa621, %71 ]
  %77 = phi i32 [ %138, %135 ], [ %.lcssa418, %71 ]
  %78 = phi i32 [ %139, %135 ], [ %.lcssa215, %71 ]
  %79 = phi i32 [ %140, %135 ], [ 0, %71 ]
  %80 = icmp slt i32 %79, %62
  br i1 %80, label %81, label %141

81:                                               ; preds = %74
  %82 = shl i32 1, %79
  %83 = and i32 %82, %51
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %135

86:                                               ; preds = %81
  %87 = load ptr, ptr @workList, align 8
  %88 = getelementptr inbounds i32, ptr %87, i64 %72
  %89 = load i32, ptr %88, align 4
  %90 = sext i32 %79 to i64
  %91 = getelementptr inbounds i32, ptr %87, i64 %90
  %92 = load i32, ptr %91, align 4
  br i1 %58, label %94, label %93

93:                                               ; preds = %86
  br i1 %59, label %94, label %99

94:                                               ; preds = %93, %86
  %95 = icmp eq i32 %89, 1
  br i1 %95, label %98, label %96

96:                                               ; preds = %94
  %97 = icmp eq i32 %92, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %96, %94
  br label %135

99:                                               ; preds = %96, %93
  %100 = icmp eq i32 %89, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %99
  %102 = icmp eq i32 %92, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %101, %99
  br label %135

104:                                              ; preds = %101
  br i1 %59, label %105, label %109

105:                                              ; preds = %104
  %106 = srem i32 %89, %92
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %135

109:                                              ; preds = %105, %104
  br i1 %59, label %111, label %110

110:                                              ; preds = %109
  br i1 %60, label %111, label %114

111:                                              ; preds = %110, %109
  %112 = icmp slt i32 %89, %92
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113, %111, %110
  %115 = phi i32 [ %89, %113 ], [ %76, %111 ], [ %76, %110 ]
  %116 = phi i32 [ %89, %113 ], [ %92, %111 ], [ %92, %110 ]
  %117 = phi i32 [ %92, %113 ], [ %89, %111 ], [ %89, %110 ]
  %118 = or i32 %73, %82
  %119 = load ptr, ptr @combList, align 8
  %120 = getelementptr inbounds %struct.Comb, ptr %119, i64 %52
  store i32 %117, ptr %120, align 4
  %121 = load ptr, ptr @combList, align 8
  %122 = getelementptr inbounds %struct.Comb, ptr %121, i64 %52
  %123 = getelementptr inbounds nuw %struct.Comb, ptr %122, i32 0, i32 1
  store i32 %116, ptr %123, align 4
  %124 = load ptr, ptr @combList, align 8
  %125 = getelementptr inbounds %struct.Comb, ptr %124, i64 %52
  %126 = getelementptr inbounds nuw %struct.Comb, ptr %125, i32 0, i32 2
  store i32 %55, ptr %126, align 4
  %127 = load ptr, ptr @combList, align 8
  %128 = getelementptr inbounds %struct.Comb, ptr %127, i64 %52
  %129 = call i32 @calculate(ptr noundef %128)
  %130 = load ptr, ptr @workList, align 8
  %131 = load i32, ptr @listLength, align 4
  %132 = add nsw i32 %131, %50
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, ptr %130, i64 %133
  store i32 %129, ptr %134, align 4
  call void @recSearch(i32 noundef %53, i32 noundef %118)
  br label %135

135:                                              ; preds = %114, %108, %103, %98, %85
  %136 = phi i32 [ %118, %114 ], [ %75, %108 ], [ %75, %103 ], [ %75, %98 ], [ %75, %85 ]
  %137 = phi i32 [ %115, %114 ], [ %76, %108 ], [ %76, %103 ], [ %76, %98 ], [ %76, %85 ]
  %138 = phi i32 [ %116, %114 ], [ %92, %108 ], [ %92, %103 ], [ %92, %98 ], [ %77, %85 ]
  %139 = phi i32 [ %117, %114 ], [ %89, %108 ], [ %89, %103 ], [ %89, %98 ], [ %78, %85 ]
  %140 = add nsw i32 %79, 1
  br label %74, !llvm.loop !13

141:                                              ; preds = %74
  br label %142

142:                                              ; preds = %141, %70
  %.lcssa823 = phi i32 [ %75, %141 ], [ %.lcssa824, %70 ]
  %.lcssa620 = phi i32 [ %76, %141 ], [ %.lcssa621, %70 ]
  %.lcssa417 = phi i32 [ %77, %141 ], [ %.lcssa418, %70 ]
  %.lcssa214 = phi i32 [ %78, %141 ], [ %.lcssa215, %70 ]
  %.lcssa12 = phi i32 [ %79, %141 ], [ %.lcssa13, %70 ]
  %143 = add nsw i32 %62, 1
  br label %61, !llvm.loop !14

144:                                              ; preds = %61
  br label %145

145:                                              ; preds = %144
  %146 = add nsw i32 %55, 1
  br label %54, !llvm.loop !15

147:                                              ; preds = %54
  store i32 %55, ptr %5, align 4
  store i32 %.lcssa1028, ptr %7, align 4
  store i32 %.lcssa13.lcssa30, ptr %8, align 4
  store i32 %.lcssa215.lcssa32, ptr %9, align 4
  store i32 %.lcssa418.lcssa33, ptr %10, align 4
  store i32 %.lcssa621.lcssa35, ptr %11, align 4
  store i32 %.lcssa824.lcssa37, ptr %6, align 4
  br label %148

148:                                              ; preds = %147, %48, %14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSearch() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = load i32, ptr @listLength, align 4
  %3 = load ptr, ptr @workList, align 8
  %4 = load i32, ptr @goal, align 4
  %best.promoted = load i32, ptr @best, align 4
  br label %5

5:                                                ; preds = %21, %0
  %6 = phi i32 [ %20, %21 ], [ %best.promoted, %0 ]
  %7 = phi i32 [ %22, %21 ], [ 0, %0 ]
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds i32, ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %12, %4
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = sub nsw i32 %6, %4
  %16 = call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 %12, ptr @best, align 4
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i32 [ %12, %18 ], [ %6, %9 ]
  br label %21

21:                                               ; preds = %19
  %22 = add nsw i32 %7, 1
  br label %5, !llvm.loop !16

23:                                               ; preds = %5
  store i32 %7, ptr %1, align 4
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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  store i32 13, ptr %1, align 16
  %4 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 1
  store i32 32, ptr %4, align 4
  %5 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 2
  store i32 14, ptr %5, align 8
  %6 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 3
  store i32 1412, ptr %6, align 4
  %.promoted = load i32, ptr %2, align 4
  br label %7

7:                                                ; preds = %15, %0
  %8 = phi i32 [ %22, %15 ], [ %.promoted, %0 ]
  %9 = call i32 @getchar()
  %10 = icmp ne i32 %9, 10
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = icmp ne i32 %9, -1
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i1 [ false, %7 ], [ %12, %11 ]
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = call ptr @__acrt_iob_func(i32 noundef 0)
  %17 = call i32 @ungetc(i32 noundef %9, ptr noundef %16)
  %18 = call ptr @__acrt_iob_func(i32 noundef 0)
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %19
  %21 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %18, ptr noundef @.str.2, ptr noundef %20)
  %22 = add nsw i32 %8, 1
  br label %7, !llvm.loop !18

23:                                               ; preds = %13
  store i32 %9, ptr %3, align 4
  store i32 %8, ptr %2, align 4
  %24 = icmp eq i32 %8, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store i32 4, ptr %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, ptr %2, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, ptr @listLength, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr @goal, align 4
  %32 = load i32, ptr @listLength, align 4
  %33 = mul nsw i32 2, %32
  %34 = call ptr @newWorkList(i32 noundef %33)
  store ptr %34, ptr @workList, align 8
  %35 = load i32, ptr @listLength, align 4
  %36 = call ptr @newCombList(i32 noundef %35)
  store ptr %36, ptr @combList, align 8
  %37 = load i32, ptr @listLength, align 4
  %38 = call ptr @newCombList(i32 noundef %37)
  store ptr %38, ptr @solution, align 8
  %39 = load ptr, ptr @workList, align 8
  %40 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %39, ptr noundef %1, i32 noundef %40)
  %41 = load ptr, ptr @combList, align 8
  %42 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %41, i32 noundef %42)
  %43 = load ptr, ptr @solution, align 8
  %44 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %43, i32 noundef %44)
  %45 = load i32, ptr @listLength, align 4
  ret i32 %45
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %6 = call i32 @getInput()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @search()
  br label %9

9:                                                ; preds = %8, %2
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { allocsize(0,1) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
