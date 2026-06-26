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
  %.promoted = load i32, ptr %10, align 4
  br label %15

15:                                               ; preds = %19, %0
  %16 = phi i32 [ %20, %19 ], [ %.promoted, %0 ]
  %17 = icmp ult i32 %16, 100000000
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %16, 1
  br label %15, !llvm.loop !7

21:                                               ; preds = %15
  %.lcssa = phi i32 [ %16, %15 ]
  store i32 %.lcssa, ptr %10, align 4
  %22 = call i32 @clock()
  %23 = load i32, ptr %11, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, ptr %13, align 4
  %25 = call ptr @malloc(i64 noundef 56) #4
  store ptr %25, ptr @PtrGlbNext, align 8
  %26 = call ptr @malloc(i64 noundef 56) #4
  store ptr %26, ptr @PtrGlb, align 8
  %27 = load ptr, ptr @PtrGlbNext, align 8
  %28 = load ptr, ptr @PtrGlb, align 8
  %29 = getelementptr inbounds nuw %struct.Record, ptr %28, i32 0, i32 0
  store ptr %27, ptr %29, align 8
  %30 = load ptr, ptr @PtrGlb, align 8
  %31 = getelementptr inbounds nuw %struct.Record, ptr %30, i32 0, i32 1
  store i32 0, ptr %31, align 8
  %32 = load ptr, ptr @PtrGlb, align 8
  %33 = getelementptr inbounds nuw %struct.Record, ptr %32, i32 0, i32 2
  store i32 10001, ptr %33, align 4
  %34 = load ptr, ptr @PtrGlb, align 8
  %35 = getelementptr inbounds nuw %struct.Record, ptr %34, i32 0, i32 3
  store i32 40, ptr %35, align 8
  %36 = load ptr, ptr @PtrGlb, align 8
  %37 = getelementptr inbounds nuw %struct.Record, ptr %36, i32 0, i32 4
  %38 = getelementptr inbounds nuw [31 x i8], ptr %37, i64 0, i64 0
  %39 = call ptr @strcpy(ptr noundef %38, ptr noundef @.str) #5
  %40 = getelementptr inbounds nuw [31 x i8], ptr %8, i64 0, i64 0
  %41 = call ptr @strcpy(ptr noundef %40, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %42 = call i32 @clock()
  store i32 %42, ptr %11, align 4
  store i32 0, ptr %10, align 4
  %43 = getelementptr inbounds nuw [31 x i8], ptr %9, i64 0, i64 0
  %44 = getelementptr inbounds nuw [31 x i8], ptr %8, i64 0, i64 0
  %45 = getelementptr inbounds nuw [31 x i8], ptr %9, i64 0, i64 0
  %.promoted3 = load i32, ptr %10, align 4
  %.promoted5 = load i32, ptr %3, align 4
  %.promoted7 = load i8, ptr %6, align 1
  br label %46

46:                                               ; preds = %103, %21
  %.lcssa28 = phi i8 [ %.lcssa2, %103 ], [ %.promoted7, %21 ]
  %47 = phi i32 [ %101, %103 ], [ %.promoted5, %21 ]
  %48 = phi i32 [ %104, %103 ], [ %.promoted3, %21 ]
  %49 = icmp ult i32 %48, 100000000
  br i1 %49, label %50, label %105

50:                                               ; preds = %46
  %51 = call i32 @Proc5()
  %52 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  %53 = call ptr @strcpy(ptr noundef %43, ptr noundef @.str.2) #5
  store i32 10000, ptr %7, align 4
  %54 = call i32 @Func2(ptr noundef %44, ptr noundef %45)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, ptr @BoolGlob, align 4
  br label %58

58:                                               ; preds = %61, %50
  %59 = load i32, ptr %2, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, ptr %2, align 4
  %63 = mul nsw i32 5, %62
  %64 = sub nsw i32 %63, 3
  store i32 %64, ptr %4, align 4
  %65 = load i32, ptr %2, align 4
  %66 = call i32 @Proc7(i32 noundef %65, i32 noundef 3, ptr noundef %4)
  %67 = load i32, ptr %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %2, align 4
  br label %58, !llvm.loop !9

69:                                               ; preds = %58
  %70 = load i32, ptr %2, align 4
  %71 = load i32, ptr %4, align 4
  %72 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %70, i32 noundef %71)
  %73 = load ptr, ptr @PtrGlb, align 8
  %74 = call i32 @Proc1(ptr noundef %73)
  br label %75

75:                                               ; preds = %89, %69
  %76 = phi i8 [ %90, %89 ], [ 65, %69 ]
  %77 = sext i8 %76 to i32
  %78 = load i8, ptr @Char2Glob, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp sle i32 %77, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i32, ptr %7, align 4
  %83 = sext i8 %76 to i32
  %84 = call i32 @Func1(i32 noundef %83, i32 noundef 67)
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %88

88:                                               ; preds = %86, %81
  br label %89

