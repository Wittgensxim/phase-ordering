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

7:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %8 = icmp ult i32 %.0, 100000000
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = add i32 %.0, 1
  br label %7, !llvm.loop !7

12:                                               ; preds = %7
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
  %33 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %34 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %35 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %36 = fneg double 3.000000e+00
  br label %37

37:                                               ; preds = %82, %12
  %.1 = phi i32 [ 0, %12 ], [ %83, %82 ]
  %38 = icmp ult i32 %.1, 100000000
  br i1 %38, label %39, label %84

39:                                               ; preds = %37
  %40 = call i32 @Proc5()
  %41 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  %42 = call ptr @strcpy(ptr noundef %33, ptr noundef @.str.3) #6
  store i32 10000, ptr %3, align 4
  %43 = call i32 @Func2(ptr noundef %34, ptr noundef %35)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, ptr @BoolGlob, align 4
  br label %47

47:                                               ; preds = %50, %39
  %48 = load double, ptr %1, align 8
  %49 = fcmp olt double %48, 3.000000e+00
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load double, ptr %1, align 8
  %52 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %51, double %36)
  store double %52, ptr %2, align 8
  %53 = load double, ptr %1, align 8
  %54 = call i32 @Proc7(double noundef %53, double noundef 3.000000e+00, ptr noundef %2)
  %55 = load double, ptr %1, align 8
  %56 = fadd double %55, 1.000000e+00
  store double %56, ptr %1, align 8
  br label %47, !llvm.loop !9

57:                                               ; preds = %47
  %58 = load double, ptr %1, align 8
  %59 = load double, ptr %2, align 8
  %60 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %58, double noundef %59)
  %61 = load ptr, ptr @PtrGlb, align 8
  %62 = call i32 @Proc1(ptr noundef %61)
  br label %63

63:                                               ; preds = %76, %57
  %.01 = phi i8 [ 65, %57 ], [ %77, %76 ]
  %64 = sext i8 %.01 to i32
  %65 = load i8, ptr @Char2Glob, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sle i32 %64, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, ptr %3, align 4
  %70 = sext i8 %.01 to i32
  %71 = call i32 @Func1(i32 noundef %70, i32 noundef 67)
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %75

75:                                               ; preds = %73, %68
  br label %76

76:                                               ; preds = %75
  %77 = add i8 %.01, 1
  br label %63, !llvm.loop !10

78:                                               ; preds = %63
  %79 = load double, ptr %1, align 8
  %80 = fmul double 3.000000e+00, %79
  store double %80, ptr %2, align 8
  %81 = call i32 @Proc2(ptr noundef %1)
  br label %82

82:                                               ; preds = %78
  %83 = add i32 %.1, 1
  br label %37, !llvm.loop !11

84:                                               ; preds = %37
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
  %7 = icmp eq i32 0, 0
  br label %8

8:                                                ; preds = %15, %1
  %.0 = phi double [ %3, %1 ], [ %.1, %15 ]
  br i1 %6, label %9, label %13

9:                                                ; preds = %8
  %10 = fadd double %.0, -1.000000e+00
  %11 = load double, ptr @IntGlob, align 8
  %12 = fsub double %10, %11
  store double %12, ptr %0, align 8
  br label %13

13:                                               ; preds = %9, %8
  %.1 = phi double [ %10, %9 ], [ %.0, %8 ]
  br i1 %7, label %14, label %15

14:                                               ; preds = %13
  br label %16

15:                                               ; preds = %13
  br label %8

16:                                               ; preds = %14
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

25:                                               ; preds = %31, %4
  %.0 = phi double [ %5, %4 ], [ %32, %31 ]
  %26 = fcmp ole double %.0, %21
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = fptosi double %.0 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [51 x double], ptr %24, i64 0, i64 %29
  store double %5, ptr %30, align 8
  br label %31

31:                                               ; preds = %27
  %32 = fadd double %.0, 1.000000e+00
  br label %25, !llvm.loop !12

33:                                               ; preds = %25
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
