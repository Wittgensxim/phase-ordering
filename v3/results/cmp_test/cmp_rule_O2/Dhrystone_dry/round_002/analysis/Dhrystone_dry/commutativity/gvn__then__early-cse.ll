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

12:                                               ; preds = %15, %0
  %13 = phi i32 [ %16, %15 ], [ 0, %0 ]
  %14 = icmp ult i32 %13, 100000000
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = add i32 %13, 1
  store i32 %16, ptr %8, align 4
  br label %12, !llvm.loop !7

17:                                               ; preds = %12
  %18 = call i32 @clock()
  %19 = sub nsw i32 %18, %11
  store i32 %19, ptr %10, align 4
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
  %29 = call ptr @strcpy(ptr noundef %6, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %30 = call i32 @clock()
  store i32 %30, ptr %9, align 4
  store i32 0, ptr %8, align 4
  br label %31

31:                                               ; preds = %70, %17
  %32 = phi i32 [ %77, %70 ], [ 0, %17 ]
  %33 = icmp ult i32 %32, 100000000
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = call i32 @Proc5()
  %36 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  store i32 3, ptr %2, align 4
  %37 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.2) #5
  store i32 10000, ptr %5, align 4
  %38 = call i32 @Func2(ptr noundef %6, ptr noundef %7)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %42

42:                                               ; preds = %45, %34
  %43 = phi i32 [ %50, %45 ], [ %.pre, %34 ]
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = mul nsw i32 5, %43
  %47 = sub nsw i32 %46, 3
  store i32 %47, ptr %3, align 4
  %48 = call i32 @Proc7(i32 noundef %43, i32 noundef 3, ptr noundef %3)
  %49 = load i32, ptr %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %1, align 4
  br label %42, !llvm.loop !9

51:                                               ; preds = %42
  %52 = load i32, ptr %3, align 4
  %53 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %43, i32 noundef %52)
  %54 = load ptr, ptr @PtrGlb, align 8
  %55 = call i32 @Proc1(ptr noundef %54)
  store i8 65, ptr %4, align 1
  br label %56

56:                                               ; preds = %68, %51
  %57 = phi i8 [ %69, %68 ], [ 65, %51 ]
  %58 = sext i8 %57 to i32
  %59 = load i8, ptr @Char2Glob, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32, ptr %5, align 4
  %64 = call i32 @Func1(i32 noundef %58, i32 noundef 67)
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @Proc6(i32 noundef 0, ptr noundef %5)
  br label %68

68:                                               ; preds = %66, %62
  %69 = add i8 %57, 1
  store i8 %69, ptr %4, align 1
  br label %56, !llvm.loop !10

70:                                               ; preds = %56
  %71 = load i32, ptr %1, align 4
  %72 = mul nsw i32 3, %71
  store i32 %72, ptr %3, align 4
  %73 = sub nsw i32 %72, 3
  %74 = mul nsw i32 7, %73
  %75 = sub nsw i32 %74, %71
  store i32 %75, ptr %2, align 4
  %76 = call i32 @Proc2(ptr noundef %1)
  %77 = add i32 %32, 1
  store i32 %77, ptr %8, align 4
  br label %31, !llvm.loop !11

78:                                               ; preds = %31
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
  br label %7

7:                                                ; preds = %21, %1
  %8 = phi i32 [ %17, %21 ], [ undef, %1 ]
  %9 = phi i32 [ %18, %21 ], [ %6, %1 ]
  %10 = sext i8 %.pre to i32
  %11 = icmp eq i32 %10, 65
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = add nsw i32 %9, -1
  store i32 %13, ptr %3, align 4
  %14 = load i32, ptr @IntGlob, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, ptr %0, align 4
  store i32 0, ptr %4, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i32 [ 0, %12 ], [ %8, %7 ]
  %18 = phi i32 [ %13, %12 ], [ %9, %7 ]
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  ret i32 undef

21:                                               ; preds = %16
  br label %7
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
  br label %20

20:                                               ; preds = %23, %4
  %21 = phi i32 [ %27, %23 ], [ %11, %4 ]
  %22 = icmp sle i32 %21, %14
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds [51 x i32], ptr %1, i64 %12
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds [51 x i32], ptr %24, i64 0, i64 %25
  store i32 %11, ptr %26, align 4
  %27 = add nsw i32 %21, 1
  store i32 %27, ptr %10, align 4
  br label %20, !llvm.loop !12

28:                                               ; preds = %20
  %29 = getelementptr inbounds [51 x i32], ptr %1, i64 %12
  %30 = sub nsw i32 %11, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [51 x i32], ptr %29, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %13, align 4
  %36 = add nsw i32 %11, 20
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [51 x i32], ptr %1, i64 %37
  %39 = getelementptr inbounds [51 x i32], ptr %38, i64 0, i64 %12
  store i32 %35, ptr %39, align 4
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
  %29 = sext i8 %9 to i32
  %30 = icmp sge i32 %29, 87
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = icmp sle i32 %29, 90
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  store i32 7, ptr %6, align 4
  br label %34

34:                                               ; preds = %33, %31, %28
  %35 = phi i32 [ 7, %33 ], [ %10, %31 ], [ %10, %28 ]
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
