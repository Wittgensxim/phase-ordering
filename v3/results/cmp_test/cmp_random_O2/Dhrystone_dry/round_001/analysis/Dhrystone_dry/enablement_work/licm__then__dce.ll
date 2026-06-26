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
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca [31 x i8], align 16
  %7 = alloca [31 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i32 @clock()
  store i32 %11, ptr %9, align 4
  store i32 0, ptr %8, align 4
  br label %12

12:                                               ; preds = %16, %0
  %13 = phi i32 [ %17, %16 ], [ poison, %0 ]
  %14 = phi i32 [ %17, %16 ], [ 0, %0 ]
  %15 = icmp ult i32 %14, 100000000
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = add i32 %14, 1
  br label %12, !llvm.loop !7

18:                                               ; preds = %12
  %.lcssa1 = phi i32 [ %13, %12 ]
  store i32 %.lcssa1, ptr %8, align 4
  %19 = call i32 @clock()
  %20 = sub nsw i32 %19, %11
  store i32 %20, ptr %10, align 4
  %21 = call ptr @malloc(i64 noundef 56) #4
  store ptr %21, ptr @PtrGlbNext, align 8
  %22 = call ptr @malloc(i64 noundef 56) #4
  store ptr %22, ptr @PtrGlb, align 8
  %23 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %23, ptr %22, align 8
  %24 = load ptr, ptr @PtrGlb, align 8
  %25 = getelementptr inbounds nuw %struct.Record, ptr %24, i32 0, i32 1
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds nuw %struct.Record, ptr %24, i32 0, i32 2
  store i32 10001, ptr %26, align 4
  %27 = getelementptr inbounds nuw %struct.Record, ptr %24, i32 0, i32 3
  store i32 40, ptr %27, align 8
  %28 = getelementptr inbounds nuw %struct.Record, ptr %24, i32 0, i32 4
  %29 = call ptr @strcpy(ptr noundef %28, ptr noundef @.str) #5
  %30 = call ptr @strcpy(ptr noundef %6, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %31 = call i32 @clock()
  store i32 %31, ptr %9, align 4
  store i32 0, ptr %8, align 4
  %.promoted3 = load i32, ptr %2, align 1
  %.promoted5 = load i8, ptr %4, align 1
  %.promoted = load i32, ptr %8, align 1
  br label %32

32:                                               ; preds = %74, %18
  %33 = phi i32 [ %81, %74 ], [ %.promoted, %18 ]
  %.lcssa26 = phi i8 [ %.lcssa2, %74 ], [ %.promoted5, %18 ]
  %34 = phi i32 [ %79, %74 ], [ %.promoted3, %18 ]
  %35 = phi i32 [ %81, %74 ], [ 0, %18 ]
  %36 = icmp ult i32 %35, 100000000
  br i1 %36, label %37, label %82

37:                                               ; preds = %32
  %38 = call i32 @Proc5()
  %39 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %40 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.2) #5
  store i32 10000, ptr %5, align 4
  %41 = call i32 @Func2(ptr noundef %6, ptr noundef %7)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %45

45:                                               ; preds = %48, %37
  %46 = phi i32 [ %53, %48 ], [ %.pre, %37 ]
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = mul nsw i32 5, %46
  %50 = sub nsw i32 %49, 3
  store i32 %50, ptr %3, align 4
  %51 = call i32 @Proc7(i32 noundef %46, i32 noundef 3, ptr noundef %3)
  %52 = load i32, ptr %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %1, align 4
  br label %45, !llvm.loop !9

54:                                               ; preds = %45
  %.lcssa = phi i32 [ %46, %45 ]
  %55 = load i32, ptr %3, align 4
  %56 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %55)
  %57 = load ptr, ptr @PtrGlb, align 8
  %58 = call i32 @Proc1(ptr noundef %57)
  br label %59

59:                                               ; preds = %72, %54
  %60 = phi i8 [ %73, %72 ], [ 65, %54 ]
  %61 = phi i8 [ %73, %72 ], [ 65, %54 ]
  %62 = sext i8 %61 to i32
  %63 = load i8, ptr @Char2Glob, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sle i32 %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32, ptr %5, align 4
  %68 = call i32 @Func1(i32 noundef %62, i32 noundef 67)
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @Proc6(i32 noundef 0, ptr noundef %5)
  br label %72

