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
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef 8)
  %4 = call i32 @Proc0()
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca [31 x i8], align 16
  %5 = alloca [31 x i8], align 16
  %6 = call i32 @clock()
  %7 = icmp ult i32 0, 100000000
  br i1 %7, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %0
  br label %8

8:                                                ; preds = %.lr.ph, %9
  %.0 = phi i32 [ 0, %.lr.ph ], [ %10, %9 ]
  br label %9

9:                                                ; preds = %8
  %10 = add i32 %.0, 1
  %11 = icmp ult i32 %10, 100000000
  br i1 %11, label %8, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %9
  br label %12

12:                                               ; preds = %._crit_edge, %0
  %13 = call i32 @clock()
  %14 = sub nsw i32 %13, %6
  %15 = call ptr @malloc(i64 noundef 56) #5
  store ptr %15, ptr @PtrGlbNext, align 8
  %16 = call ptr @malloc(i64 noundef 56) #5
  store ptr %16, ptr @PtrGlb, align 8
  %17 = load ptr, ptr @PtrGlbNext, align 8
  %18 = load ptr, ptr @PtrGlb, align 8
  %19 = getelementptr inbounds nuw %struct.Record, ptr %18, i32 0, i32 0
  store ptr %17, ptr %19, align 8
  %20 = load ptr, ptr @PtrGlb, align 8
  %21 = getelementptr inbounds nuw %struct.Record, ptr %20, i32 0, i32 1
  store i32 0, ptr %21, align 8
  %22 = load ptr, ptr @PtrGlb, align 8
  %23 = getelementptr inbounds nuw %struct.Record, ptr %22, i32 0, i32 2
  store i32 10001, ptr %23, align 4
  %24 = load ptr, ptr @PtrGlb, align 8
  %25 = getelementptr inbounds nuw %struct.Record, ptr %24, i32 0, i32 3
  store double 4.000000e+01, ptr %25, align 8
  %26 = load ptr, ptr @PtrGlb, align 8
  %27 = getelementptr inbounds nuw %struct.Record, ptr %26, i32 0, i32 4
  %28 = getelementptr inbounds [31 x i8], ptr %27, i64 0, i64 0
  %29 = call ptr @strcpy(ptr noundef %28, ptr noundef @.str.1) #6
  %30 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %31 = call ptr @strcpy(ptr noundef %30, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %32 = call i32 @clock()
  %33 = icmp ult i32 0, 100000000
  br i1 %33, label %.lr.ph8, label %96

.lr.ph8:                                          ; preds = %12
  br label %34

34:                                               ; preds = %.lr.ph8, %93
  %.1 = phi i32 [ 0, %.lr.ph8 ], [ %94, %93 ]
  %35 = call i32 @Proc5()
  %36 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  %37 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %38 = call ptr @strcpy(ptr noundef %37, ptr noundef @.str.3) #6
  store i32 10000, ptr %3, align 4
  %39 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %40 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %41 = call i32 @Func2(ptr noundef %39, ptr noundef %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, ptr @BoolGlob, align 4
  %45 = load double, ptr %1, align 8
  %46 = fcmp olt double %45, 3.000000e+00
  br i1 %46, label %.lr.ph2, label %57

.lr.ph2:                                          ; preds = %34
  br label %47

47:                                               ; preds = %.lr.ph2, %47
  %48 = load double, ptr %1, align 8
  %49 = fneg double 3.000000e+00
  %50 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %48, double %49)
  store double %50, ptr %2, align 8
  %51 = load double, ptr %1, align 8
  %52 = call i32 @Proc7(double noundef %51, double noundef 3.000000e+00, ptr noundef %2)
  %53 = load double, ptr %1, align 8
  %54 = fadd double %53, 1.000000e+00
  store double %54, ptr %1, align 8
  %55 = load double, ptr %1, align 8
  %56 = fcmp olt double %55, 3.000000e+00
  br i1 %56, label %47, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %47
  br label %57

57:                                               ; preds = %._crit_edge3, %34
  %58 = load double, ptr %1, align 8
  %59 = load double, ptr %2, align 8
  %60 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %58, double noundef %59)
  %61 = load ptr, ptr @PtrGlb, align 8
  %62 = call i32 @Proc1(ptr noundef %61)
  %63 = sext i8 65 to i32
  %64 = load i8, ptr @Char2Glob, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 %63, %65
  br i1 %66, label %.lr.ph5, label %81

