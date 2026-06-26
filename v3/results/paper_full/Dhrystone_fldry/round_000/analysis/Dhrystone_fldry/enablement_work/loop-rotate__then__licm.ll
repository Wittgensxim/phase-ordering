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
  %15 = load i32, ptr %10, align 4
  %16 = icmp ult i32 %15, 100000000
  br i1 %16, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %10, align 4
  br label %17

17:                                               ; preds = %.lr.ph, %19
  %18 = phi i32 [ %.promoted, %.lr.ph ], [ %20, %19 ]
  br label %19

19:                                               ; preds = %17
  %20 = add i32 %18, 1
  %21 = icmp ult i32 %20, 100000000
  br i1 %21, label %17, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %19
  %.lcssa = phi i32 [ %20, %19 ]
  store i32 %.lcssa, ptr %10, align 4
  br label %22

22:                                               ; preds = %._crit_edge, %0
  %23 = call i32 @clock()
  %24 = load i32, ptr %11, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, ptr %13, align 4
  %26 = call ptr @malloc(i64 noundef 56) #5
  store ptr %26, ptr @PtrGlbNext, align 8
  %27 = call ptr @malloc(i64 noundef 56) #5
  store ptr %27, ptr @PtrGlb, align 8
  %28 = load ptr, ptr @PtrGlbNext, align 8
  %29 = load ptr, ptr @PtrGlb, align 8
  %30 = getelementptr inbounds nuw %struct.Record, ptr %29, i32 0, i32 0
  store ptr %28, ptr %30, align 8
  %31 = load ptr, ptr @PtrGlb, align 8
  %32 = getelementptr inbounds nuw %struct.Record, ptr %31, i32 0, i32 1
  store i32 0, ptr %32, align 8
  %33 = load ptr, ptr @PtrGlb, align 8
  %34 = getelementptr inbounds nuw %struct.Record, ptr %33, i32 0, i32 2
  store i32 10001, ptr %34, align 4
  %35 = load ptr, ptr @PtrGlb, align 8
  %36 = getelementptr inbounds nuw %struct.Record, ptr %35, i32 0, i32 3
  store double 4.000000e+01, ptr %36, align 8
  %37 = load ptr, ptr @PtrGlb, align 8
  %38 = getelementptr inbounds nuw %struct.Record, ptr %37, i32 0, i32 4
  %39 = getelementptr inbounds [31 x i8], ptr %38, i64 0, i64 0
  %40 = call ptr @strcpy(ptr noundef %39, ptr noundef @.str.1) #6
  %41 = getelementptr inbounds [31 x i8], ptr %8, i64 0, i64 0
  %42 = call ptr @strcpy(ptr noundef %41, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %43 = call i32 @clock()
  store i32 %43, ptr %11, align 4
  store i32 0, ptr %10, align 4
  %44 = load i32, ptr %10, align 4
  %45 = icmp ult i32 %44, 100000000
  br i1 %45, label %.lr.ph8, label %110

.lr.ph8:                                          ; preds = %22
  %46 = getelementptr inbounds [31 x i8], ptr %9, i64 0, i64 0
  %47 = getelementptr inbounds [31 x i8], ptr %8, i64 0, i64 0
  %48 = getelementptr inbounds [31 x i8], ptr %9, i64 0, i64 0
  %.promoted16 = load i32, ptr %10, align 4
  br label %49

49:                                               ; preds = %.lr.ph8, %107
  %50 = phi i32 [ %.promoted16, %.lr.ph8 ], [ %108, %107 ]
  %51 = call i32 @Proc5()
  %52 = call i32 @Proc4()
  store double 2.000000e+00, ptr %2, align 8
  %53 = call ptr @strcpy(ptr noundef %46, ptr noundef @.str.3) #6
  store i32 10000, ptr %7, align 4
  %54 = call i32 @Func2(ptr noundef %47, ptr noundef %48)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, ptr @BoolGlob, align 4
  %58 = load double, ptr %2, align 8
  %59 = fcmp olt double %58, 3.000000e+00
  br i1 %59, label %.lr.ph2, label %70

.lr.ph2:                                          ; preds = %49
  %60 = fneg double 3.000000e+00
  br label %61

61:                                               ; preds = %.lr.ph2, %61
  %62 = load double, ptr %2, align 8
  %63 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %62, double %60)
  store double %63, ptr %4, align 8
  %64 = load double, ptr %2, align 8
  %65 = call i32 @Proc7(double noundef %64, double noundef 3.000000e+00, ptr noundef %4)
  %66 = load double, ptr %2, align 8
  %67 = fadd double %66, 1.000000e+00
  store double %67, ptr %2, align 8
  %68 = load double, ptr %2, align 8
  %69 = fcmp olt double %68, 3.000000e+00
  br i1 %69, label %61, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %61
  br label %70

