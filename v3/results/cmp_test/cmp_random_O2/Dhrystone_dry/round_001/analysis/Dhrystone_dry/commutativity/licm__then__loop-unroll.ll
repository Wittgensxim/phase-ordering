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

15:                                               ; preds = %26, %0
  %16 = phi i32 [ poison, %0 ], [ %27, %26 ]
  %17 = phi i32 [ 0, %0 ], [ %27, %26 ]
  %18 = icmp samesign ult i32 %17, 100000000
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %17, 8
  br label %15, !llvm.loop !7

28:                                               ; preds = %15
  %.lcssa1 = phi i32 [ %16, %15 ]
  store i32 %.lcssa1, ptr %10, align 4
  %29 = call i32 @clock()
  %30 = sub nsw i32 %29, %14
  store i32 %30, ptr %13, align 4
  %31 = call ptr @malloc(i64 noundef 56) #4
  store ptr %31, ptr @PtrGlbNext, align 8
  %32 = call ptr @malloc(i64 noundef 56) #4
  store ptr %32, ptr @PtrGlb, align 8
  %33 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %33, ptr %32, align 8
  %34 = load ptr, ptr @PtrGlb, align 8
  %35 = getelementptr inbounds nuw %struct.Record, ptr %34, i32 0, i32 1
  store i32 0, ptr %35, align 8
  %36 = getelementptr inbounds nuw %struct.Record, ptr %34, i32 0, i32 2
  store i32 10001, ptr %36, align 4
  %37 = getelementptr inbounds nuw %struct.Record, ptr %34, i32 0, i32 3
  store i32 40, ptr %37, align 8
  %38 = getelementptr inbounds nuw %struct.Record, ptr %34, i32 0, i32 4
  %39 = call ptr @strcpy(ptr noundef %38, ptr noundef @.str) #5
  %40 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %41 = call i32 @clock()
  store i32 %41, ptr %11, align 4
  store i32 0, ptr %10, align 4
  %.promoted3 = load i32, ptr %3, align 1
  %.promoted5 = load i8, ptr %6, align 1
  %.promoted = load i32, ptr %10, align 1
  br label %42

42:                                               ; preds = %84, %28
  %43 = phi i32 [ %91, %84 ], [ %.promoted, %28 ]
  %.lcssa26 = phi i8 [ %.lcssa2, %84 ], [ %.promoted5, %28 ]
  %44 = phi i32 [ %89, %84 ], [ %.promoted3, %28 ]
  %45 = phi i32 [ %91, %84 ], [ 0, %28 ]
  %46 = icmp ult i32 %45, 100000000
  br i1 %46, label %47, label %92

47:                                               ; preds = %42
  %48 = call i32 @Proc5()
  %49 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  %50 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.2) #5
  store i32 10000, ptr %7, align 4
  %51 = call i32 @Func2(ptr noundef %8, ptr noundef %9)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %2, align 4
  br label %55

55:                                               ; preds = %58, %47
  %56 = phi i32 [ %63, %58 ], [ %.pre, %47 ]
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = mul nsw i32 5, %56
  %60 = sub nsw i32 %59, 3
  store i32 %60, ptr %4, align 4
  %61 = call i32 @Proc7(i32 noundef %56, i32 noundef 3, ptr noundef %4)
  %62 = load i32, ptr %2, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %2, align 4
  br label %55, !llvm.loop !9

64:                                               ; preds = %55
  %.lcssa = phi i32 [ %56, %55 ]
  %65 = load i32, ptr %4, align 4
  %66 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %65)
  %67 = load ptr, ptr @PtrGlb, align 8
  %68 = call i32 @Proc1(ptr noundef %67)
  br label %69

69:                                               ; preds = %82, %64
  %70 = phi i8 [ %83, %82 ], [ 65, %64 ]
  %71 = phi i8 [ %83, %82 ], [ 65, %64 ]
  %72 = sext i8 %71 to i32
  %73 = load i8, ptr @Char2Glob, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp sle i32 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load i32, ptr %7, align 4
  %78 = call i32 @Func1(i32 noundef %72, i32 noundef 67)
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %82

82:                                               ; preds = %80, %76
  %83 = add i8 %71, 1
  br label %69, !llvm.loop !10

84:                                               ; preds = %69
  %.lcssa2 = phi i8 [ %70, %69 ]
  %85 = load i32, ptr %2, align 4
  %86 = mul nsw i32 3, %85
  store i32 %86, ptr %4, align 4
  %87 = sub nsw i32 %86, 3
  %88 = mul nsw i32 7, %87
  %89 = sub nsw i32 %88, %85
  %90 = call i32 @Proc2(ptr noundef %2)
  %91 = add i32 %45, 1
  br label %42, !llvm.loop !11

92:                                               ; preds = %42
  %.lcssa7 = phi i32 [ %43, %42 ]
  %.lcssa26.lcssa = phi i8 [ %.lcssa26, %42 ]
  %.lcssa4 = phi i32 [ %44, %42 ]
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

22:                                               ; preds = %4
  br i1 true, label %23, label %35

23:                                               ; preds = %22
  %24 = sext i32 %12 to i64
  %25 = getelementptr inbounds [51 x i32], ptr %21, i64 0, i64 %24
  store i32 %12, ptr %25, align 4
  %26 = add nsw i32 %2, 6
  br label %27

27:                                               ; preds = %23
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds [51 x i32], ptr %21, i64 0, i64 %28
  store i32 %12, ptr %29, align 4
  %30 = add nsw i32 %2, 7
  %31 = icmp sle i32 %30, %15
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = sext i32 %30 to i64
  %34 = getelementptr inbounds [51 x i32], ptr %21, i64 0, i64 %33
  store i32 %12, ptr %34, align 4
  unreachable

35:                                               ; preds = %27, %22
  %.lcssa = phi i32 [ poison, %22 ], [ %30, %27 ]
  store i32 %.lcssa, ptr %11, align 4
  %36 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %37 = sub nsw i32 %12, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [51 x i32], ptr %36, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = load i32, ptr %14, align 4
  %43 = add nsw i32 %12, 20
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [51 x i32], ptr %1, i64 %44
  %46 = getelementptr inbounds [51 x i32], ptr %45, i64 0, i64 %13
  store i32 %42, ptr %46, align 4
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
  br label %8, !llvm.loop !12

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
