; ModuleID = 'results\cmp_test\cmp_rule_O2\Dhrystone_dry\round_000\output.ll'
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

13:                                               ; preds = %30, %0
  %14 = phi i32 [ 0, %0 ], [ %31, %30 ]
  %15 = icmp samesign ult i32 %14, 100000000
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = add nuw nsw i32 %14, 1
  store i32 %17, ptr %9, align 4
  br label %18

18:                                               ; preds = %16
  %19 = add nuw nsw i32 %14, 2
  store i32 %19, ptr %9, align 4
  br label %20

20:                                               ; preds = %18
  %21 = add nuw nsw i32 %14, 3
  store i32 %21, ptr %9, align 4
  br label %22

22:                                               ; preds = %20
  %23 = add nuw nsw i32 %14, 4
  store i32 %23, ptr %9, align 4
  br label %24

24:                                               ; preds = %22
  %25 = add nuw nsw i32 %14, 5
  store i32 %25, ptr %9, align 4
  br label %26

26:                                               ; preds = %24
  %27 = add nuw nsw i32 %14, 6
  store i32 %27, ptr %9, align 4
  br label %28

28:                                               ; preds = %26
  %29 = add nuw nsw i32 %14, 7
  store i32 %29, ptr %9, align 4
  br label %30

30:                                               ; preds = %28
  %31 = add nuw nsw i32 %14, 8
  store i32 %31, ptr %9, align 4
  br label %13, !llvm.loop !7

32:                                               ; preds = %13
  %33 = call i32 @clock()
  %34 = sub nsw i32 %33, %12
  store i32 %34, ptr %11, align 4
  %35 = call ptr @malloc(i64 noundef 56) #4
  store ptr %35, ptr @PtrGlbNext, align 8
  %36 = call ptr @malloc(i64 noundef 56) #4
  store ptr %36, ptr @PtrGlb, align 8
  %37 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %37, ptr %36, align 8
  %38 = load ptr, ptr @PtrGlb, align 8
  %39 = getelementptr inbounds nuw %struct.Record, ptr %38, i32 0, i32 1
  store i32 0, ptr %39, align 8
  %40 = getelementptr inbounds nuw %struct.Record, ptr %38, i32 0, i32 2
  store i32 10001, ptr %40, align 4
  %41 = getelementptr inbounds nuw %struct.Record, ptr %38, i32 0, i32 3
  store i32 40, ptr %41, align 8
  %42 = getelementptr inbounds nuw %struct.Record, ptr %38, i32 0, i32 4
  %43 = call ptr @strcpy(ptr noundef %42, ptr noundef @.str) #5
  %44 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %45 = call i32 @clock()
  store i32 %45, ptr %10, align 4
  store i32 0, ptr %9, align 4
  br label %46

46:                                               ; preds = %85, %32
  %47 = phi i32 [ %92, %85 ], [ 0, %32 ]
  %48 = icmp ult i32 %47, 100000000
  br i1 %48, label %49, label %93

49:                                               ; preds = %46
  %50 = call i32 @Proc5()
  %51 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %52 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.2) #5
  store i32 10000, ptr %6, align 4
  %53 = call i32 @Func2(ptr noundef %7, ptr noundef %8)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %2, align 4
  br label %57

57:                                               ; preds = %60, %49
  %58 = phi i32 [ %65, %60 ], [ %.pre, %49 ]
  %59 = icmp slt i32 %58, 3
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = mul nsw i32 5, %58
  %62 = sub nsw i32 %61, 3
  store i32 %62, ptr %4, align 4
  %63 = call i32 @Proc7(i32 noundef %58, i32 noundef 3, ptr noundef %4)
  %64 = load i32, ptr %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %2, align 4
  br label %57, !llvm.loop !9

66:                                               ; preds = %57
  %.lcssa = phi i32 [ %58, %57 ]
  %67 = load i32, ptr %4, align 4
  %68 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %67)
  %69 = load ptr, ptr @PtrGlb, align 8
  %70 = call i32 @Proc1(ptr noundef %69)
  store i8 65, ptr %5, align 1
  br label %71

71:                                               ; preds = %83, %66
  %72 = phi i8 [ %84, %83 ], [ 65, %66 ]
  %73 = sext i8 %72 to i32
  %74 = load i8, ptr @Char2Glob, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %73, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load i32, ptr %6, align 4
  %79 = call i32 @Func1(i32 noundef %73, i32 noundef 67)
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @Proc6(i32 noundef 0, ptr noundef %6)
  br label %83

83:                                               ; preds = %81, %77
  %84 = add i8 %72, 1
  store i8 %84, ptr %5, align 1
  br label %71, !llvm.loop !10

85:                                               ; preds = %71
  %86 = load i32, ptr %2, align 4
  %87 = mul nsw i32 3, %86
  store i32 %87, ptr %4, align 4
  store i32 3, ptr %3, align 4
  %88 = sub nsw i32 %87, 3
  %89 = mul nsw i32 7, %88
  %90 = sub nsw i32 %89, %86
  store i32 %90, ptr %3, align 4
  %91 = call i32 @Proc2(ptr noundef %2)
  %92 = add i32 %47, 1
  store i32 %92, ptr %9, align 4
  br label %46, !llvm.loop !11

93:                                               ; preds = %46
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
  br label %21

21:                                               ; preds = %4
  br i1 true, label %22, label %38

22:                                               ; preds = %21
  %23 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %24 = sext i32 %12 to i64
  %25 = getelementptr inbounds [51 x i32], ptr %23, i64 0, i64 %24
  store i32 %12, ptr %25, align 4
  %26 = add nsw i32 %2, 6
  store i32 %26, ptr %11, align 4
  br label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds [51 x i32], ptr %28, i64 0, i64 %29
  store i32 %12, ptr %30, align 4
  %31 = add nsw i32 %2, 7
  store i32 %31, ptr %11, align 4
  %32 = icmp sle i32 %31, %15
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %35 = sext i32 %31 to i64
  %36 = getelementptr inbounds [51 x i32], ptr %34, i64 0, i64 %35
  store i32 %12, ptr %36, align 4
  %37 = add nsw i32 %2, 8
  store i32 %37, ptr %11, align 4
  unreachable

38:                                               ; preds = %27, %21
  %39 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %40 = sub nsw i32 %12, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [51 x i32], ptr %39, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = load i32, ptr %14, align 4
  %46 = add nsw i32 %12, 20
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [51 x i32], ptr %1, i64 %47
  %49 = getelementptr inbounds [51 x i32], ptr %48, i64 0, i64 %13
  store i32 %45, ptr %49, align 4
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
  br label %8, !llvm.loop !12

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
