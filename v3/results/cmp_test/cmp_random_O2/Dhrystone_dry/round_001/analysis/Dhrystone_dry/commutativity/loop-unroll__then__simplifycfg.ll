; ModuleID = 'results\cmp_test\cmp_random_O2\Dhrystone_dry\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/dry.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.Record = type { ptr, i32, i32, i32, [31 x i8] }

@Version = dso_local global [4 x i8] c"1.1\00", align 1
@PtrGlbNext = dso_local global ptr null, align 8
@PtrGlb = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Array2Glob = dso_local global [51 x [51 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@BoolGlob = dso_local global i32 0, align 4
@Array1Glob = dso_local global [51 x i32] zeroinitializer, align 16
@Char2Glob = dso_local global i8 0, align 1
@Char1Glob = dso_local global i8 0, align 1
@IntGlob = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = call i32 @Proc0()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca [31 x i8], align 16
  %9 = alloca [31 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = call i32 @clock()
  store i32 %14, ptr %11, align 4
  store i32 0, ptr %10, align 4
  br label %15

15:                                               ; preds = %18, %0
  %16 = phi i32 [ 0, %0 ], [ %26, %18 ]
  %17 = icmp samesign ult i32 %16, 100000000
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = add nuw nsw i32 %16, 1
  store i32 %19, ptr %10, align 4
  %20 = add nuw nsw i32 %16, 2
  store i32 %20, ptr %10, align 4
  %21 = add nuw nsw i32 %16, 3
  store i32 %21, ptr %10, align 4
  %22 = add nuw nsw i32 %16, 4
  store i32 %22, ptr %10, align 4
  %23 = add nuw nsw i32 %16, 5
  store i32 %23, ptr %10, align 4
  %24 = add nuw nsw i32 %16, 6
  store i32 %24, ptr %10, align 4
  %25 = add nuw nsw i32 %16, 7
  store i32 %25, ptr %10, align 4
  %26 = add nuw nsw i32 %16, 8
  store i32 %26, ptr %10, align 4
  br label %15, !llvm.loop !7

27:                                               ; preds = %15
  %28 = call i32 @clock()
  %29 = sub nsw i32 %28, %14
  store i32 %29, ptr %13, align 4
  %30 = call ptr @malloc(i64 noundef 56) #5
  store ptr %30, ptr @PtrGlbNext, align 8
  %31 = call ptr @malloc(i64 noundef 56) #5
  store ptr %31, ptr @PtrGlb, align 8
  %32 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %32, ptr %31, align 8
  %33 = load ptr, ptr @PtrGlb, align 8
  %34 = getelementptr inbounds nuw %struct.Record, ptr %33, i32 0, i32 1
  store i32 0, ptr %34, align 8
  %35 = getelementptr inbounds nuw %struct.Record, ptr %33, i32 0, i32 2
  store i32 10001, ptr %35, align 4
  %36 = getelementptr inbounds nuw %struct.Record, ptr %33, i32 0, i32 3
  store i32 40, ptr %36, align 8
  %37 = getelementptr inbounds nuw %struct.Record, ptr %33, i32 0, i32 4
  %38 = call ptr @strcpy(ptr noundef %37, ptr noundef @.str) #6
  %39 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.1) #6
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %40 = call i32 @clock()
  store i32 %40, ptr %11, align 4
  store i32 0, ptr %10, align 4
  br label %41

41:                                               ; preds = %80, %27
  %42 = phi i32 [ %87, %80 ], [ 0, %27 ]
  %43 = icmp ult i32 %42, 100000000
  br i1 %43, label %44, label %88

44:                                               ; preds = %41
  %45 = call i32 @Proc5()
  %46 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %47 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.2) #6
  store i32 10000, ptr %7, align 4
  %48 = call i32 @Func2(ptr noundef %8, ptr noundef %9)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %2, align 4
  br label %52

52:                                               ; preds = %55, %44
  %53 = phi i32 [ %60, %55 ], [ %.pre, %44 ]
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = mul nsw i32 5, %53
  %57 = sub nsw i32 %56, 3
  store i32 %57, ptr %4, align 4
  %58 = call i32 @Proc7(i32 noundef %53, i32 noundef 3, ptr noundef %4)
  %59 = load i32, ptr %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %2, align 4
  br label %52, !llvm.loop !9

61:                                               ; preds = %52
  %.lcssa = phi i32 [ %53, %52 ]
  %62 = load i32, ptr %4, align 4
  %63 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %62)
  %64 = load ptr, ptr @PtrGlb, align 8
  %65 = call i32 @Proc1(ptr noundef %64)
  store i8 65, ptr %6, align 1
  br label %66

