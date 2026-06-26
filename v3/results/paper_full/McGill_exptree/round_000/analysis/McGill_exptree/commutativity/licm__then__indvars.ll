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
  %4 = load i32, ptr %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call ptr @calloc(i64 noundef %5, i64 noundef 4) #7
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  ret ptr %10

11:                                               ; preds = %1
  %12 = call ptr @__acrt_iob_func(i32 noundef 2)
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str) #8
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
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call ptr @calloc(i64 noundef %5, i64 noundef 12) #7
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  ret ptr %10

11:                                               ; preds = %1
  %12 = call ptr @__acrt_iob_func(i32 noundef 2)
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.1) #8
  call void @exit(i32 noundef 1) #9
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
  %.promoted = load i32, ptr %7, align 4
  %11 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %8)
  %wide.trip.count = sext i32 %smax to i64
  br label %12

12:                                               ; preds = %17, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ %11, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %13, label %18

13:                                               ; preds = %12
  %14 = getelementptr inbounds i32, ptr %9, i64 %indvars.iv
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %12, !llvm.loop !7

18:                                               ; preds = %12
  %.lcssa.wide = phi i64 [ %indvars.iv, %12 ]
  %19 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %19, ptr %7, align 4
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
  %.promoted = load i32, ptr %5, align 4
  %8 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %6)
  %wide.trip.count = sext i32 %smax to i64
  br label %9

9:                                                ; preds = %13, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ %8, %2 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %10, label %14

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.Comb, ptr %7, i64 %indvars.iv
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 2
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %9, !llvm.loop !9

14:                                               ; preds = %9
  %.lcssa.wide = phi i64 [ %indvars.iv, %9 ]
  %15 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %15, ptr %5, align 4
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
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %7, align 4
  %15 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %8)
  %wide.trip.count = sext i32 %smax to i64
  br label %16

16:                                               ; preds = %31, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %31 ], [ %15, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %17, label %32

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.Comb, ptr %9, i64 %indvars.iv
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.Comb, ptr %10, i64 %indvars.iv
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.Comb, ptr %11, i64 %indvars.iv
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.Comb, ptr %12, i64 %indvars.iv
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %24, i32 0, i32 1
  store i32 %23, ptr %25, align 4
  %26 = getelementptr inbounds %struct.Comb, ptr %13, i64 %indvars.iv
  %27 = getelementptr inbounds nuw %struct.Comb, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.Comb, ptr %14, i64 %indvars.iv
  %30 = getelementptr inbounds nuw %struct.Comb, ptr %29, i32 0, i32 2
  store i32 %28, ptr %30, align 4
  br label %31

31:                                               ; preds = %17
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %16, !llvm.loop !10

32:                                               ; preds = %16
  %.lcssa.wide = phi i64 [ %indvars.iv, %16 ]
  %33 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %33, ptr %7, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = load i32, ptr %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.Comb, ptr %34, i64 %36
  %38 = getelementptr inbounds nuw %struct.Comb, ptr %37, i32 0, i32 2
  store i32 0, ptr %38, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %struct.Comb, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %39 [
    i32 1, label %7
    i32 2, label %15
    i32 3, label %23
    i32 4, label %31
  ]

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.Comb, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %struct.Comb, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add nsw i32 %10, %13
  store i32 %14, ptr %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.Comb, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %struct.Comb, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sub nsw i32 %18, %21
  store i32 %22, ptr %2, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %struct.Comb, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds nuw %struct.Comb, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = mul nsw i32 %26, %29
  store i32 %30, ptr %2, align 4
  br label %40

31:                                               ; preds = %1
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds nuw %struct.Comb, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds nuw %struct.Comb, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = sdiv i32 %34, %37
  store i32 %38, ptr %2, align 4
  br label %40

39:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %40

40:                                               ; preds = %39, %31, %23, %15, %7
  %41 = load i32, ptr %2, align 4
  ret i32 %41
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
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %4, align 4
  %13 = sub nsw i32 %12, 1
  %.promoted = load i32, ptr %5, align 4
  %14 = sext i32 %.promoted to i64
  %15 = sext i32 %13 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %6)
  %wide.trip.count = sext i32 %smax to i64
  br label %16

