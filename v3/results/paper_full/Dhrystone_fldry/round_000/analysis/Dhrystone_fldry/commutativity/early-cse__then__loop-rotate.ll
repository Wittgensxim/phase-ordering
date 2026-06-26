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
  %13 = load i32, ptr %9, align 4
  %14 = icmp ult i32 %13, 100000000
  br i1 %14, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %0
  br label %15

15:                                               ; preds = %.lr.ph, %17
  %16 = phi i32 [ %13, %.lr.ph ], [ %19, %17 ]
  br label %17

17:                                               ; preds = %15
  %18 = add i32 %16, 1
  store i32 %18, ptr %9, align 4
  %19 = load i32, ptr %9, align 4
  %20 = icmp ult i32 %19, 100000000
  br i1 %20, label %15, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %17
  br label %21

21:                                               ; preds = %._crit_edge, %0
  %22 = call i32 @clock()
  %23 = load i32, ptr %10, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, ptr %11, align 4
  %25 = call ptr @malloc(i64 noundef 56) #5
  store ptr %25, ptr @PtrGlbNext, align 8
  %26 = call ptr @malloc(i64 noundef 56) #5
  store ptr %26, ptr @PtrGlb, align 8
  %27 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %27, ptr %26, align 8
  %28 = load ptr, ptr @PtrGlb, align 8
  %29 = getelementptr inbounds nuw %struct.Record, ptr %28, i32 0, i32 1
  store i32 0, ptr %29, align 8
  %30 = load ptr, ptr @PtrGlb, align 8
  %31 = getelementptr inbounds nuw %struct.Record, ptr %30, i32 0, i32 2
  store i32 10001, ptr %31, align 4
  %32 = load ptr, ptr @PtrGlb, align 8
  %33 = getelementptr inbounds nuw %struct.Record, ptr %32, i32 0, i32 3
  store double 4.000000e+01, ptr %33, align 8
  %34 = load ptr, ptr @PtrGlb, align 8
  %35 = getelementptr inbounds nuw %struct.Record, ptr %34, i32 0, i32 4
  %36 = call ptr @strcpy(ptr noundef %35, ptr noundef @.str.1) #6
  %37 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %38 = call i32 @clock()
  store i32 %38, ptr %10, align 4
  store i32 0, ptr %9, align 4
  %39 = load i32, ptr %9, align 4
  %40 = icmp ult i32 %39, 100000000
  br i1 %40, label %.lr.ph8, label %108

.lr.ph8:                                          ; preds = %21
  br label %41

41:                                               ; preds = %.lr.ph8, %103
  %42 = call i32 @Proc5()
  %43 = call i32 @Proc4()
  store double 2.000000e+00, ptr %2, align 8
  store double 3.000000e+00, ptr %3, align 8
  %44 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.3) #6
  store i32 10000, ptr %6, align 4
  %45 = call i32 @Func2(ptr noundef %7, ptr noundef %8)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, ptr @BoolGlob, align 4
  %49 = load double, ptr %2, align 8
  %50 = load double, ptr %3, align 8
  %51 = fcmp olt double %49, %50
  br i1 %51, label %.lr.ph2, label %65

.lr.ph2:                                          ; preds = %41
  br label %52

52:                                               ; preds = %.lr.ph2, %52
  %53 = phi double [ %50, %.lr.ph2 ], [ %63, %52 ]
  %54 = phi double [ %49, %.lr.ph2 ], [ %62, %52 ]
  %55 = fneg double %53
  %56 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %54, double %55)
  store double %56, ptr %4, align 8
  %57 = load double, ptr %2, align 8
  %58 = load double, ptr %3, align 8
  %59 = call i32 @Proc7(double noundef %57, double noundef %58, ptr noundef %4)
  %60 = load double, ptr %2, align 8
  %61 = fadd double %60, 1.000000e+00
  store double %61, ptr %2, align 8
  %62 = load double, ptr %2, align 8
  %63 = load double, ptr %3, align 8
  %64 = fcmp olt double %62, %63
  br i1 %64, label %52, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %52
  %split = phi double [ %62, %52 ]
  br label %65

65:                                               ; preds = %._crit_edge3, %41
  %.lcssa = phi double [ %split, %._crit_edge3 ], [ %49, %41 ]
  %66 = load double, ptr %4, align 8
  %67 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %.lcssa, double noundef %66)
  %68 = load ptr, ptr @PtrGlb, align 8
  %69 = call i32 @Proc1(ptr noundef %68)
  store i8 65, ptr %5, align 1
  %70 = load i8, ptr %5, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, ptr @Char2Glob, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sle i32 %71, %73
  br i1 %74, label %.lr.ph5, label %91

.lr.ph5:                                          ; preds = %65
  br label %75

75:                                               ; preds = %.lr.ph5, %83
  %76 = phi i32 [ %71, %.lr.ph5 ], [ %87, %83 ]
  %77 = load i32, ptr %6, align 4
  %78 = call i32 @Func1(i32 noundef %76, i32 noundef 67)
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @Proc6(i32 noundef 0, ptr noundef %6)
  br label %82

82:                                               ; preds = %80, %75
  br label %83

