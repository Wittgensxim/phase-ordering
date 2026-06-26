; ModuleID = 'results\cmp_test\cmp_random_O2\Dhrystone_dry\round_001\output.ll'
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

12:                                               ; preds = %12, %0
  %13 = phi i32 [ 0, %0 ], [ %23, %12 ]
  %14 = add nuw nsw i32 %13, 1
  store i32 %14, ptr %8, align 4
  %15 = add nuw nsw i32 %13, 2
  store i32 %15, ptr %8, align 4
  %16 = add nuw nsw i32 %13, 3
  store i32 %16, ptr %8, align 4
  %17 = add nuw nsw i32 %13, 4
  store i32 %17, ptr %8, align 4
  %18 = add nuw nsw i32 %13, 5
  store i32 %18, ptr %8, align 4
  %19 = add nuw nsw i32 %13, 6
  store i32 %19, ptr %8, align 4
  %20 = add nuw nsw i32 %13, 7
  store i32 %20, ptr %8, align 4
  %21 = add nuw nsw i32 %13, 8
  store i32 %21, ptr %8, align 4
  %22 = add nuw nsw i32 %13, 9
  store i32 %22, ptr %8, align 4
  %23 = add nuw nsw i32 %13, 10
  store i32 %23, ptr %8, align 4
  %24 = icmp samesign ult i32 %23, 100000000
  br i1 %24, label %12, label %25, !llvm.loop !7

25:                                               ; preds = %12
  %26 = call i32 @clock()
  %27 = sub nsw i32 %26, %11
  store i32 %27, ptr %10, align 4
  %28 = call ptr @malloc(i64 noundef 56) #4
  store ptr %28, ptr @PtrGlbNext, align 8
  %29 = call ptr @malloc(i64 noundef 56) #4
  store ptr %29, ptr @PtrGlb, align 8
  %30 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %30, ptr %29, align 8
  %31 = load ptr, ptr @PtrGlb, align 8
  %32 = getelementptr inbounds nuw %struct.Record, ptr %31, i32 0, i32 1
  store i32 0, ptr %32, align 8
  %33 = getelementptr inbounds nuw %struct.Record, ptr %31, i32 0, i32 2
  store i32 10001, ptr %33, align 4
  %34 = getelementptr inbounds nuw %struct.Record, ptr %31, i32 0, i32 3
  store i32 40, ptr %34, align 8
  %35 = getelementptr inbounds nuw %struct.Record, ptr %31, i32 0, i32 4
  %36 = call ptr @strcpy(ptr noundef %35, ptr noundef @.str) #5
  %37 = call ptr @strcpy(ptr noundef %6, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %38 = call i32 @clock()
  store i32 %38, ptr %9, align 4
  store i32 0, ptr %8, align 4
  br label %39

39:                                               ; preds = %79, %25
  %40 = phi i32 [ 0, %25 ], [ %86, %79 ]
  %41 = call i32 @Proc5()
  %42 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  store i32 3, ptr %2, align 4
  %43 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.2) #5
  store i32 10000, ptr %5, align 4
  %44 = call i32 @Func2(ptr noundef %6, ptr noundef %7)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  %48 = icmp slt i32 %.pre, 3
  br i1 %48, label %.lr.ph, label %57

.lr.ph:                                           ; preds = %39
  br label %49

49:                                               ; preds = %49, %.lr.ph
  %50 = phi i32 [ %.pre, %.lr.ph ], [ %55, %49 ]
  %51 = mul nsw i32 %50, 5
  %52 = sub nsw i32 %51, 3
  store i32 %52, ptr %3, align 4
  %53 = call i32 @Proc7(i32 noundef %50, i32 noundef 3, ptr noundef %3)
  %54 = load i32, ptr %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %1, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %49, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %49
  %split = phi i32 [ %55, %49 ]
  br label %57

57:                                               ; preds = %._crit_edge, %39
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.pre, %39 ]
  %58 = load i32, ptr %3, align 4
  %59 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %58)
  %60 = load ptr, ptr @PtrGlb, align 8
  %61 = call i32 @Proc1(ptr noundef %60)
  store i8 65, ptr %4, align 1
  %62 = load i8, ptr @Char2Glob, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 65, %63
  br i1 %64, label %.lr.ph2, label %79

.lr.ph2:                                          ; preds = %57
  br label %65

65:                                               ; preds = %73, %.lr.ph2
  %66 = phi i32 [ 65, %.lr.ph2 ], [ %75, %73 ]
  %67 = phi i8 [ 65, %.lr.ph2 ], [ %74, %73 ]
  %68 = load i32, ptr %5, align 4
  %69 = call i32 @Func1(i32 noundef %66, i32 noundef 67)
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @Proc6(i32 noundef 0, ptr noundef %5)
  br label %73

