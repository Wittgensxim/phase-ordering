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

15:                                               ; preds = %19, %0
  %16 = phi i32 [ %20, %19 ], [ poison, %0 ]
  %17 = phi i32 [ %20, %19 ], [ 0, %0 ]
  %18 = icmp ult i32 %17, 100000000
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  br label %15, !llvm.loop !7

21:                                               ; preds = %15
  %.lcssa1 = phi i32 [ %16, %15 ]
  store i32 %.lcssa1, ptr %10, align 4
  %22 = call i32 @clock()
  %23 = sub nsw i32 %22, %14
  store i32 %23, ptr %13, align 4
  %24 = call ptr @malloc(i64 noundef 56) #5
  store ptr %24, ptr @PtrGlbNext, align 8
  %25 = call ptr @malloc(i64 noundef 56) #5
  store ptr %25, ptr @PtrGlb, align 8
  %26 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %26, ptr %25, align 8
  %27 = load ptr, ptr @PtrGlb, align 8
  %28 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 1
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 2
  store i32 10001, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 3
  store double 4.000000e+01, ptr %30, align 8
  %31 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 4
  %32 = call ptr @strcpy(ptr noundef %31, ptr noundef @.str.1) #6
  %33 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %34 = call i32 @clock()
  store i32 %34, ptr %11, align 4
  store i32 0, ptr %10, align 4
  %.promoted3 = load double, ptr %3, align 1
  %.promoted5 = load i8, ptr %6, align 1
  %.promoted = load i32, ptr %10, align 1
  br label %35

35:                                               ; preds = %76, %21
  %36 = phi i32 [ %84, %76 ], [ %.promoted, %21 ]
  %.lcssa26 = phi i8 [ %.lcssa2, %76 ], [ %.promoted5, %21 ]
  %37 = phi double [ %82, %76 ], [ %.promoted3, %21 ]
  %38 = phi i32 [ %84, %76 ], [ 0, %21 ]
  %39 = icmp ult i32 %38, 100000000
  br i1 %39, label %40, label %85

40:                                               ; preds = %35
  %41 = call i32 @Proc5()
  %42 = call i32 @Proc4()
  store double 2.000000e+00, ptr %2, align 8
  %43 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.3) #6
  store i32 10000, ptr %7, align 4
  %44 = call i32 @Func2(ptr noundef %8, ptr noundef %9)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, ptr @BoolGlob, align 4
  %.pre = load double, ptr %2, align 8
  br label %48

48:                                               ; preds = %51, %40
  %49 = phi double [ %55, %51 ], [ %.pre, %40 ]
  %50 = fcmp olt double %49, 3.000000e+00
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %49, double -3.000000e+00)
  store double %52, ptr %4, align 8
  %53 = call i32 @Proc7(double noundef %49, double noundef 3.000000e+00, ptr noundef %4)
  %54 = load double, ptr %2, align 8
  %55 = fadd double %54, 1.000000e+00
  store double %55, ptr %2, align 8
  br label %48, !llvm.loop !9

56:                                               ; preds = %48
  %.lcssa = phi double [ %49, %48 ]
  %57 = load double, ptr %4, align 8
  %58 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %.lcssa, double noundef %57)
  %59 = load ptr, ptr @PtrGlb, align 8
  %60 = call i32 @Proc1(ptr noundef %59)
  br label %61

61:                                               ; preds = %74, %56
  %62 = phi i8 [ %75, %74 ], [ 65, %56 ]
  %63 = phi i8 [ %75, %74 ], [ 65, %56 ]
  %64 = sext i8 %63 to i32
  %65 = load i8, ptr @Char2Glob, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sle i32 %64, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load i32, ptr %7, align 4
  %70 = call i32 @Func1(i32 noundef %64, i32 noundef 67)
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @Proc6(i32 noundef 0, ptr noundef %7)
  br label %74

74:                                               ; preds = %72, %68
  %75 = add i8 %63, 1
  br label %61, !llvm.loop !10

76:                                               ; preds = %61
  %.lcssa2 = phi i8 [ %62, %61 ]
  %77 = load double, ptr %2, align 8
  %78 = fmul double 3.000000e+00, %77
  store double %78, ptr %4, align 8
  %79 = fdiv double %78, %77
  %80 = fsub double %78, %79
  %81 = fneg double %77
  %82 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %80, double %81)
  %83 = call i32 @Proc2(ptr noundef %2)
  %84 = add i32 %38, 1
  br label %35, !llvm.loop !11

85:                                               ; preds = %35
  %.lcssa7 = phi i32 [ %36, %35 ]
  %.lcssa26.lcssa = phi i8 [ %.lcssa26, %35 ]
  %.lcssa4 = phi double [ %37, %35 ]
  store double %.lcssa4, ptr %3, align 1
  store i8 %.lcssa26.lcssa, ptr %6, align 1
  store i32 %.lcssa7, ptr %10, align 1
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
  %8 = sext i8 %.pre to i32
  %9 = icmp eq i32 %8, 65
  %.promoted = load double, ptr %4, align 1
  %.promoted1 = load i32, ptr %5, align 1
  br label %10