16:                                               ; preds = %52, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %52 ], [ %14, %2 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %17, label %53

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.Comb, ptr %7, i64 %indvars.iv
  %19 = load i32, ptr %18, align 4
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %19)
  %21 = getelementptr inbounds %struct.Comb, ptr %8, i64 %indvars.iv
  %22 = getelementptr inbounds nuw %struct.Comb, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %34 [
    i32 0, label %24
    i32 1, label %26
    i32 2, label %28
    i32 3, label %30
    i32 4, label %32
  ]

24:                                               ; preds = %17
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %39

26:                                               ; preds = %17
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %39

28:                                               ; preds = %17
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %39

30:                                               ; preds = %17
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %39

32:                                               ; preds = %17
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %39

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.Comb, ptr %9, i64 %indvars.iv
  %36 = getelementptr inbounds nuw %struct.Comb, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %37)
  br label %39

39:                                               ; preds = %34, %32, %30, %28, %26, %24
  %40 = getelementptr inbounds %struct.Comb, ptr %10, i64 %indvars.iv
  %41 = getelementptr inbounds nuw %struct.Comb, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.Comb, ptr %11, i64 %indvars.iv
  %44 = call i32 @calculate(ptr noundef %43)
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %42, i32 noundef %44)
  %46 = icmp slt i64 %indvars.iv, %15
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %51

49:                                               ; preds = %39
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %16, !llvm.loop !11

53:                                               ; preds = %16
  %.lcssa.wide = phi i64 [ %indvars.iv, %16 ]
  %54 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %54, ptr %5, align 4
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  %.promoted = load i32, ptr %7, align 4
  %11 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %8)
  %wide.trip.count = sext i32 %smax to i64
  br label %12

12:                                               ; preds = %23, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ %11, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %13, label %24

13:                                               ; preds = %12
  %14 = trunc nsw i64 %indvars.iv to i32
  %15 = shl i32 1, %14
  %16 = and i32 %15, %9
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv
  %21 = load i32, ptr %20, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %21)
  br label %23

23:                                               ; preds = %19, %18
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %12, !llvm.loop !12

24:                                               ; preds = %12
  %.lcssa.wide = phi i64 [ %indvars.iv, %12 ]
  %25 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %25, ptr %7, align 4
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
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
  br label %174

15:                                               ; preds = %2
  %16 = load i32, ptr @nbNodes, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @nbNodes, align 4
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr @dmax, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = load ptr, ptr @workList, align 8
  %23 = load i32, ptr @listLength, align 4
  %24 = load i32, ptr %3, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %22, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr @goal, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @llvm.abs.i32(i32 %31, i1 true)
  %33 = load i32, ptr @best, align 4
  %34 = load i32, ptr @goal, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @llvm.abs.i32(i32 %35, i1 true)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %21
  %39 = load ptr, ptr @workList, align 8
  %40 = load i32, ptr @listLength, align 4
  %41 = load i32, ptr %3, align 4
  %42 = add nsw i32 %40, %41
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %39, i64 %44
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr @best, align 4
  %47 = load i32, ptr %3, align 4
  store i32 %47, ptr @bestDepth, align 4
  %48 = load ptr, ptr @solution, align 8
  %49 = load ptr, ptr @combList, align 8
  %50 = load i32, ptr %3, align 4
  call void @saveSolution(ptr noundef %48, ptr noundef %49, i32 noundef %50)
  %51 = load i32, ptr @best, align 4
  %52 = load i32, ptr @goal, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load ptr, ptr @combList, align 8
  %56 = load i32, ptr %3, align 4
  call void @printSolution(ptr noundef %55, i32 noundef %56)
  store i32 1, ptr @stopSearch, align 4
  br label %57

57:                                               ; preds = %54, %38
  br label %58

58:                                               ; preds = %57, %21
  br label %174

59:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  %60 = load i32, ptr %3, align 4
  %61 = load i32, ptr %4, align 4
  %62 = load i32, ptr %4, align 4
  %63 = load i32, ptr %4, align 4
  %64 = load i32, ptr %3, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32, ptr %3, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32, ptr %3, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32, ptr %3, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32, ptr %3, align 4
  %73 = load i32, ptr %3, align 4
  %74 = add nsw i32 %73, 1
  %.promoted25 = load i32, ptr %5, align 4
  %.promoted27 = load i32, ptr %7, align 4
  %.promoted29 = load i32, ptr %8, align 4
  %.promoted31 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %10, align 4
  %.promoted34 = load i32, ptr %11, align 4
  %.promoted36 = load i32, ptr %6, align 4
  %smax = call i32 @llvm.smax.i32(i32 %.promoted25, i32 5)
  br label %75

75:                                               ; preds = %171, %59
  %.lcssa824.lcssa37 = phi i32 [ %.lcssa824.lcssa, %171 ], [ %.promoted36, %59 ]
  %.lcssa621.lcssa35 = phi i32 [ %.lcssa621.lcssa, %171 ], [ %.promoted34, %59 ]
  %.lcssa418.lcssa33 = phi i32 [ %.lcssa418.lcssa, %171 ], [ %.promoted, %59 ]
  %.lcssa215.lcssa32 = phi i32 [ %.lcssa215.lcssa, %171 ], [ %.promoted31, %59 ]
  %.lcssa13.lcssa30 = phi i32 [ %.lcssa13.lcssa, %171 ], [ %.promoted29, %59 ]
  %.lcssa1028 = phi i32 [ %170, %171 ], [ %.promoted27, %59 ]
  %76 = phi i32 [ %172, %171 ], [ %.promoted25, %59 ]
  %exitcond42 = icmp ne i32 %76, %smax
  br i1 %exitcond42, label %77, label %173

77:                                               ; preds = %75
  %78 = icmp eq i32 %76, 3
  %79 = icmp eq i32 %76, 4
  %80 = icmp eq i32 %76, 4
  %81 = icmp eq i32 %76, 4
  %82 = icmp eq i32 %76, 2
  br label %83

83:                                               ; preds = %168, %77
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %168 ], [ 0, %77 ]
  %.lcssa824 = phi i32 [ %.lcssa823, %168 ], [ %.lcssa824.lcssa37, %77 ]
  %.lcssa621 = phi i32 [ %.lcssa620, %168 ], [ %.lcssa621.lcssa35, %77 ]
  %.lcssa418 = phi i32 [ %.lcssa417, %168 ], [ %.lcssa418.lcssa33, %77 ]
  %.lcssa215 = phi i32 [ %.lcssa214, %168 ], [ %.lcssa215.lcssa32, %77 ]
  %.lcssa13 = phi i32 [ %.lcssa12, %168 ], [ %.lcssa13.lcssa30, %77 ]
  %84 = load i32, ptr @listLength, align 4
  %85 = add nsw i32 %84, %60
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %indvars.iv39, %86
  br i1 %87, label %88, label %169

88:                                               ; preds = %83
  %89 = trunc nuw nsw i64 %indvars.iv39 to i32
  %90 = shl i32 1, %89
  %91 = and i32 %90, %61
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %168

94:                                               ; preds = %88
  %95 = trunc nuw nsw i64 %indvars.iv39 to i32
  %96 = shl i32 1, %95
  %97 = or i32 %63, %96
  br label %98

98:                                               ; preds = %161, %94
  %indvars.iv = phi i64 [ %indvars.iv.next, %161 ], [ 0, %94 ]
  %99 = phi i32 [ %162, %161 ], [ %.lcssa824, %94 ]
  %100 = phi i32 [ %163, %161 ], [ %.lcssa621, %94 ]
  %101 = phi i32 [ %164, %161 ], [ %.lcssa418, %94 ]
  %102 = phi i32 [ %165, %161 ], [ %.lcssa215, %94 ]
  %exitcond = icmp ne i64 %indvars.iv, %indvars.iv39
  br i1 %exitcond, label %103, label %166

