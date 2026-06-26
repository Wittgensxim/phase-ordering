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

12:                                               ; preds = %29, %0
  %13 = phi i32 [ 0, %0 ], [ %30, %29 ]
  %14 = icmp samesign ult i32 %13, 100000000
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = add nuw nsw i32 %13, 1
  store i32 %16, ptr %8, align 4
  br label %17

17:                                               ; preds = %15
  %18 = add nuw nsw i32 %13, 2
  store i32 %18, ptr %8, align 4
  br label %19

19:                                               ; preds = %17
  %20 = add nuw nsw i32 %13, 3
  store i32 %20, ptr %8, align 4
  br label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i32 %13, 4
  store i32 %22, ptr %8, align 4
  br label %23

23:                                               ; preds = %21
  %24 = add nuw nsw i32 %13, 5
  store i32 %24, ptr %8, align 4
  br label %25

25:                                               ; preds = %23
  %26 = add nuw nsw i32 %13, 6
  store i32 %26, ptr %8, align 4
  br label %27

27:                                               ; preds = %25
  %28 = add nuw nsw i32 %13, 7
  store i32 %28, ptr %8, align 4
  br label %29

29:                                               ; preds = %27
  %30 = add nuw nsw i32 %13, 8
  store i32 %30, ptr %8, align 4
  br label %12, !llvm.loop !7

31:                                               ; preds = %12
  %32 = call i32 @clock()
  %33 = sub nsw i32 %32, %11
  store i32 %33, ptr %10, align 4
  %34 = call ptr @malloc(i64 noundef 56) #4
  store ptr %34, ptr @PtrGlbNext, align 8
  %35 = call ptr @malloc(i64 noundef 56) #4
  store ptr %35, ptr @PtrGlb, align 8
  %36 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %36, ptr %35, align 8
  %37 = load ptr, ptr @PtrGlb, align 8
  %38 = getelementptr inbounds nuw %struct.Record, ptr %37, i32 0, i32 1
  store i32 0, ptr %38, align 8
  %39 = getelementptr inbounds nuw %struct.Record, ptr %37, i32 0, i32 2
  store i32 10001, ptr %39, align 4
  %40 = getelementptr inbounds nuw %struct.Record, ptr %37, i32 0, i32 3
  store i32 40, ptr %40, align 8
  %41 = getelementptr inbounds nuw %struct.Record, ptr %37, i32 0, i32 4
  %42 = call ptr @strcpy(ptr noundef %41, ptr noundef @.str) #5
  %43 = call ptr @strcpy(ptr noundef %6, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %44 = call i32 @clock()
  store i32 %44, ptr %9, align 4
  store i32 0, ptr %8, align 4
  br label %45

45:                                               ; preds = %84, %31
  %46 = phi i32 [ %91, %84 ], [ 0, %31 ]
  %47 = icmp ult i32 %46, 100000000
  br i1 %47, label %48, label %92

48:                                               ; preds = %45
  %49 = call i32 @Proc5()
  %50 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  store i32 3, ptr %2, align 4
  %51 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.2) #5
  store i32 10000, ptr %5, align 4
  %52 = call i32 @Func2(ptr noundef %6, ptr noundef %7)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %56

56:                                               ; preds = %59, %48
  %57 = phi i32 [ %64, %59 ], [ %.pre, %48 ]
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = mul nsw i32 %57, 5
  %61 = sub nsw i32 %60, 3
  store i32 %61, ptr %3, align 4
  %62 = call i32 @Proc7(i32 noundef %57, i32 noundef 3, ptr noundef %3)
  %63 = load i32, ptr %1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %1, align 4
  br label %56, !llvm.loop !9

65:                                               ; preds = %56
  %.lcssa = phi i32 [ %57, %56 ]
  %66 = load i32, ptr %3, align 4
  %67 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %66)
  %68 = load ptr, ptr @PtrGlb, align 8
  %69 = call i32 @Proc1(ptr noundef %68)
  store i8 65, ptr %4, align 1
  br label %70

70:                                               ; preds = %82, %65
  %71 = phi i8 [ %83, %82 ], [ 65, %65 ]
  %72 = sext i8 %71 to i32
  %73 = load i8, ptr @Char2Glob, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp sle i32 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load i32, ptr %5, align 4
  %78 = call i32 @Func1(i32 noundef %72, i32 noundef 67)
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @Proc6(i32 noundef 0, ptr noundef %5)
  br label %82

82:                                               ; preds = %80, %76
  %83 = add i8 %71, 1
  store i8 %83, ptr %4, align 1
  br label %70, !llvm.loop !10

84:                                               ; preds = %70
  %85 = load i32, ptr %1, align 4
  %86 = mul nsw i32 %85, 3
  store i32 %86, ptr %3, align 4
  store i32 3, ptr %2, align 4
  %87 = sub nsw i32 %86, 3
  %88 = mul nsw i32 %87, 7
  %89 = sub nsw i32 %88, %85
  store i32 %89, ptr %2, align 4
  %90 = call i32 @Proc2(ptr noundef %1)
  %91 = add i32 %46, 1
  store i32 %91, ptr %8, align 4
  br label %45, !llvm.loop !11

92:                                               ; preds = %45
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

20:                                               ; preds = %4
  br i1 true, label %21, label %37

21:                                               ; preds = %20
  %22 = getelementptr inbounds [51 x i32], ptr %1, i64 %12
  %23 = sext i32 %11 to i64
  %24 = getelementptr inbounds [51 x i32], ptr %22, i64 0, i64 %23
  store i32 %11, ptr %24, align 4
  %25 = add nsw i32 %2, 6
  store i32 %25, ptr %10, align 4
  br label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [51 x i32], ptr %1, i64 %12
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds [51 x i32], ptr %27, i64 0, i64 %28
  store i32 %11, ptr %29, align 4
  %30 = add nsw i32 %2, 7
  store i32 %30, ptr %10, align 4
  %31 = icmp sle i32 %30, %14
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = getelementptr inbounds [51 x i32], ptr %1, i64 %12
  %34 = sext i32 %30 to i64
  %35 = getelementptr inbounds [51 x i32], ptr %33, i64 0, i64 %34
  store i32 %11, ptr %35, align 4
  %36 = add nsw i32 %2, 8
  store i32 %36, ptr %10, align 4
  unreachable

37:                                               ; preds = %26, %20
  %38 = getelementptr inbounds [51 x i32], ptr %1, i64 %12
  %39 = sub nsw i32 %11, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [51 x i32], ptr %38, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 4
  %44 = load i32, ptr %13, align 4
  %45 = add nsw i32 %11, 20
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [51 x i32], ptr %1, i64 %46
  %48 = getelementptr inbounds [51 x i32], ptr %47, i64 0, i64 %12
  store i32 %44, ptr %48, align 4
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
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = icmp sle i32 %29, 90
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  store i32 7, ptr %6, align 4
  br label %34

34:                                               ; preds = %33, %31, %28
  %35 = phi i32 [ 7, %33 ], [ %.lcssa1, %31 ], [ %.lcssa1, %28 ]
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
