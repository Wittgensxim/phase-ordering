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
  %6 = alloca i32, align 4
  %7 = alloca [31 x i8], align 16
  %8 = alloca [31 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = call i32 @clock()
  store i32 %12, ptr %10, align 4
  store i32 0, ptr %9, align 4
  br label %13

13:                                               ; preds = %17, %0
  %14 = load i32, ptr %9, align 4
  %15 = icmp ult i32 %14, 100000000
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %14, 1
  store i32 %18, ptr %9, align 4
  br label %13, !llvm.loop !7

19:                                               ; preds = %13
  %20 = call i32 @clock()
  %21 = load i32, ptr %10, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, ptr %11, align 4
  %23 = call ptr @malloc(i64 noundef 56) #5
  store ptr %23, ptr @PtrGlbNext, align 8
  %24 = call ptr @malloc(i64 noundef 56) #5
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
  store double 4.000000e+01, ptr %31, align 8
  %32 = load ptr, ptr @PtrGlb, align 8
  %33 = getelementptr inbounds nuw %struct.Record, ptr %32, i32 0, i32 4
  %34 = call ptr @strcpy(ptr noundef %33, ptr noundef @.str.1) #6
  %35 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %36 = call i32 @clock()
  store i32 %36, ptr %10, align 4
  store i32 0, ptr %9, align 4
  br label %37

37:                                               ; preds = %93, %19
  %38 = load i32, ptr %9, align 4
  %39 = icmp ult i32 %38, 100000000
  br i1 %39, label %40, label %96

40:                                               ; preds = %37
  %41 = call i32 @Proc5()
  %42 = call i32 @Proc4()
  store double 2.000000e+00, ptr %2, align 8
  store double 3.000000e+00, ptr %3, align 8
  %43 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.3) #6
  store i32 10000, ptr %6, align 4
  %44 = call i32 @Func2(ptr noundef %7, ptr noundef %8)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, ptr @BoolGlob, align 4
  br label %48

48:                                               ; preds = %52, %40
  %49 = load double, ptr %2, align 8
  %50 = load double, ptr %3, align 8
  %51 = fcmp olt double %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = fneg double %50
  %54 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %49, double %53)
  store double %54, ptr %4, align 8
  %55 = load double, ptr %2, align 8
  %56 = load double, ptr %3, align 8
  %57 = call i32 @Proc7(double noundef %55, double noundef %56, ptr noundef %4)
  %58 = load double, ptr %2, align 8
  %59 = fadd double %58, 1.000000e+00
  store double %59, ptr %2, align 8
  br label %48, !llvm.loop !9

60:                                               ; preds = %48
  %61 = load double, ptr %4, align 8
  %62 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %49, double noundef %61)
  %63 = load ptr, ptr @PtrGlb, align 8
  %64 = call i32 @Proc1(ptr noundef %63)
  store i8 65, ptr %5, align 1
  br label %65

65:                                               ; preds = %78, %60
  %66 = load i8, ptr %5, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8, ptr @Char2Glob, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sle i32 %67, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i32, ptr %6, align 4
  %73 = call i32 @Func1(i32 noundef %67, i32 noundef 67)
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @Proc6(i32 noundef 0, ptr noundef %6)
  br label %77

77:                                               ; preds = %75, %71
  br label %78

78:                                               ; preds = %77
  %79 = load i8, ptr %5, align 1
  %80 = add i8 %79, 1
  store i8 %80, ptr %5, align 1
  br label %65, !llvm.loop !10

81:                                               ; preds = %65
  %82 = load double, ptr %3, align 8
  %83 = load double, ptr %2, align 8
  %84 = fmul double %82, %83
  store double %84, ptr %4, align 8
  %85 = load double, ptr %2, align 8
  %86 = fdiv double %84, %85
  store double %86, ptr %3, align 8
  %87 = load double, ptr %4, align 8
  %88 = fsub double %87, %86
  %89 = load double, ptr %2, align 8
  %90 = fneg double %89
  %91 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %88, double %90)
  store double %91, ptr %3, align 8
  %92 = call i32 @Proc2(ptr noundef %2)
  br label %93

93:                                               ; preds = %81
  %94 = load i32, ptr %9, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %9, align 4
  br label %37, !llvm.loop !11

96:                                               ; preds = %37
  %97 = load i32, ptr %1, align 4
  ret i32 %97
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
  %4 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 3
  store double 5.000000e+00, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %struct.Record, ptr %5, i32 0, i32 3
  %7 = load double, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds nuw %struct.Record, ptr %8, i32 0, i32 3
  store double %7, ptr %9, align 8
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
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %6 = load double, ptr %0, align 8
  %7 = fadd double %6, 1.000000e+01
  store double %7, ptr %4, align 8
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i8, ptr @Char1Glob, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 65
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load double, ptr %4, align 8
  %14 = fadd double %13, -1.000000e+00
  store double %14, ptr %4, align 8
  %15 = load double, ptr @IntGlob, align 8
  %16 = fsub double %14, %15
  %17 = load ptr, ptr %3, align 8
  store double %16, ptr %17, align 8
  store i32 0, ptr %5, align 4
  br label %18