103:                                              ; preds = %98
  %104 = trunc nuw nsw i64 %indvars.iv to i32
  %105 = shl i32 1, %104
  %106 = and i32 %105, %62
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %161

109:                                              ; preds = %103
  %110 = load ptr, ptr @workList, align 8
  %111 = getelementptr inbounds i32, ptr %110, i64 %indvars.iv39
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr @workList, align 8
  %114 = getelementptr inbounds i32, ptr %113, i64 %indvars.iv
  %115 = load i32, ptr %114, align 4
  br i1 %78, label %117, label %116

116:                                              ; preds = %109
  br i1 %79, label %117, label %122

117:                                              ; preds = %116, %109
  %118 = icmp eq i32 %112, 1
  br i1 %118, label %121, label %119

119:                                              ; preds = %117
  %120 = icmp eq i32 %115, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %119, %117
  br label %161

122:                                              ; preds = %119, %116
  %123 = icmp eq i32 %112, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %122
  %125 = icmp eq i32 %115, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %124, %122
  br label %161

127:                                              ; preds = %124
  br i1 %80, label %128, label %132

128:                                              ; preds = %127
  %129 = srem i32 %112, %115
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %161

132:                                              ; preds = %128, %127
  br i1 %81, label %134, label %133

133:                                              ; preds = %132
  br i1 %82, label %134, label %137

134:                                              ; preds = %133, %132
  %135 = icmp slt i32 %112, %115
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  br label %137

137:                                              ; preds = %136, %134, %133
  %138 = phi i32 [ %112, %136 ], [ %100, %134 ], [ %100, %133 ]
  %139 = phi i32 [ %112, %136 ], [ %115, %134 ], [ %115, %133 ]
  %140 = phi i32 [ %115, %136 ], [ %112, %134 ], [ %112, %133 ]
  %141 = trunc nuw nsw i64 %indvars.iv to i32
  %142 = shl i32 1, %141
  %143 = or i32 %97, %142
  %144 = load ptr, ptr @combList, align 8
  %145 = getelementptr inbounds %struct.Comb, ptr %144, i64 %65
  %146 = getelementptr inbounds nuw %struct.Comb, ptr %145, i32 0, i32 0
  store i32 %140, ptr %146, align 4
  %147 = load ptr, ptr @combList, align 8
  %148 = getelementptr inbounds %struct.Comb, ptr %147, i64 %67
  %149 = getelementptr inbounds nuw %struct.Comb, ptr %148, i32 0, i32 1
  store i32 %139, ptr %149, align 4
  %150 = load ptr, ptr @combList, align 8
  %151 = getelementptr inbounds %struct.Comb, ptr %150, i64 %69
  %152 = getelementptr inbounds nuw %struct.Comb, ptr %151, i32 0, i32 2
  store i32 %76, ptr %152, align 4
  %153 = load ptr, ptr @combList, align 8
  %154 = getelementptr inbounds %struct.Comb, ptr %153, i64 %71
  %155 = call i32 @calculate(ptr noundef %154)
  %156 = load ptr, ptr @workList, align 8
  %157 = load i32, ptr @listLength, align 4
  %158 = add nsw i32 %157, %72
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %156, i64 %159
  store i32 %155, ptr %160, align 4
  call void @recSearch(i32 noundef %74, i32 noundef %143)
  br label %161

