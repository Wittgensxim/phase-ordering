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
  br i1 true, label %.lr.ph, label %._crit_edge10

._crit_edge10:                                    ; preds = %0
  br label %19

.lr.ph:                                           ; preds = %0
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi i32 [ 0, %.lr.ph ], [ %17, %15 ]
  %17 = add i32 %16, 1
  store i32 %17, ptr %10, align 4
  %18 = icmp ult i32 %17, 100000000
  br i1 %18, label %15, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %15
  br label %19

19:                                               ; preds = %._crit_edge10, %._crit_edge
  %20 = call i32 @clock()
  %21 = sub nsw i32 %20, %14
  store i32 %21, ptr %13, align 4
  %22 = call ptr @malloc(i64 noundef 56) #5
  store ptr %22, ptr @PtrGlbNext, align 8
  %23 = call ptr @malloc(i64 noundef 56) #5
  store ptr %23, ptr @PtrGlb, align 8
  %24 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %24, ptr %23, align 8
  %25 = load ptr, ptr @PtrGlb, align 8
  %26 = getelementptr inbounds nuw %struct.Record, ptr %25, i32 0, i32 1
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds nuw %struct.Record, ptr %25, i32 0, i32 2
  store i32 10001, ptr %27, align 4
  %28 = getelementptr inbounds nuw %struct.Record, ptr %25, i32 0, i32 3
  store double 4.000000e+01, ptr %28, align 8
  %29 = getelementptr inbounds nuw %struct.Record, ptr %25, i32 0, i32 4
  %30 = call ptr @strcpy(ptr noundef %29, ptr noundef @.str.1) #6
  %31 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %32 = call i32 @clock()
  store i32 %32, ptr %11, align 4
  store i32 0, ptr %10, align 4
  br i1 true, label %.lr.ph8, label %._crit_edge11

._crit_edge11:                                    ; preds = %19
  br label %84

.lr.ph8:                                          ; preds = %19
  br label %33

33:                                               ; preds = %.lr.ph8, %74
  %34 = phi i32 [ 0, %.lr.ph8 ], [ %82, %74 ]
  %35 = call i32 @Proc5()
  %36 = call i32 @Proc4()
  store double 2.000000e+00, ptr %2, align 8
  store double 3.000000e+00, ptr %3, align 8
  %37 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.3) #6
  store i32 10000, ptr %7, align 4
  %38 = call i32 @Func2(ptr noundef %8, ptr noundef %9)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, ptr @BoolGlob, align 4
  %42 = load double, ptr %2, align 8
  %43 = fcmp olt double %42, 3.000000e+00
  br i1 %43, label %.lr.ph2, label %51

.lr.ph2:                                          ; preds = %33
  br label %44

44:                                               ; preds = %.lr.ph2, %44
  %45 = phi double [ %42, %.lr.ph2 ], [ %49, %44 ]
  %46 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %45, double -3.000000e+00)
  store double %46, ptr %4, align 8
  %47 = call i32 @Proc7(double noundef %45, double noundef 3.000000e+00, ptr noundef %4)
  %48 = load double, ptr %2, align 8
  %49 = fadd double %48, 1.000000e+00
  store double %49, ptr %2, align 8
  %50 = fcmp olt double %49, 3.000000e+00
  br i1 %50, label %44, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %44
  br label %51

51:                                               ; preds = %._crit_edge3, %33
  %52 = phi double [ %49, %._crit_edge3 ], [ %42, %33 ]
  %53 = load double, ptr %4, align 8
  %54 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %52, double noundef %53)
  %55 = load ptr, ptr @PtrGlb, align 8
  %56 = call i32 @Proc1(ptr noundef %55)
  store i8 65, ptr %6, align 1
  %57 = load i8, ptr @Char2Glob, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 65, %58
  br i1 %59, label %.lr.ph5, label %74

.lr.ph5:                                          ; preds = %51
  br label %60

60:                                               ; preds = %.lr.ph5, %68
  %61 = phi i8 [ 65, %.lr.ph5 ], [ %69, %68 ]
  %62 = load i32, ptr %7, align 4
  %63 = sext i8 %61 to i32
  %64 = call i32 @Func1(i32 noundef %63, i32 noundef 67)
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %68

68:                                               ; preds = %66, %60
  %69 = add i8 %61, 1
  store i8 %69, ptr %6, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, ptr @Char2Glob, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 %70, %72
  br i1 %73, label %60, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %68
  br label %74

74:                                               ; preds = %._crit_edge6, %51
  %75 = load double, ptr %2, align 8
  %76 = fmul double 3.000000e+00, %75
  store double %76, ptr %4, align 8
  %77 = fdiv double %76, %75
  store double %77, ptr %3, align 8
  %78 = fsub double %76, %77
  %79 = fneg double %75
  %80 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %78, double %79)
  store double %80, ptr %3, align 8
  %81 = call i32 @Proc2(ptr noundef %2)
  %82 = add i32 %34, 1
  store i32 %82, ptr %10, align 4
  %83 = icmp ult i32 %82, 100000000
  br i1 %83, label %33, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %74
  br label %84

