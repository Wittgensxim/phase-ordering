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

7:                                                ; preds = %0, %8
  %.02 = phi i32 [ 0, %0 ], [ %9, %8 ]
  br label %8

8:                                                ; preds = %7
  %9 = add i32 %.02, 1
  %10 = icmp ult i32 %9, 100000000
  br i1 %10, label %7, label %11, !llvm.loop !7

11:                                               ; preds = %8
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
  %18 = load ptr, ptr @PtrGlb, align 8
  %19 = getelementptr inbounds nuw %struct.Record, ptr %18, i32 0, i32 2
  store i32 10001, ptr %19, align 4
  %20 = load ptr, ptr @PtrGlb, align 8
  %21 = getelementptr inbounds nuw %struct.Record, ptr %20, i32 0, i32 3
  store double 4.000000e+01, ptr %21, align 8
  %22 = load ptr, ptr @PtrGlb, align 8
  %23 = getelementptr inbounds nuw %struct.Record, ptr %22, i32 0, i32 4
  %24 = call ptr @strcpy(ptr noundef %23, ptr noundef @.str.1) #6
  %25 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %26 = call i32 @clock()
  br label %27

27:                                               ; preds = %11, %72
  %.17 = phi i32 [ 0, %11 ], [ %73, %72 ]
  %28 = call i32 @Proc5()
  %29 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  %30 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.3) #6
  store i32 10000, ptr %3, align 4
  %31 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, ptr @BoolGlob, align 4
  %35 = load double, ptr %1, align 8
  %36 = fcmp olt double %35, 3.000000e+00
  br i1 %36, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %27
  br label %37

37:                                               ; preds = %.lr.ph, %37
  %38 = load double, ptr %1, align 8
  %39 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %38, double -3.000000e+00)
  store double %39, ptr %2, align 8
  %40 = load double, ptr %1, align 8
  %41 = call i32 @Proc7(double noundef %40, double noundef 3.000000e+00, ptr noundef %2)
  %42 = load double, ptr %1, align 8
  %43 = fadd double %42, 1.000000e+00
  store double %43, ptr %1, align 8
  %44 = fcmp olt double %43, 3.000000e+00
  br i1 %44, label %37, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %37
  br label %45

45:                                               ; preds = %._crit_edge, %27
  %46 = load double, ptr %1, align 8
  %47 = load double, ptr %2, align 8
  %48 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %46, double noundef %47)
  %49 = load ptr, ptr @PtrGlb, align 8
  %50 = call i32 @Proc1(ptr noundef %49)
  %51 = load i8, ptr @Char2Glob, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 65, %52
  br i1 %53, label %.lr.ph5, label %68

.lr.ph5:                                          ; preds = %45
  br label %54

54:                                               ; preds = %.lr.ph5, %62
  %.013 = phi i8 [ 65, %.lr.ph5 ], [ %63, %62 ]
  %55 = load i32, ptr %3, align 4
  %56 = sext i8 %.013 to i32
  %57 = call i32 @Func1(i32 noundef %56, i32 noundef 67)
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %61

61:                                               ; preds = %59, %54
  br label %62

62:                                               ; preds = %61
  %63 = add i8 %.013, 1
  %64 = sext i8 %63 to i32
  %65 = load i8, ptr @Char2Glob, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sle i32 %64, %66
  br i1 %67, label %54, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %62
  br label %68

68:                                               ; preds = %._crit_edge6, %45
  %69 = load double, ptr %1, align 8
  %70 = fmul double 3.000000e+00, %69
  store double %70, ptr %2, align 8
  %71 = call i32 @Proc2(ptr noundef %1)
  br label %72

72:                                               ; preds = %68
  %73 = add i32 %.17, 1
  %74 = icmp ult i32 %73, 100000000
  br i1 %74, label %27, label %75, !llvm.loop !11

75:                                               ; preds = %72
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
  br label %4

4:                                                ; preds = %12, %1
  %.0 = phi double [ %3, %1 ], [ %.1, %12 ]
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
  br i1 true, label %13, label %4

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
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
  %15 = fadd double %5, 1.000000e+00
  %16 = fcmp ole double %5, %15
  br i1 %16, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %4
  br label %17

17:                                               ; preds = %.lr.ph, %22
  %.01 = phi double [ %5, %.lr.ph ], [ %23, %22 ]
  %18 = getelementptr inbounds [51 x double], ptr %1, i64 %7
  %19 = fptosi double %.01 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [51 x double], ptr %18, i64 0, i64 %20
  store double %5, ptr %21, align 8
  br label %22

22:                                               ; preds = %17
  %23 = fadd double %.01, 1.000000e+00
  %24 = fcmp ole double %23, %15
  br i1 %24, label %17, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %22
  br label %25

25:                                               ; preds = %._crit_edge, %4
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
  %.0 = phi i32 [ 0, %8 ], [ 10000, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %18
  %.011 = phi double [ 1.000000e+00, %2 ], [ %.1, %18 ]
  %4 = fptosi double %.011 to i32
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = add nsw i32 %4, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 @Func1(i32 noundef %8, i32 noundef %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = fadd double %.011, 1.000000e+00
  br label %18

18:                                               ; preds = %16, %3
  %.1 = phi double [ %17, %16 ], [ %.011, %3 ]
  %19 = fcmp ole double %.1, 1.000000e+00
  br i1 %19, label %3, label %20, !llvm.loop !13

20:                                               ; preds = %18
  br label %23

21:                                               ; No predecessors!
  br label %23

22:                                               ; No predecessors!
  br label %23

23:                                               ; preds = %22, %21, %20
  br i1 false, label %24, label %25

24:                                               ; preds = %23
  br label %30

25:                                               ; preds = %23
  %26 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #6
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %30

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %28, %24
  %.0 = phi i32 [ 1, %24 ], [ 1, %28 ], [ 0, %29 ]
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