73:                                               ; preds = %71, %65
  %74 = add i8 %67, 1
  store i8 %74, ptr %4, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, ptr @Char2Glob, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sle i32 %75, %77
  br i1 %78, label %65, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %73
  br label %79

79:                                               ; preds = %._crit_edge3, %57
  %80 = load i32, ptr %1, align 4
  %81 = mul nsw i32 %80, 3
  store i32 %81, ptr %3, align 4
  store i32 3, ptr %2, align 4
  %82 = sub nsw i32 %81, 3
  %83 = mul nsw i32 %82, 7
  %84 = sub nsw i32 %83, %80
  store i32 %84, ptr %2, align 4
  %85 = call i32 @Proc2(ptr noundef %1)
  %86 = add i32 %40, 1
  store i32 %86, ptr %8, align 4
  %87 = icmp ult i32 %86, 100000000
  br i1 %87, label %39, label %88, !llvm.loop !11

88:                                               ; preds = %79
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

7:                                                ; preds = %16, %1
  %8 = phi i32 [ undef, %1 ], [ %17, %16 ]
  %9 = phi i32 [ %6, %1 ], [ %18, %16 ]
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
  br i1 %19, label %20, label %7

20:                                               ; preds = %16
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
  switch i32 %0, label %17 [
    i32 0, label %9
    i32 10000, label %10
    i32 10001, label %15
    i32 10003, label %16
  ]

9:                                                ; preds = %8
  store i32 0, ptr %1, align 4
  br label %17

10:                                               ; preds = %8
  %11 = load i32, ptr @IntGlob, align 4
  %12 = icmp sgt i32 %11, 100
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, ptr %1, align 4
  br label %17

14:                                               ; preds = %10
  store i32 10002, ptr %1, align 4
  br label %17

15:                                               ; preds = %8
  store i32 10000, ptr %1, align 4
  br label %17

16:                                               ; preds = %8
  store i32 10001, ptr %1, align 4
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %9, %8
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
  %21 = getelementptr inbounds [51 x i32], ptr %1, i64 %12
  %22 = sext i32 %11 to i64
  %23 = getelementptr inbounds [51 x i32], ptr %21, i64 0, i64 %22
  store i32 %11, ptr %23, align 4
  %24 = add nsw i32 %2, 6
  store i32 %24, ptr %10, align 4
  %25 = icmp sle i32 %24, %14
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds [51 x i32], ptr %1, i64 %12
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds [51 x i32], ptr %27, i64 0, i64 %28
  store i32 %11, ptr %29, align 4
  %30 = add nsw i32 %2, 7
  store i32 %30, ptr %10, align 4
  br label %31

31:                                               ; preds = %26, %20
  %32 = getelementptr inbounds [51 x i32], ptr %1, i64 %12
  %33 = sub nsw i32 %11, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [51 x i32], ptr %32, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 4
  %38 = load i32, ptr %13, align 4
  %39 = add nsw i32 %11, 20
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [51 x i32], ptr %1, i64 %40
  %42 = getelementptr inbounds [51 x i32], ptr %41, i64 0, i64 %12
  store i32 %38, ptr %42, align 4
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

8:                                                ; preds = %23, %2
  %9 = phi i8 [ undef, %2 ], [ %25, %23 ]
  %10 = phi i32 [ 1, %2 ], [ %24, %23 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %10, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %1, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 @Func1(i32 noundef %14, i32 noundef %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  store i8 65, ptr %7, align 1
  store i32 %15, ptr %6, align 4
  br label %23

23:                                               ; preds = %22, %8
  %24 = phi i32 [ %15, %22 ], [ %10, %8 ]
  %25 = phi i8 [ 65, %22 ], [ %9, %8 ]
  %26 = icmp sle i32 %24, 1
  br i1 %26, label %8, label %27, !llvm.loop !12

27:                                               ; preds = %23
  %.lcssa1 = phi i32 [ %24, %23 ]
  %.lcssa = phi i8 [ %25, %23 ]
  %28 = sext i8 %.lcssa to i32
  %29 = icmp sge i32 %28, 87
  %30 = icmp sle i32 %28, 90
  %or.cond = and i1 %29, %30
  br i1 %or.cond, label %31, label %32

31:                                               ; preds = %27
  store i32 7, ptr %6, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ 7, %31 ], [ %.lcssa1, %27 ]
  %34 = icmp eq i32 %28, 88
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, ptr %3, align 4
  br label %42

36:                                               ; preds = %32
  %37 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = add nsw i32 %33, 7
  store i32 %40, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %42

41:                                               ; preds = %36
  store i32 0, ptr %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %35
  %43 = phi i32 [ 0, %41 ], [ 1, %39 ], [ 1, %35 ]
  ret i32 %43
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
