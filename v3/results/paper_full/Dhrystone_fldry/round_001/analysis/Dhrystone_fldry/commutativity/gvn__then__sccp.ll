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

7:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %8 = icmp ult i32 %.0, 100000000
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !7

11:                                               ; preds = %7
  %12 = call i32 @clock()
  %13 = call ptr @malloc(i64 noundef 56) #5
  store ptr %13, ptr @PtrGlbNext, align 8
  %14 = call ptr @malloc(i64 noundef 56) #5
  store ptr %14, ptr @PtrGlb, align 8
  %15 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %15, ptr %14, align 8
  %16 = load ptr, ptr @PtrGlb, align 8
  %17 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 1
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 2
  store i32 10001, ptr %18, align 4
  %19 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 3
  store double 4.000000e+01, ptr %19, align 8
  %20 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 4
  %21 = call ptr @strcpy(ptr noundef %20, ptr noundef @.str.1) #6
  %22 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %23 = call i32 @clock()
  br label %24

24:                                               ; preds = %60, %11
  %.1 = phi i32 [ 0, %11 ], [ %64, %60 ]
  %25 = icmp ult i32 %.1, 100000000
  br i1 %25, label %26, label %65

26:                                               ; preds = %24
  %27 = call i32 @Proc5()
  %28 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  %29 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.3) #6
  store i32 10000, ptr %3, align 4
  %30 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, ptr @BoolGlob, align 4
  %.pre = load double, ptr %1, align 8
  br label %34

34:                                               ; preds = %37, %26
  %35 = phi double [ %41, %37 ], [ %.pre, %26 ]
  %36 = fcmp olt double %35, 3.000000e+00
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %35, double -3.000000e+00)
  store double %38, ptr %2, align 8
  %39 = call i32 @Proc7(double noundef %35, double noundef 3.000000e+00, ptr noundef %2)
  %40 = load double, ptr %1, align 8
  %41 = fadd double %40, 1.000000e+00
  store double %41, ptr %1, align 8
  br label %34, !llvm.loop !9

42:                                               ; preds = %34
  %43 = load double, ptr %2, align 8
  %44 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %35, double noundef %43)
  %45 = load ptr, ptr @PtrGlb, align 8
  %46 = call i32 @Proc1(ptr noundef %45)
  br label %47

47:                                               ; preds = %58, %42
  %.01 = phi i8 [ 65, %42 ], [ %59, %58 ]
  %48 = sext i8 %.01 to i32
  %49 = load i8, ptr @Char2Glob, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sle i32 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, ptr %3, align 4
  %54 = call i32 @Func1(i32 noundef %48, i32 noundef 67)
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %58

58:                                               ; preds = %56, %52
  %59 = add i8 %.01, 1
  br label %47, !llvm.loop !10

60:                                               ; preds = %47
  %61 = load double, ptr %1, align 8
  %62 = fmul double 3.000000e+00, %61
  store double %62, ptr %2, align 8
  %63 = call i32 @Proc2(ptr noundef %1)
  %64 = add nuw nsw i32 %.1, 1
  br label %24, !llvm.loop !11

65:                                               ; preds = %24
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

4:                                                ; preds = %1
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
  %.1 = phi double [ %8, %7 ], [ %3, %4 ]
  br label %12

12:                                               ; preds = %11
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
define dso_local range(i32 0, 10001) i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
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
define dso_local range(i32 0, 2) i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
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
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  %24 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %28

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %26
  %.0 = phi i32 [ 0, %27 ], [ 1, %26 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Func3(i32 noundef %0) #0 {
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
