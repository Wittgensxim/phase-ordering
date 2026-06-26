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
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
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
  %.promoted = load i32, ptr %10, align 4
  br label %15

15:                                               ; preds = %17, %0
  br i1 false, label %16, label %18

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  br label %15, !llvm.loop !7

18:                                               ; preds = %15
  %umax = call i32 @llvm.umax.i32(i32 %.promoted, i32 100000000)
  store i32 %umax, ptr %10, align 4
  %19 = call i32 @clock()
  %20 = load i32, ptr %11, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, ptr %13, align 4
  %22 = call ptr @malloc(i64 noundef 56) #5
  store ptr %22, ptr @PtrGlbNext, align 8
  %23 = call ptr @malloc(i64 noundef 56) #5
  store ptr %23, ptr @PtrGlb, align 8
  %24 = load ptr, ptr @PtrGlbNext, align 8
  %25 = load ptr, ptr @PtrGlb, align 8
  %26 = getelementptr inbounds nuw %struct.Record, ptr %25, i32 0, i32 0
  store ptr %24, ptr %26, align 8
  %27 = load ptr, ptr @PtrGlb, align 8
  %28 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 1
  store i32 0, ptr %28, align 8
  %29 = load ptr, ptr @PtrGlb, align 8
  %30 = getelementptr inbounds nuw %struct.Record, ptr %29, i32 0, i32 2
  store i32 10001, ptr %30, align 4
  %31 = load ptr, ptr @PtrGlb, align 8
  %32 = getelementptr inbounds nuw %struct.Record, ptr %31, i32 0, i32 3
  store double 4.000000e+01, ptr %32, align 8
  %33 = load ptr, ptr @PtrGlb, align 8
  %34 = getelementptr inbounds nuw %struct.Record, ptr %33, i32 0, i32 4
  %35 = getelementptr inbounds [31 x i8], ptr %34, i64 0, i64 0
  %36 = call ptr @strcpy(ptr noundef %35, ptr noundef @.str.1) #6
  %37 = getelementptr inbounds [31 x i8], ptr %8, i64 0, i64 0
  %38 = call ptr @strcpy(ptr noundef %37, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %39 = call i32 @clock()
  store i32 %39, ptr %11, align 4
  store i32 0, ptr %10, align 4
  %40 = getelementptr inbounds [31 x i8], ptr %9, i64 0, i64 0
  %41 = getelementptr inbounds [31 x i8], ptr %8, i64 0, i64 0
  %42 = getelementptr inbounds [31 x i8], ptr %9, i64 0, i64 0
  %.promoted3 = load i32, ptr %10, align 4
  %.promoted5 = load double, ptr %3, align 8
  %.promoted7 = load i8, ptr %6, align 1
  %umax9 = call i32 @llvm.umax.i32(i32 %.promoted3, i32 100000000)
  br label %43

43:                                               ; preds = %99, %18
  %.lcssa28 = phi i8 [ %.lcssa2, %99 ], [ %.promoted7, %18 ]
  %44 = phi double [ %97, %99 ], [ %.promoted5, %18 ]
  %45 = phi i32 [ %100, %99 ], [ %.promoted3, %18 ]
  %exitcond = icmp ne i32 %45, %umax9
  br i1 %exitcond, label %46, label %101

46:                                               ; preds = %43
  %47 = call i32 @Proc5()
  %48 = call i32 @Proc4()
  store double 2.000000e+00, ptr %2, align 8
  %49 = call ptr @strcpy(ptr noundef %40, ptr noundef @.str.3) #6
  store i32 10000, ptr %7, align 4
  %50 = call i32 @Func2(ptr noundef %41, ptr noundef %42)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, ptr @BoolGlob, align 4
  %54 = fneg double 3.000000e+00
  br label %55

55:                                               ; preds = %58, %46
  %56 = load double, ptr %2, align 8
  %57 = fcmp olt double %56, 3.000000e+00
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load double, ptr %2, align 8
  %60 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %59, double %54)
  store double %60, ptr %4, align 8
  %61 = load double, ptr %2, align 8
  %62 = call i32 @Proc7(double noundef %61, double noundef 3.000000e+00, ptr noundef %4)
  %63 = load double, ptr %2, align 8
  %64 = fadd double %63, 1.000000e+00
  store double %64, ptr %2, align 8
  br label %55, !llvm.loop !9