72:                                               ; preds = %70, %66
  %73 = add i8 %61, 1
  br label %59, !llvm.loop !10

74:                                               ; preds = %59
  %.lcssa2 = phi i8 [ %60, %59 ]
  %75 = load i32, ptr %1, align 4
  %76 = mul nsw i32 3, %75
  store i32 %76, ptr %3, align 4
  %77 = sub nsw i32 %76, 3
  %78 = mul nsw i32 7, %77
  %79 = sub nsw i32 %78, %75
  %80 = call i32 @Proc2(ptr noundef %1)
  %81 = add i32 %35, 1
  br label %32, !llvm.loop !11

82:                                               ; preds = %32
  %.lcssa7 = phi i32 [ %33, %32 ]
  %.lcssa26.lcssa = phi i8 [ %.lcssa26, %32 ]
  %.lcssa4 = phi i32 [ %34, %32 ]
  store i32 %.lcssa4, ptr %2, align 1
  store i8 %.lcssa26.lcssa, ptr %4, align 1
  store i32 %.lcssa7, ptr %8, align 1
  ret i32 undef
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 3
  store i32 5, ptr %3, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds nuw %struct.Record, ptr %4, i32 0, i32 3
  store i32 5, ptr %5, align 8
  %6 = load ptr, ptr %0, align 8
  store ptr %6, ptr %6, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load i32, ptr %0, align 4
  %6 = add nsw i32 %5, 10
  store i32 %6, ptr %3, align 4
  %.pre = load i8, ptr @Char1Glob, align 1
  %7 = sext i8 %.pre to i32
  %8 = icmp eq i32 %7, 65
  %.promoted = load i32, ptr %3, align 1
  %.promoted1 = load i32, ptr %4, align 1
  br label %9

9:                                                ; preds = %25, %1
  %10 = phi i32 [ %19, %25 ], [ %.promoted1, %1 ]
  %11 = phi i32 [ %20, %25 ], [ %.promoted, %1 ]
  %12 = phi i32 [ %21, %25 ], [ undef, %1 ]
  %13 = phi i32 [ %22, %25 ], [ %6, %1 ]
  br i1 %8, label %14, label %18

14:                                               ; preds = %9
  %15 = add nsw i32 %13, -1
  %16 = load i32, ptr @IntGlob, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, ptr %0, align 4
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i32 [ 0, %14 ], [ %10, %9 ]
  %20 = phi i32 [ %15, %14 ], [ %11, %9 ]
  %21 = phi i32 [ 0, %14 ], [ %12, %9 ]
  %22 = phi i32 [ %15, %14 ], [ %13, %9 ]
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  %.lcssa2 = phi i32 [ %19, %18 ]
  %.lcssa = phi i32 [ %20, %18 ]
  store i32 %.lcssa, ptr %3, align 1
  store i32 %.lcssa2, ptr %4, align 1
  ret i32 undef