161:                                              ; preds = %137, %131, %126, %121, %108
  %162 = phi i32 [ %143, %137 ], [ %99, %131 ], [ %99, %126 ], [ %99, %121 ], [ %99, %108 ]
  %163 = phi i32 [ %138, %137 ], [ %100, %131 ], [ %100, %126 ], [ %100, %121 ], [ %100, %108 ]
  %164 = phi i32 [ %139, %137 ], [ %115, %131 ], [ %115, %126 ], [ %115, %121 ], [ %101, %108 ]
  %165 = phi i32 [ %140, %137 ], [ %112, %131 ], [ %112, %126 ], [ %112, %121 ], [ %102, %108 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %98, !llvm.loop !13

166:                                              ; preds = %98
  %.lcssa8 = phi i32 [ %99, %98 ]
  %.lcssa6 = phi i32 [ %100, %98 ]
  %.lcssa4 = phi i32 [ %101, %98 ]
  %.lcssa2 = phi i32 [ %102, %98 ]
  %.lcssa.wide = phi i64 [ %indvars.iv, %98 ]
  %167 = trunc nuw nsw i64 %.lcssa.wide to i32
  br label %168

168:                                              ; preds = %166, %93
  %.lcssa823 = phi i32 [ %.lcssa8, %166 ], [ %.lcssa824, %93 ]
  %.lcssa620 = phi i32 [ %.lcssa6, %166 ], [ %.lcssa621, %93 ]
  %.lcssa417 = phi i32 [ %.lcssa4, %166 ], [ %.lcssa418, %93 ]
  %.lcssa214 = phi i32 [ %.lcssa2, %166 ], [ %.lcssa215, %93 ]
  %.lcssa12 = phi i32 [ %167, %166 ], [ %.lcssa13, %93 ]
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %83, !llvm.loop !14

169:                                              ; preds = %83
  %.lcssa824.lcssa = phi i32 [ %.lcssa824, %83 ]
  %.lcssa621.lcssa = phi i32 [ %.lcssa621, %83 ]
  %.lcssa418.lcssa = phi i32 [ %.lcssa418, %83 ]
  %.lcssa215.lcssa = phi i32 [ %.lcssa215, %83 ]
  %.lcssa13.lcssa = phi i32 [ %.lcssa13, %83 ]
  %.lcssa10.wide = phi i64 [ %indvars.iv39, %83 ]
  %170 = trunc nuw nsw i64 %.lcssa10.wide to i32
  br label %171

171:                                              ; preds = %169
  %172 = add i32 %76, 1
  br label %75, !llvm.loop !15

173:                                              ; preds = %75
  %.lcssa824.lcssa37.lcssa = phi i32 [ %.lcssa824.lcssa37, %75 ]
  %.lcssa621.lcssa35.lcssa = phi i32 [ %.lcssa621.lcssa35, %75 ]
  %.lcssa418.lcssa33.lcssa = phi i32 [ %.lcssa418.lcssa33, %75 ]
  %.lcssa215.lcssa32.lcssa = phi i32 [ %.lcssa215.lcssa32, %75 ]
  %.lcssa13.lcssa30.lcssa = phi i32 [ %.lcssa13.lcssa30, %75 ]
  %.lcssa1028.lcssa = phi i32 [ %.lcssa1028, %75 ]
  %.lcssa26 = phi i32 [ %76, %75 ]
  store i32 %.lcssa26, ptr %5, align 4
  store i32 %.lcssa1028.lcssa, ptr %7, align 4
  store i32 %.lcssa13.lcssa30.lcssa, ptr %8, align 4
  store i32 %.lcssa215.lcssa32.lcssa, ptr %9, align 4
  store i32 %.lcssa418.lcssa33.lcssa, ptr %10, align 4
  store i32 %.lcssa621.lcssa35.lcssa, ptr %11, align 4
  store i32 %.lcssa824.lcssa37.lcssa, ptr %6, align 4
  br label %174

174:                                              ; preds = %173, %58, %14
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
  %5 = load i32, ptr @goal, align 4
  %6 = load ptr, ptr @workList, align 8
  %.promoted = load i32, ptr %1, align 4
  %best.promoted = load i32, ptr @best, align 4
  %7 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %2)
  %wide.trip.count = sext i32 %smax to i64
  br label %8

