; ModuleID = 'results\cmp_test\cmp_rule_O2\Dhrystone_dry\round_001\output.ll'
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
  %6 = alloca i32, align 4
  %7 = alloca [31 x i8], align 16
  %8 = alloca [31 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = call i32 @clock()
  store i32 %12, ptr %10, align 4
  store i32 0, ptr %9, align 4
  br label %13

13:                                               ; preds = %15, %0
  %14 = phi i32 [ %16, %15 ], [ 0, %0 ]
  %exitcond = icmp ne i32 %14, 100000000
  br i1 %exitcond, label %15, label %17

15:                                               ; preds = %13
  %16 = add nuw nsw i32 %14, 1
  store i32 %16, ptr %9, align 4
  br label %13, !llvm.loop !7

17:                                               ; preds = %13
  %18 = call i32 @clock()
  %19 = sub nsw i32 %18, %12
  store i32 %19, ptr %11, align 4
  %20 = call ptr @malloc(i64 noundef 56) #4
  store ptr %20, ptr @PtrGlbNext, align 8
  %21 = call ptr @malloc(i64 noundef 56) #4
  store ptr %21, ptr @PtrGlb, align 8
  %22 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %22, ptr %21, align 8
  %23 = load ptr, ptr @PtrGlb, align 8
  %24 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 1
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 2
  store i32 10001, ptr %25, align 4
  %26 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 3
  store i32 40, ptr %26, align 8
  %27 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 4
  %28 = call ptr @strcpy(ptr noundef %27, ptr noundef @.str) #5
  %29 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %30 = call i32 @clock()
  store i32 %30, ptr %10, align 4
  store i32 0, ptr %9, align 4
  br label %31

31:                                               ; preds = %69, %17
  %32 = phi i32 [ %76, %69 ], [ 0, %17 ]
  %exitcond1 = icmp ne i32 %32, 100000000
  br i1 %exitcond1, label %33, label %77

33:                                               ; preds = %31
  %34 = call i32 @Proc5()
  %35 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %36 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.2) #5
  store i32 10000, ptr %6, align 4
  %37 = call i32 @Func2(ptr noundef %7, ptr noundef %8)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %2, align 4
  br label %41

41:                                               ; preds = %44, %33
  %42 = phi i32 [ %49, %44 ], [ %.pre, %33 ]
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = mul nsw i32 5, %42
  %46 = sub nsw i32 %45, 3
  store i32 %46, ptr %4, align 4
  %47 = call i32 @Proc7(i32 noundef %42, i32 noundef 3, ptr noundef %4)
  %48 = load i32, ptr %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %2, align 4
  br label %41, !llvm.loop !9

50:                                               ; preds = %41
  %.lcssa = phi i32 [ %42, %41 ]
  %51 = load i32, ptr %4, align 4
  %52 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %51)
  %53 = load ptr, ptr @PtrGlb, align 8
  %54 = call i32 @Proc1(ptr noundef %53)
  store i8 65, ptr %5, align 1
  br label %55

55:                                               ; preds = %67, %50
  %56 = phi i8 [ %68, %67 ], [ 65, %50 ]
  %57 = sext i8 %56 to i32
  %58 = load i8, ptr @Char2Glob, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load i32, ptr %6, align 4
  %63 = call i32 @Func1(i32 noundef %57, i32 noundef 67)
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @Proc6(i32 noundef 0, ptr noundef %6)
  br label %67

67:                                               ; preds = %65, %61
  %68 = add i8 %56, 1
  store i8 %68, ptr %5, align 1
  br label %55, !llvm.loop !10

69:                                               ; preds = %55
  %70 = load i32, ptr %2, align 4
  %71 = mul nsw i32 3, %70
  store i32 %71, ptr %4, align 4
  store i32 3, ptr %3, align 4
  %72 = sub nsw i32 %71, 3
  %73 = mul nsw i32 7, %72
  %74 = sub nsw i32 %73, %70
  store i32 %74, ptr %3, align 4
  %75 = call i32 @Proc2(ptr noundef %2)
  %76 = add nuw nsw i32 %32, 1
  store i32 %76, ptr %9, align 4
  br label %31, !llvm.loop !11

77:                                               ; preds = %31
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

8:                                                ; preds = %22, %1
  %9 = phi i32 [ %18, %22 ], [ undef, %1 ]
  %10 = phi i32 [ %19, %22 ], [ %7, %1 ]
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
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  ret i32 undef

22:                                               ; preds = %17
  br label %8
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
  switch i32 %0, label %20 [
    i32 0, label %10
    i32 10000, label %11
    i32 10001, label %17
    i32 10002, label %18
    i32 10003, label %19
  ]

10:                                               ; preds = %9
  store i32 0, ptr %1, align 4
  br label %20

11:                                               ; preds = %9
  %12 = load i32, ptr @IntGlob, align 4
  %13 = icmp sgt i32 %12, 100
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, ptr %1, align 4
  br label %16

15:                                               ; preds = %11
  store i32 10002, ptr %1, align 4
  br label %16

16:                                               ; preds = %15, %14
  br label %20

17:                                               ; preds = %9
  store i32 10000, ptr %1, align 4
  br label %20

18:                                               ; preds = %9
  br label %20

19:                                               ; preds = %9
  store i32 10001, ptr %1, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %10, %9
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
  %21 = sext i32 %2 to i64
  %22 = add nsw i64 %21, 5
  %23 = sext i32 %15 to i64
  br label %24

24:                                               ; preds = %26, %4
  %indvars.iv = phi i64 [ %indvars.iv.next, %26 ], [ %22, %4 ]
  %25 = icmp sle i64 %indvars.iv, %23
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %28 = getelementptr inbounds [51 x i32], ptr %27, i64 0, i64 %indvars.iv
  store i32 %12, ptr %28, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %29 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %29, ptr %11, align 4
  br label %24, !llvm.loop !12

30:                                               ; preds = %24
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
  %9 = phi i8 [ %26, %25 ], [ undef, %2 ]
  %10 = phi i32 [ %27, %25 ], [ 1, %2 ]
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %10, 1
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
  %26 = phi i8 [ 65, %24 ], [ %9, %12 ]
  %27 = phi i32 [ %17, %24 ], [ %10, %12 ]
  br label %8, !llvm.loop !13

28:                                               ; preds = %8
  %.lcssa1 = phi i8 [ %9, %8 ]
  %.lcssa = phi i32 [ %10, %8 ]
  %29 = sext i8 %.lcssa1 to i32
  %30 = icmp sge i32 %29, 87
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = icmp sle i32 %29, 90
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  store i32 7, ptr %6, align 4
  br label %34

34:                                               ; preds = %33, %31, %28
  %35 = phi i32 [ 7, %33 ], [ %.lcssa, %31 ], [ %.lcssa, %28 ]
  %36 = icmp eq i32 %29, 88
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, ptr %3, align 4
  br label %44

38:                                               ; preds = %34
  %39 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = add nsw i32 %35, 7
  store i32 %42, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %44

43:                                               ; preds = %38
  store i32 0, ptr %3, align 4
  br label %44

44:                                               ; preds = %43, %41, %37
  %45 = phi i32 [ 0, %43 ], [ 1, %41 ], [ 1, %37 ]
  ret i32 %45
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

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) }
attributes #5 = { nounwind }

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
!13 = distinct !{!13, !8}
