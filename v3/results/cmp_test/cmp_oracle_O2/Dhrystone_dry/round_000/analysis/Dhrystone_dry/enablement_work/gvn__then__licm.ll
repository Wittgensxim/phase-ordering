; ModuleID = 'results\cmp_test\cmp_oracle_O2\Dhrystone_dry\Dhrystone_dry.ll'
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

15:                                               ; preds = %19, %0
  %16 = phi i32 [ %20, %19 ], [ poison, %0 ]
  %17 = phi i32 [ %20, %19 ], [ 0, %0 ]
  %18 = icmp ult i32 %17, 100000000
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  br label %15, !llvm.loop !7

21:                                               ; preds = %15
  %.lcssa1 = phi i32 [ %16, %15 ]
  store i32 %.lcssa1, ptr %10, align 4
  %22 = call i32 @clock()
  %23 = sub nsw i32 %22, %14
  store i32 %23, ptr %13, align 4
  %24 = call ptr @malloc(i64 noundef 56) #4
  store ptr %24, ptr @PtrGlbNext, align 8
  %25 = call ptr @malloc(i64 noundef 56) #4
  store ptr %25, ptr @PtrGlb, align 8
  %26 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %26, ptr %25, align 8
  %27 = load ptr, ptr @PtrGlb, align 8
  %28 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 1
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 2
  store i32 10001, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 3
  store i32 40, ptr %30, align 8
  %31 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 4
  %32 = call ptr @strcpy(ptr noundef %31, ptr noundef @.str) #5
  %33 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %34 = call i32 @clock()
  store i32 %34, ptr %11, align 4
  store i32 0, ptr %10, align 4
  %.promoted3 = load i32, ptr %3, align 1
  %.promoted5 = load i8, ptr %6, align 1
  %.promoted = load i32, ptr %10, align 1
  br label %35

35:                                               ; preds = %77, %21
  %36 = phi i32 [ %84, %77 ], [ %.promoted, %21 ]
  %.lcssa26 = phi i8 [ %.lcssa2, %77 ], [ %.promoted5, %21 ]
  %37 = phi i32 [ %82, %77 ], [ %.promoted3, %21 ]
  %38 = phi i32 [ %84, %77 ], [ 0, %21 ]
  %39 = icmp ult i32 %38, 100000000
  br i1 %39, label %40, label %85

40:                                               ; preds = %35
  %41 = call i32 @Proc5()
  %42 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  %43 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.2) #5
  store i32 10000, ptr %7, align 4
  %44 = call i32 @Func2(ptr noundef %8, ptr noundef %9)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %2, align 4
  br label %48

48:                                               ; preds = %51, %40
  %49 = phi i32 [ %56, %51 ], [ %.pre, %40 ]
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = mul nsw i32 5, %49
  %53 = sub nsw i32 %52, 3
  store i32 %53, ptr %4, align 4
  %54 = call i32 @Proc7(i32 noundef %49, i32 noundef 3, ptr noundef %4)
  %55 = load i32, ptr %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %2, align 4
  br label %48, !llvm.loop !9

57:                                               ; preds = %48
  %.lcssa = phi i32 [ %49, %48 ]
  %58 = load i32, ptr %4, align 4
  %59 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %58)
  %60 = load ptr, ptr @PtrGlb, align 8
  %61 = call i32 @Proc1(ptr noundef %60)
  br label %62

62:                                               ; preds = %75, %57
  %63 = phi i8 [ %76, %75 ], [ 65, %57 ]
  %64 = phi i8 [ %76, %75 ], [ 65, %57 ]
  %65 = sext i8 %64 to i32
  %66 = load i8, ptr @Char2Glob, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sle i32 %65, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load i32, ptr %7, align 4
  %71 = call i32 @Func1(i32 noundef %65, i32 noundef 67)
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %75

75:                                               ; preds = %73, %69
  %76 = add i8 %64, 1
  br label %62, !llvm.loop !10

77:                                               ; preds = %62
  %.lcssa2 = phi i8 [ %63, %62 ]
  %78 = load i32, ptr %2, align 4
  %79 = mul nsw i32 3, %78
  store i32 %79, ptr %4, align 4
  %80 = sub nsw i32 %79, 3
  %81 = mul nsw i32 7, %80
  %82 = sub nsw i32 %81, %78
  %83 = call i32 @Proc2(ptr noundef %2)
  %84 = add i32 %38, 1
  br label %35, !llvm.loop !11

85:                                               ; preds = %35
  %.lcssa7 = phi i32 [ %36, %35 ]
  %.lcssa26.lcssa = phi i8 [ %.lcssa26, %35 ]
  %.lcssa4 = phi i32 [ %37, %35 ]
  store i32 %.lcssa4, ptr %3, align 1
  store i8 %.lcssa26.lcssa, ptr %6, align 1
  store i32 %.lcssa7, ptr %10, align 1
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
  %8 = sext i8 %.pre to i32
  %9 = icmp eq i32 %8, 65
  %.promoted = load i32, ptr %4, align 1
  %.promoted1 = load i32, ptr %5, align 1
  br label %10

10:                                               ; preds = %26, %1
  %11 = phi i32 [ %20, %26 ], [ %.promoted1, %1 ]
  %12 = phi i32 [ %21, %26 ], [ %.promoted, %1 ]
  %13 = phi i32 [ %22, %26 ], [ undef, %1 ]
  %14 = phi i32 [ %23, %26 ], [ %7, %1 ]
  br i1 %9, label %15, label %19

15:                                               ; preds = %10
  %16 = add nsw i32 %14, -1
  %17 = load i32, ptr @IntGlob, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, ptr %0, align 4
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 0, %15 ], [ %11, %10 ]
  %21 = phi i32 [ %16, %15 ], [ %12, %10 ]
  %22 = phi i32 [ 0, %15 ], [ %13, %10 ]
  %23 = phi i32 [ %16, %15 ], [ %14, %10 ]
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  %.lcssa2 = phi i32 [ %20, %19 ]
  %.lcssa = phi i32 [ %21, %19 ]
  store i32 %.lcssa, ptr %4, align 1
  store i32 %.lcssa2, ptr %5, align 1
  ret i32 undef

26:                                               ; preds = %19
  br label %10
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
  %21 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  br label %22

22:                                               ; preds = %26, %4
  %23 = phi i32 [ %29, %26 ], [ poison, %4 ]
  %24 = phi i32 [ %29, %26 ], [ %12, %4 ]
  %25 = icmp sle i32 %24, %15
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [51 x i32], ptr %21, i64 0, i64 %27
  store i32 %12, ptr %28, align 4
  %29 = add nsw i32 %24, 1
  br label %22, !llvm.loop !12

30:                                               ; preds = %22
  %.lcssa = phi i32 [ %23, %22 ]
  store i32 %.lcssa, ptr %11, align 4
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