8:                                                ; preds = %23, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ %7, %0 ]
  %9 = phi i32 [ %22, %23 ], [ %best.promoted, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %10, label %24

10:                                               ; preds = %8
  %11 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %13 = sub nsw i32 %12, %4
  %14 = call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = sub nsw i32 %9, %5
  %16 = call i32 @llvm.abs.i32(i32 %15, i1 true)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr @best, align 4
  br label %21

21:                                               ; preds = %18, %10
  %22 = phi i32 [ %20, %18 ], [ %9, %10 ]
  br label %23

23:                                               ; preds = %21
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %8, !llvm.loop !16

24:                                               ; preds = %8
  %.lcssa.wide = phi i64 [ %indvars.iv, %8 ]
  %25 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %25, ptr %1, align 4
  %26 = load i32, ptr @best, align 4
  %27 = load i32, ptr @goal, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %50

31:                                               ; preds = %24
  store i32 1, ptr @dmax, align 4
  br label %32

32:                                               ; preds = %41, %31
  %33 = load i32, ptr @dmax, align 4
  %34 = load i32, ptr @listLength, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %.loopexit

36:                                               ; preds = %32
  call void @recSearch(i32 noundef 0, i32 noundef 0)
  %37 = load i32, ptr @stopSearch, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %44

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr @dmax, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @dmax, align 4
  br label %32, !llvm.loop !17

.loopexit:                                        ; preds = %32
  br label %44

44:                                               ; preds = %.loopexit, %39
  %45 = load i32, ptr @stopSearch, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load ptr, ptr @solution, align 8
  %49 = load i32, ptr @bestDepth, align 4
  call void @printSolution(ptr noundef %48, i32 noundef %49)
  br label %50

50:                                               ; preds = %47, %44, %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInput() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  %4 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  store i32 13, ptr %4, align 16
  %5 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 1
  store i32 32, ptr %5, align 4
  %6 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 2
  store i32 14, ptr %6, align 8
  %7 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 3
  store i32 1412, ptr %7, align 4
  %.promoted = load i32, ptr %2, align 4
  %8 = sext i32 %.promoted to i64
  br label %9

9:                                                ; preds = %16, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ %8, %0 ]
  %10 = call i32 @getchar()
  %11 = icmp ne i32 %10, 10
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = icmp ne i32 %10, -1
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i1 [ false, %9 ], [ %13, %12 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = call ptr @__acrt_iob_func(i32 noundef 0)
  %18 = call i32 @ungetc(i32 noundef %10, ptr noundef %17)
  %19 = call ptr @__acrt_iob_func(i32 noundef 0)
  %20 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %indvars.iv
  %21 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %19, ptr noundef @.str.2, ptr noundef %20)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %9, !llvm.loop !18

22:                                               ; preds = %14
  %.lcssa1.wide = phi i64 [ %indvars.iv, %14 ]
  %.lcssa = phi i32 [ %10, %14 ]
  %23 = trunc nsw i64 %.lcssa1.wide to i32
  store i32 %.lcssa, ptr %3, align 4
  store i32 %23, ptr %2, align 4
  %24 = load i32, ptr %2, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 4, ptr %2, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, ptr %2, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, ptr @listLength, align 4
  %30 = load i32, ptr @listLength, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr @goal, align 4
  %34 = load i32, ptr @listLength, align 4
  %35 = mul nsw i32 2, %34
  %36 = call ptr @newWorkList(i32 noundef %35)
  store ptr %36, ptr @workList, align 8
  %37 = load i32, ptr @listLength, align 4
  %38 = call ptr @newCombList(i32 noundef %37)
  store ptr %38, ptr @combList, align 8
  %39 = load i32, ptr @listLength, align 4
  %40 = call ptr @newCombList(i32 noundef %39)
  store ptr %40, ptr @solution, align 8
  %41 = load ptr, ptr @workList, align 8
  %42 = getelementptr inbounds [16 x i32], ptr %1, i64 0, i64 0
  %43 = load i32, ptr @listLength, align 4
  call void @initWorkList(ptr noundef %41, ptr noundef %42, i32 noundef %43)
  %44 = load ptr, ptr @combList, align 8
  %45 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %44, i32 noundef %45)
  %46 = load ptr, ptr @solution, align 8
  %47 = load i32, ptr @listLength, align 4
  call void @initCombList(ptr noundef %46, i32 noundef %47)
  %48 = load i32, ptr @listLength, align 4
  ret i32 %48
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