.lr.ph5:                                          ; preds = %57
  br label %67

67:                                               ; preds = %.lr.ph5, %75
  %.010 = phi i8 [ 65, %.lr.ph5 ], [ %76, %75 ]
  %68 = load i32, ptr %3, align 4
  %69 = sext i8 %.010 to i32
  %70 = call i32 @Func1(i32 noundef %69, i32 noundef 67)
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %74

74:                                               ; preds = %72, %67
  br label %75

75:                                               ; preds = %74
  %76 = add i8 %.010, 1
  %77 = sext i8 %76 to i32
  %78 = load i8, ptr @Char2Glob, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp sle i32 %77, %79
  br i1 %80, label %67, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %75
  br label %81

81:                                               ; preds = %._crit_edge6, %57
  %82 = load double, ptr %1, align 8
  %83 = fmul double 3.000000e+00, %82
  store double %83, ptr %2, align 8
  %84 = load double, ptr %2, align 8
  %85 = load double, ptr %1, align 8
  %86 = fdiv double %84, %85
  %87 = load double, ptr %2, align 8
  %88 = fsub double %87, %86
  %89 = load double, ptr %1, align 8
  %90 = fneg double %89
  %91 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %88, double %90)
  %92 = call i32 @Proc2(ptr noundef %1)
  br label %93

93:                                               ; preds = %81
  %94 = add i32 %.1, 1
  %95 = icmp ult i32 %94, 100000000
  br i1 %95, label %34, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %93
  br label %96

96:                                               ; preds = %._crit_edge9, %12
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
  %2 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 3
  store double 5.000000e+00, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 3
  %4 = load double, ptr %3, align 8
  %5 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds nuw %struct.Record, ptr %6, i32 0, i32 3
  store double %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 0
  store ptr %9, ptr %12, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = load double, ptr %0, align 8
  %3 = fadd double %2, 1.000000e+01
  br label %4

4:                                                ; preds = %12, %1
  %.0 = phi double [ %3, %1 ], [ %.1, %12 ]
  %5 = load i8, ptr @Char1Glob, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 65
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = fadd double %.0, -1.000000e+00
  %10 = load double, ptr @IntGlob, align 8
  %11 = fsub double %9, %10
  store double %11, ptr %0, align 8
  br label %12

12:                                               ; preds = %8, %4
  %.1 = phi double [ %9, %8 ], [ %.0, %4 ]
  %13 = icmp eq i32 0, 0
  br i1 %13, label %14, label %4

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @PtrGlb, align 8
  %6 = getelementptr inbounds nuw %struct.Record, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %0, align 8
  br label %9

8:                                                ; preds = %1
  store double 1.000000e+02, ptr @IntGlob, align 8
  br label %9

9:                                                ; preds = %8, %4
  %10 = load double, ptr @IntGlob, align 8
  %11 = load ptr, ptr @PtrGlb, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 3
  %13 = call i32 @Proc7(i32 noundef 10, double noundef %10, ptr noundef %12)
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc4() #0 {
  %1 = load i8, ptr @Char1Glob, align 1
  %2 = sext i8 %1 to i32
  %3 = icmp eq i32 %2, 65
  %4 = zext i1 %3 to i32
  %5 = load i32, ptr @BoolGlob, align 4
  %6 = or i32 %4, %5
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
  store i32 %0, ptr %1, align 4
  %3 = call i32 @Func3(i32 noundef %0)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %6

6:                                                ; preds = %5, %2
  switch i32 %0, label %17 [
    i32 0, label %7
    i32 10000, label %8
    i32 10001, label %14
    i32 10002, label %15
    i32 10003, label %16
  ]

7:                                                ; preds = %6
  store i32 0, ptr %1, align 4
  br label %17

8:                                                ; preds = %6
  %9 = load double, ptr @IntGlob, align 8
  %10 = fcmp ogt double %9, 1.000000e+02
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, ptr %1, align 4
  br label %13

12:                                               ; preds = %8
  store i32 10002, ptr %1, align 4
  br label %13