84:                                               ; preds = %._crit_edge11, %._crit_edge9
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
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 3
  store double 5.000000e+00, ptr %4, align 8
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds nuw %struct.Record, ptr %5, i32 0, i32 3
  store double 5.000000e+00, ptr %6, align 8
  %7 = load ptr, ptr %0, align 8
  store ptr %7, ptr %7, align 8
  ret i32 undef
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
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %8

8:                                                ; preds = %17, %1
  %9 = phi i32 [ %18, %17 ], [ undef, %1 ]
  %10 = phi double [ %19, %17 ], [ %7, %1 ]
  %11 = sext i8 %.pre to i32
  %12 = icmp eq i32 %11, 65
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = fadd double %10, -1.000000e+00
  store double %14, ptr %4, align 8
  %15 = load double, ptr @IntGlob, align 8
  %16 = fsub double %14, %15
  store double %16, ptr %0, align 8
  store i32 0, ptr %5, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i32 [ 0, %13 ], [ %9, %8 ]
  %19 = phi double [ %14, %13 ], [ %10, %8 ]
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
  %12 = load double, ptr @IntGlob, align 8
  %13 = fcmp ogt double %12, 1.000000e+02
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
define dso_local i32 @Proc7(double noundef %0, double noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store double %0, ptr %5, align 8
  store double %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %9 = fadd double %0, 2.000000e+00
  store double %9, ptr %8, align 8
  %10 = fadd double %1, %9
  store double %10, ptr %2, align 8
  ret i32 undef
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
  %12 = fadd double %2, 5.000000e+00
  store double %12, ptr %10, align 8
  %13 = fptosi double %12 to i32
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  store double %3, ptr %15, align 8
  %16 = add nsw i32 %13, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  store double %3, ptr %18, align 8
  %19 = add nsw i32 %13, 30
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  store double %12, ptr %21, align 8
  store double %12, ptr %11, align 8
  %22 = fadd double %12, 1.000000e+00
  %23 = fcmp ole double %12, %22
  br i1 %23, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %4
  br label %24

24:                                               ; preds = %.lr.ph, %24
  %25 = phi double [ %12, %.lr.ph ], [ %30, %24 ]
  %26 = getelementptr inbounds [51 x double], ptr %1, i64 %14
  %27 = fptosi double %25 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [51 x double], ptr %26, i64 0, i64 %28
  store double %12, ptr %29, align 8
  %30 = fadd double %25, 1.000000e+00
  store double %30, ptr %11, align 8
  %31 = fcmp ole double %30, %22
  br i1 %31, label %24, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %24
  br label %32

32:                                               ; preds = %._crit_edge, %4
  %33 = getelementptr inbounds [51 x double], ptr %1, i64 %14
  %34 = sub nsw i32 %13, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [51 x double], ptr %33, i64 0, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = fadd double %37, 1.000000e+00
  store double %38, ptr %36, align 8
  %39 = load double, ptr %15, align 8
  %40 = add nsw i32 %13, 20
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [51 x double], ptr %1, i64 %41
  %43 = getelementptr inbounds [51 x double], ptr %42, i64 0, i64 %14
  store double %39, ptr %43, align 8
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
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %2
  br label %29

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %25
  %9 = phi i8 [ undef, %.lr.ph ], [ %26, %25 ]
  %10 = phi double [ 1.000000e+00, %.lr.ph ], [ %27, %25 ]
  %11 = fptosi double %10 to i32
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1
  %15 = sext i8 %14 to i32
  %16 = add nsw i32 %11, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %1, i64 %17
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 @Func1(i32 noundef %15, i32 noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  store i8 65, ptr %7, align 1
  %24 = fadd double %10, 1.000000e+00
  store double %24, ptr %6, align 8
  br label %25

25:                                               ; preds = %23, %8
  %26 = phi i8 [ 65, %23 ], [ %9, %8 ]
  %27 = phi double [ %24, %23 ], [ %10, %8 ]
  %28 = fcmp ole double %27, 1.000000e+00
  br i1 %28, label %8, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %25
  br label %29

29:                                               ; preds = %._crit_edge1, %._crit_edge
  %30 = phi double [ 1.000000e+00, %._crit_edge1 ], [ %27, %._crit_edge ]
  %31 = phi i8 [ undef, %._crit_edge1 ], [ %26, %._crit_edge ]
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 87
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = icmp sle i32 %32, 90
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  store double 7.000000e+00, ptr %6, align 8
  br label %37

37:                                               ; preds = %36, %34, %29
  %38 = phi double [ 7.000000e+00, %36 ], [ %30, %34 ], [ %30, %29 ]
  %39 = icmp eq i32 %32, 88
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, ptr %3, align 4
  br label %47

41:                                               ; preds = %37
  %42 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = fadd double %38, 7.000000e+00
  store double %45, ptr %6, align 8
  store i32 1, ptr %3, align 4
  br label %47

46:                                               ; preds = %41
  store i32 0, ptr %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %40
  %48 = phi i32 [ 0, %46 ], [ 1, %44 ], [ 1, %40 ]
  ret i32 %48
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
