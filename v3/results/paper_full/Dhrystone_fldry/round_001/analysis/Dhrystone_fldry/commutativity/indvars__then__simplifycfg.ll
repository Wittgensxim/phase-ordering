; ModuleID = 'results\paper_full\Dhrystone_fldry\round_000\output.ll'
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
  %7 = call i32 @clock()
  %8 = call ptr @malloc(i64 noundef 56) #5
  store ptr %8, ptr @PtrGlbNext, align 8
  %9 = call ptr @malloc(i64 noundef 56) #5
  store ptr %9, ptr @PtrGlb, align 8
  %10 = load ptr, ptr @PtrGlbNext, align 8
  %11 = load ptr, ptr @PtrGlb, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 0
  store ptr %10, ptr %12, align 8
  %13 = load ptr, ptr @PtrGlb, align 8
  %14 = getelementptr inbounds nuw %struct.Record, ptr %13, i32 0, i32 1
  store i32 0, ptr %14, align 8
  %15 = load ptr, ptr @PtrGlb, align 8
  %16 = getelementptr inbounds nuw %struct.Record, ptr %15, i32 0, i32 2
  store i32 10001, ptr %16, align 4
  %17 = load ptr, ptr @PtrGlb, align 8
  %18 = getelementptr inbounds nuw %struct.Record, ptr %17, i32 0, i32 3
  store double 4.000000e+01, ptr %18, align 8
  %19 = load ptr, ptr @PtrGlb, align 8
  %20 = getelementptr inbounds nuw %struct.Record, ptr %19, i32 0, i32 4
  %21 = getelementptr inbounds [31 x i8], ptr %20, i64 0, i64 0
  %22 = call ptr @strcpy(ptr noundef %21, ptr noundef @.str.1) #6
  %23 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %24 = call ptr @strcpy(ptr noundef %23, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %25 = call i32 @clock()
  br label %26

26:                                               ; preds = %69, %0
  %.1 = phi i32 [ 0, %0 ], [ %73, %69 ]
  %exitcond = icmp ne i32 %.1, 100000000
  br i1 %exitcond, label %27, label %74

27:                                               ; preds = %26
  %28 = call i32 @Proc5()
  %29 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  %30 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %31 = call ptr @strcpy(ptr noundef %30, ptr noundef @.str.3) #6
  store i32 10000, ptr %3, align 4
  %32 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %33 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %34 = call i32 @Func2(ptr noundef %32, ptr noundef %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, ptr @BoolGlob, align 4
  br label %38

38:                                               ; preds = %41, %27
  %39 = load double, ptr %1, align 8
  %40 = fcmp olt double %39, 3.000000e+00
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load double, ptr %1, align 8
  %43 = fneg double 3.000000e+00
  %44 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %42, double %43)
  store double %44, ptr %2, align 8
  %45 = load double, ptr %1, align 8
  %46 = call i32 @Proc7(double noundef %45, double noundef 3.000000e+00, ptr noundef %2)
  %47 = load double, ptr %1, align 8
  %48 = fadd double %47, 1.000000e+00
  store double %48, ptr %1, align 8
  br label %38, !llvm.loop !7

49:                                               ; preds = %38
  %50 = load double, ptr %1, align 8
  %51 = load double, ptr %2, align 8
  %52 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %50, double noundef %51)
  %53 = load ptr, ptr @PtrGlb, align 8
  %54 = call i32 @Proc1(ptr noundef %53)
  br label %55

55:                                               ; preds = %67, %49
  %.01 = phi i8 [ 65, %49 ], [ %68, %67 ]
  %56 = sext i8 %.01 to i32
  %57 = load i8, ptr @Char2Glob, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %56, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32, ptr %3, align 4
  %62 = sext i8 %.01 to i32
  %63 = call i32 @Func1(i32 noundef %62, i32 noundef 67)
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %67

67:                                               ; preds = %60, %65
  %68 = add i8 %.01, 1
  br label %55, !llvm.loop !9

69:                                               ; preds = %55
  %70 = load double, ptr %1, align 8
  %71 = fmul double 3.000000e+00, %70
  store double %71, ptr %2, align 8
  %72 = call i32 @Proc2(ptr noundef %1)
  %73 = add nuw nsw i32 %.1, 1
  br label %26, !llvm.loop !10

74:                                               ; preds = %26
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
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = fadd double %3, -1.000000e+00
  %9 = load double, ptr @IntGlob, align 8
  %10 = fsub double %8, %9
  store double %10, ptr %0, align 8
  br label %11

11:                                               ; preds = %7, %1
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
  switch i32 %0, label %15 [
    i32 0, label %7
    i32 10000, label %8
    i32 10001, label %13
    i32 10003, label %14
  ]

7:                                                ; preds = %6
  store i32 0, ptr %1, align 4
  br label %15

8:                                                ; preds = %6
  %9 = load double, ptr @IntGlob, align 8
  %10 = fcmp ogt double %9, 1.000000e+02
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, ptr %1, align 4
  br label %15

12:                                               ; preds = %8
  store i32 10002, ptr %1, align 4
  br label %15

13:                                               ; preds = %6
  store i32 10000, ptr %1, align 4
  br label %15

14:                                               ; preds = %6
  store i32 10001, ptr %1, align 4
  br label %15

15:                                               ; preds = %11, %12, %14, %13, %7, %6
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

21:                                               ; preds = %24, %4
  %.0 = phi double [ %5, %4 ], [ %31, %24 ]
  %22 = fadd double %5, 1.000000e+00
  %23 = fcmp ole double %.0, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = fptosi double %5 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [51 x double], ptr %1, i64 %26
  %28 = fptosi double %.0 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [51 x double], ptr %27, i64 0, i64 %29
  store double %5, ptr %30, align 8
  %31 = fadd double %.0, 1.000000e+00
  br label %21, !llvm.loop !11

32:                                               ; preds = %21
  %33 = fptosi double %5 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [51 x double], ptr %1, i64 %34
  %36 = fptosi double %5 to i32
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [51 x double], ptr %35, i64 0, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = fadd double %40, 1.000000e+00
  store double %41, ptr %39, align 8
  %42 = fptosi double %5 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %0, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = fptosi double %5 to i32
  %47 = add nsw i32 %46, 20
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [51 x double], ptr %1, i64 %48
  %50 = fptosi double %5 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [51 x double], ptr %49, i64 0, i64 %51
  store double %45, ptr %52, align 8
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
  %. = select i1 %7, i32 0, i32 10000
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi double [ 1.000000e+00, %2 ], [ %.1, %5 ]
  %4 = fcmp ole double %.01, 1.000000e+00
  br i1 %4, label %5, label %20

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
  %19 = fadd double %.01, 1.000000e+00
  %.1 = select i1 %18, double %19, double %.01
  br label %3, !llvm.loop !12

20:                                               ; preds = %3
  %21 = sext i8 65 to i32
  %22 = icmp eq i32 %21, 88
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %25 = icmp sgt i32 %24, 0
  %. = select i1 %25, i32 1, i32 0
  br label %26

26:                                               ; preds = %23, %20
  %.0 = phi i32 [ 1, %20 ], [ %., %23 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  %. = select i1 %2, i32 1, i32 0
  ret i32 %.
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
