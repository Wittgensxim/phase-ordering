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
  br i1 true, label %.lr.ph, label %._crit_edge10

._crit_edge10:                                    ; preds = %0
  br label %17

.lr.ph:                                           ; preds = %0
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %14 = phi i32 [ 0, %.lr.ph ], [ %15, %13 ]
  %15 = add i32 %14, 1
  store i32 %15, ptr %9, align 4
  %16 = icmp ult i32 %15, 100000000
  br i1 %16, label %13, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %13
  br label %17

17:                                               ; preds = %._crit_edge10, %._crit_edge
  %18 = call i32 @clock()
  %19 = sub nsw i32 %18, %12
  store i32 %19, ptr %11, align 4
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
  %29 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %30 = call i32 @clock()
  store i32 %30, ptr %10, align 4
  store i32 0, ptr %9, align 4
  br i1 true, label %.lr.ph8, label %._crit_edge11

._crit_edge11:                                    ; preds = %17
  br label %81

.lr.ph8:                                          ; preds = %17
  br label %31

31:                                               ; preds = %.lr.ph8, %72
  %32 = phi i32 [ 0, %.lr.ph8 ], [ %79, %72 ]
  %33 = call i32 @Proc5()
  %34 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %35 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.2) #5
  store i32 10000, ptr %6, align 4
  %36 = call i32 @Func2(ptr noundef %7, ptr noundef %8)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, ptr @BoolGlob, align 4
  %40 = load i32, ptr %2, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %.lr.ph2, label %50

.lr.ph2:                                          ; preds = %31
  br label %42

42:                                               ; preds = %.lr.ph2, %42
  %43 = phi i32 [ %40, %.lr.ph2 ], [ %48, %42 ]
  %44 = mul nsw i32 5, %43
  %45 = sub nsw i32 %44, 3
  store i32 %45, ptr %4, align 4
  %46 = call i32 @Proc7(i32 noundef %43, i32 noundef 3, ptr noundef %4)
  %47 = load i32, ptr %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %2, align 4
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %42, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %42
  br label %50

50:                                               ; preds = %._crit_edge3, %31
  %.lcssa = phi i32 [ %48, %._crit_edge3 ], [ %40, %31 ]
  %51 = load i32, ptr %4, align 4
  %52 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %51)
  %53 = load ptr, ptr @PtrGlb, align 8
  %54 = call i32 @Proc1(ptr noundef %53)
  store i8 65, ptr %5, align 1
  %55 = load i8, ptr @Char2Glob, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 65, %56
  br i1 %57, label %.lr.ph5, label %72

.lr.ph5:                                          ; preds = %50
  br label %58

58:                                               ; preds = %.lr.ph5, %66
  %59 = phi i8 [ 65, %.lr.ph5 ], [ %67, %66 ]
  %60 = phi i32 [ 65, %.lr.ph5 ], [ %68, %66 ]
  %61 = load i32, ptr %6, align 4
  %62 = call i32 @Func1(i32 noundef %60, i32 noundef 67)
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 @Proc6(i32 noundef 0, ptr noundef %6)
  br label %66

66:                                               ; preds = %64, %58
  %67 = add i8 %59, 1
  store i8 %67, ptr %5, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, ptr @Char2Glob, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %68, %70
  br i1 %71, label %58, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %66
  br label %72

72:                                               ; preds = %._crit_edge6, %50
  %73 = load i32, ptr %2, align 4
  %74 = mul nsw i32 3, %73
  store i32 %74, ptr %4, align 4
  store i32 3, ptr %3, align 4
  %75 = sub nsw i32 %74, 3
  %76 = mul nsw i32 7, %75
  %77 = sub nsw i32 %76, %73
  store i32 %77, ptr %3, align 4
  %78 = call i32 @Proc2(ptr noundef %2)
  %79 = add i32 %32, 1
  store i32 %79, ptr %9, align 4
  %80 = icmp ult i32 %79, 100000000
  br i1 %80, label %31, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %72
  br label %81

81:                                               ; preds = %._crit_edge11, %._crit_edge9
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
  %9 = phi i32 [ %18, %17 ], [ undef, %1 ]
  %10 = phi i32 [ %19, %17 ], [ %7, %1 ]
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
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %4
  br label %28

.lr.ph:                                           ; preds = %4
  br label %21

21:                                               ; preds = %.lr.ph, %21
  %22 = phi i32 [ %12, %.lr.ph ], [ %26, %21 ]
  %23 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [51 x i32], ptr %23, i64 0, i64 %24
  store i32 %12, ptr %25, align 4
  %26 = add nsw i32 %22, 1
  store i32 %26, ptr %11, align 4
  %27 = icmp sle i32 %26, %15
  br i1 %27, label %21, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %21
  br label %28

28:                                               ; preds = %._crit_edge1, %._crit_edge
  %29 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %30 = sub nsw i32 %12, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [51 x i32], ptr %29, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %14, align 4
  %36 = add nsw i32 %12, 20
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [51 x i32], ptr %1, i64 %37
  %39 = getelementptr inbounds [51 x i32], ptr %38, i64 0, i64 %13
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
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %2
  br label %27

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %23
  %9 = phi i8 [ undef, %.lr.ph ], [ %24, %23 ]
  %10 = phi i32 [ 1, %.lr.ph ], [ %25, %23 ]
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
  %24 = phi i8 [ 65, %22 ], [ %9, %8 ]
  %25 = phi i32 [ %15, %22 ], [ %10, %8 ]
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %8, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %23
  br label %27

27:                                               ; preds = %._crit_edge1, %._crit_edge
  %28 = phi i32 [ 1, %._crit_edge1 ], [ %25, %._crit_edge ]
  %29 = phi i8 [ undef, %._crit_edge1 ], [ %24, %._crit_edge ]
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 87
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = icmp sle i32 %30, 90
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  store i32 7, ptr %6, align 4
  br label %35

35:                                               ; preds = %34, %32, %27
  %36 = phi i32 [ 7, %34 ], [ %28, %32 ], [ %28, %27 ]
  %37 = icmp eq i32 %30, 88
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, ptr %3, align 4
  br label %45

39:                                               ; preds = %35
  %40 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = add nsw i32 %36, 7
  store i32 %43, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %45

44:                                               ; preds = %39
  store i32 0, ptr %3, align 4
  br label %45

45:                                               ; preds = %44, %42, %38
  %46 = phi i32 [ 0, %44 ], [ 1, %42 ], [ 1, %38 ]
  ret i32 %46
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
