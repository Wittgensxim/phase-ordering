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
  %.01 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %8 = icmp ult i32 %.01, 100000000
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = add i32 %.01, 1
  br label %7, !llvm.loop !7

12:                                               ; preds = %7
  %13 = call i32 @clock()
  %14 = sub nsw i32 %13, %6
  %15 = call ptr @malloc(i64 noundef 56) #5
  store ptr %15, ptr @PtrGlbNext, align 8
  %16 = call ptr @malloc(i64 noundef 56) #5
  store ptr %16, ptr @PtrGlb, align 8
  %17 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %17, ptr %16, align 8
  %18 = load ptr, ptr @PtrGlb, align 8
  %19 = getelementptr inbounds nuw %struct.Record, ptr %18, i32 0, i32 1
  store i32 0, ptr %19, align 8
  %20 = load ptr, ptr @PtrGlb, align 8
  %21 = getelementptr inbounds nuw %struct.Record, ptr %20, i32 0, i32 2
  store i32 10001, ptr %21, align 4
  %22 = load ptr, ptr @PtrGlb, align 8
  %23 = getelementptr inbounds nuw %struct.Record, ptr %22, i32 0, i32 3
  store double 4.000000e+01, ptr %23, align 8
  %24 = load ptr, ptr @PtrGlb, align 8
  %25 = getelementptr inbounds nuw %struct.Record, ptr %24, i32 0, i32 4
  %26 = call ptr @strcpy(ptr noundef %25, ptr noundef @.str.1) #6
  %27 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %28 = call i32 @clock()
  br label %29

29:                                               ; preds = %79, %12
  %.1 = phi i32 [ 0, %12 ], [ %80, %79 ]
  %30 = icmp ult i32 %.1, 100000000
  br i1 %30, label %31, label %81

31:                                               ; preds = %29
  %32 = call i32 @Proc5()
  %33 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  %34 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.3) #6
  store i32 10000, ptr %3, align 4
  %35 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, ptr @BoolGlob, align 4
  br label %39

39:                                               ; preds = %42, %31
  %40 = load double, ptr %1, align 8
  %41 = fcmp olt double %40, 3.000000e+00
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = fneg double 3.000000e+00
  %44 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %40, double %43)
  store double %44, ptr %2, align 8
  %45 = load double, ptr %1, align 8
  %46 = call i32 @Proc7(double noundef %45, double noundef 3.000000e+00, ptr noundef %2)
  %47 = load double, ptr %1, align 8
  %48 = fadd double %47, 1.000000e+00
  store double %48, ptr %1, align 8
  br label %39, !llvm.loop !9

49:                                               ; preds = %39
  %50 = load double, ptr %2, align 8
  %51 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %40, double noundef %50)
  %52 = load ptr, ptr @PtrGlb, align 8
  %53 = call i32 @Proc1(ptr noundef %52)
  br label %54

54:                                               ; preds = %66, %49
  %.0 = phi i8 [ 65, %49 ], [ %67, %66 ]
  %55 = sext i8 %.0 to i32
  %56 = load i8, ptr @Char2Glob, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %55, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32, ptr %3, align 4
  %61 = call i32 @Func1(i32 noundef %55, i32 noundef 67)
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65
  %67 = add i8 %.0, 1
  br label %54, !llvm.loop !10

68:                                               ; preds = %54
  %69 = load double, ptr %1, align 8
  %70 = fmul double 3.000000e+00, %69
  store double %70, ptr %2, align 8
  %71 = load double, ptr %1, align 8
  %72 = fdiv double %70, %71
  %73 = load double, ptr %2, align 8
  %74 = fsub double %73, %72
  %75 = load double, ptr %1, align 8
  %76 = fneg double %75
  %77 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %74, double %76)
  %78 = call i32 @Proc2(ptr noundef %1)
  br label %79

79:                                               ; preds = %68
  %80 = add i32 %.1, 1
  br label %29, !llvm.loop !11

81:                                               ; preds = %29
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
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds nuw %struct.Record, ptr %5, i32 0, i32 3
  store double %4, ptr %6, align 8
  %7 = load ptr, ptr %0, align 8
  store ptr %7, ptr %7, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = load double, ptr %0, align 8
  %3 = fadd double %2, 1.000000e+01
  br label %4

4:                                                ; preds = %15, %1
  %.0 = phi double [ %3, %1 ], [ %.1, %15 ]
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
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %16

15:                                               ; preds = %12
  br label %4

16:                                               ; preds = %14
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8
  store ptr %5, ptr %0, align 8
  br label %7

6:                                                ; preds = %1
  store double 1.000000e+02, ptr @IntGlob, align 8
  br label %7

7:                                                ; preds = %6, %4
  %8 = load double, ptr @IntGlob, align 8
  %9 = load ptr, ptr @PtrGlb, align 8
  %10 = getelementptr inbounds nuw %struct.Record, ptr %9, i32 0, i32 3
  %11 = call i32 @Proc7(i32 noundef 10, double noundef %8, ptr noundef %10)
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
  %13 = add nsw i32 %9, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  store double %12, ptr %15, align 8
  %16 = fptosi double %5 to i32
  %17 = add nsw i32 %16, 30
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, ptr %0, i64 %18
  store double %5, ptr %19, align 8
  br label %20

20:                                               ; preds = %30, %4
  %.0 = phi double [ %5, %4 ], [ %31, %30 ]
  %21 = fadd double %5, 1.000000e+00
  %22 = fcmp ole double %.0, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
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
  br label %20, !llvm.loop !12

32:                                               ; preds = %20
  %33 = fptosi double %5 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [51 x double], ptr %1, i64 %34
  %36 = sub nsw i32 %33, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [51 x double], ptr %35, i64 0, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = fadd double %39, 1.000000e+00
  store double %40, ptr %38, align 8
  %41 = fptosi double %5 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr %0, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = add nsw i32 %41, 20
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [51 x double], ptr %1, i64 %46
  %48 = getelementptr inbounds [51 x double], ptr %47, i64 0, i64 %42
  store double %44, ptr %48, align 8
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

3:                                                ; preds = %20, %2
  %.01 = phi double [ 1.000000e+00, %2 ], [ %.1, %20 ]
  %4 = fcmp ole double %.01, 1.000000e+00
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = fptosi double %.01 to i32
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1
  %10 = sext i8 %9 to i32
  %11 = add nsw i32 %6, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1
  %15 = sext i8 %14 to i32
  %16 = call i32 @Func1(i32 noundef %10, i32 noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = fadd double %.01, 1.000000e+00
  br label %20

20:                                               ; preds = %18, %5
  %.1 = phi double [ %19, %18 ], [ %.01, %5 ]
  br label %3, !llvm.loop !13

21:                                               ; preds = %3
  %22 = sext i8 65 to i32
  %23 = icmp sge i32 %22, 87
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = icmp sle i32 %22, 90
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26, %24, %21
  %.2 = phi double [ 7.000000e+00, %26 ], [ %.01, %24 ], [ %.01, %21 ]
  %28 = sext i8 65 to i32
  %29 = icmp eq i32 %28, 88
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %37

31:                                               ; preds = %27
  %32 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = fadd double %.2, 7.000000e+00
  br label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %34, %30
  %.0 = phi i32 [ 1, %30 ], [ 1, %34 ], [ 0, %36 ]
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
