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
  br label %15

15:                                               ; preds = %18, %0
  %16 = load i32, ptr %10, align 4
  %17 = icmp ult i32 %16, 100000000
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, ptr %10, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %10, align 4
  br label %15, !llvm.loop !7

21:                                               ; preds = %15
  %22 = call i32 @clock()
  %23 = load i32, ptr %11, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, ptr %13, align 4
  %25 = call ptr @malloc(i64 noundef 56) #5
  store ptr %25, ptr @PtrGlbNext, align 8
  %26 = call ptr @malloc(i64 noundef 56) #5
  store ptr %26, ptr @PtrGlb, align 8
  %27 = load ptr, ptr @PtrGlbNext, align 8
  %28 = load ptr, ptr @PtrGlb, align 8
  %29 = getelementptr inbounds nuw %struct.Record, ptr %28, i32 0, i32 0
  store ptr %27, ptr %29, align 8
  %30 = load ptr, ptr @PtrGlb, align 8
  %31 = getelementptr inbounds nuw %struct.Record, ptr %30, i32 0, i32 1
  store i32 0, ptr %31, align 8
  %32 = load ptr, ptr @PtrGlb, align 8
  %33 = getelementptr inbounds nuw %struct.Record, ptr %32, i32 0, i32 2
  store i32 10001, ptr %33, align 4
  %34 = load ptr, ptr @PtrGlb, align 8
  %35 = getelementptr inbounds nuw %struct.Record, ptr %34, i32 0, i32 3
  store double 4.000000e+01, ptr %35, align 8
  %36 = load ptr, ptr @PtrGlb, align 8
  %37 = getelementptr inbounds nuw %struct.Record, ptr %36, i32 0, i32 4
  %38 = getelementptr inbounds nuw [31 x i8], ptr %37, i64 0, i64 0
  %39 = call ptr @strcpy(ptr noundef %38, ptr noundef @.str.1) #6
  %40 = getelementptr inbounds nuw [31 x i8], ptr %8, i64 0, i64 0
  %41 = call ptr @strcpy(ptr noundef %40, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %42 = call i32 @clock()
  store i32 %42, ptr %11, align 4
  store i32 0, ptr %10, align 4
  br label %43

43:                                               ; preds = %94, %21
  %44 = load i32, ptr %10, align 4
  %45 = icmp ult i32 %44, 100000000
  br i1 %45, label %46, label %110

46:                                               ; preds = %43
  %47 = call i32 @Proc5()
  %48 = call i32 @Proc4()
  store double 2.000000e+00, ptr %2, align 8
  store double 3.000000e+00, ptr %3, align 8
  %49 = getelementptr inbounds nuw [31 x i8], ptr %9, i64 0, i64 0
  %50 = call ptr @strcpy(ptr noundef %49, ptr noundef @.str.3) #6
  store i32 10000, ptr %7, align 4
  %51 = getelementptr inbounds nuw [31 x i8], ptr %8, i64 0, i64 0
  %52 = getelementptr inbounds nuw [31 x i8], ptr %9, i64 0, i64 0
  %53 = call i32 @Func2(ptr noundef %51, ptr noundef %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, ptr @BoolGlob, align 4
  br label %57

57:                                               ; preds = %61, %46
  %58 = load double, ptr %2, align 8
  %59 = load double, ptr %3, align 8
  %60 = fcmp olt double %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load double, ptr %2, align 8
  %63 = load double, ptr %3, align 8
  %64 = fneg double %63
  %65 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %62, double %64)
  store double %65, ptr %4, align 8
  %66 = load double, ptr %2, align 8
  %67 = load double, ptr %3, align 8
  %68 = call i32 @Proc7(double noundef %66, double noundef %67, ptr noundef %4)
  %69 = load double, ptr %2, align 8
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %2, align 8
  br label %57, !llvm.loop !9

71:                                               ; preds = %57
  %72 = load double, ptr %2, align 8
  %73 = load double, ptr %4, align 8
  %74 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %72, double noundef %73)
  %75 = load ptr, ptr @PtrGlb, align 8
  %76 = call i32 @Proc1(ptr noundef %75)
  store i8 65, ptr %6, align 1
  br label %77

77:                                               ; preds = %91, %71
  %78 = load i8, ptr %6, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, ptr @Char2Glob, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sle i32 %79, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load i32, ptr %7, align 4
  %85 = load i8, ptr %6, align 1
  %86 = sext i8 %85 to i32
  %87 = call i32 @Func1(i32 noundef %86, i32 noundef 67)
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %91

91:                                               ; preds = %83, %89
  %92 = load i8, ptr %6, align 1
  %93 = add i8 %92, 1
  store i8 %93, ptr %6, align 1
  br label %77, !llvm.loop !10

94:                                               ; preds = %77
  %95 = load double, ptr %3, align 8
  %96 = load double, ptr %2, align 8
  %97 = fmul double %95, %96
  store double %97, ptr %4, align 8
  %98 = load double, ptr %4, align 8
  %99 = load double, ptr %2, align 8
  %100 = fdiv double %98, %99
  store double %100, ptr %3, align 8
  %101 = load double, ptr %4, align 8
  %102 = load double, ptr %3, align 8
  %103 = fsub double %101, %102
  %104 = load double, ptr %2, align 8
  %105 = fneg double %104
  %106 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %103, double %105)
  store double %106, ptr %3, align 8
  %107 = call i32 @Proc2(ptr noundef %2)
  %108 = load i32, ptr %10, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %10, align 4
  br label %43, !llvm.loop !11

