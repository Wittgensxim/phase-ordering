; ModuleID = 'results\paper_full\Dhrystone_fldry\Dhrystone_fldry.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/fldry.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.Record = type { ptr, i32, i32, double, [31 x i8] }

@Version = dso_local global [4 x i8] c"1.1\00", align 1
@.str = private unnamed_addr constant [53 x i8] c"calculate floating dhrystones using doubles size %d\0A\00", align 1
@PtrGlbNext = dso_local global ptr null, align 8
@PtrGlb = dso_local global ptr null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Array2Glob = dso_local global [51 x [51 x double]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@BoolGlob = dso_local global i32 0, align 4
@Array1Glob = dso_local global [51 x double] zeroinitializer, align 16
@Char2Glob = dso_local global i8 0, align 1
@Char1Glob = dso_local global i8 0, align 1
@IntGlob = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef 8)
  %7 = call i32 @Proc0()
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
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
  %20 = call ptr @malloc(i64 noundef 56) #5
  store ptr %20, ptr @PtrGlbNext, align 8
  %21 = call ptr @malloc(i64 noundef 56) #5
  store ptr %21, ptr @PtrGlb, align 8
  %22 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %22, ptr %21, align 8
  %23 = load ptr, ptr @PtrGlb, align 8
  %24 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 1
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 2
  store i32 10001, ptr %25, align 4
  %26 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 3
  store double 4.000000e+01, ptr %26, align 8
  %27 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 4
  %28 = call ptr @strcpy(ptr noundef %27, ptr noundef @.str.1) #6
  %29 = call ptr @strcpy(ptr noundef %6, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %30 = call i32 @clock()
  store i32 %30, ptr %9, align 4
  store i32 0, ptr %8, align 4
  br label %31

31:                                               ; preds = %69, %17
  %32 = phi i32 [ %77, %69 ], [ 0, %17 ]
  %33 = icmp ult i32 %32, 100000000
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = call i32 @Proc5()
  %36 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  store double 3.000000e+00, ptr %2, align 8
  %37 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.3) #6
  store i32 10000, ptr %5, align 4
  %38 = call i32 @Func2(ptr noundef %6, ptr noundef %7)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, ptr @BoolGlob, align 4
  %.pre = load double, ptr %1, align 8
  br label %42

42:                                               ; preds = %45, %34
  %43 = phi double [ %49, %45 ], [ %.pre, %34 ]
  %44 = fcmp olt double %43, 3.000000e+00
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %43, double -3.000000e+00)
  store double %46, ptr %3, align 8
  %47 = call i32 @Proc7(double noundef %43, double noundef 3.000000e+00, ptr noundef %3)
  %48 = load double, ptr %1, align 8
  %49 = fadd double %48, 1.000000e+00
  store double %49, ptr %1, align 8
  br label %42, !llvm.loop !9

50:                                               ; preds = %42
  %51 = load double, ptr %3, align 8
  %52 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %43, double noundef %51)
  %53 = load ptr, ptr @PtrGlb, align 8
  %54 = call i32 @Proc1(ptr noundef %53)
  store i8 65, ptr %4, align 1
  br label %55

55:                                               ; preds = %67, %50
  %56 = phi i8 [ %68, %67 ], [ 65, %50 ]
  %57 = sext i8 %56 to i32
  %58 = load i8, ptr @Char2Glob, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load i32, ptr %5, align 4
  %63 = call i32 @Func1(i32 noundef %57, i32 noundef 67)
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @Proc6(i32 noundef 0, ptr noundef %5)
  br label %67

67:                                               ; preds = %65, %61
  %68 = add i8 %56, 1
  store i8 %68, ptr %4, align 1
  br label %55, !llvm.loop !10

69:                                               ; preds = %55
  %70 = load double, ptr %1, align 8
  %71 = fmul double 3.000000e+00, %70
  store double %71, ptr %3, align 8
  %72 = fdiv double %71, %70
  %73 = fsub double %71, %72
  %74 = fneg double %70
  %75 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %73, double %74)
  store double %75, ptr %2, align 8
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 3
  store double 5.000000e+00, ptr %3, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds nuw %struct.Record, ptr %4, i32 0, i32 3
  store double 5.000000e+00, ptr %5, align 8
  %6 = load ptr, ptr %0, align 8
  store ptr %6, ptr %6, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load double, ptr %0, align 8
  %6 = fadd double %5, 1.000000e+01
  store double %6, ptr %3, align 8
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %7