83:                                               ; preds = %82
  %84 = load i8, ptr %5, align 1
  %85 = add i8 %84, 1
  store i8 %85, ptr %5, align 1
  %86 = load i8, ptr %5, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, ptr @Char2Glob, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sle i32 %87, %89
  br i1 %90, label %75, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %83
  br label %91

91:                                               ; preds = %._crit_edge6, %65
  %92 = load double, ptr %3, align 8
  %93 = load double, ptr %2, align 8
  %94 = fmul double %92, %93
  store double %94, ptr %4, align 8
  %95 = load double, ptr %2, align 8
  %96 = fdiv double %94, %95
  store double %96, ptr %3, align 8
  %97 = load double, ptr %4, align 8
  %98 = fsub double %97, %96
  %99 = load double, ptr %2, align 8
  %100 = fneg double %99
  %101 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %98, double %100)
  store double %101, ptr %3, align 8
  %102 = call i32 @Proc2(ptr noundef %2)
  br label %103

103:                                              ; preds = %91
  %104 = load i32, ptr %9, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %9, align 4
  %106 = load i32, ptr %9, align 4
  %107 = icmp ult i32 %106, 100000000
  br i1 %107, label %41, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %103
  br label %108

108:                                              ; preds = %._crit_edge9, %21
  %109 = load i32, ptr %1, align 4
  ret i32 %109
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

8:                                                ; preds = %18, %1
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
  %35 = load double, ptr %11, align 8
  %36 = load double, ptr %10, align 8
  %37 = fadd double %36, 1.000000e+00
  %38 = fcmp ole double %35, %37
  br i1 %38, label %.lr.ph, label %56

.lr.ph:                                           ; preds = %4
  br label %39

39:                                               ; preds = %.lr.ph, %49
  %40 = phi double [ %36, %.lr.ph ], [ %53, %49 ]
  %41 = phi double [ %35, %.lr.ph ], [ %52, %49 ]
  %42 = load ptr, ptr %7, align 8
  %43 = fptosi double %40 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [51 x double], ptr %42, i64 %44
  %46 = fptosi double %41 to i32
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [51 x double], ptr %45, i64 0, i64 %47
  store double %40, ptr %48, align 8
  br label %49

49:                                               ; preds = %39
  %50 = load double, ptr %11, align 8
  %51 = fadd double %50, 1.000000e+00
  store double %51, ptr %11, align 8
  %52 = load double, ptr %11, align 8
  %53 = load double, ptr %10, align 8
  %54 = fadd double %53, 1.000000e+00
  %55 = fcmp ole double %52, %54
  br i1 %55, label %39, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %49
  %split = phi double [ %53, %49 ]
  br label %56

56:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi double [ %split, %._crit_edge ], [ %36, %4 ]
  %57 = load ptr, ptr %7, align 8
  %58 = fptosi double %.lcssa to i32
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [51 x double], ptr %57, i64 %59
  %61 = sub nsw i32 %58, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [51 x double], ptr %60, i64 0, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = fadd double %64, 1.000000e+00
  store double %65, ptr %63, align 8
  %66 = load ptr, ptr %6, align 8
  %67 = load double, ptr %10, align 8
  %68 = fptosi double %67 to i32
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, ptr %66, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = load ptr, ptr %7, align 8
  %73 = add nsw i32 %68, 20
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [51 x double], ptr %72, i64 %74
  %76 = getelementptr inbounds [51 x double], ptr %75, i64 0, i64 %69
  store double %71, ptr %76, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
  %77 = load i32, ptr %5, align 4
  ret i32 %77
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
  %8 = load double, ptr %6, align 8
  %9 = fcmp ole double %8, 1.000000e+00
  br i1 %9, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %29
  %11 = phi double [ %8, %.lr.ph ], [ %30, %29 ]
  %12 = load ptr, ptr %4, align 8
  %13 = fptosi double %11 to i32
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

26:                                               ; preds = %10
  store i8 65, ptr %7, align 1
  %27 = load double, ptr %6, align 8
  %28 = fadd double %27, 1.000000e+00
  store double %28, ptr %6, align 8
  br label %29

29:                                               ; preds = %26, %10
  %30 = load double, ptr %6, align 8
  %31 = fcmp ole double %30, 1.000000e+00
  br i1 %31, label %10, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge, %2
  %33 = load i8, ptr %7, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 87
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = icmp sle i32 %34, 90
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store double 7.000000e+00, ptr %6, align 8
  br label %39

39:                                               ; preds = %38, %36, %32
  %40 = load i8, ptr %7, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 88
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, ptr %3, align 4
  br label %53

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %5, align 8
  %47 = call i32 @strcmp(ptr noundef %45, ptr noundef %46) #6
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load double, ptr %6, align 8
  %51 = fadd double %50, 7.000000e+00
  store double %51, ptr %6, align 8
  store i32 1, ptr %3, align 4
  br label %53

52:                                               ; preds = %44
  store i32 0, ptr %3, align 4
  br label %53

53:                                               ; preds = %52, %49, %43
  %54 = load i32, ptr %3, align 4
  ret i32 %54
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