89:                                               ; preds = %88
  %90 = add i8 %76, 1
  br label %75, !llvm.loop !10

91:                                               ; preds = %75
  %.lcssa2 = phi i8 [ %76, %75 ]
  %92 = load i32, ptr %2, align 4
  %93 = mul nsw i32 3, %92
  store i32 %93, ptr %4, align 4
  %94 = load i32, ptr %4, align 4
  %95 = load i32, ptr %2, align 4
  %96 = sdiv i32 %94, %95
  %97 = load i32, ptr %4, align 4
  %98 = sub nsw i32 %97, %96
  %99 = mul nsw i32 7, %98
  %100 = load i32, ptr %2, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i32 @Proc2(ptr noundef %2)
  br label %103

103:                                              ; preds = %91
  %104 = add nuw nsw i32 %48, 1
  br label %46, !llvm.loop !11

105:                                              ; preds = %46
  %.lcssa28.lcssa = phi i8 [ %.lcssa28, %46 ]
  %.lcssa6 = phi i32 [ %47, %46 ]
  %.lcssa4 = phi i32 [ %48, %46 ]
  store i32 %.lcssa4, ptr %10, align 4
  store i32 %.lcssa6, ptr %3, align 4
  store i8 %.lcssa28.lcssa, ptr %6, align 1
  %106 = load i32, ptr %1, align 4
  ret i32 %106
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
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %struct.Record, ptr %4, i32 0, i32 3
  store i32 5, ptr %5, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.Record, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw %struct.Record, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 3
  store i32 %8, ptr %12, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct.Record, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds nuw %struct.Record, ptr %18, i32 0, i32 0
  store ptr %15, ptr %19, align 8
  %20 = load i32, ptr %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %7, 10
  store i32 %8, ptr %4, align 4
  %9 = load i8, ptr @Char1Glob, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 65
  %12 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %4, align 4
  %.promoted1 = load i32, ptr %5, align 4
  br label %13

13:                                               ; preds = %25, %1
  %14 = phi i32 [ %21, %25 ], [ %.promoted1, %1 ]
  %15 = phi i32 [ %22, %25 ], [ %.promoted, %1 ]
  br i1 %11, label %16, label %20