70:                                               ; preds = %._crit_edge3, %49
  %71 = load double, ptr %2, align 8
  %72 = load double, ptr %4, align 8
  %73 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %71, double noundef %72)
  %74 = load ptr, ptr @PtrGlb, align 8
  %75 = call i32 @Proc1(ptr noundef %74)
  %76 = sext i8 65 to i32
  %77 = load i8, ptr @Char2Glob, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sle i32 %76, %78
  br i1 %79, label %.lr.ph5, label %95

.lr.ph5:                                          ; preds = %70
  br label %80

80:                                               ; preds = %.lr.ph5, %89
  %81 = phi i8 [ 65, %.lr.ph5 ], [ %90, %89 ]
  %82 = load i32, ptr %7, align 4
  %83 = sext i8 %81 to i32
  %84 = call i32 @Func1(i32 noundef %83, i32 noundef 67)
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %88

88:                                               ; preds = %86, %80
  br label %89

89:                                               ; preds = %88
  %90 = add i8 %81, 1
  %91 = sext i8 %90 to i32
  %92 = load i8, ptr @Char2Glob, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sle i32 %91, %93
  br i1 %94, label %80, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %89
  %.lcssa11 = phi i8 [ %90, %89 ]
  br label %95

95:                                               ; preds = %._crit_edge6, %70
  %.lcssa1115 = phi i8 [ %.lcssa11, %._crit_edge6 ], [ 65, %70 ]
  %96 = load double, ptr %2, align 8
  %97 = fmul double 3.000000e+00, %96
  store double %97, ptr %4, align 8
  %98 = load double, ptr %4, align 8
  %99 = load double, ptr %2, align 8
  %100 = fdiv double %98, %99
  %101 = load double, ptr %4, align 8
  %102 = fsub double %101, %100
  %103 = load double, ptr %2, align 8
  %104 = fneg double %103
  %105 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %102, double %104)
  %106 = call i32 @Proc2(ptr noundef %2)
  br label %107

107:                                              ; preds = %95
  %108 = add i32 %50, 1
  %109 = icmp ult i32 %108, 100000000
  br i1 %109, label %49, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %107
  %.lcssa17 = phi i32 [ %108, %107 ]
  %.lcssa1115.lcssa = phi i8 [ %.lcssa1115, %107 ]
  %.lcssa13 = phi double [ %105, %107 ]
  store double %.lcssa13, ptr %3, align 8
  store i8 %.lcssa1115.lcssa, ptr %6, align 1
  store i32 %.lcssa17, ptr %10, align 4
  br label %110

110:                                              ; preds = %._crit_edge9, %22
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
  %9 = load i8, ptr @Char1Glob, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 65
  %12 = load ptr, ptr %3, align 8
  %.promoted = load double, ptr %4, align 8
  %.promoted1 = load i32, ptr %5, align 4
  br label %13

13:                                               ; preds = %20, %1
  %14 = phi i32 [ %21, %20 ], [ %.promoted1, %1 ]
  %15 = phi double [ %22, %20 ], [ %.promoted, %1 ]
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
  br i1 %23, label %24, label %13

24:                                               ; preds = %20
  %.lcssa2 = phi i32 [ %21, %20 ]
  %.lcssa = phi double [ %22, %20 ]
  store double %.lcssa, ptr %4, align 8
  store i32 %.lcssa2, ptr %5, align 4
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %2, align 4
  ret i32 %26
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
  %40 = load double, ptr %11, align 8
  %41 = load double, ptr %10, align 8
  %42 = fadd double %41, 1.000000e+00
  %43 = fcmp ole double %40, %42
  br i1 %43, label %.lr.ph, label %60

