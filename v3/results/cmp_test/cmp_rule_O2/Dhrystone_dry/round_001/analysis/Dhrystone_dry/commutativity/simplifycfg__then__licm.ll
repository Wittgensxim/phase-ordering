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
  %.promoted = load i32, ptr %9, align 4
  br label %13

13:                                               ; preds = %16, %0
  %14 = phi i32 [ %17, %16 ], [ %.promoted, %0 ]
  %15 = icmp ult i32 %14, 100000000
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = add i32 %14, 1
  br label %13, !llvm.loop !7

18:                                               ; preds = %13
  %.lcssa1 = phi i32 [ %14, %13 ]
  store i32 %.lcssa1, ptr %9, align 4
  %19 = call i32 @clock()
  %20 = load i32, ptr %10, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, ptr %11, align 4
  %22 = call ptr @malloc(i64 noundef 56) #4
  store ptr %22, ptr @PtrGlbNext, align 8
  %23 = call ptr @malloc(i64 noundef 56) #4
  store ptr %23, ptr @PtrGlb, align 8
  %24 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %24, ptr %23, align 8
  %25 = load ptr, ptr @PtrGlb, align 8
  %26 = getelementptr inbounds nuw %struct.Record, ptr %25, i32 0, i32 1
  store i32 0, ptr %26, align 8
  %27 = load ptr, ptr @PtrGlb, align 8
  %28 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 2
  store i32 10001, ptr %28, align 4
  %29 = load ptr, ptr @PtrGlb, align 8
  %30 = getelementptr inbounds nuw %struct.Record, ptr %29, i32 0, i32 3
  store i32 40, ptr %30, align 8
  %31 = load ptr, ptr @PtrGlb, align 8
  %32 = getelementptr inbounds nuw %struct.Record, ptr %31, i32 0, i32 4
  %33 = call ptr @strcpy(ptr noundef %32, ptr noundef @.str) #5
  %34 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %35 = call i32 @clock()
  store i32 %35, ptr %10, align 4
  store i32 0, ptr %9, align 4
  %.promoted4 = load i32, ptr %9, align 4
  %.promoted6 = load i32, ptr %3, align 4
  %.promoted8 = load i8, ptr %5, align 1
  br label %36

36:                                               ; preds = %77, %18
  %.lcssa39 = phi i8 [ %.lcssa3, %77 ], [ %.promoted8, %18 ]
  %37 = phi i32 [ %86, %77 ], [ %.promoted6, %18 ]
  %38 = phi i32 [ %88, %77 ], [ %.promoted4, %18 ]
  %39 = icmp ult i32 %38, 100000000
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = call i32 @Proc5()
  %42 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  %43 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.2) #5
  store i32 10000, ptr %6, align 4
  %44 = call i32 @Func2(ptr noundef %7, ptr noundef %8)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, ptr @BoolGlob, align 4
  br label %48

48:                                               ; preds = %51, %40
  %49 = load i32, ptr %2, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = mul nsw i32 5, %49
  %53 = sub nsw i32 %52, 3
  store i32 %53, ptr %4, align 4
  %54 = load i32, ptr %2, align 4
  %55 = call i32 @Proc7(i32 noundef %54, i32 noundef 3, ptr noundef %4)
  %56 = load i32, ptr %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %2, align 4
  br label %48, !llvm.loop !9

58:                                               ; preds = %48
  %.lcssa = phi i32 [ %49, %48 ]
  %59 = load i32, ptr %4, align 4
  %60 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %59)
  %61 = load ptr, ptr @PtrGlb, align 8
  %62 = call i32 @Proc1(ptr noundef %61)
  br label %63

63:                                               ; preds = %75, %58
  %64 = phi i8 [ %76, %75 ], [ 65, %58 ]
  %65 = sext i8 %64 to i32
  %66 = load i8, ptr @Char2Glob, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sle i32 %65, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, ptr %6, align 4
  %71 = call i32 @Func1(i32 noundef %65, i32 noundef 67)
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @Proc6(i32 noundef 0, ptr noundef %6)
  br label %75

75:                                               ; preds = %69, %73
  %76 = add i8 %64, 1
  br label %63, !llvm.loop !10

77:                                               ; preds = %63
  %.lcssa3 = phi i8 [ %64, %63 ]
  %78 = load i32, ptr %2, align 4
  %79 = mul nsw i32 3, %78
  store i32 %79, ptr %4, align 4
  %80 = load i32, ptr %2, align 4
  %81 = sdiv i32 %79, %80
  %82 = load i32, ptr %4, align 4
  %83 = sub nsw i32 %82, %81
  %84 = mul nsw i32 7, %83
  %85 = load i32, ptr %2, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 @Proc2(ptr noundef %2)
  %88 = add i32 %38, 1
  br label %36, !llvm.loop !11

89:                                               ; preds = %36
  %.lcssa39.lcssa = phi i8 [ %.lcssa39, %36 ]
  %.lcssa7 = phi i32 [ %37, %36 ]
  %.lcssa5 = phi i32 [ %38, %36 ]
  store i32 %.lcssa5, ptr %9, align 4
  store i32 %.lcssa7, ptr %3, align 4
  store i8 %.lcssa39.lcssa, ptr %5, align 1
  %90 = load i32, ptr %1, align 4
  ret i32 %90
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
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %struct.Record, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds nuw %struct.Record, ptr %8, i32 0, i32 3
  store i32 %7, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %11, align 8
  %12 = load i32, ptr %2, align 4
  ret i32 %12
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
  %8 = load i8, ptr @Char1Glob, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 65
  %11 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %4, align 4
  %.promoted1 = load i32, ptr %5, align 4
  br label %12