65:                                               ; preds = %55
  %66 = load double, ptr %2, align 8
  %67 = load double, ptr %4, align 8
  %68 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %66, double noundef %67)
  %69 = load ptr, ptr @PtrGlb, align 8
  %70 = call i32 @Proc1(ptr noundef %69)
  br label %71

71:                                               ; preds = %85, %65
  %72 = phi i8 [ %86, %85 ], [ 65, %65 ]
  %73 = sext i8 %72 to i32
  %74 = load i8, ptr @Char2Glob, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %73, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load i32, ptr %7, align 4
  %79 = sext i8 %72 to i32
  %80 = call i32 @Func1(i32 noundef %79, i32 noundef 67)
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %84

84:                                               ; preds = %82, %77
  br label %85

85:                                               ; preds = %84
  %86 = add i8 %72, 1
  br label %71, !llvm.loop !10

87:                                               ; preds = %71
  %.lcssa2 = phi i8 [ %72, %71 ]
  %88 = load double, ptr %2, align 8
  %89 = fmul double 3.000000e+00, %88
  store double %89, ptr %4, align 8
  %90 = load double, ptr %4, align 8
  %91 = load double, ptr %2, align 8
  %92 = fdiv double %90, %91
  %93 = load double, ptr %4, align 8
  %94 = fsub double %93, %92
  %95 = load double, ptr %2, align 8
  %96 = fneg double %95
  %97 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %94, double %96)
  %98 = call i32 @Proc2(ptr noundef %2)
  br label %99

99:                                               ; preds = %87
  %100 = add nuw nsw i32 %45, 1
  br label %43, !llvm.loop !11

101:                                              ; preds = %43
  %.lcssa28.lcssa = phi i8 [ %.lcssa28, %43 ]
  %.lcssa6 = phi double [ %44, %43 ]
  store i32 %umax9, ptr %10, align 4
  store double %.lcssa6, ptr %3, align 8
  store i8 %.lcssa28.lcssa, ptr %6, align 1
  %102 = load i32, ptr %1, align 4
  ret i32 %102
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
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %struct.Record, ptr %4, i32 0, i32 3
  store double 5.000000e+00, ptr %5, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.Record, ptr %6, i32 0, i32 3
  %8 = load double, ptr %7, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw %struct.Record, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 3
  store double %8, ptr %12, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct.Record, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds nuw %struct.Record, ptr %18, i32 0, i32 0
  store ptr %15, ptr %19, align 8
  %20 = load i32, ptr %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load double, ptr %6, align 8
  %8 = fadd double %7, 1.000000e+01
  store double %8, ptr %4, align 8
  %9 = load i8, ptr @Char1Glob, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 65
  %12 = load ptr, ptr %3, align 8
  %.promoted = load double, ptr %4, align 8
  %.promoted1 = load i32, ptr %5, align 4
  br label %13

13:                                               ; preds = %25, %1
  %14 = phi i32 [ %21, %25 ], [ %.promoted1, %1 ]
  %15 = phi double [ %22, %25 ], [ %.promoted, %1 ]
  br i1 %11, label %16, label %20

16:                                               ; preds = %13
  %17 = fadd double %15, -1.000000e+00
  %18 = load double, ptr @IntGlob, align 8
  %19 = fsub double %17, %18
  store double %19, ptr %12, align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ 0, %16 ], [ %14, %13 ]
  %22 = phi double [ %17, %16 ], [ %15, %13 ]
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  %.lcssa2 = phi i32 [ %21, %20 ]
  %.lcssa = phi double [ %22, %20 ]
  store double %.lcssa, ptr %4, align 8
  store i32 %.lcssa2, ptr %5, align 4
  br label %26