66:                                               ; preds = %78, %61
  %67 = phi i8 [ %79, %78 ], [ 65, %61 ]
  %68 = sext i8 %67 to i32
  %69 = load i8, ptr @Char2Glob, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %68, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load i32, ptr %7, align 4
  %74 = call i32 @Func1(i32 noundef %68, i32 noundef 67)
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %78

78:                                               ; preds = %76, %72
  %79 = add i8 %67, 1
  store i8 %79, ptr %6, align 1
  br label %66, !llvm.loop !10

80:                                               ; preds = %66
  %81 = load i32, ptr %2, align 4
  %82 = mul nsw i32 3, %81
  store i32 %82, ptr %4, align 4
  store i32 3, ptr %3, align 4
  %83 = sub nsw i32 %82, 3
  %84 = mul nsw i32 7, %83
  %85 = sub nsw i32 %84, %81
  store i32 %85, ptr %3, align 4
  %86 = call i32 @Proc2(ptr noundef %2)
  %87 = add i32 %42, 1
  store i32 %87, ptr %10, align 4
  br label %41, !llvm.loop !11

88:                                               ; preds = %41
  ret i32 undef
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 3
  store i32 5, ptr %4, align 8
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds nuw %struct.Record, ptr %5, i32 0, i32 3
  store i32 5, ptr %6, align 8
  %7 = load ptr, ptr %0, align 8
  store ptr %7, ptr %7, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %6 = load i32, ptr %0, align 4
  %7 = add nsw i32 %6, 10
  store i32 %7, ptr %4, align 4
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %8

8:                                                ; preds = %17, %1
  %9 = phi i32 [ undef, %1 ], [ %18, %17 ]
  %10 = phi i32 [ %7, %1 ], [ %19, %17 ]
  %11 = sext i8 %.pre to i32
  %12 = icmp eq i32 %11, 65
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = add nsw i32 %10, -1
  store i32 %14, ptr %4, align 4
  %15 = load i32, ptr @IntGlob, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, ptr %0, align 4
  store i32 0, ptr %5, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i32 [ 0, %13 ], [ %9, %8 ]
  %19 = phi i32 [ %14, %13 ], [ %10, %8 ]
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %8

21:                                               ; preds = %17
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr @PtrGlb, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %0, align 8
  %.pre = load i32, ptr @IntGlob, align 4
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  br label %9

8:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi ptr [ null, %8 ], [ %.pre1, %6 ]
  %11 = phi i32 [ 100, %8 ], [ %.pre, %6 ]
  %12 = getelementptr inbounds nuw %struct.Record, ptr %10, i32 0, i32 3
  %13 = call i32 @Proc7(i32 noundef 10, i32 noundef %11, ptr noundef %12)
  %14 = load i32, ptr %2, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8, ptr @Char1Glob, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 65
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %2, align 4
  %7 = load i32, ptr @BoolGlob, align 4
  %8 = or i32 %6, %7
  store i32 %8, ptr %2, align 4
  store i8 66, ptr @Char2Glob, align 1
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc5() #0 {
  %1 = alloca i32, align 4
  store i8 65, ptr @Char1Glob, align 1
  store i32 0, ptr @BoolGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc6(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 %0, ptr %1, align 4
  %6 = call i32 @Func3(i32 noundef %0)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %9

9:                                                ; preds = %8, %2
  switch i32 %0, label %18 [
    i32 0, label %10
    i32 10000, label %11
    i32 10001, label %16
    i32 10003, label %17
  ]

10:                                               ; preds = %9
  store i32 0, ptr %1, align 4
  br label %18

11:                                               ; preds = %9
  %12 = load i32, ptr @IntGlob, align 4
  %13 = icmp sgt i32 %12, 100
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, ptr %1, align 4
  br label %18

15:                                               ; preds = %11
  store i32 10002, ptr %1, align 4
  br label %18

16:                                               ; preds = %9
  store i32 10000, ptr %1, align 4
  br label %18

17:                                               ; preds = %9
  store i32 10001, ptr %1, align 4
  br label %18

18:                                               ; preds = %14, %15, %17, %16, %10, %9
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc7(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  %9 = add nsw i32 %0, 2
  store i32 %9, ptr %8, align 4
  %10 = add nsw i32 %1, %9
  store i32 %10, ptr %2, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %12 = add nsw i32 %2, 5
  store i32 %12, ptr %10, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  store i32 %3, ptr %14, align 4
  %15 = add nsw i32 %12, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %16
  store i32 %3, ptr %17, align 4
  %18 = add nsw i32 %12, 30
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %0, i64 %19
  store i32 %12, ptr %20, align 4
  store i32 %12, ptr %11, align 4
  %21 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %22 = sext i32 %12 to i64
  %23 = getelementptr inbounds [51 x i32], ptr %21, i64 0, i64 %22
  store i32 %12, ptr %23, align 4
  %24 = add nsw i32 %2, 6
  store i32 %24, ptr %11, align 4
  %25 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [51 x i32], ptr %25, i64 0, i64 %26
  store i32 %12, ptr %27, align 4
  %28 = add nsw i32 %2, 7
  store i32 %28, ptr %11, align 4
  %29 = icmp sle i32 %28, %15
  %30 = xor i1 %29, true
  call void @llvm.assume(i1 %30)
  %31 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %32 = sub nsw i32 %12, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [51 x i32], ptr %31, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %34, align 4
  %37 = load i32, ptr %14, align 4
  %38 = add nsw i32 %12, 20
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [51 x i32], ptr %1, i64 %39
  %41 = getelementptr inbounds [51 x i32], ptr %40, i64 0, i64 %13
  store i32 %37, ptr %41, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = trunc i32 %0 to i8
  %9 = trunc i32 %1 to i8
  store i8 %8, ptr %4, align 1
  store i8 %9, ptr %5, align 1
  store i8 %8, ptr %6, align 1
  store i8 %8, ptr %7, align 1
  %10 = sext i8 %8 to i32
  %11 = sext i8 %9 to i32
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br label %15

14:                                               ; preds = %2
  store i32 10000, ptr %3, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i32 [ 10000, %14 ], [ 0, %13 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 1, ptr %6, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = phi i32 [ %26, %25 ], [ 1, %2 ]
  %10 = phi i8 [ %27, %25 ], [ undef, %2 ]
  %11 = icmp sle i32 %9, 1
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %9, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 @Func1(i32 noundef %16, i32 noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i8 65, ptr %7, align 1
  store i32 %17, ptr %6, align 4
  br label %25

25:                                               ; preds = %24, %12
  %26 = phi i32 [ %17, %24 ], [ %9, %12 ]
  %27 = phi i8 [ 65, %24 ], [ %10, %12 ]
  br label %8, !llvm.loop !12

28:                                               ; preds = %8
  %.lcssa1 = phi i32 [ %9, %8 ]
  %.lcssa = phi i8 [ %10, %8 ]
  %29 = sext i8 %.lcssa to i32
  %30 = icmp sge i32 %29, 87
  %31 = icmp sle i32 %29, 90
  %or.cond = and i1 %30, %31
  br i1 %or.cond, label %32, label %33

32:                                               ; preds = %28
  store i32 7, ptr %6, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 7, %32 ], [ %.lcssa1, %28 ]
  %35 = icmp eq i32 %29, 88
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, ptr %3, align 4
  br label %43

37:                                               ; preds = %33
  %38 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = add nsw i32 %34, 7
  store i32 %41, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %43

42:                                               ; preds = %37
  store i32 0, ptr %3, align 4
  br label %43

43:                                               ; preds = %42, %40, %36
  %44 = phi i32 [ 0, %42 ], [ 1, %40 ], [ 1, %36 ]
  ret i32 %44
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  %5 = icmp eq i32 %0, 10001
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %8

7:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ 0, %7 ], [ 1, %6 ]
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/dry.c", directory: "E:/Phase Ordering/v3")
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
