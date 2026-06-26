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
  %13 = load i32, ptr %9, align 4
  %14 = icmp ult i32 %13, 100000000
  br i1 %14, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %0
  br label %15

15:                                               ; preds = %.lr.ph, %17
  %16 = phi i32 [ %13, %.lr.ph ], [ %18, %17 ]
  br label %17

17:                                               ; preds = %15
  %18 = add i32 %16, 1
  %19 = icmp ult i32 %18, 100000000
  br i1 %19, label %15, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %17
  %.lcssa10 = phi i32 [ %18, %17 ]
  store i32 %.lcssa10, ptr %9, align 4
  br label %20

20:                                               ; preds = %._crit_edge, %0
  %21 = call i32 @clock()
  %22 = load i32, ptr %10, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, ptr %11, align 4
  %24 = call ptr @malloc(i64 noundef 56) #4
  store ptr %24, ptr @PtrGlbNext, align 8
  %25 = call ptr @malloc(i64 noundef 56) #4
  store ptr %25, ptr @PtrGlb, align 8
  %26 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %26, ptr %25, align 8
  %27 = load ptr, ptr @PtrGlb, align 8
  %28 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 1
  store i32 0, ptr %28, align 8
  %29 = load ptr, ptr @PtrGlb, align 8
  %30 = getelementptr inbounds nuw %struct.Record, ptr %29, i32 0, i32 2
  store i32 10001, ptr %30, align 4
  %31 = load ptr, ptr @PtrGlb, align 8
  %32 = getelementptr inbounds nuw %struct.Record, ptr %31, i32 0, i32 3
  store i32 40, ptr %32, align 8
  %33 = load ptr, ptr @PtrGlb, align 8
  %34 = getelementptr inbounds nuw %struct.Record, ptr %33, i32 0, i32 4
  %35 = call ptr @strcpy(ptr noundef %34, ptr noundef @.str) #5
  %36 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %37 = call i32 @clock()
  store i32 %37, ptr %10, align 4
  store i32 0, ptr %9, align 4
  %38 = load i32, ptr %9, align 4
  %39 = icmp ult i32 %38, 100000000
  br i1 %39, label %.lr.ph8, label %100

.lr.ph8:                                          ; preds = %20
  %.promoted = load i32, ptr %9, align 4
  br label %40

40:                                               ; preds = %.lr.ph8, %97
  %41 = phi i32 [ %.promoted, %.lr.ph8 ], [ %98, %97 ]
  %42 = call i32 @Proc5()
  %43 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  %44 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.2) #5
  store i32 10000, ptr %6, align 4
  %45 = call i32 @Func2(ptr noundef %7, ptr noundef %8)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, ptr @BoolGlob, align 4
  %49 = load i32, ptr %2, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %.lr.ph2, label %62

.lr.ph2:                                          ; preds = %40
  br label %51

51:                                               ; preds = %.lr.ph2, %51
  %52 = phi i32 [ 3, %.lr.ph2 ], [ 3, %51 ]
  %53 = phi i32 [ %49, %.lr.ph2 ], [ %60, %51 ]
  %54 = mul nsw i32 5, %53
  %55 = sub nsw i32 %54, %52
  store i32 %55, ptr %4, align 4
  %56 = load i32, ptr %2, align 4
  %57 = call i32 @Proc7(i32 noundef %56, i32 noundef 3, ptr noundef %4)
  %58 = load i32, ptr %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %2, align 4
  %60 = load i32, ptr %2, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %51, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %51
  %split = phi i32 [ %60, %51 ]
  br label %62

62:                                               ; preds = %._crit_edge3, %40
  %.lcssa = phi i32 [ %split, %._crit_edge3 ], [ %49, %40 ]
  %63 = load i32, ptr %4, align 4
  %64 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %63)
  %65 = load ptr, ptr @PtrGlb, align 8
  %66 = call i32 @Proc1(ptr noundef %65)
  %67 = sext i8 65 to i32
  %68 = load i8, ptr @Char2Glob, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sle i32 %67, %69
  br i1 %70, label %.lr.ph5, label %86

.lr.ph5:                                          ; preds = %62
  br label %71

71:                                               ; preds = %.lr.ph5, %80
  %72 = phi i8 [ 65, %.lr.ph5 ], [ %81, %80 ]
  %73 = phi i32 [ %67, %.lr.ph5 ], [ %82, %80 ]
  %74 = load i32, ptr %6, align 4
  %75 = call i32 @Func1(i32 noundef %73, i32 noundef 67)
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = call i32 @Proc6(i32 noundef 0, ptr noundef %6)
  br label %79

79:                                               ; preds = %77, %71
  br label %80

80:                                               ; preds = %79
  %81 = add i8 %72, 1
  %82 = sext i8 %81 to i32
  %83 = load i8, ptr @Char2Glob, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sle i32 %82, %84
  br i1 %85, label %71, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %80
  %.lcssa11 = phi i8 [ %81, %80 ]
  br label %86

86:                                               ; preds = %._crit_edge6, %62
  %.lcssa1115 = phi i8 [ %.lcssa11, %._crit_edge6 ], [ 65, %62 ]
  %87 = load i32, ptr %2, align 4
  %88 = mul nsw i32 3, %87
  store i32 %88, ptr %4, align 4
  %89 = load i32, ptr %2, align 4
  %90 = sdiv i32 %88, %89
  %91 = load i32, ptr %4, align 4
  %92 = sub nsw i32 %91, %90
  %93 = mul nsw i32 7, %92
  %94 = load i32, ptr %2, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 @Proc2(ptr noundef %2)
  br label %97

