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

7:                                                ; preds = %24, %0
  %.0 = phi i32 [ 0, %0 ], [ %25, %24 ]
  %8 = icmp samesign ult i32 %.0, 100000000
  br i1 %8, label %9, label %26

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.0, 8
  br label %7, !llvm.loop !7

26:                                               ; preds = %7
  %27 = call i32 @clock()
  %28 = sub nsw i32 %27, %6
  %29 = call ptr @malloc(i64 noundef 56) #5
  store ptr %29, ptr @PtrGlbNext, align 8
  %30 = call ptr @malloc(i64 noundef 56) #5
  store ptr %30, ptr @PtrGlb, align 8
  %31 = load ptr, ptr @PtrGlbNext, align 8
  %32 = load ptr, ptr @PtrGlb, align 8
  %33 = getelementptr inbounds nuw %struct.Record, ptr %32, i32 0, i32 0
  store ptr %31, ptr %33, align 8
  %34 = load ptr, ptr @PtrGlb, align 8
  %35 = getelementptr inbounds nuw %struct.Record, ptr %34, i32 0, i32 1
  store i32 0, ptr %35, align 8
  %36 = load ptr, ptr @PtrGlb, align 8
  %37 = getelementptr inbounds nuw %struct.Record, ptr %36, i32 0, i32 2
  store i32 10001, ptr %37, align 4
  %38 = load ptr, ptr @PtrGlb, align 8
  %39 = getelementptr inbounds nuw %struct.Record, ptr %38, i32 0, i32 3
  store double 4.000000e+01, ptr %39, align 8
  %40 = load ptr, ptr @PtrGlb, align 8
  %41 = getelementptr inbounds nuw %struct.Record, ptr %40, i32 0, i32 4
  %42 = getelementptr inbounds [31 x i8], ptr %41, i64 0, i64 0
  %43 = call ptr @strcpy(ptr noundef %42, ptr noundef @.str.1) #6
  %44 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %45 = call ptr @strcpy(ptr noundef %44, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %46 = call i32 @clock()
  br label %47

47:                                               ; preds = %104, %26
  %.1 = phi i32 [ 0, %26 ], [ %105, %104 ]
  %48 = icmp ult i32 %.1, 100000000
  br i1 %48, label %49, label %106

49:                                               ; preds = %47
  %50 = call i32 @Proc5()
  %51 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  %52 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %53 = call ptr @strcpy(ptr noundef %52, ptr noundef @.str.3) #6
  store i32 10000, ptr %3, align 4
  %54 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %55 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %56 = call i32 @Func2(ptr noundef %54, ptr noundef %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, ptr @BoolGlob, align 4
  br label %60

60:                                               ; preds = %63, %49
  %61 = load double, ptr %1, align 8
  %62 = fcmp olt double %61, 3.000000e+00
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load double, ptr %1, align 8
  %65 = fneg double 3.000000e+00
  %66 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %64, double %65)
  store double %66, ptr %2, align 8
  %67 = load double, ptr %1, align 8
  %68 = call i32 @Proc7(double noundef %67, double noundef 3.000000e+00, ptr noundef %2)
  %69 = load double, ptr %1, align 8
  %70 = fadd double %69, 1.000000e+00
  store double %70, ptr %1, align 8
  br label %60, !llvm.loop !9

71:                                               ; preds = %60
  %72 = load double, ptr %1, align 8
  %73 = load double, ptr %2, align 8
  %74 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %72, double noundef %73)
  %75 = load ptr, ptr @PtrGlb, align 8
  %76 = call i32 @Proc1(ptr noundef %75)
  br label %77

77:                                               ; preds = %90, %71
  %.01 = phi i8 [ 65, %71 ], [ %91, %90 ]
  %78 = sext i8 %.01 to i32
  %79 = load i8, ptr @Char2Glob, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %78, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i32, ptr %3, align 4
  %84 = sext i8 %.01 to i32
  %85 = call i32 @Func1(i32 noundef %84, i32 noundef 67)
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %89

89:                                               ; preds = %87, %82
  br label %90

90:                                               ; preds = %89
  %91 = add i8 %.01, 1
  br label %77, !llvm.loop !10

92:                                               ; preds = %77
  %93 = load double, ptr %1, align 8
  %94 = fmul double 3.000000e+00, %93
  store double %94, ptr %2, align 8
  %95 = load double, ptr %2, align 8
  %96 = load double, ptr %1, align 8
  %97 = fdiv double %95, %96
  %98 = load double, ptr %2, align 8
  %99 = fsub double %98, %97
  %100 = load double, ptr %1, align 8
  %101 = fneg double %100
  %102 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %99, double %101)
  %103 = call i32 @Proc2(ptr noundef %1)
  br label %104

104:                                              ; preds = %92
  %105 = add i32 %.1, 1
  br label %47, !llvm.loop !11

106:                                              ; preds = %47
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

4:                                                ; preds = %1
  %5 = load i8, ptr @Char1Glob, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 65
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = fadd double %3, -1.000000e+00
  %10 = load double, ptr @IntGlob, align 8
  %11 = fsub double %9, %10
  store double %11, ptr %0, align 8
  br label %12

12:                                               ; preds = %8, %4
  br i1 true, label %13, label %14

13:                                               ; preds = %12
  br label %15

14:                                               ; preds = %12
  unreachable

15:                                               ; preds = %13
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
  br label %21

21:                                               ; preds = %31, %4
  %.0 = phi double [ %5, %4 ], [ %32, %31 ]
  %22 = fadd double %5, 1.000000e+00
  %23 = fcmp ole double %.0, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = fptosi double %5 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [51 x double], ptr %1, i64 %26
  %28 = fptosi double %.0 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [51 x double], ptr %27, i64 0, i64 %29
  store double %5, ptr %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = fadd double %.0, 1.000000e+00
  br label %21, !llvm.loop !12

33:                                               ; preds = %21
  %34 = fptosi double %5 to i32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [51 x double], ptr %1, i64 %35
  %37 = fptosi double %5 to i32
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [51 x double], ptr %36, i64 0, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = fadd double %41, 1.000000e+00
  store double %42, ptr %40, align 8
  %43 = fptosi double %5 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, ptr %0, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = fptosi double %5 to i32
  %48 = add nsw i32 %47, 20
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [51 x double], ptr %1, i64 %49
  %51 = fptosi double %5 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [51 x double], ptr %50, i64 0, i64 %52
  store double %46, ptr %53, align 8
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

3:                                                ; preds = %21, %2
  %.01 = phi double [ 1.000000e+00, %2 ], [ %.1, %21 ]
  %4 = fcmp ole double %.01, 1.000000e+00
  br i1 %4, label %5, label %22

5:                                                ; preds = %3
  %6 = fptosi double %.01 to i32
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1
  %10 = sext i8 %9 to i32
  %11 = fptosi double %.01 to i32
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @Func1(i32 noundef %10, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = fadd double %.01, 1.000000e+00
  br label %21

21:                                               ; preds = %19, %5
  %.1 = phi double [ %20, %19 ], [ %.01, %5 ]
  br label %3, !llvm.loop !13

22:                                               ; preds = %3
  %.01.lcssa = phi double [ %.01, %3 ]
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
  %.2 = phi double [ 7.000000e+00, %28 ], [ %.01.lcssa, %25 ], [ %.01.lcssa, %22 ]
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
  %37 = fadd double %.2, 7.000000e+00
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