13:                                               ; preds = %12, %11
  br label %17

14:                                               ; preds = %6
  store i32 10000, ptr %1, align 4
  br label %17

15:                                               ; preds = %6
  br label %17

16:                                               ; preds = %6
  store i32 10001, ptr %1, align 4
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %7, %6
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc7(double noundef %0, double noundef %1, ptr noundef %2) #0 {
  %4 = fadd double %0, 2.000000e+00
  %5 = fadd double %1, %4
  store double %5, ptr %2, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = fadd double %2, 5.000000e+00
  %6 = fptosi double %5 to i32
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds double, ptr %0, i64 %7
  store double %3, ptr %8, align 8
  %9 = fptosi double %5 to i32
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %0, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = fptosi double %5 to i32
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, ptr %0, i64 %15
  store double %12, ptr %16, align 8
  %17 = fptosi double %5 to i32
  %18 = add nsw i32 %17, 30
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  store double %5, ptr %20, align 8
  %21 = fadd double %5, 1.000000e+00
  %22 = fcmp ole double %5, %21
  br i1 %22, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %4
  br label %23

23:                                               ; preds = %.lr.ph, %30
  %.0 = phi double [ %5, %.lr.ph ], [ %31, %30 ]
  %24 = fptosi double %5 to i32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [51 x double], ptr %1, i64 %25
  %27 = fptosi double %.0 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [51 x double], ptr %26, i64 0, i64 %28
  store double %5, ptr %29, align 8
  br label %30

30:                                               ; preds = %23
  %31 = fadd double %.0, 1.000000e+00
  %32 = fadd double %5, 1.000000e+00
  %33 = fcmp ole double %31, %32
  br i1 %33, label %23, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %30
  br label %34

34:                                               ; preds = %._crit_edge, %4
  %35 = fptosi double %5 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [51 x double], ptr %1, i64 %36
  %38 = fptosi double %5 to i32
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [51 x double], ptr %37, i64 0, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = fadd double %42, 1.000000e+00
  store double %43, ptr %41, align 8
  %44 = fptosi double %5 to i32
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, ptr %0, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = fptosi double %5 to i32
  %49 = add nsw i32 %48, 20
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [51 x double], ptr %1, i64 %50
  %52 = fptosi double %5 to i32
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [51 x double], ptr %51, i64 0, i64 %53
  store double %47, ptr %54, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %3 = trunc i32 %0 to i8
  %4 = trunc i32 %1 to i8
  %5 = sext i8 %3 to i32
  %6 = sext i8 %4 to i32
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %8
  %.0 = phi i32 [ 0, %8 ], [ 10000, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = fcmp ole double 1.000000e+00, 1.000000e+00
  br i1 %3, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %20
  %.01 = phi double [ 1.000000e+00, %.lr.ph ], [ %.2, %20 ]
  %5 = fptosi double %.01 to i32
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = fptosi double %.01 to i32
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1
  %15 = sext i8 %14 to i32
  %16 = call i32 @Func1(i32 noundef %9, i32 noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = fadd double %.01, 1.000000e+00
  br label %20

20:                                               ; preds = %18, %4
  %.2 = phi double [ %19, %18 ], [ %.01, %4 ]
  %21 = fcmp ole double %.2, 1.000000e+00
  br i1 %21, label %4, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %20
  br label %22

22:                                               ; preds = %._crit_edge, %2
  %.1 = phi double [ %.2, %._crit_edge ], [ 1.000000e+00, %2 ]
  %23 = sext i8 65 to i32
  %24 = icmp sge i32 %23, 87
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = sext i8 65 to i32
  %27 = icmp sle i32 %26, 90
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %25, %22
  %.3 = phi double [ 7.000000e+00, %28 ], [ %.1, %25 ], [ %.1, %22 ]
  %30 = sext i8 65 to i32
  %31 = icmp eq i32 %30, 88
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %39

33:                                               ; preds = %29
  %34 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = fadd double %.3, 7.000000e+00
  br label %39

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %36, %32
  %.0 = phi i32 [ 1, %32 ], [ 1, %36 ], [ 0, %38 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 1, %3 ], [ 0, %4 ]
  ret i32 %.0
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
