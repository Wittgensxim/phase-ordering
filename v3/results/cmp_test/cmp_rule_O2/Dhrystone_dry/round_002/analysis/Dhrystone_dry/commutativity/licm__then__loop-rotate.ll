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
  %13 = icmp ult i32 %.promoted, 100000000
  br i1 %13, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %0
  br label %14

14:                                               ; preds = %.lr.ph, %16
  %15 = phi i32 [ %.promoted, %.lr.ph ], [ %17, %16 ]
  br label %16

16:                                               ; preds = %14
  %17 = add i32 %15, 1
  %18 = icmp ult i32 %17, 100000000
  br i1 %18, label %14, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  %split = phi i32 [ %17, %16 ]
  br label %19

19:                                               ; preds = %._crit_edge, %0
  %.lcssa1 = phi i32 [ %split, %._crit_edge ], [ %.promoted, %0 ]
  store i32 %.lcssa1, ptr %9, align 4
  %20 = call i32 @clock()
  %21 = load i32, ptr %10, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, ptr %11, align 4
  %23 = call ptr @malloc(i64 noundef 56) #4
  store ptr %23, ptr @PtrGlbNext, align 8
  %24 = call ptr @malloc(i64 noundef 56) #4
  store ptr %24, ptr @PtrGlb, align 8
  %25 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %25, ptr %24, align 8
  %26 = load ptr, ptr @PtrGlb, align 8
  %27 = getelementptr inbounds nuw %struct.Record, ptr %26, i32 0, i32 1
  store i32 0, ptr %27, align 8
  %28 = load ptr, ptr @PtrGlb, align 8
  %29 = getelementptr inbounds nuw %struct.Record, ptr %28, i32 0, i32 2
  store i32 10001, ptr %29, align 4
  %30 = load ptr, ptr @PtrGlb, align 8
  %31 = getelementptr inbounds nuw %struct.Record, ptr %30, i32 0, i32 3
  store i32 40, ptr %31, align 8
  %32 = load ptr, ptr @PtrGlb, align 8
  %33 = getelementptr inbounds nuw %struct.Record, ptr %32, i32 0, i32 4
  %34 = call ptr @strcpy(ptr noundef %33, ptr noundef @.str) #5
  %35 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %36 = call i32 @clock()
  store i32 %36, ptr %10, align 4
  store i32 0, ptr %9, align 4
  %.promoted4 = load i32, ptr %9, align 4
  %.promoted6 = load i32, ptr %3, align 4
  %.promoted8 = load i8, ptr %5, align 1
  %37 = icmp ult i32 %.promoted4, 100000000
  br i1 %37, label %.lr.ph19, label %96

.lr.ph19:                                         ; preds = %19
  br label %38

38:                                               ; preds = %.lr.ph19, %93
  %39 = phi i32 [ %.promoted4, %.lr.ph19 ], [ %94, %93 ]
  %40 = call i32 @Proc5()
  %41 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  %42 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.2) #5
  store i32 10000, ptr %6, align 4
  %43 = call i32 @Func2(ptr noundef %7, ptr noundef %8)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, ptr @BoolGlob, align 4
  %47 = load i32, ptr %2, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %.lr.ph11, label %59

.lr.ph11:                                         ; preds = %38
  br label %49

49:                                               ; preds = %.lr.ph11, %49
  %50 = phi i32 [ %47, %.lr.ph11 ], [ %57, %49 ]
  %51 = mul nsw i32 5, %50
  %52 = sub nsw i32 %51, 3
  store i32 %52, ptr %4, align 4
  %53 = load i32, ptr %2, align 4
  %54 = call i32 @Proc7(i32 noundef %53, i32 noundef 3, ptr noundef %4)
  %55 = load i32, ptr %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %2, align 4
  %57 = load i32, ptr %2, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %49, label %._crit_edge12, !llvm.loop !9

._crit_edge12:                                    ; preds = %49
  %split13 = phi i32 [ %57, %49 ]
  br label %59

59:                                               ; preds = %._crit_edge12, %38
  %.lcssa = phi i32 [ %split13, %._crit_edge12 ], [ %47, %38 ]
  %60 = load i32, ptr %4, align 4
  %61 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %60)
  %62 = load ptr, ptr @PtrGlb, align 8
  %63 = call i32 @Proc1(ptr noundef %62)
  %64 = load i8, ptr @Char2Glob, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 65, %65
  br i1 %66, label %.lr.ph15, label %82

.lr.ph15:                                         ; preds = %59
  br label %67

67:                                               ; preds = %.lr.ph15, %76
  %68 = phi i32 [ 65, %.lr.ph15 ], [ %78, %76 ]
  %69 = phi i8 [ 65, %.lr.ph15 ], [ %77, %76 ]
  %70 = load i32, ptr %6, align 4
  %71 = call i32 @Func1(i32 noundef %68, i32 noundef 67)
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @Proc6(i32 noundef 0, ptr noundef %6)
  br label %75

75:                                               ; preds = %73, %67
  br label %76

76:                                               ; preds = %75
  %77 = add i8 %69, 1
  %78 = sext i8 %77 to i32
  %79 = load i8, ptr @Char2Glob, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %78, %80
  br i1 %81, label %67, label %._crit_edge16, !llvm.loop !10

._crit_edge16:                                    ; preds = %76
  %split17 = phi i8 [ %77, %76 ]
  br label %82

