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
  br label %7

7:                                                ; preds = %11, %0
  %8 = phi i32 [ %12, %11 ], [ 0, %0 ]
  %9 = icmp ult i32 %8, 100000000
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10
  %12 = add i32 %8, 1
  br label %7, !llvm.loop !7

13:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  %14 = call i32 @clock()
  %15 = sub nsw i32 %14, %6
  %16 = call ptr @malloc(i64 noundef 56) #5
  store ptr %16, ptr @PtrGlbNext, align 8
  %17 = call ptr @malloc(i64 noundef 56) #5
  store ptr %17, ptr @PtrGlb, align 8
  %18 = load ptr, ptr @PtrGlbNext, align 8
  %19 = load ptr, ptr @PtrGlb, align 8
  %20 = getelementptr inbounds nuw %struct.Record, ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = load ptr, ptr @PtrGlb, align 8
  %22 = getelementptr inbounds nuw %struct.Record, ptr %21, i32 0, i32 1
  store i32 0, ptr %22, align 8
  %23 = load ptr, ptr @PtrGlb, align 8
  %24 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 2
  store i32 10001, ptr %24, align 4
  %25 = load ptr, ptr @PtrGlb, align 8
  %26 = getelementptr inbounds nuw %struct.Record, ptr %25, i32 0, i32 3
  store double 4.000000e+01, ptr %26, align 8
  %27 = load ptr, ptr @PtrGlb, align 8
  %28 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 4
  %29 = getelementptr inbounds [31 x i8], ptr %28, i64 0, i64 0
  %30 = call ptr @strcpy(ptr noundef %29, ptr noundef @.str.1) #6
  %31 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %32 = call ptr @strcpy(ptr noundef %31, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %33 = call i32 @clock()
  %34 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %35 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %36 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  br label %37

37:                                               ; preds = %94, %13
  %.lcssa28 = phi i8 [ %.lcssa2, %94 ], [ undef, %13 ]
  %38 = phi double [ %92, %94 ], [ undef, %13 ]
  %39 = phi i32 [ %95, %94 ], [ 0, %13 ]
  %40 = icmp ult i32 %39, 100000000
  br i1 %40, label %41, label %96

41:                                               ; preds = %37
  %42 = call i32 @Proc5()
  %43 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  %44 = call ptr @strcpy(ptr noundef %34, ptr noundef @.str.3) #6
  store i32 10000, ptr %3, align 4
  %45 = call i32 @Func2(ptr noundef %35, ptr noundef %36)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, ptr @BoolGlob, align 4
  %49 = fneg double 3.000000e+00
  br label %50

50:                                               ; preds = %53, %41
  %51 = load double, ptr %1, align 8
  %52 = fcmp olt double %51, 3.000000e+00
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load double, ptr %1, align 8
  %55 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %54, double %49)
  store double %55, ptr %2, align 8
  %56 = load double, ptr %1, align 8
  %57 = call i32 @Proc7(double noundef %56, double noundef 3.000000e+00, ptr noundef %2)
  %58 = load double, ptr %1, align 8
  %59 = fadd double %58, 1.000000e+00
  store double %59, ptr %1, align 8
  br label %50, !llvm.loop !9

60:                                               ; preds = %50
  %61 = load double, ptr %1, align 8
  %62 = load double, ptr %2, align 8
  %63 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %61, double noundef %62)
  %64 = load ptr, ptr @PtrGlb, align 8
  %65 = call i32 @Proc1(ptr noundef %64)
  br label %66

66:                                               ; preds = %80, %60
  %67 = phi i8 [ %81, %80 ], [ 65, %60 ]
  %68 = sext i8 %67 to i32
  %69 = load i8, ptr @Char2Glob, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %68, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32, ptr %3, align 4
  %74 = sext i8 %67 to i32
  %75 = call i32 @Func1(i32 noundef %74, i32 noundef 67)
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79
  %81 = add i8 %67, 1
  br label %66, !llvm.loop !10

