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
  %8 = phi i32 [ %11, %10 ], [ 0, %0 ]
  %9 = icmp ult i32 %8, 100000000
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = add i32 %8, 1
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
  %20 = getelementptr inbounds nuw %struct.Record, ptr %18, i32 0, i32 2
  store i32 10001, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.Record, ptr %18, i32 0, i32 3
  store double 4.000000e+01, ptr %21, align 8
  %22 = getelementptr inbounds nuw %struct.Record, ptr %18, i32 0, i32 4
  %23 = call ptr @strcpy(ptr noundef %22, ptr noundef @.str.1) #6
  %24 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %25 = call i32 @clock()
  br label %26

26:                                               ; preds = %64, %12
  %27 = phi i32 [ %72, %64 ], [ 0, %12 ]
  %28 = icmp ult i32 %27, 100000000
  br i1 %28, label %29, label %73

29:                                               ; preds = %26
  %30 = call i32 @Proc5()
  %31 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  %32 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.3) #6
  store i32 10000, ptr %3, align 4
  %33 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, ptr @BoolGlob, align 4
  %.pre = load double, ptr %1, align 8
  br label %37

37:                                               ; preds = %40, %29
  %38 = phi double [ %44, %40 ], [ %.pre, %29 ]
  %39 = fcmp olt double %38, 3.000000e+00
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %38, double -3.000000e+00)
  store double %41, ptr %2, align 8
  %42 = call i32 @Proc7(double noundef %38, double noundef 3.000000e+00, ptr noundef %2)
  %43 = load double, ptr %1, align 8
  %44 = fadd double %43, 1.000000e+00
  store double %44, ptr %1, align 8
  br label %37, !llvm.loop !9

45:                                               ; preds = %37
  %46 = load double, ptr %2, align 8
  %47 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %38, double noundef %46)
  %48 = load ptr, ptr @PtrGlb, align 8
  %49 = call i32 @Proc1(ptr noundef %48)
  br label %50

50:                                               ; preds = %62, %45
  %51 = phi i8 [ %63, %62 ], [ 65, %45 ]
  %52 = sext i8 %51 to i32
  %53 = load i8, ptr @Char2Glob, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, ptr %3, align 4
  %58 = call i32 @Func1(i32 noundef %52, i32 noundef 67)
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %62

62:                                               ; preds = %60, %56
  %63 = add i8 %51, 1
  br label %50, !llvm.loop !10

64:                                               ; preds = %50
  %65 = load double, ptr %1, align 8
  %66 = fmul double 3.000000e+00, %65
  store double %66, ptr %2, align 8
  %67 = fdiv double %66, %65
  %68 = fsub double %66, %67
  %69 = fneg double %65
  %70 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %68, double %69)
  %71 = call i32 @Proc2(ptr noundef %1)
  %72 = add i32 %27, 1
  br label %26, !llvm.loop !11

73:                                               ; preds = %26
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

4:                                                ; preds = %18, %1
  %5 = phi i32 [ %14, %18 ], [ undef, %1 ]
  %6 = phi double [ %15, %18 ], [ %3, %1 ]
  %7 = sext i8 %.pre to i32
  %8 = icmp eq i32 %7, 65
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = fadd double %6, -1.000000e+00
  %11 = load double, ptr @IntGlob, align 8
  %12 = fsub double %10, %11
  store double %12, ptr %0, align 8
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ 0, %9 ], [ %5, %4 ]
  %15 = phi double [ %10, %9 ], [ %6, %4 ]
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  ret i32 undef

18:                                               ; preds = %13
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
  %9 = add nsw i32 %6, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %0, i64 %10
  store double %3, ptr %11, align 8
  %12 = add nsw i32 %6, 30
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  store double %5, ptr %14, align 8
  br label %15

15:                                               ; preds = %19, %4
  %16 = phi double [ %24, %19 ], [ %5, %4 ]
  %17 = fadd double %5, 1.000000e+00
  %18 = fcmp ole double %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds [51 x double], ptr %1, i64 %7
  %21 = fptosi double %16 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [51 x double], ptr %20, i64 0, i64 %22
  store double %5, ptr %23, align 8
  %24 = fadd double %16, 1.000000e+00
  br label %15, !llvm.loop !12

25:                                               ; preds = %15
  %26 = getelementptr inbounds [51 x double], ptr %1, i64 %7
  %27 = sub nsw i32 %6, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [51 x double], ptr %26, i64 0, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = fadd double %30, 1.000000e+00
  store double %31, ptr %29, align 8
  %32 = load double, ptr %8, align 8
  %33 = add nsw i32 %6, 20
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [51 x double], ptr %1, i64 %34
  %36 = getelementptr inbounds [51 x double], ptr %35, i64 0, i64 %7
  store double %32, ptr %36, align 8
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
  %11 = phi i32 [ 10000, %9 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %22, %2
  %4 = phi double [ %23, %22 ], [ 1.000000e+00, %2 ]
  %5 = phi i8 [ %24, %22 ], [ undef, %2 ]
  %6 = fcmp ole double %4, 1.000000e+00
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = fptosi double %4 to i32
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %13 = add nsw i32 %8, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 @Func1(i32 noundef %12, i32 noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = fadd double %4, 1.000000e+00
  br label %22

22:                                               ; preds = %20, %7
  %23 = phi double [ %21, %20 ], [ %4, %7 ]
  %24 = phi i8 [ 65, %20 ], [ %5, %7 ]
  br label %3, !llvm.loop !13

25:                                               ; preds = %3
  %26 = sext i8 %5 to i32
  %27 = icmp sge i32 %26, 87
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = icmp sle i32 %26, 90
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30, %28, %25
  %32 = phi double [ 7.000000e+00, %30 ], [ %4, %28 ], [ %4, %25 ]
  %33 = icmp eq i32 %26, 88
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %41

35:                                               ; preds = %31
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = fadd double %32, 7.000000e+00
  br label %41

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %38, %34
  %42 = phi i32 [ 0, %40 ], [ 1, %38 ], [ 1, %34 ]
  ret i32 %42
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
  %6 = phi i32 [ 0, %4 ], [ 1, %3 ]
  ret i32 %6
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
