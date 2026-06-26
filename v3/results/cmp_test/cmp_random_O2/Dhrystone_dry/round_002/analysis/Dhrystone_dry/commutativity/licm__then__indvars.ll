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
  br i1 false, label %15, label %16, !llvm.loop !7

16:                                               ; preds = %15
  store i32 100000000, ptr %10, align 4
  %17 = call i32 @clock()
  %18 = sub nsw i32 %17, %14
  store i32 %18, ptr %13, align 4
  %19 = call ptr @malloc(i64 noundef 56) #4
  store ptr %19, ptr @PtrGlbNext, align 8
  %20 = call ptr @malloc(i64 noundef 56) #4
  store ptr %20, ptr @PtrGlb, align 8
  %21 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %21, ptr %20, align 8
  %22 = load ptr, ptr @PtrGlb, align 8
  %23 = getelementptr inbounds nuw %struct.Record, ptr %22, i32 0, i32 1
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds nuw %struct.Record, ptr %22, i32 0, i32 2
  store i32 10001, ptr %24, align 4
  %25 = getelementptr inbounds nuw %struct.Record, ptr %22, i32 0, i32 3
  store i32 40, ptr %25, align 8
  %26 = getelementptr inbounds nuw %struct.Record, ptr %22, i32 0, i32 4
  %27 = call ptr @strcpy(ptr noundef %26, ptr noundef @.str) #5
  %28 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %29 = call i32 @clock()
  store i32 %29, ptr %11, align 4
  store i32 0, ptr %10, align 4
  br label %30

30:                                               ; preds = %70, %16
  %31 = phi i32 [ 0, %16 ], [ %77, %70 ]
  %32 = call i32 @Proc5()
  %33 = call i32 @Proc4()
  store i32 2, ptr %2, align 4
  %34 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.2) #5
  store i32 10000, ptr %7, align 4
  %35 = call i32 @Func2(ptr noundef %8, ptr noundef %9)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %2, align 4
  %39 = icmp slt i32 %.pre, 3
  br i1 %39, label %.lr.ph, label %48

.lr.ph:                                           ; preds = %30
  br label %40

40:                                               ; preds = %40, %.lr.ph
  %41 = phi i32 [ %.pre, %.lr.ph ], [ %46, %40 ]
  %42 = mul nsw i32 5, %41
  %43 = sub nsw i32 %42, 3
  store i32 %43, ptr %4, align 4
  %44 = call i32 @Proc7(i32 noundef %41, i32 noundef 3, ptr noundef %4)
  %45 = load i32, ptr %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %2, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %40, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %40
  %split = phi i32 [ %46, %40 ]
  br label %48

48:                                               ; preds = %._crit_edge, %30
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.pre, %30 ]
  %49 = load i32, ptr %4, align 4
  %50 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %49)
  %51 = load ptr, ptr @PtrGlb, align 8
  %52 = call i32 @Proc1(ptr noundef %51)
  %53 = load i8, ptr @Char2Glob, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 65, %54
  br i1 %55, label %.lr.ph2, label %70

.lr.ph2:                                          ; preds = %48
  br label %56

56:                                               ; preds = %64, %.lr.ph2
  %57 = phi i32 [ 65, %.lr.ph2 ], [ %66, %64 ]
  %58 = phi i8 [ 65, %.lr.ph2 ], [ %65, %64 ]
  %59 = load i32, ptr %7, align 4
  %60 = call i32 @Func1(i32 noundef %57, i32 noundef 67)
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %64

64:                                               ; preds = %62, %56
  %65 = add i8 %58, 1
  %66 = sext i8 %65 to i32
  %67 = load i8, ptr @Char2Glob, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %66, %68
  br i1 %69, label %56, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %64
  %.lcssa2 = phi i8 [ %65, %64 ]
  br label %70

70:                                               ; preds = %._crit_edge3, %48
  %.lcssa24 = phi i8 [ %.lcssa2, %._crit_edge3 ], [ 65, %48 ]
  %71 = load i32, ptr %2, align 4
  %72 = mul nsw i32 3, %71
  store i32 %72, ptr %4, align 4
  %73 = sub nsw i32 %72, 3
  %74 = mul nsw i32 7, %73
  %75 = sub nsw i32 %74, %71
  %76 = call i32 @Proc2(ptr noundef %2)
  %77 = add nuw nsw i32 %31, 1
  %exitcond = icmp ne i32 %77, 100000000
  br i1 %exitcond, label %30, label %78, !llvm.loop !11