16:                                               ; preds = %13
  %17 = add nsw i32 %15, -1
  %18 = load i32, ptr @IntGlob, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, ptr %12, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ 0, %16 ], [ %14, %13 ]
  %22 = phi i32 [ %17, %16 ], [ %15, %13 ]
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  %.lcssa2 = phi i32 [ %21, %20 ]
  %.lcssa = phi i32 [ %22, %20 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa2, ptr %5, align 4
  br label %26

25:                                               ; preds = %20
  br label %13

26:                                               ; preds = %24
  %27 = load i32, ptr %2, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr @PtrGlb, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr @PtrGlb, align 8
  %8 = getelementptr inbounds nuw %struct.Record, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  br label %12

11:                                               ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %12

12:                                               ; preds = %11, %6
  %13 = load i32, ptr @IntGlob, align 4
  %14 = load ptr, ptr @PtrGlb, align 8
  %15 = getelementptr inbounds nuw %struct.Record, ptr %14, i32 0, i32 3
  %16 = call i32 @Proc7(i32 noundef 10, i32 noundef %13, ptr noundef %15)
  %17 = load i32, ptr %2, align 4
  ret i32 %17
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
  %8 = load i32, ptr %2, align 4
  %9 = or i32 %8, %7
  store i32 %9, ptr %2, align 4
  store i8 66, ptr @Char2Glob, align 1
  %10 = load i32, ptr %1, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc5() #0 {
  %1 = alloca i32, align 4
  store i8 65, ptr @Char1Glob, align 1
  store i32 0, ptr @BoolGlob, align 4
  %2 = load i32, ptr %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc6(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %6 = load i32, ptr %4, align 4
  %7 = load ptr, ptr %5, align 8
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %4, align 4
  %9 = call i32 @Func3(i32 noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store i32 10002, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, ptr %4, align 4
  switch i32 %14, label %30 [
    i32 0, label %15
    i32 10000, label %17
    i32 10001, label %25
    i32 10002, label %27
    i32 10003, label %28
  ]

15:                                               ; preds = %13
  %16 = load ptr, ptr %5, align 8
  store i32 0, ptr %16, align 4
  br label %30

17:                                               ; preds = %13
  %18 = load i32, ptr @IntGlob, align 4
  %19 = icmp sgt i32 %18, 100
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8
  store i32 0, ptr %21, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8
  store i32 10002, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %30

25:                                               ; preds = %13
  %26 = load ptr, ptr %5, align 8
  store i32 10000, ptr %26, align 4
  br label %30

27:                                               ; preds = %13
  br label %30

28:                                               ; preds = %13
  %29 = load ptr, ptr %5, align 8
  store i32 10001, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %27, %25, %24, %15, %13
  %31 = load i32, ptr %3, align 4
  ret i32 %31
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
  %9 = load i32, ptr %5, align 4
  %10 = add nsw i32 %9, 2
  store i32 %10, ptr %8, align 4
  %11 = load i32, ptr %6, align 4
  %12 = load i32, ptr %8, align 4
  %13 = add nsw i32 %11, %12
  %14 = load ptr, ptr %7, align 8
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %4, align 4
  ret i32 %15
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
  %12 = load i32, ptr %8, align 4
  %13 = add nsw i32 %12, 5
  store i32 %13, ptr %10, align 4
  %14 = load i32, ptr %9, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %15, i64 %17
  store i32 %14, ptr %18, align 4
  %19 = load ptr, ptr %6, align 8
  %20 = load i32, ptr %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %6, align 8
  %25 = load i32, ptr %10, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %24, i64 %27
  store i32 %23, ptr %28, align 4
  %29 = load i32, ptr %10, align 4
  %30 = load ptr, ptr %6, align 8
  %31 = load i32, ptr %10, align 4
  %32 = add nsw i32 %31, 30
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %30, i64 %33
  store i32 %29, ptr %34, align 4
  %35 = load i32, ptr %10, align 4
  store i32 %35, ptr %11, align 4
  %36 = load i32, ptr %10, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, ptr %10, align 4
  %39 = load ptr, ptr %7, align 8
  %40 = load i32, ptr %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [51 x i32], ptr %39, i64 %41
  %.promoted = load i32, ptr %11, align 4
  br label %43

43:                                               ; preds = %49, %4
  %44 = phi i32 [ %50, %49 ], [ %.promoted, %4 ]
  %45 = icmp sle i32 %44, %37
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [51 x i32], ptr %42, i64 0, i64 %47
  store i32 %38, ptr %48, align 4
  br label %49

49:                                               ; preds = %46
  %50 = add nsw i32 %44, 1
  br label %43, !llvm.loop !12

51:                                               ; preds = %43
  %.lcssa = phi i32 [ %44, %43 ]
  store i32 %.lcssa, ptr %11, align 4
  %52 = load ptr, ptr %7, align 8
  %53 = load i32, ptr %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [51 x i32], ptr %52, i64 %54
  %56 = load i32, ptr %10, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [51 x i32], ptr %55, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %59, align 4
  %62 = load ptr, ptr %6, align 8
  %63 = load i32, ptr %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %62, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %7, align 8
  %68 = load i32, ptr %10, align 4
  %69 = add nsw i32 %68, 20
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [51 x i32], ptr %67, i64 %70
  %72 = load i32, ptr %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [51 x i32], ptr %71, i64 0, i64 %73
  store i32 %66, ptr %74, align 4
  store i32 5, ptr @IntGlob, align 4
  %75 = load i32, ptr %5, align 4
  ret i32 %75
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
  %10 = load i8, ptr %4, align 1
  store i8 %10, ptr %6, align 1
  %11 = load i8, ptr %6, align 1
  store i8 %11, ptr %7, align 1
  %12 = load i8, ptr %7, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, ptr %5, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br label %19

18:                                               ; preds = %2
  store i32 10000, ptr %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, ptr %3, align 4
  ret i32 %20
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
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %.promoted = load i32, ptr %6, align 4
  %.promoted1 = load i8, ptr %7, align 1
  br label %10

10:                                               ; preds = %28, %2
  %11 = phi i8 [ %29, %28 ], [ %.promoted1, %2 ]
  %12 = phi i32 [ %30, %28 ], [ %.promoted, %2 ]
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i8, ptr %8, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = add nsw i32 %12, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %9, i64 %20
  %22 = load i8, ptr %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 @Func1(i32 noundef %18, i32 noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = add nsw i32 %12, 1
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi i8 [ 65, %26 ], [ %11, %14 ]
  %30 = phi i32 [ %27, %26 ], [ %12, %14 ]
  br label %10, !llvm.loop !13

31:                                               ; preds = %10
  %.lcssa2 = phi i8 [ %11, %10 ]
  %.lcssa = phi i32 [ %12, %10 ]
  store i32 %.lcssa, ptr %6, align 4
  store i8 %.lcssa2, ptr %7, align 1
  %32 = load i8, ptr %7, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 87
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8, ptr %7, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 90
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 7, ptr %6, align 4
  br label %40

40:                                               ; preds = %39, %35, %31
  %41 = load i8, ptr %7, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 88
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, ptr %3, align 4
  br label %54

45:                                               ; preds = %40
  %46 = load ptr, ptr %4, align 8
  %47 = load ptr, ptr %5, align 8
  %48 = call i32 @strcmp(ptr noundef %46, ptr noundef %47) #5
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, ptr %6, align 4
  %52 = add nsw i32 %51, 7
  store i32 %52, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %54

53:                                               ; preds = %45
  store i32 0, ptr %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %44
  %55 = load i32, ptr %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %5 = load i32, ptr %3, align 4
  store i32 %5, ptr %4, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %6, 10001
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %10

9:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, ptr %2, align 4
  ret i32 %11
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
