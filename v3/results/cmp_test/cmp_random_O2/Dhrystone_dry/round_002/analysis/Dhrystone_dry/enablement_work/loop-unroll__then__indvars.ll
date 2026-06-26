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

15:                                               ; preds = %15, %0
  %16 = phi i32 [ 0, %0 ], [ %26, %15 ]
  %17 = add nuw nsw i32 %16, 1
  store i32 %17, ptr %10, align 4
  %18 = add nuw nsw i32 %16, 2
  store i32 %18, ptr %10, align 4
  %19 = add nuw nsw i32 %16, 3
  store i32 %19, ptr %10, align 4
  %20 = add nuw nsw i32 %16, 4
  store i32 %20, ptr %10, align 4
  %21 = add nuw nsw i32 %16, 5
  store i32 %21, ptr %10, align 4
  %22 = add nuw nsw i32 %16, 6
  store i32 %22, ptr %10, align 4
  %23 = add nuw nsw i32 %16, 7
  store i32 %23, ptr %10, align 4
  %24 = add nuw nsw i32 %16, 8
  store i32 %24, ptr %10, align 4
  %25 = add nuw nsw i32 %16, 9
  store i32 %25, ptr %10, align 4
  %26 = add nuw nsw i32 %16, 10
  store i32 %26, ptr %10, align 4
  %27 = icmp samesign ult i32 %26, 100000000
  br i1 %27, label %15, label %28, !llvm.loop !7

28:                                               ; preds = %15
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
  br label %42

42:                                               ; preds = %82, %28
  %43 = phi i32 [ 0, %28 ], [ %89, %82 ]
  %44 = call i32 @Proc5()
  %45 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %46 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.2) #5
  store i32 10000, ptr %7, align 4
  %47 = call i32 @Func2(ptr noundef %8, ptr noundef %9)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %2, align 4
  %51 = icmp slt i32 %.pre, 3
  br i1 %51, label %.lr.ph, label %60

.lr.ph:                                           ; preds = %42
  br label %52

52:                                               ; preds = %52, %.lr.ph
  %53 = phi i32 [ %.pre, %.lr.ph ], [ %58, %52 ]
  %54 = mul nsw i32 5, %53
  %55 = sub nsw i32 %54, 3
  store i32 %55, ptr %4, align 4
  %56 = call i32 @Proc7(i32 noundef %53, i32 noundef 3, ptr noundef %4)
  %57 = load i32, ptr %2, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %2, align 4
  %59 = icmp slt i32 %58, 3
  br i1 %59, label %52, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %52
  %split = phi i32 [ %58, %52 ]
  br label %60

60:                                               ; preds = %._crit_edge, %42
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.pre, %42 ]
  %61 = load i32, ptr %4, align 4
  %62 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %61)
  %63 = load ptr, ptr @PtrGlb, align 8
  %64 = call i32 @Proc1(ptr noundef %63)
  store i8 65, ptr %6, align 1
  %65 = load i8, ptr @Char2Glob, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sle i32 65, %66
  br i1 %67, label %.lr.ph2, label %82

.lr.ph2:                                          ; preds = %60
  br label %68

68:                                               ; preds = %76, %.lr.ph2
  %69 = phi i32 [ 65, %.lr.ph2 ], [ %78, %76 ]
  %70 = phi i8 [ 65, %.lr.ph2 ], [ %77, %76 ]
  %71 = load i32, ptr %7, align 4
  %72 = call i32 @Func1(i32 noundef %69, i32 noundef 67)
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %76

76:                                               ; preds = %74, %68
  %77 = add i8 %70, 1
  store i8 %77, ptr %6, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, ptr @Char2Glob, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %78, %80
  br i1 %81, label %68, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %76
  br label %82

82:                                               ; preds = %._crit_edge3, %60
  %83 = load i32, ptr %2, align 4
  %84 = mul nsw i32 3, %83
  store i32 %84, ptr %4, align 4
  store i32 3, ptr %3, align 4
  %85 = sub nsw i32 %84, 3
  %86 = mul nsw i32 7, %85
  %87 = sub nsw i32 %86, %83
  store i32 %87, ptr %3, align 4
  %88 = call i32 @Proc2(ptr noundef %2)
  %89 = add nuw nsw i32 %43, 1
  store i32 %89, ptr %10, align 4
  %exitcond = icmp ne i32 %89, 100000000
  br i1 %exitcond, label %42, label %90, !llvm.loop !11

90:                                               ; preds = %82
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

8:                                                ; preds = %17, %1
  %9 = phi i32 [ undef, %1 ], [ %18, %17 ]
  %10 = phi i32 [ %7, %1 ], [ %19, %17 ]
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
  br i1 %20, label %21, label %8

21:                                               ; preds = %17
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
  switch i32 %0, label %18 [
    i32 0, label %10
    i32 10000, label %11
    i32 10001, label %16
    i32 10003, label %17
  ]

10:                                               ; preds = %9
  store i32 0, ptr %1, align 4
  br label %18

11:                                               ; preds = %9
  %12 = load i32, ptr @IntGlob, align 4
  %13 = icmp sgt i32 %12, 100
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, ptr %1, align 4
  br label %18

15:                                               ; preds = %11
  store i32 10002, ptr %1, align 4
  br label %18

16:                                               ; preds = %9
  store i32 10000, ptr %1, align 4
  br label %18

17:                                               ; preds = %9
  store i32 10001, ptr %1, align 4
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %10, %9
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
  %22 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %23 = sext i32 %12 to i64
  %24 = getelementptr inbounds [51 x i32], ptr %22, i64 0, i64 %23
  store i32 %12, ptr %24, align 4
  %25 = add nsw i32 %2, 6
  store i32 %25, ptr %11, align 4
  %26 = icmp sle i32 %25, %15
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %29 = sext i32 %25 to i64
  %30 = getelementptr inbounds [51 x i32], ptr %28, i64 0, i64 %29
  store i32 %12, ptr %30, align 4
  %31 = add nsw i32 %2, 7
  store i32 %31, ptr %11, align 4
  br label %32

32:                                               ; preds = %27, %21
  %33 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %34 = sub nsw i32 %12, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [51 x i32], ptr %33, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4
  %39 = load i32, ptr %14, align 4
  %40 = add nsw i32 %12, 20
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [51 x i32], ptr %1, i64 %41
  %43 = getelementptr inbounds [51 x i32], ptr %42, i64 0, i64 %13
  store i32 %39, ptr %43, align 4
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