7:                                                ; preds = %21, %1
  %8 = phi i32 [ %17, %21 ], [ undef, %1 ]
  %9 = phi double [ %18, %21 ], [ %6, %1 ]
  %10 = sext i8 %.pre to i32
  %11 = icmp eq i32 %10, 65
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = fadd double %9, -1.000000e+00
  store double %13, ptr %3, align 8
  %14 = load double, ptr @IntGlob, align 8
  %15 = fsub double %13, %14
  store double %15, ptr %0, align 8
  store i32 0, ptr %4, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i32 [ 0, %12 ], [ %8, %7 ]
  %18 = phi double [ %13, %12 ], [ %9, %7 ]
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
  %.pre = load double, ptr @IntGlob, align 8
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  br label %9

8:                                                ; preds = %1
  store double 1.000000e+02, ptr @IntGlob, align 8
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi ptr [ null, %8 ], [ %.pre1, %6 ]
  %11 = phi double [ 1.000000e+02, %8 ], [ %.pre, %6 ]
  %12 = getelementptr inbounds nuw %struct.Record, ptr %10, i32 0, i32 3
  %13 = call i32 @Proc7(i32 noundef 10, double noundef %11, ptr noundef %12)
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
  %11 = load double, ptr @IntGlob, align 8
  %12 = fcmp ogt double %11, 1.000000e+02
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
define dso_local i32 @Proc7(double noundef %0, double noundef %1, ptr noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  store double %0, ptr %4, align 8
  store double %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = fadd double %0, 2.000000e+00
  store double %8, ptr %7, align 8
  %9 = fadd double %1, %8
  store double %9, ptr %2, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store double %2, ptr %7, align 8
  store double %3, ptr %8, align 8
  %11 = fadd double %2, 5.000000e+00
  store double %11, ptr %9, align 8
  %12 = fptosi double %11 to i32
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  store double %3, ptr %14, align 8
  %15 = add nsw i32 %12, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  store double %3, ptr %17, align 8
  %18 = add nsw i32 %12, 30
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  store double %11, ptr %20, align 8
  store double %11, ptr %10, align 8
  br label %21

21:                                               ; preds = %25, %4
  %22 = phi double [ %30, %25 ], [ %11, %4 ]
  %23 = fadd double %11, 1.000000e+00
  %24 = fcmp ole double %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds [51 x double], ptr %1, i64 %13
  %27 = fptosi double %22 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [51 x double], ptr %26, i64 0, i64 %28
  store double %11, ptr %29, align 8
  %30 = fadd double %22, 1.000000e+00
  store double %30, ptr %10, align 8
  br label %21, !llvm.loop !12

31:                                               ; preds = %21
  %32 = getelementptr inbounds [51 x double], ptr %1, i64 %13
  %33 = sub nsw i32 %12, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [51 x double], ptr %32, i64 0, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = fadd double %36, 1.000000e+00
  store double %37, ptr %35, align 8
  %38 = load double, ptr %14, align 8
  %39 = add nsw i32 %12, 20
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [51 x double], ptr %1, i64 %40
  %42 = getelementptr inbounds [51 x double], ptr %41, i64 0, i64 %13
  store double %38, ptr %42, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
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
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store double 1.000000e+00, ptr %6, align 8
  br label %8

8:                                                ; preds = %27, %2
  %9 = phi double [ %28, %27 ], [ 1.000000e+00, %2 ]
  %10 = phi i8 [ %29, %27 ], [ undef, %2 ]
  %11 = fcmp ole double %9, 1.000000e+00
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = fptosi double %9 to i32
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = sext i8 %16 to i32
  %18 = add nsw i32 %13, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 @Func1(i32 noundef %17, i32 noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  store i8 65, ptr %7, align 1
  %26 = fadd double %9, 1.000000e+00
  store double %26, ptr %6, align 8
  br label %27

27:                                               ; preds = %25, %12
  %28 = phi double [ %26, %25 ], [ %9, %12 ]
  %29 = phi i8 [ 65, %25 ], [ %10, %12 ]
  br label %8, !llvm.loop !13

30:                                               ; preds = %8
  %31 = sext i8 %10 to i32
  %32 = icmp sge i32 %31, 87
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = icmp sle i32 %31, 90
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  store double 7.000000e+00, ptr %6, align 8
  br label %36

36:                                               ; preds = %35, %33, %30
  %37 = phi double [ 7.000000e+00, %35 ], [ %9, %33 ], [ %9, %30 ]
  %38 = icmp eq i32 %31, 88
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, ptr %3, align 4
  br label %46

40:                                               ; preds = %36
  %41 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = fadd double %37, 7.000000e+00
  store double %44, ptr %6, align 8
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
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/fldry.c", directory: "E:/Phase Ordering/v3")
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