82:                                               ; preds = %66
  %.lcssa2 = phi i8 [ %67, %66 ]
  %83 = load double, ptr %1, align 8
  %84 = fmul double 3.000000e+00, %83
  store double %84, ptr %2, align 8
  %85 = load double, ptr %2, align 8
  %86 = load double, ptr %1, align 8
  %87 = fdiv double %85, %86
  %88 = load double, ptr %2, align 8
  %89 = fsub double %88, %87
  %90 = load double, ptr %1, align 8
  %91 = fneg double %90
  %92 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %89, double %91)
  %93 = call i32 @Proc2(ptr noundef %1)
  br label %94

94:                                               ; preds = %82
  %95 = add i32 %39, 1
  br label %37, !llvm.loop !11

96:                                               ; preds = %37
  %.lcssa28.lcssa = phi i8 [ %.lcssa28, %37 ]
  %.lcssa6 = phi double [ %38, %37 ]
  %.lcssa4 = phi i32 [ %39, %37 ]
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
  %4 = load i8, ptr @Char1Glob, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 65
  br label %7

7:                                                ; preds = %19, %1
  %8 = phi i32 [ %15, %19 ], [ undef, %1 ]
  %9 = phi double [ %16, %19 ], [ %3, %1 ]
  br i1 %6, label %10, label %14

10:                                               ; preds = %7
  %11 = fadd double %9, -1.000000e+00
  %12 = load double, ptr @IntGlob, align 8
  %13 = fsub double %11, %12
  store double %13, ptr %0, align 8
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ 0, %10 ], [ %8, %7 ]
  %16 = phi double [ %11, %10 ], [ %9, %7 ]
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  %.lcssa2 = phi i32 [ %15, %14 ]
  %.lcssa = phi double [ %16, %14 ]
  br label %20

19:                                               ; preds = %14
  br label %7

20:                                               ; preds = %18
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
  %22 = fptosi double %5 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [51 x double], ptr %1, i64 %23
  br label %25

25:                                               ; preds = %32, %4
  %26 = phi double [ %33, %32 ], [ %5, %4 ]
  %27 = fcmp ole double %26, %21
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = fptosi double %26 to i32
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [51 x double], ptr %24, i64 0, i64 %30
  store double %5, ptr %31, align 8
  br label %32

32:                                               ; preds = %28
  %33 = fadd double %26, 1.000000e+00
  br label %25, !llvm.loop !12

34:                                               ; preds = %25
  %.lcssa = phi double [ %26, %25 ]
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
  br label %3

3:                                                ; preds = %23, %2
  %4 = phi i8 [ %24, %23 ], [ undef, %2 ]
  %5 = phi double [ %25, %23 ], [ 1.000000e+00, %2 ]
  %6 = fcmp ole double %5, 1.000000e+00
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = fptosi double %5 to i32
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %13 = fptosi double %5 to i32
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 @Func1(i32 noundef %12, i32 noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = fadd double %5, 1.000000e+00
  br label %23

23:                                               ; preds = %21, %7
  %24 = phi i8 [ 65, %21 ], [ %4, %7 ]
  %25 = phi double [ %22, %21 ], [ %5, %7 ]
  br label %3, !llvm.loop !13

26:                                               ; preds = %3
  %.lcssa2 = phi i8 [ %4, %3 ]
  %.lcssa = phi double [ %5, %3 ]
  %27 = sext i8 %.lcssa2 to i32
  %28 = icmp sge i32 %27, 87
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = sext i8 %.lcssa2 to i32
  %31 = icmp sle i32 %30, 90
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %29, %26
  %.0 = phi double [ 7.000000e+00, %32 ], [ %.lcssa, %29 ], [ %.lcssa, %26 ]
  %34 = sext i8 %.lcssa2 to i32
  %35 = icmp eq i32 %34, 88
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %43

37:                                               ; preds = %33
  %38 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = fadd double %.0, 7.000000e+00
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %40, %36
  %.011 = phi i32 [ 1, %36 ], [ 1, %40 ], [ 0, %42 ]
  ret i32 %.011
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