.lr.ph:                                           ; preds = %4
  %44 = load double, ptr %10, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = load double, ptr %10, align 8
  %47 = fptosi double %46 to i32
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [51 x double], ptr %45, i64 %48
  %50 = load double, ptr %10, align 8
  %51 = fadd double %50, 1.000000e+00
  %.promoted = load double, ptr %11, align 8
  br label %52

52:                                               ; preds = %.lr.ph, %57
  %53 = phi double [ %.promoted, %.lr.ph ], [ %58, %57 ]
  %54 = fptosi double %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [51 x double], ptr %49, i64 0, i64 %55
  store double %44, ptr %56, align 8
  br label %57

57:                                               ; preds = %52
  %58 = fadd double %53, 1.000000e+00
  %59 = fcmp ole double %58, %51
  br i1 %59, label %52, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %57
  %.lcssa = phi double [ %58, %57 ]
  store double %.lcssa, ptr %11, align 8
  br label %60

60:                                               ; preds = %._crit_edge, %4
  %61 = load ptr, ptr %7, align 8
  %62 = load double, ptr %10, align 8
  %63 = fptosi double %62 to i32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [51 x double], ptr %61, i64 %64
  %66 = load double, ptr %10, align 8
  %67 = fptosi double %66 to i32
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [51 x double], ptr %65, i64 0, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = fadd double %71, 1.000000e+00
  store double %72, ptr %70, align 8
  %73 = load ptr, ptr %6, align 8
  %74 = load double, ptr %10, align 8
  %75 = fptosi double %74 to i32
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, ptr %73, i64 %76
  %78 = load double, ptr %77, align 8
  %79 = load ptr, ptr %7, align 8
  %80 = load double, ptr %10, align 8
  %81 = fptosi double %80 to i32
  %82 = add nsw i32 %81, 20
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [51 x double], ptr %79, i64 %83
  %85 = load double, ptr %10, align 8
  %86 = fptosi double %85 to i32
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [51 x double], ptr %84, i64 0, i64 %87
  store double %78, ptr %88, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
  %89 = load i32, ptr %5, align 4
  ret i32 %89
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
  %8 = load double, ptr %6, align 8
  %9 = fcmp ole double %8, 1.000000e+00
  br i1 %9, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %5, align 8
  %.promoted = load double, ptr %6, align 8
  %.promoted1 = load i8, ptr %7, align 1
  br label %12

12:                                               ; preds = %.lr.ph, %30
  %13 = phi i8 [ %.promoted1, %.lr.ph ], [ %31, %30 ]
  %14 = phi double [ %.promoted, %.lr.ph ], [ %32, %30 ]
  %15 = fptosi double %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %10, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = fptosi double %14 to i32
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %11, i64 %22
  %24 = load i8, ptr %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 @Func1(i32 noundef %19, i32 noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %12
  %29 = fadd double %14, 1.000000e+00
  br label %30

30:                                               ; preds = %28, %12
  %31 = phi i8 [ 65, %28 ], [ %13, %12 ]
  %32 = phi double [ %29, %28 ], [ %14, %12 ]
  %33 = fcmp ole double %32, 1.000000e+00
  br i1 %33, label %12, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %30
  %.lcssa2 = phi i8 [ %31, %30 ]
  %.lcssa = phi double [ %32, %30 ]
  store double %.lcssa, ptr %6, align 8
  store i8 %.lcssa2, ptr %7, align 1
  br label %34

34:                                               ; preds = %._crit_edge, %2
  %35 = load i8, ptr %7, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 87
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8, ptr %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 90
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store double 7.000000e+00, ptr %6, align 8
  br label %43

43:                                               ; preds = %42, %38, %34
  %44 = load i8, ptr %7, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 88
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, ptr %3, align 4
  br label %57

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 8
  %50 = load ptr, ptr %5, align 8
  %51 = call i32 @strcmp(ptr noundef %49, ptr noundef %50) #6
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load double, ptr %6, align 8
  %55 = fadd double %54, 7.000000e+00
  store double %55, ptr %6, align 8
  store i32 1, ptr %3, align 4
  br label %57

56:                                               ; preds = %48
  store i32 0, ptr %3, align 4
  br label %57

57:                                               ; preds = %56, %53, %47
  %58 = load i32, ptr %3, align 4
  ret i32 %58
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