25:                                               ; preds = %18
  br label %9
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
  %2 = load i8, ptr @Char1Glob, align 1
  %3 = sext i8 %2 to i32
  %4 = icmp eq i32 %3, 65
  %5 = zext i1 %4 to i32
  store i32 %5, ptr %1, align 4
  %6 = load i32, ptr @BoolGlob, align 4
  %7 = or i32 %5, %6
  store i32 %7, ptr %1, align 4
  store i8 66, ptr @Char2Glob, align 1
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc5() #0 {
  store i8 65, ptr @Char1Glob, align 1
  store i32 0, ptr @BoolGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc6(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %1, align 4
  %5 = call i32 @Func3(i32 noundef %0)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %8

8:                                                ; preds = %7, %2
  switch i32 %0, label %19 [
    i32 0, label %9
    i32 10000, label %10
    i32 10001, label %16
    i32 10002, label %17
    i32 10003, label %18
  ]

9:                                                ; preds = %8
  store i32 0, ptr %1, align 4
  br label %19

10:                                               ; preds = %8
  %11 = load i32, ptr @IntGlob, align 4
  %12 = icmp sgt i32 %11, 100
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, ptr %1, align 4
  br label %15

14:                                               ; preds = %10
  store i32 10002, ptr %1, align 4
  br label %15

15:                                               ; preds = %14, %13
  br label %19

16:                                               ; preds = %8
  store i32 10000, ptr %1, align 4
  br label %19

17:                                               ; preds = %8
  br label %19

18:                                               ; preds = %8
  store i32 10001, ptr %1, align 4
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %9, %8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc7(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %8 = add nsw i32 %0, 2
  store i32 %8, ptr %7, align 4
  %9 = add nsw i32 %1, %8
  store i32 %9, ptr %2, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %11 = add nsw i32 %2, 5
  store i32 %11, ptr %9, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  store i32 %3, ptr %13, align 4
  %14 = add nsw i32 %11, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  store i32 %3, ptr %16, align 4
  %17 = add nsw i32 %11, 30
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %0, i64 %18
  store i32 %11, ptr %19, align 4
  store i32 %11, ptr %10, align 4
  %20 = getelementptr inbounds [51 x i32], ptr %1, i64 %12
  br label %21

21:                                               ; preds = %25, %4
  %22 = phi i32 [ %28, %25 ], [ poison, %4 ]
  %23 = phi i32 [ %28, %25 ], [ %11, %4 ]
  %24 = icmp sle i32 %23, %14
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds [51 x i32], ptr %20, i64 0, i64 %26
  store i32 %11, ptr %27, align 4
  %28 = add nsw i32 %23, 1
  br label %21, !llvm.loop !12

29:                                               ; preds = %21
  %.lcssa = phi i32 [ %22, %21 ]
  store i32 %.lcssa, ptr %10, align 4
  %30 = getelementptr inbounds [51 x i32], ptr %1, i64 %12
  %31 = sub nsw i32 %11, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [51 x i32], ptr %30, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = load i32, ptr %13, align 4
  %37 = add nsw i32 %11, 20
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [51 x i32], ptr %1, i64 %38
  %40 = getelementptr inbounds [51 x i32], ptr %39, i64 0, i64 %12
  store i32 %36, ptr %40, align 4
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
  %.promoted = load i8, ptr %7, align 1
  %.promoted3 = load i32, ptr %6, align 1
  br label %8

8:                                                ; preds = %27, %2
  %9 = phi i32 [ %28, %27 ], [ %.promoted3, %2 ]
  %10 = phi i8 [ %29, %27 ], [ %.promoted, %2 ]
  %11 = phi i32 [ %30, %27 ], [ 1, %2 ]
  %12 = phi i8 [ %31, %27 ], [ undef, %2 ]
  %13 = icmp sle i32 %11, 1
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = add nsw i32 %11, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = load i8, ptr %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 @Func1(i32 noundef %18, i32 noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %14
  %28 = phi i32 [ %19, %26 ], [ %9, %14 ]
  %29 = phi i8 [ 65, %26 ], [ %10, %14 ]
  %30 = phi i32 [ %19, %26 ], [ %11, %14 ]
  %31 = phi i8 [ 65, %26 ], [ %12, %14 ]
  br label %8, !llvm.loop !13

32:                                               ; preds = %8
  %.lcssa4 = phi i32 [ %9, %8 ]
  %.lcssa2 = phi i8 [ %10, %8 ]
  %.lcssa1 = phi i32 [ %11, %8 ]
  %.lcssa = phi i8 [ %12, %8 ]
  store i8 %.lcssa2, ptr %7, align 1
  store i32 %.lcssa4, ptr %6, align 1
  %33 = sext i8 %.lcssa to i32
  %34 = icmp sge i32 %33, 87
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = icmp sle i32 %33, 90
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  store i32 7, ptr %6, align 4
  br label %38

38:                                               ; preds = %37, %35, %32
  %39 = phi i32 [ 7, %37 ], [ %.lcssa1, %35 ], [ %.lcssa1, %32 ]
  %40 = icmp eq i32 %33, 88
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, ptr %3, align 4
  br label %48

42:                                               ; preds = %38
  %43 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = add nsw i32 %39, 7
  store i32 %46, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %48

47:                                               ; preds = %42
  store i32 0, ptr %3, align 4
  br label %48

48:                                               ; preds = %47, %45, %41
  %49 = phi i32 [ 0, %47 ], [ 1, %45 ], [ 1, %41 ]
  ret i32 %49
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