12:                                               ; preds = %19, %1
  %13 = phi i32 [ %20, %19 ], [ %.promoted1, %1 ]
  %14 = phi i32 [ %21, %19 ], [ %.promoted, %1 ]
  br i1 %10, label %15, label %19

15:                                               ; preds = %12
  %16 = add nsw i32 %14, -1
  %17 = load i32, ptr @IntGlob, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, ptr %11, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i32 [ 0, %15 ], [ %13, %12 ]
  %21 = phi i32 [ %16, %15 ], [ %14, %12 ]
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %12

23:                                               ; preds = %19
  %.lcssa2 = phi i32 [ %20, %19 ]
  %.lcssa = phi i32 [ %21, %19 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa2, ptr %5, align 4
  %24 = load i32, ptr %2, align 4
  ret i32 %24
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
  br label %9

8:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %9

9:                                                ; preds = %8, %6
  %10 = load i32, ptr @IntGlob, align 4
  %11 = load ptr, ptr @PtrGlb, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 3
  %13 = call i32 @Proc7(i32 noundef 10, i32 noundef %10, ptr noundef %12)
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
  %9 = load i32, ptr %1, align 4
  ret i32 %9
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
  store i32 %6, ptr %1, align 4
  %7 = load i32, ptr %4, align 4
  %8 = call i32 @Func3(i32 noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8
  store i32 10002, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, ptr %4, align 4
  switch i32 %13, label %27 [
    i32 0, label %14
    i32 10000, label %16
    i32 10001, label %23
    i32 10003, label %25
  ]

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 8
  store i32 0, ptr %15, align 4
  br label %27

16:                                               ; preds = %12
  %17 = load i32, ptr @IntGlob, align 4
  %18 = icmp sgt i32 %17, 100
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 8
  store i32 0, ptr %20, align 4
  br label %27

21:                                               ; preds = %16
  %22 = load ptr, ptr %5, align 8
  store i32 10002, ptr %22, align 4
  br label %27

23:                                               ; preds = %12
  %24 = load ptr, ptr %5, align 8
  store i32 10000, ptr %24, align 4
  br label %27

25:                                               ; preds = %12
  %26 = load ptr, ptr %5, align 8
  store i32 10001, ptr %26, align 4
  br label %27

27:                                               ; preds = %19, %21, %25, %23, %14, %12
  %28 = load i32, ptr %3, align 4
  ret i32 %28
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
  %12 = add nsw i32 %11, %10
  %13 = load ptr, ptr %7, align 8
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %4, align 4
  ret i32 %14
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
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  store i32 %14, ptr %17, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = load i32, ptr %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %19, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %18, i64 %24
  store i32 %22, ptr %25, align 4
  %26 = load i32, ptr %10, align 4
  %27 = load ptr, ptr %6, align 8
  %28 = add nsw i32 %26, 30
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %27, i64 %29
  store i32 %26, ptr %30, align 4
  %31 = load i32, ptr %10, align 4
  store i32 %31, ptr %11, align 4
  %32 = load i32, ptr %10, align 4
  %33 = add nsw i32 %32, 1
  %34 = load ptr, ptr %7, align 8
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds [51 x i32], ptr %34, i64 %35
  %.promoted = load i32, ptr %11, align 4
  br label %37

37:                                               ; preds = %40, %4
  %38 = phi i32 [ %43, %40 ], [ %.promoted, %4 ]
  %39 = icmp sle i32 %38, %33
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = sext i32 %38 to i64
  %42 = getelementptr inbounds [51 x i32], ptr %36, i64 0, i64 %41
  store i32 %32, ptr %42, align 4
  %43 = add nsw i32 %38, 1
  br label %37, !llvm.loop !12

44:                                               ; preds = %37
  %.lcssa1 = phi i32 [ %38, %37 ]
  %.lcssa = phi i32 [ %32, %37 ]
  store i32 %.lcssa1, ptr %11, align 4
  %45 = load ptr, ptr %7, align 8
  %46 = sext i32 %.lcssa to i64
  %47 = getelementptr inbounds [51 x i32], ptr %45, i64 %46
  %48 = sub nsw i32 %.lcssa, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [51 x i32], ptr %47, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %50, align 4
  %53 = load ptr, ptr %6, align 8
  %54 = load i32, ptr %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %53, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %7, align 8
  %59 = add nsw i32 %54, 20
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [51 x i32], ptr %58, i64 %60
  %62 = getelementptr inbounds [51 x i32], ptr %61, i64 0, i64 %55
  store i32 %57, ptr %62, align 4
  store i32 5, ptr @IntGlob, align 4
  %63 = load i32, ptr %5, align 4
  ret i32 %63
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
  store i8 %10, ptr %7, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8, ptr %5, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br label %17

16:                                               ; preds = %2
  store i32 10000, ptr %3, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, ptr %3, align 4
  ret i32 %18
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
  %35 = icmp sle i32 %33, 90
  %or.cond = and i1 %34, %35
  br i1 %or.cond, label %36, label %37

36:                                               ; preds = %31
  store i32 7, ptr %6, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i8, ptr %7, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 88
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, ptr %3, align 4
  br label %51

42:                                               ; preds = %37
  %43 = load ptr, ptr %4, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = call i32 @strcmp(ptr noundef %43, ptr noundef %44) #5
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, ptr %6, align 4
  %49 = add nsw i32 %48, 7
  store i32 %49, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, ptr %3, align 4
  br label %51

51:                                               ; preds = %50, %47, %41
  %52 = load i32, ptr %3, align 4
  ret i32 %52
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
  %9 = load i32, ptr %2, align 4
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