82:                                               ; preds = %._crit_edge16, %59
  %.lcssa3 = phi i8 [ %split17, %._crit_edge16 ], [ 65, %59 ]
  %83 = load i32, ptr %2, align 4
  %84 = mul nsw i32 3, %83
  store i32 %84, ptr %4, align 4
  %85 = load i32, ptr %2, align 4
  %86 = sdiv i32 %84, %85
  %87 = load i32, ptr %4, align 4
  %88 = sub nsw i32 %87, %86
  %89 = mul nsw i32 7, %88
  %90 = load i32, ptr %2, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @Proc2(ptr noundef %2)
  br label %93

93:                                               ; preds = %82
  %94 = add i32 %39, 1
  %95 = icmp ult i32 %94, 100000000
  br i1 %95, label %38, label %._crit_edge20, !llvm.loop !11

._crit_edge20:                                    ; preds = %93
  %split21 = phi i8 [ %.lcssa3, %93 ]
  %split22 = phi i32 [ %91, %93 ]
  %split23 = phi i32 [ %94, %93 ]
  br label %96

96:                                               ; preds = %._crit_edge20, %19
  %.lcssa39.lcssa = phi i8 [ %split21, %._crit_edge20 ], [ %.promoted8, %19 ]
  %.lcssa7 = phi i32 [ %split22, %._crit_edge20 ], [ %.promoted6, %19 ]
  %.lcssa5 = phi i32 [ %split23, %._crit_edge20 ], [ %.promoted4, %19 ]
  store i32 %.lcssa5, ptr %9, align 4
  store i32 %.lcssa7, ptr %3, align 4
  store i8 %.lcssa39.lcssa, ptr %5, align 1
  %97 = load i32, ptr %1, align 4
  ret i32 %97
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
  %32 = load i32, ptr %10, align 4
  %33 = add nsw i32 %32, 1
  %34 = load ptr, ptr %7, align 8
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds [51 x i32], ptr %34, i64 %35
  %.promoted = load i32, ptr %11, align 4
  %37 = icmp sle i32 %.promoted, %33
  br i1 %37, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %4
  br label %38

38:                                               ; preds = %.lr.ph, %42
  %39 = phi i32 [ %.promoted, %.lr.ph ], [ %43, %42 ]
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [51 x i32], ptr %36, i64 0, i64 %40
  store i32 %32, ptr %41, align 4
  br label %42

42:                                               ; preds = %38
  %43 = add nsw i32 %39, 1
  %44 = icmp sle i32 %43, %33
  br i1 %44, label %38, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %42
  %split = phi i32 [ %43, %42 ]
  %split2 = phi i32 [ %32, %42 ]
  br label %45

45:                                               ; preds = %._crit_edge, %4
  %.lcssa1 = phi i32 [ %split, %._crit_edge ], [ %.promoted, %4 ]
  %.lcssa = phi i32 [ %split2, %._crit_edge ], [ %32, %4 ]
  store i32 %.lcssa1, ptr %11, align 4
  %46 = load ptr, ptr %7, align 8
  %47 = sext i32 %.lcssa to i64
  %48 = getelementptr inbounds [51 x i32], ptr %46, i64 %47
  %49 = sub nsw i32 %.lcssa, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [51 x i32], ptr %48, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %51, align 4
  %54 = load ptr, ptr %6, align 8
  %55 = load i32, ptr %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %54, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %7, align 8
  %60 = add nsw i32 %55, 20
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [51 x i32], ptr %59, i64 %61
  %63 = getelementptr inbounds [51 x i32], ptr %62, i64 0, i64 %56
  store i32 %58, ptr %63, align 4
  store i32 5, ptr @IntGlob, align 4
  %64 = load i32, ptr %5, align 4
  ret i32 %64
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
  %10 = icmp sle i32 %.promoted, 1
  br i1 %10, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %2
  br label %11

11:                                               ; preds = %.lr.ph, %27
  %12 = phi i32 [ %.promoted, %.lr.ph ], [ %29, %27 ]
  %13 = phi i8 [ %.promoted1, %.lr.ph ], [ %28, %27 ]
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, ptr %8, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = sext i8 %16 to i32
  %18 = add nsw i32 %12, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %9, i64 %19
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 @Func1(i32 noundef %17, i32 noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %11
  %26 = add nsw i32 %12, 1
  br label %27

27:                                               ; preds = %25, %11
  %28 = phi i8 [ 65, %25 ], [ %13, %11 ]
  %29 = phi i32 [ %26, %25 ], [ %12, %11 ]
  %30 = icmp sle i32 %29, 1
  br i1 %30, label %11, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %27
  %split = phi i8 [ %28, %27 ]
  %split3 = phi i32 [ %29, %27 ]
  br label %31

31:                                               ; preds = %._crit_edge, %2
  %.lcssa2 = phi i8 [ %split, %._crit_edge ], [ %.promoted1, %2 ]
  %.lcssa = phi i32 [ %split3, %._crit_edge ], [ %.promoted, %2 ]
  store i32 %.lcssa, ptr %6, align 4
  store i8 %.lcssa2, ptr %7, align 1
  %32 = load i8, ptr %7, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 87
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = icmp sle i32 %33, 90
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  store i32 7, ptr %6, align 4
  br label %38

38:                                               ; preds = %37, %35, %31
  %39 = load i8, ptr %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 88
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, ptr %3, align 4
  br label %52

43:                                               ; preds = %38
  %44 = load ptr, ptr %4, align 8
  %45 = load ptr, ptr %5, align 8
  %46 = call i32 @strcmp(ptr noundef %44, ptr noundef %45) #5
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, ptr %6, align 4
  %50 = add nsw i32 %49, 7
  store i32 %50, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, ptr %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %42
  %53 = load i32, ptr %3, align 4
  ret i32 %53
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