110:                                              ; preds = %43
  %111 = load i32, ptr %1, align 4
  ret i32 %111
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
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i8, ptr @Char1Glob, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 65
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load double, ptr %4, align 8
  %15 = fadd double %14, -1.000000e+00
  store double %15, ptr %4, align 8
  %16 = load double, ptr %4, align 8
  %17 = load double, ptr @IntGlob, align 8
  %18 = fsub double %16, %17
  %19 = load ptr, ptr %3, align 8
  store double %18, ptr %19, align 8
  store i32 0, ptr %5, align 4
  br label %20

20:                                               ; preds = %13, %9
  %21 = load i32, ptr %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %9

23:                                               ; preds = %20
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
  switch i32 %14, label %28 [
    i32 0, label %15
    i32 10000, label %17
    i32 10001, label %24
    i32 10003, label %26
  ]

15:                                               ; preds = %13
  %16 = load ptr, ptr %5, align 8
  store i32 0, ptr %16, align 4
  br label %28

17:                                               ; preds = %13
  %18 = load double, ptr @IntGlob, align 8
  %19 = fcmp ogt double %18, 1.000000e+02
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8
  store i32 0, ptr %21, align 4
  br label %28

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8
  store i32 10002, ptr %23, align 4
  br label %28

24:                                               ; preds = %13
  %25 = load ptr, ptr %5, align 8
  store i32 10000, ptr %25, align 4
  br label %28

26:                                               ; preds = %13
  %27 = load ptr, ptr %5, align 8
  store i32 10001, ptr %27, align 4
  br label %28

28:                                               ; preds = %20, %22, %26, %24, %15, %13
  %29 = load i32, ptr %3, align 4
  ret i32 %29
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
  br label %40

40:                                               ; preds = %45, %4
  %41 = load double, ptr %11, align 8
  %42 = load double, ptr %10, align 8
  %43 = fadd double %42, 1.000000e+00
  %44 = fcmp ole double %41, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load double, ptr %10, align 8
  %47 = load ptr, ptr %7, align 8
  %48 = load double, ptr %10, align 8
  %49 = fptosi double %48 to i32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [51 x double], ptr %47, i64 %50
  %52 = load double, ptr %11, align 8
  %53 = fptosi double %52 to i32
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [51 x double], ptr %51, i64 0, i64 %54
  store double %46, ptr %55, align 8
  %56 = load double, ptr %11, align 8
  %57 = fadd double %56, 1.000000e+00
  store double %57, ptr %11, align 8
  br label %40, !llvm.loop !12

58:                                               ; preds = %40
  %59 = load ptr, ptr %7, align 8
  %60 = load double, ptr %10, align 8
  %61 = fptosi double %60 to i32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [51 x double], ptr %59, i64 %62
  %64 = load double, ptr %10, align 8
  %65 = fptosi double %64 to i32
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [51 x double], ptr %63, i64 0, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %68, align 8
  %71 = load ptr, ptr %6, align 8
  %72 = load double, ptr %10, align 8
  %73 = fptosi double %72 to i32
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, ptr %71, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = load ptr, ptr %7, align 8
  %78 = load double, ptr %10, align 8
  %79 = fptosi double %78 to i32
  %80 = add nsw i32 %79, 20
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [51 x double], ptr %77, i64 %81
  %83 = load double, ptr %10, align 8
  %84 = fptosi double %83 to i32
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [51 x double], ptr %82, i64 0, i64 %85
  store double %76, ptr %86, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
  %87 = load i32, ptr %5, align 4
  ret i32 %87
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
  br label %8

8:                                                ; preds = %32, %2
  %9 = load double, ptr %6, align 8
  %10 = fcmp ole double %9, 1.000000e+00
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8
  %13 = load double, ptr %6, align 8
  %14 = fptosi double %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load ptr, ptr %5, align 8
  %20 = load double, ptr %6, align 8
  %21 = fptosi double %20 to i32
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %19, i64 %23
  %25 = load i8, ptr %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call i32 @Func1(i32 noundef %18, i32 noundef %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %11
  store i8 65, ptr %7, align 1
  %30 = load double, ptr %6, align 8
  %31 = fadd double %30, 1.000000e+00
  store double %31, ptr %6, align 8
  br label %32

32:                                               ; preds = %29, %11
  br label %8, !llvm.loop !13

33:                                               ; preds = %8
  %34 = load i8, ptr %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 87
  %37 = load i8, ptr %7, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sle i32 %38, 90
  %or.cond = select i1 %36, i1 %39, i1 false
  br i1 %or.cond, label %40, label %41

40:                                               ; preds = %33
  store double 7.000000e+00, ptr %6, align 8
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i8, ptr %7, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 88
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, ptr %3, align 4
  br label %55

46:                                               ; preds = %41
  %47 = load ptr, ptr %4, align 8
  %48 = load ptr, ptr %5, align 8
  %49 = call i32 @strcmp(ptr noundef %47, ptr noundef %48) #6
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load double, ptr %6, align 8
  %53 = fadd double %52, 7.000000e+00
  store double %53, ptr %6, align 8
  store i32 1, ptr %3, align 4
  br label %55

54:                                               ; preds = %46
  store i32 0, ptr %3, align 4
  br label %55

55:                                               ; preds = %54, %51, %45
  %56 = load i32, ptr %3, align 4
  ret i32 %56
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