25:                                               ; preds = %20
  br label %13

26:                                               ; preds = %24
  %27 = load i32, ptr %2, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr @PtrGlb, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr @PtrGlb, align 8
  %8 = getelementptr inbounds nuw %struct.Record, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  br label %12

11:                                               ; preds = %1
  store double 1.000000e+02, ptr @IntGlob, align 8
  br label %12

12:                                               ; preds = %11, %6
  %13 = load double, ptr @IntGlob, align 8
  %14 = load ptr, ptr @PtrGlb, align 8
  %15 = getelementptr inbounds nuw %struct.Record, ptr %14, i32 0, i32 3
  %16 = call i32 @Proc7(i32 noundef 10, double noundef %13, ptr noundef %15)
  %17 = load i32, ptr %2, align 4
  ret i32 %17
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
  %8 = load i32, ptr %2, align 4
  %9 = or i32 %8, %7
  store i32 %9, ptr %2, align 4
  store i8 66, ptr @Char2Glob, align 1
  %10 = load i32, ptr %1, align 4
  ret i32 %10
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
  %7 = load ptr, ptr %5, align 8
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %4, align 4
  %9 = call i32 @Func3(i32 noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store i32 10002, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, ptr %4, align 4
  switch i32 %14, label %30 [
    i32 0, label %15
    i32 10000, label %17
    i32 10001, label %25
    i32 10002, label %27
    i32 10003, label %28
  ]

15:                                               ; preds = %13
  %16 = load ptr, ptr %5, align 8
  store i32 0, ptr %16, align 4
  br label %30

17:                                               ; preds = %13
  %18 = load double, ptr @IntGlob, align 8
  %19 = fcmp ogt double %18, 1.000000e+02
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8
  store i32 0, ptr %21, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8
  store i32 10002, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %30

25:                                               ; preds = %13
  %26 = load ptr, ptr %5, align 8
  store i32 10000, ptr %26, align 4
  br label %30

27:                                               ; preds = %13
  br label %30

28:                                               ; preds = %13
  %29 = load ptr, ptr %5, align 8
  store i32 10001, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %27, %25, %24, %15, %13
  %31 = load i32, ptr %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc7(double noundef %0, double noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store double %0, ptr %5, align 8
  store double %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %9 = load double, ptr %5, align 8
  %10 = fadd double %9, 2.000000e+00
  store double %10, ptr %8, align 8
  %11 = load double, ptr %6, align 8
  %12 = load double, ptr %8, align 8
  %13 = fadd double %11, %12
  %14 = load ptr, ptr %7, align 8
  store double %13, ptr %14, align 8
  %15 = load i32, ptr %4, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store double %2, ptr %8, align 8
  store double %3, ptr %9, align 8
  %12 = load double, ptr %8, align 8
  %13 = fadd double %12, 5.000000e+00
  store double %13, ptr %10, align 8
  %14 = load double, ptr %9, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load double, ptr %10, align 8
  %17 = fptosi double %16 to i32
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, ptr %15, i64 %18
  store double %14, ptr %19, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = load double, ptr %10, align 8
  %22 = fptosi double %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, ptr %20, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load double, ptr %10, align 8
  %28 = fptosi double %27 to i32
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, ptr %26, i64 %30
  store double %25, ptr %31, align 8
  %32 = load double, ptr %10, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load double, ptr %10, align 8
  %35 = fptosi double %34 to i32
  %36 = add nsw i32 %35, 30
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, ptr %33, i64 %37
  store double %32, ptr %38, align 8
  %39 = load double, ptr %10, align 8
  store double %39, ptr %11, align 8
  %40 = load double, ptr %10, align 8
  %41 = fadd double %40, 1.000000e+00
  %42 = load double, ptr %10, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = load double, ptr %10, align 8
  %45 = fptosi double %44 to i32
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [51 x double], ptr %43, i64 %46
  %.promoted = load double, ptr %11, align 8
  br label %48

48:                                               ; preds = %55, %4
  %49 = phi double [ %56, %55 ], [ %.promoted, %4 ]
  %50 = fcmp ole double %49, %41
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = fptosi double %49 to i32
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [51 x double], ptr %47, i64 0, i64 %53
  store double %42, ptr %54, align 8
  br label %55

55:                                               ; preds = %51
  %56 = fadd double %49, 1.000000e+00
  br label %48, !llvm.loop !12

57:                                               ; preds = %48
  %.lcssa = phi double [ %49, %48 ]
  store double %.lcssa, ptr %11, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = load double, ptr %10, align 8
  %60 = fptosi double %59 to i32
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [51 x double], ptr %58, i64 %61
  %63 = load double, ptr %10, align 8
  %64 = fptosi double %63 to i32
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [51 x double], ptr %62, i64 0, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = fadd double %68, 1.000000e+00
  store double %69, ptr %67, align 8
  %70 = load ptr, ptr %6, align 8
  %71 = load double, ptr %10, align 8
  %72 = fptosi double %71 to i32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, ptr %70, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = load ptr, ptr %7, align 8
  %77 = load double, ptr %10, align 8
  %78 = fptosi double %77 to i32
  %79 = add nsw i32 %78, 20
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [51 x double], ptr %76, i64 %80
  %82 = load double, ptr %10, align 8
  %83 = fptosi double %82 to i32
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [51 x double], ptr %81, i64 0, i64 %84
  store double %75, ptr %85, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
  %86 = load i32, ptr %5, align 4
  ret i32 %86
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
  %11 = load i8, ptr %6, align 1
  store i8 %11, ptr %7, align 1
  %12 = load i8, ptr %7, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, ptr %5, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br label %19

18:                                               ; preds = %2
  store i32 10000, ptr %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, ptr %3, align 4
  ret i32 %20
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
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %.promoted = load double, ptr %6, align 8
  %.promoted1 = load i8, ptr %7, align 1
  br label %10

10:                                               ; preds = %30, %2
  %11 = phi i8 [ %31, %30 ], [ %.promoted1, %2 ]
  %12 = phi double [ %32, %30 ], [ %.promoted, %2 ]
  %13 = fcmp ole double %12, 1.000000e+00
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = fptosi double %12 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %8, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = fptosi double %12 to i32
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %9, i64 %22
  %24 = load i8, ptr %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 @Func1(i32 noundef %19, i32 noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = fadd double %12, 1.000000e+00
  br label %30

30:                                               ; preds = %28, %14
  %31 = phi i8 [ 65, %28 ], [ %11, %14 ]
  %32 = phi double [ %29, %28 ], [ %12, %14 ]
  br label %10, !llvm.loop !13

33:                                               ; preds = %10
  %.lcssa2 = phi i8 [ %11, %10 ]
  %.lcssa = phi double [ %12, %10 ]
  store double %.lcssa, ptr %6, align 8
  store i8 %.lcssa2, ptr %7, align 1
  %34 = load i8, ptr %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 87
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8, ptr %7, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 90
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store double 7.000000e+00, ptr %6, align 8
  br label %42

42:                                               ; preds = %41, %37, %33
  %43 = load i8, ptr %7, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 88
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, ptr %3, align 4
  br label %56

47:                                               ; preds = %42
  %48 = load ptr, ptr %4, align 8
  %49 = load ptr, ptr %5, align 8
  %50 = call i32 @strcmp(ptr noundef %48, ptr noundef %49) #6
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load double, ptr %6, align 8
  %54 = fadd double %53, 7.000000e+00
  store double %54, ptr %6, align 8
  store i32 1, ptr %3, align 4
  br label %56

55:                                               ; preds = %47
  store i32 0, ptr %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %46
  %57 = load i32, ptr %3, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %5 = load i32, ptr %3, align 4
  store i32 %5, ptr %4, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %6, 10001
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %10

9:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, ptr %2, align 4
  ret i32 %11
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

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