78:                                               ; preds = %70
  %.lcssa24.lcssa = phi i8 [ %.lcssa24, %70 ]
  %.lcssa3 = phi i32 [ %75, %70 ]
  store i32 %.lcssa3, ptr %3, align 1
  store i8 %.lcssa24.lcssa, ptr %6, align 1
  store i32 100000000, ptr %10, align 1
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

10:                                               ; preds = %19, %1
  %11 = phi i32 [ %.promoted1, %1 ], [ %20, %19 ]
  %12 = phi i32 [ %.promoted, %1 ], [ %21, %19 ]
  %13 = phi i32 [ undef, %1 ], [ %22, %19 ]
  %14 = phi i32 [ %7, %1 ], [ %23, %19 ]
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
  br i1 %24, label %25, label %10

25:                                               ; preds = %19
  %.lcssa2 = phi i32 [ %20, %19 ]
  %.lcssa = phi i32 [ %21, %19 ]
  store i32 %.lcssa, ptr %4, align 1
  store i32 %.lcssa2, ptr %5, align 1
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
  %21 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %22 = sext i32 %2 to i64
  %23 = add nsw i64 %22, 5
  %24 = sext i32 %15 to i64
  br label %25

25:                                               ; preds = %25, %4
  %indvars.iv = phi i64 [ %indvars.iv.next, %25 ], [ %23, %4 ]
  %26 = getelementptr inbounds [51 x i32], ptr %21, i64 0, i64 %indvars.iv
  store i32 %12, ptr %26, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %27 = icmp sle i64 %indvars.iv.next, %24
  br i1 %27, label %25, label %28, !llvm.loop !12

28:                                               ; preds = %25
  %.lcssa.wide = phi i64 [ %indvars.iv.next, %25 ]
  %29 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %29, ptr %11, align 4
  %30 = getelementptr inbounds [51 x i32], ptr %1, i64 %13
  %31 = sub nsw i32 %12, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [51 x i32], ptr %30, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = load i32, ptr %14, align 4
  %37 = add nsw i32 %12, 20
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [51 x i32], ptr %1, i64 %38
  %40 = getelementptr inbounds [51 x i32], ptr %39, i64 0, i64 %13
  store i32 %36, ptr %40, align 4
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

8:                                                ; preds = %25, %2
  %9 = phi i32 [ %.promoted3, %2 ], [ %26, %25 ]
  %10 = phi i8 [ %.promoted, %2 ], [ %27, %25 ]
  %11 = phi i8 [ undef, %2 ], [ %29, %25 ]
  %12 = phi i32 [ 1, %2 ], [ %28, %25 ]
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %12, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 @Func1(i32 noundef %16, i32 noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %24, %8
  %26 = phi i32 [ %17, %24 ], [ %9, %8 ]
  %27 = phi i8 [ 65, %24 ], [ %10, %8 ]
  %28 = phi i32 [ %17, %24 ], [ %12, %8 ]
  %29 = phi i8 [ 65, %24 ], [ %11, %8 ]
  %30 = icmp sle i32 %28, 1
  br i1 %30, label %8, label %31, !llvm.loop !13

31:                                               ; preds = %25
  %.lcssa4 = phi i32 [ %26, %25 ]
  %.lcssa2 = phi i8 [ %27, %25 ]
  %.lcssa1 = phi i32 [ %28, %25 ]
  %.lcssa = phi i8 [ %29, %25 ]
  store i8 %.lcssa2, ptr %7, align 1
  store i32 %.lcssa4, ptr %6, align 1
  %32 = sext i8 %.lcssa to i32
  %33 = icmp sge i32 %32, 87
  %34 = icmp sle i32 %32, 90
  %or.cond = and i1 %33, %34
  br i1 %or.cond, label %35, label %36

35:                                               ; preds = %31
  store i32 7, ptr %6, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ 7, %35 ], [ %.lcssa1, %31 ]
  %38 = icmp eq i32 %32, 88
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, ptr %3, align 4
  br label %46

40:                                               ; preds = %36
  %41 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = add nsw i32 %37, 7
  store i32 %44, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %46

45:                                               ; preds = %40
  store i32 0, ptr %3, align 4
  br label %46

46:                                               ; preds = %45, %43, %39
  %47 = phi i32 [ 0, %45 ], [ 1, %43 ], [ 1, %39 ]
  ret i32 %47
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