10:                                               ; preds = %26, %1
  %11 = phi i32 [ %20, %26 ], [ %.promoted1, %1 ]
  %12 = phi double [ %21, %26 ], [ %.promoted, %1 ]
  %13 = phi i32 [ %22, %26 ], [ undef, %1 ]
  %14 = phi double [ %23, %26 ], [ %7, %1 ]
  br i1 %9, label %15, label %19

15:                                               ; preds = %10
  %16 = fadd double %14, -1.000000e+00
  %17 = load double, ptr @IntGlob, align 8
  %18 = fsub double %16, %17
  store double %18, ptr %0, align 8
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 0, %15 ], [ %11, %10 ]
  %21 = phi double [ %16, %15 ], [ %12, %10 ]
  %22 = phi i32 [ 0, %15 ], [ %13, %10 ]
  %23 = phi double [ %16, %15 ], [ %14, %10 ]
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  %.lcssa2 = phi i32 [ %20, %19 ]
  %.lcssa = phi double [ %21, %19 ]
  store double %.lcssa, ptr %4, align 1
  store i32 %.lcssa2, ptr %5, align 1
  ret i32 undef

26:                                               ; preds = %19
  br label %10
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
  %23 = getelementptr inbounds [51 x double], ptr %1, i64 %14
  %.promoted = load double, ptr %11, align 1
  br label %24

24:                                               ; preds = %28, %4
  %25 = phi double [ %32, %28 ], [ %.promoted, %4 ]
  %26 = phi double [ %32, %28 ], [ %12, %4 ]
  %27 = fcmp ole double %26, %22
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = fptosi double %26 to i32
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [51 x double], ptr %23, i64 0, i64 %30
  store double %12, ptr %31, align 8
  %32 = fadd double %26, 1.000000e+00
  br label %24, !llvm.loop !12

33:                                               ; preds = %24
  %.lcssa = phi double [ %25, %24 ]
  store double %.lcssa, ptr %11, align 1
  %34 = getelementptr inbounds [51 x double], ptr %1, i64 %14
  %35 = sub nsw i32 %13, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [51 x double], ptr %34, i64 0, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = fadd double %38, 1.000000e+00
  store double %39, ptr %37, align 8
  %40 = load double, ptr %15, align 8
  %41 = add nsw i32 %13, 20
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [51 x double], ptr %1, i64 %42
  %44 = getelementptr inbounds [51 x double], ptr %43, i64 0, i64 %14
  store double %40, ptr %44, align 8
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
  %.promoted = load i8, ptr %7, align 1
  %.promoted3 = load double, ptr %6, align 1
  br label %8

8:                                                ; preds = %29, %2
  %9 = phi double [ %30, %29 ], [ %.promoted3, %2 ]
  %10 = phi i8 [ %31, %29 ], [ %.promoted, %2 ]
  %11 = phi double [ %32, %29 ], [ 1.000000e+00, %2 ]
  %12 = phi i8 [ %33, %29 ], [ undef, %2 ]
  %13 = fcmp ole double %11, 1.000000e+00
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = fptosi double %11 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = add nsw i32 %15, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @Func1(i32 noundef %19, i32 noundef %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = fadd double %11, 1.000000e+00
  br label %29

29:                                               ; preds = %27, %14
  %30 = phi double [ %28, %27 ], [ %9, %14 ]
  %31 = phi i8 [ 65, %27 ], [ %10, %14 ]
  %32 = phi double [ %28, %27 ], [ %11, %14 ]
  %33 = phi i8 [ 65, %27 ], [ %12, %14 ]
  br label %8, !llvm.loop !13

34:                                               ; preds = %8
  %.lcssa4 = phi double [ %9, %8 ]
  %.lcssa2 = phi i8 [ %10, %8 ]
  %.lcssa1 = phi double [ %11, %8 ]
  %.lcssa = phi i8 [ %12, %8 ]
  store i8 %.lcssa2, ptr %7, align 1
  store double %.lcssa4, ptr %6, align 1
  %35 = sext i8 %.lcssa to i32
  %36 = icmp sge i32 %35, 87
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = icmp sle i32 %35, 90
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store double 7.000000e+00, ptr %6, align 8
  br label %40

40:                                               ; preds = %39, %37, %34
  %41 = phi double [ 7.000000e+00, %39 ], [ %.lcssa1, %37 ], [ %.lcssa1, %34 ]
  %42 = icmp eq i32 %35, 88
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, ptr %3, align 4
  br label %50

44:                                               ; preds = %40
  %45 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = fadd double %41, 7.000000e+00
  store double %48, ptr %6, align 8
  store i32 1, ptr %3, align 4
  br label %50

49:                                               ; preds = %44
  store i32 0, ptr %3, align 4
  br label %50

50:                                               ; preds = %49, %47, %43
  %51 = phi i32 [ 0, %49 ], [ 1, %47 ], [ 1, %43 ]
  ret i32 %51
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
