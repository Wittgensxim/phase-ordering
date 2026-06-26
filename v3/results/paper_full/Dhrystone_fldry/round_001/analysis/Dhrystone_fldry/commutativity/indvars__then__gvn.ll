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
  br label %7

7:                                                ; preds = %8, %0
  br i1 false, label %8, label %9

8:                                                ; preds = %7
  br label %7, !llvm.loop !7

9:                                                ; preds = %7
  %10 = call i32 @clock()
  %11 = call ptr @malloc(i64 noundef 56) #5
  store ptr %11, ptr @PtrGlbNext, align 8
  %12 = call ptr @malloc(i64 noundef 56) #5
  store ptr %12, ptr @PtrGlb, align 8
  %13 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %13, ptr %12, align 8
  %14 = load ptr, ptr @PtrGlb, align 8
  %15 = getelementptr inbounds nuw %struct.Record, ptr %14, i32 0, i32 1
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds nuw %struct.Record, ptr %14, i32 0, i32 2
  store i32 10001, ptr %16, align 4
  %17 = getelementptr inbounds nuw %struct.Record, ptr %14, i32 0, i32 3
  store double 4.000000e+01, ptr %17, align 8
  %18 = getelementptr inbounds nuw %struct.Record, ptr %14, i32 0, i32 4
  %19 = call ptr @strcpy(ptr noundef %18, ptr noundef @.str.1) #6
  %20 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %21 = call i32 @clock()
  br label %22

22:                                               ; preds = %57, %9
  %.1 = phi i32 [ 0, %9 ], [ %61, %57 ]
  %exitcond = icmp ne i32 %.1, 100000000
  br i1 %exitcond, label %23, label %62

23:                                               ; preds = %22
  %24 = call i32 @Proc5()
  %25 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  %26 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.3) #6
  store i32 10000, ptr %3, align 4
  %27 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, ptr @BoolGlob, align 4
  %.pre = load double, ptr %1, align 8
  br label %31

31:                                               ; preds = %34, %23
  %32 = phi double [ %38, %34 ], [ %.pre, %23 ]
  %33 = fcmp olt double %32, 3.000000e+00
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %32, double -3.000000e+00)
  store double %35, ptr %2, align 8
  %36 = call i32 @Proc7(double noundef %32, double noundef 3.000000e+00, ptr noundef %2)
  %37 = load double, ptr %1, align 8
  %38 = fadd double %37, 1.000000e+00
  store double %38, ptr %1, align 8
  br label %31, !llvm.loop !9

39:                                               ; preds = %31
  %40 = load double, ptr %2, align 8
  %41 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %32, double noundef %40)
  %42 = load ptr, ptr @PtrGlb, align 8
  %43 = call i32 @Proc1(ptr noundef %42)
  br label %44

44:                                               ; preds = %55, %39
  %.01 = phi i8 [ 65, %39 ], [ %56, %55 ]
  %45 = sext i8 %.01 to i32
  %46 = load i8, ptr @Char2Glob, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %45, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, ptr %3, align 4
  %51 = call i32 @Func1(i32 noundef %45, i32 noundef 67)
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %55

55:                                               ; preds = %53, %49
  %56 = add i8 %.01, 1
  br label %44, !llvm.loop !10

57:                                               ; preds = %44
  %58 = load double, ptr %1, align 8
  %59 = fmul double 3.000000e+00, %58
  store double %59, ptr %2, align 8
  %60 = call i32 @Proc2(ptr noundef %1)
  %61 = add nuw nsw i32 %.1, 1
  br label %22, !llvm.loop !11

62:                                               ; preds = %22
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
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds nuw %struct.Record, ptr %3, i32 0, i32 3
  store double 5.000000e+00, ptr %4, align 8
  %5 = load ptr, ptr %0, align 8
  store ptr %5, ptr %5, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = load double, ptr %0, align 8
  %3 = fadd double %2, 1.000000e+01
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %4

4:                                                ; preds = %13, %1
  %5 = sext i8 %.pre to i32
  %6 = icmp eq i32 %5, 65
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = fadd double %3, -1.000000e+00
  %9 = load double, ptr @IntGlob, align 8
  %10 = fsub double %8, %9
  store double %10, ptr %0, align 8
  br label %11

11:                                               ; preds = %7, %4
  br i1 true, label %12, label %13

12:                                               ; preds = %11
  ret i32 undef

13:                                               ; preds = %11
  br label %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8
  store ptr %5, ptr %0, align 8
  %.pre = load double, ptr @IntGlob, align 8
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  br label %7

6:                                                ; preds = %1
  store double 1.000000e+02, ptr @IntGlob, align 8
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi ptr [ null, %6 ], [ %.pre1, %4 ]
  %9 = phi double [ 1.000000e+02, %6 ], [ %.pre, %4 ]
  %10 = getelementptr inbounds nuw %struct.Record, ptr %8, i32 0, i32 3
  %11 = call i32 @Proc7(i32 noundef 10, double noundef %9, ptr noundef %10)
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
  %9 = add nsw i32 %6, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %0, i64 %10
  store double %3, ptr %11, align 8
  %12 = add nsw i32 %6, 30
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  store double %5, ptr %14, align 8
  br label %15

15:                                               ; preds = %18, %4
  %.0 = phi double [ %5, %4 ], [ %23, %18 ]
  %16 = fadd double %5, 1.000000e+00
  %17 = fcmp ole double %.0, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = getelementptr inbounds [51 x double], ptr %1, i64 %7
  %20 = fptosi double %.0 to i32
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [51 x double], ptr %19, i64 0, i64 %21
  store double %5, ptr %22, align 8
  %23 = fadd double %.0, 1.000000e+00
  br label %15, !llvm.loop !12

24:                                               ; preds = %15
  %25 = getelementptr inbounds [51 x double], ptr %1, i64 %7
  %26 = sub nsw i32 %6, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [51 x double], ptr %25, i64 0, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = fadd double %29, 1.000000e+00
  store double %30, ptr %28, align 8
  %31 = load double, ptr %8, align 8
  %32 = add nsw i32 %6, 20
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [51 x double], ptr %1, i64 %33
  %35 = getelementptr inbounds [51 x double], ptr %34, i64 0, i64 %7
  store double %31, ptr %35, align 8
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
  br label %24

22:                                               ; No predecessors!
  br label %24

23:                                               ; No predecessors!
  br label %24

24:                                               ; preds = %23, %22, %21
  br i1 false, label %25, label %26

25:                                               ; preds = %24
  br label %31

26:                                               ; preds = %24
  %27 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %31

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %29, %25
  %.0 = phi i32 [ poison, %25 ], [ 1, %29 ], [ 0, %30 ]
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