18:                                               ; preds = %12, %8
  %19 = load i32, ptr %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %23

22:                                               ; preds = %18
  br label %8

23:                                               ; preds = %21
  %24 = load i32, ptr %2, align 4
  ret i32 %24
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
  store double 1.000000e+02, ptr @IntGlob, align 8
  br label %9

9:                                                ; preds = %8, %6
  %10 = load double, ptr @IntGlob, align 8
  %11 = load ptr, ptr @PtrGlb, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 3
  %13 = call i32 @Proc7(i32 noundef 10, double noundef %10, ptr noundef %12)
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
  %17 = load double, ptr @IntGlob, align 8
  %18 = fcmp ogt double %17, 1.000000e+02
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
  %12 = fadd double %11, %10
  %13 = load ptr, ptr %7, align 8
  store double %12, ptr %13, align 8
  %14 = load i32, ptr %4, align 4
  ret i32 %14
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
  %16 = fptosi double %13 to i32
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, ptr %15, i64 %17
  store double %14, ptr %18, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = load double, ptr %10, align 8
  %21 = fptosi double %20 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %19, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = add nsw i32 %21, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %19, i64 %26
  store double %24, ptr %27, align 8
  %28 = load double, ptr %10, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = fptosi double %28 to i32
  %31 = add nsw i32 %30, 30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, ptr %29, i64 %32
  store double %28, ptr %33, align 8
  %34 = load double, ptr %10, align 8
  store double %34, ptr %11, align 8
  br label %35

35:                                               ; preds = %48, %4
  %36 = load double, ptr %11, align 8
  %37 = load double, ptr %10, align 8
  %38 = fadd double %37, 1.000000e+00
  %39 = fcmp ole double %36, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load ptr, ptr %7, align 8
  %42 = fptosi double %37 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [51 x double], ptr %41, i64 %43
  %45 = fptosi double %36 to i32
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [51 x double], ptr %44, i64 0, i64 %46
  store double %37, ptr %47, align 8
  br label %48

48:                                               ; preds = %40
  %49 = load double, ptr %11, align 8
  %50 = fadd double %49, 1.000000e+00
  store double %50, ptr %11, align 8
  br label %35, !llvm.loop !12

51:                                               ; preds = %35
  %52 = load ptr, ptr %7, align 8
  %53 = fptosi double %37 to i32
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [51 x double], ptr %52, i64 %54
  %56 = sub nsw i32 %53, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [51 x double], ptr %55, i64 0, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = fadd double %59, 1.000000e+00
  store double %60, ptr %58, align 8
  %61 = load ptr, ptr %6, align 8
  %62 = load double, ptr %10, align 8
  %63 = fptosi double %62 to i32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, ptr %61, i64 %64
  %66 = load double, ptr %65, align 8
  %67 = load ptr, ptr %7, align 8
  %68 = add nsw i32 %63, 20
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [51 x double], ptr %67, i64 %69
  %71 = getelementptr inbounds [51 x double], ptr %70, i64 0, i64 %64
  store double %66, ptr %71, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
  %72 = load i32, ptr %5, align 4
  ret i32 %72
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
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store double 1.000000e+00, ptr %6, align 8
  br label %8

8:                                                ; preds = %29, %2
  %9 = load double, ptr %6, align 8
  %10 = fcmp ole double %9, 1.000000e+00
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8
  %13 = fptosi double %9 to i32
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load ptr, ptr %5, align 8
  %19 = add nsw i32 %13, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = load i8, ptr %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 @Func1(i32 noundef %17, i32 noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  store i8 65, ptr %7, align 1
  %27 = load double, ptr %6, align 8
  %28 = fadd double %27, 1.000000e+00
  store double %28, ptr %6, align 8
  br label %29

29:                                               ; preds = %26, %11
  br label %8, !llvm.loop !13

30:                                               ; preds = %8
  %31 = load i8, ptr %7, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 87
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = icmp sle i32 %32, 90
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  store double 7.000000e+00, ptr %6, align 8
  br label %37

37:                                               ; preds = %36, %34, %30
  %38 = load i8, ptr %7, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 88
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, ptr %3, align 4
  br label %51

42:                                               ; preds = %37
  %43 = load ptr, ptr %4, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = call i32 @strcmp(ptr noundef %43, ptr noundef %44) #6
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load double, ptr %6, align 8
  %49 = fadd double %48, 7.000000e+00
  store double %49, ptr %6, align 8
  store i32 1, ptr %3, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, ptr %3, align 4
  br label %51

51:                                               ; preds = %50, %47, %41
  %52 = load i32, ptr %3, align 4
  ret i32 %52
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
