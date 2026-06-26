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
  br i1 true, label %.lr.ph, label %18

.lr.ph:                                           ; preds = %0
  br label %13

13:                                               ; preds = %.lr.ph, %15
  %14 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  br label %15

15:                                               ; preds = %13
  %16 = add i32 %14, 1
  store i32 %16, ptr %9, align 4
  %17 = icmp ult i32 %16, 100000000
  br i1 %17, label %13, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %0
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
  br i1 true, label %.lr.ph8, label %98

.lr.ph8:                                          ; preds = %18
  br label %36

36:                                               ; preds = %.lr.ph8, %94
  %37 = call i32 @Proc5()
  %38 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %39 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.2) #5
  store i32 10000, ptr %6, align 4
  %40 = call i32 @Func2(ptr noundef %7, ptr noundef %8)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, ptr @BoolGlob, align 4
  %44 = load i32, ptr %2, align 4
  %45 = load i32, ptr %3, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %.lr.ph2, label %59

.lr.ph2:                                          ; preds = %36
  br label %47

47:                                               ; preds = %.lr.ph2, %47
  %48 = phi i32 [ %45, %.lr.ph2 ], [ %57, %47 ]
  %49 = phi i32 [ %44, %.lr.ph2 ], [ %56, %47 ]
  %50 = mul nsw i32 5, %49
  %51 = sub nsw i32 %50, %48
  store i32 %51, ptr %4, align 4
  %52 = load i32, ptr %2, align 4
  %53 = load i32, ptr %3, align 4
  %54 = call i32 @Proc7(i32 noundef %52, i32 noundef %53, ptr noundef %4)
  %55 = load i32, ptr %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %2, align 4
  %57 = load i32, ptr %3, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %47, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %47
  br label %59

59:                                               ; preds = %._crit_edge3, %36
  %.lcssa = phi i32 [ %56, %._crit_edge3 ], [ %44, %36 ]
  %60 = load i32, ptr %4, align 4
  %61 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %60)
  %62 = load ptr, ptr @PtrGlb, align 8
  %63 = call i32 @Proc1(ptr noundef %62)
  store i8 65, ptr %5, align 1
  %64 = load i8, ptr @Char2Glob, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 65, %65
  br i1 %66, label %.lr.ph5, label %82

.lr.ph5:                                          ; preds = %59
  br label %67

67:                                               ; preds = %.lr.ph5, %75
  %68 = phi i32 [ 65, %.lr.ph5 ], [ %78, %75 ]
  %69 = load i32, ptr %6, align 4
  %70 = call i32 @Func1(i32 noundef %68, i32 noundef 67)
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @Proc6(i32 noundef 0, ptr noundef %6)
  br label %74

74:                                               ; preds = %72, %67
  br label %75

75:                                               ; preds = %74
  %76 = load i8, ptr %5, align 1
  %77 = add i8 %76, 1
  store i8 %77, ptr %5, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, ptr @Char2Glob, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %78, %80
  br i1 %81, label %67, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %75
  br label %82

82:                                               ; preds = %._crit_edge6, %59
  %83 = load i32, ptr %3, align 4
  %84 = load i32, ptr %2, align 4
  %85 = mul nsw i32 %83, %84
  store i32 %85, ptr %4, align 4
  %86 = load i32, ptr %2, align 4
  %87 = sdiv i32 %85, %86
  store i32 %87, ptr %3, align 4
  %88 = load i32, ptr %4, align 4
  %89 = sub nsw i32 %88, %87
  %90 = mul nsw i32 7, %89
  %91 = load i32, ptr %2, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, ptr %3, align 4
  %93 = call i32 @Proc2(ptr noundef %2)
  br label %94

94:                                               ; preds = %82
  %95 = load i32, ptr %9, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %9, align 4
  %97 = icmp ult i32 %96, 100000000
  br i1 %97, label %36, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %94
  br label %98

98:                                               ; preds = %._crit_edge9, %18
  %99 = load i32, ptr %1, align 4
  ret i32 %99
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
  br label %8

8:                                                ; preds = %18, %1
  %9 = load i8, ptr @Char1Glob, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 65
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, ptr %4, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %4, align 4
  %15 = load i32, ptr @IntGlob, align 4
  %16 = sub nsw i32 %14, %15
  %17 = load ptr, ptr %3, align 8
  store i32 %16, ptr %17, align 4
  store i32 0, ptr %5, align 4
  br label %18

18:                                               ; preds = %12, %8
  %19 = load i32, ptr %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %8

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %2, align 4
  ret i32 %23
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
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %.lr.ph, label %49

.lr.ph:                                           ; preds = %4
  br label %35

35:                                               ; preds = %.lr.ph, %43
  %36 = phi i32 [ %32, %.lr.ph ], [ %46, %43 ]
  %37 = phi i32 [ %31, %.lr.ph ], [ %45, %43 ]
  %38 = load ptr, ptr %7, align 8
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds [51 x i32], ptr %38, i64 %39
  %41 = sext i32 %37 to i64
  %42 = getelementptr inbounds [51 x i32], ptr %40, i64 0, i64 %41
  store i32 %36, ptr %42, align 4
  br label %43

43:                                               ; preds = %35
  %44 = load i32, ptr %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %11, align 4
  %46 = load i32, ptr %10, align 4
  %47 = add nsw i32 %46, 1
  %48 = icmp sle i32 %45, %47
  br i1 %48, label %35, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %43
  br label %49

49:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %46, %._crit_edge ], [ %32, %4 ]
  %50 = load ptr, ptr %7, align 8
  %51 = sext i32 %.lcssa to i64
  %52 = getelementptr inbounds [51 x i32], ptr %50, i64 %51
  %53 = sub nsw i32 %.lcssa, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [51 x i32], ptr %52, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %55, align 4
  %58 = load ptr, ptr %6, align 8
  %59 = load i32, ptr %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %58, i64 %60
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %7, align 8
  %64 = add nsw i32 %59, 20
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [51 x i32], ptr %63, i64 %65
  %67 = getelementptr inbounds [51 x i32], ptr %66, i64 0, i64 %60
  store i32 %62, ptr %67, align 4
  store i32 5, ptr @IntGlob, align 4
  %68 = load i32, ptr %5, align 4
  ret i32 %68
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
  br i1 true, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %26
  %9 = phi i32 [ 1, %.lr.ph ], [ %27, %26 ]
  %10 = load ptr, ptr %4, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load ptr, ptr %5, align 8
  %16 = add nsw i32 %9, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %15, i64 %17
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 @Func1(i32 noundef %14, i32 noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  store i8 65, ptr %7, align 1
  %24 = load i32, ptr %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %6, align 4
  br label %26

26:                                               ; preds = %23, %8
  %27 = load i32, ptr %6, align 4
  %28 = icmp sle i32 %27, 1
  br i1 %28, label %8, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %26
  br label %29

29:                                               ; preds = %._crit_edge, %2
  %30 = load i8, ptr %7, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 87
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = icmp sle i32 %31, 90
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  store i32 7, ptr %6, align 4
  br label %36

36:                                               ; preds = %35, %33, %29
  %37 = load i8, ptr %7, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 88
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, ptr %3, align 4
  br label %50

41:                                               ; preds = %36
  %42 = load ptr, ptr %4, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = call i32 @strcmp(ptr noundef %42, ptr noundef %43) #5
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, ptr %6, align 4
  %48 = add nsw i32 %47, 7
  store i32 %48, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %50

49:                                               ; preds = %41
  store i32 0, ptr %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %40
  %51 = load i32, ptr %3, align 4
  ret i32 %51
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