97:                                               ; preds = %86
  %98 = add i32 %41, 1
  %99 = icmp ult i32 %98, 100000000
  br i1 %99, label %40, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %97
  %.lcssa16 = phi i32 [ %98, %97 ]
  %.lcssa1115.lcssa = phi i8 [ %.lcssa1115, %97 ]
  %.lcssa13 = phi i32 [ %95, %97 ]
  store i32 %.lcssa13, ptr %3, align 4
  store i8 %.lcssa1115.lcssa, ptr %5, align 1
  store i32 %.lcssa16, ptr %9, align 4
  br label %100

100:                                              ; preds = %._crit_edge9, %20
  %101 = load i32, ptr %1, align 4
  ret i32 %101
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
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %2, align 4
  ret i32 %25
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
  switch i32 %13, label %29 [
    i32 0, label %14
    i32 10000, label %16
    i32 10001, label %24
    i32 10002, label %26
    i32 10003, label %27
  ]

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 8
  store i32 0, ptr %15, align 4
  br label %29

16:                                               ; preds = %12
  %17 = load i32, ptr @IntGlob, align 4
  %18 = icmp sgt i32 %17, 100
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 8
  store i32 0, ptr %20, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load ptr, ptr %5, align 8
  store i32 10002, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %29

24:                                               ; preds = %12
  %25 = load ptr, ptr %5, align 8
  store i32 10000, ptr %25, align 4
  br label %29

26:                                               ; preds = %12
  br label %29

27:                                               ; preds = %12
  %28 = load ptr, ptr %5, align 8
  store i32 10001, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %26, %24, %23, %14, %12
  %30 = load i32, ptr %3, align 4
  ret i32 %30
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
  %32 = load i32, ptr %11, align 4
  %33 = load i32, ptr %10, align 4
  %34 = add nsw i32 %33, 1
  %35 = icmp sle i32 %32, %34
  br i1 %35, label %.lr.ph, label %50

.lr.ph:                                           ; preds = %4
  %36 = load ptr, ptr %7, align 8
  %37 = load i32, ptr %10, align 4
  %38 = add nsw i32 %37, 1
  %.promoted = load i32, ptr %11, align 4
  br label %39

39:                                               ; preds = %.lr.ph, %47
  %40 = phi i32 [ %.promoted, %.lr.ph ], [ %48, %47 ]
  %41 = phi i32 [ %33, %.lr.ph ], [ %37, %47 ]
  %42 = phi i32 [ %32, %.lr.ph ], [ %48, %47 ]
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds [51 x i32], ptr %36, i64 %43
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds [51 x i32], ptr %44, i64 0, i64 %45
  store i32 %41, ptr %46, align 4
  br label %47

47:                                               ; preds = %39
  %48 = add nsw i32 %40, 1
  %49 = icmp sle i32 %48, %38
  br i1 %49, label %39, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %47
  %.lcssa1 = phi i32 [ %48, %47 ]
  %split = phi i32 [ %37, %47 ]
  store i32 %.lcssa1, ptr %11, align 4
  br label %50

50:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %33, %4 ]
  %51 = load ptr, ptr %7, align 8
  %52 = sext i32 %.lcssa to i64
  %53 = getelementptr inbounds [51 x i32], ptr %51, i64 %52
  %54 = sub nsw i32 %.lcssa, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [51 x i32], ptr %53, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 4
  %59 = load ptr, ptr %6, align 8
  %60 = load i32, ptr %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %59, i64 %61
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %7, align 8
  %65 = add nsw i32 %60, 20
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [51 x i32], ptr %64, i64 %66
  %68 = getelementptr inbounds [51 x i32], ptr %67, i64 0, i64 %61
  store i32 %63, ptr %68, align 4
  store i32 5, ptr @IntGlob, align 4
  %69 = load i32, ptr %5, align 4
  ret i32 %69
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
  %8 = load i32, ptr %6, align 4
  %9 = icmp sle i32 %8, 1
  br i1 %9, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %5, align 8
  %.promoted = load i8, ptr %7, align 1
  %.promoted1 = load i32, ptr %6, align 4
  br label %12

12:                                               ; preds = %.lr.ph, %29
  %13 = phi i32 [ %.promoted1, %.lr.ph ], [ %30, %29 ]
  %14 = phi i8 [ %.promoted, %.lr.ph ], [ %31, %29 ]
  %15 = phi i32 [ %8, %.lr.ph ], [ %30, %29 ]
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %10, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = add nsw i32 %15, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %11, i64 %21
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @Func1(i32 noundef %19, i32 noundef %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = add nsw i32 %13, 1
  br label %29

29:                                               ; preds = %27, %12
  %30 = phi i32 [ %28, %27 ], [ %13, %12 ]
  %31 = phi i8 [ 65, %27 ], [ %14, %12 ]
  %32 = icmp sle i32 %30, 1
  br i1 %32, label %12, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %29
  %.lcssa2 = phi i32 [ %30, %29 ]
  %.lcssa = phi i8 [ %31, %29 ]
  store i8 %.lcssa, ptr %7, align 1
  store i32 %.lcssa2, ptr %6, align 4
  br label %33

33:                                               ; preds = %._crit_edge, %2
  %34 = load i8, ptr %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 87
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = icmp sle i32 %35, 90
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i32 7, ptr %6, align 4
  br label %40

40:                                               ; preds = %39, %37, %33
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
