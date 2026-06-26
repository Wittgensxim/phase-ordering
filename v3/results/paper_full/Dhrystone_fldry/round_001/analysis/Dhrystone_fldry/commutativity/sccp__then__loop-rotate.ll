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
  %9 = add nuw nsw i32 %.02, 1
  %10 = icmp ult i32 %9, 100000000
  br i1 %10, label %7, label %11, !llvm.loop !7

11:                                               ; preds = %8
  %12 = call i32 @clock()
  %13 = call ptr @malloc(i64 noundef 56) #5
  store ptr %13, ptr @PtrGlbNext, align 8
  %14 = call ptr @malloc(i64 noundef 56) #5
  store ptr %14, ptr @PtrGlb, align 8
  %15 = load ptr, ptr @PtrGlbNext, align 8
  %16 = load ptr, ptr @PtrGlb, align 8
  %17 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
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
  %26 = getelementptr inbounds nuw [31 x i8], ptr %25, i64 0, i64 0
  %27 = call ptr @strcpy(ptr noundef %26, ptr noundef @.str.1) #6
  %28 = getelementptr inbounds nuw [31 x i8], ptr %4, i64 0, i64 0
  %29 = call ptr @strcpy(ptr noundef %28, ptr noundef @.str.2) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %30 = call i32 @clock()
  br label %31

31:                                               ; preds = %11, %80
  %.17 = phi i32 [ 0, %11 ], [ %81, %80 ]
  %32 = call i32 @Proc5()
  %33 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  %34 = getelementptr inbounds nuw [31 x i8], ptr %5, i64 0, i64 0
  %35 = call ptr @strcpy(ptr noundef %34, ptr noundef @.str.3) #6
  store i32 10000, ptr %3, align 4
  %36 = getelementptr inbounds nuw [31 x i8], ptr %4, i64 0, i64 0
  %37 = getelementptr inbounds nuw [31 x i8], ptr %5, i64 0, i64 0
  %38 = call i32 @Func2(ptr noundef %36, ptr noundef %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, ptr @BoolGlob, align 4
  %42 = load double, ptr %1, align 8
  %43 = fcmp olt double %42, 3.000000e+00
  br i1 %43, label %.lr.ph, label %53

.lr.ph:                                           ; preds = %31
  br label %44

44:                                               ; preds = %.lr.ph, %44
  %45 = load double, ptr %1, align 8
  %46 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %45, double -3.000000e+00)
  store double %46, ptr %2, align 8
  %47 = load double, ptr %1, align 8
  %48 = call i32 @Proc7(double noundef %47, double noundef 3.000000e+00, ptr noundef %2)
  %49 = load double, ptr %1, align 8
  %50 = fadd double %49, 1.000000e+00
  store double %50, ptr %1, align 8
  %51 = load double, ptr %1, align 8
  %52 = fcmp olt double %51, 3.000000e+00
  br i1 %52, label %44, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %44
  br label %53

53:                                               ; preds = %._crit_edge, %31
  %54 = load double, ptr %1, align 8
  %55 = load double, ptr %2, align 8
  %56 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, double noundef %54, double noundef %55)
  %57 = load ptr, ptr @PtrGlb, align 8
  %58 = call i32 @Proc1(ptr noundef %57)
  %59 = load i8, ptr @Char2Glob, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 65, %60
  br i1 %61, label %.lr.ph5, label %76

.lr.ph5:                                          ; preds = %53
  br label %62

62:                                               ; preds = %.lr.ph5, %70
  %.013 = phi i8 [ 65, %.lr.ph5 ], [ %71, %70 ]
  %63 = load i32, ptr %3, align 4
  %64 = sext i8 %.013 to i32
  %65 = call i32 @Func1(i32 noundef %64, i32 noundef 67)
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69
  %71 = add i8 %.013, 1
  %72 = sext i8 %71 to i32
  %73 = load i8, ptr @Char2Glob, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp sle i32 %72, %74
  br i1 %75, label %62, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %70
  br label %76

76:                                               ; preds = %._crit_edge6, %53
  %77 = load double, ptr %1, align 8
  %78 = fmul double 3.000000e+00, %77
  store double %78, ptr %2, align 8
  %79 = call i32 @Proc2(ptr noundef %1)
  br label %80

80:                                               ; preds = %76
  %81 = add nuw nsw i32 %.17, 1
  %82 = icmp ult i32 %81, 100000000
  br i1 %82, label %31, label %83, !llvm.loop !11

83:                                               ; preds = %80
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
  %.1 = phi double [ %9, %8 ], [ %3, %4 ]
  br label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
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
  %22 = fcmp ole double %5, %21
  br i1 %22, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %4
  br label %23

23:                                               ; preds = %.lr.ph, %30
  %.01 = phi double [ %5, %.lr.ph ], [ %31, %30 ]
  %24 = fptosi double %5 to i32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [51 x double], ptr %1, i64 %25
  %27 = fptosi double %.01 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [51 x double], ptr %26, i64 0, i64 %28
  store double %5, ptr %29, align 8
  br label %30

30:                                               ; preds = %23
  %31 = fadd double %.01, 1.000000e+00
  %32 = fcmp ole double %31, %21
  br i1 %32, label %23, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %30
  br label %33

33:                                               ; preds = %._crit_edge, %4
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

3:                                                ; preds = %2, %19
  %.011 = phi double [ 1.000000e+00, %2 ], [ %.1, %19 ]
  %4 = fptosi double %.011 to i32
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = fptosi double %.011 to i32
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 @Func1(i32 noundef %8, i32 noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = fadd double %.011, 1.000000e+00
  br label %19

19:                                               ; preds = %17, %3
  %.1 = phi double [ %18, %17 ], [ %.011, %3 ]
  %20 = fcmp ole double %.1, 1.000000e+00
  br i1 %20, label %3, label %21, !llvm.loop !13

21:                                               ; preds = %19
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
