; ModuleID = 'results\paper_full\Dhrystone_fldry\Dhrystone_fldry.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/fldry.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

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
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef 8) #6
  %4 = call i32 @Proc0()
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca [31 x i8], align 16
  %7 = alloca [31 x i8], align 16
  %8 = alloca i32, align 4
  %9 = call i32 @clock() #6
  br label %10

10:                                               ; preds = %13, %0
  %11 = phi i32 [ 0, %0 ], [ %14, %13 ]
  store i32 %11, ptr %8, align 4
  %12 = icmp ult i32 %11, 100000000
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = add i32 %11, 1
  br label %10, !llvm.loop !7

15:                                               ; preds = %10
  %16 = call i32 @clock() #6
  %17 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %17, ptr @PtrGlbNext, align 8
  %18 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %18, ptr @PtrGlb, align 8
  %19 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %19, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 10001, ptr %21, align 4
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store double 4.000000e+01, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %23, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %6, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %24 = call i32 @clock() #6
  br label %25

25:                                               ; preds = %58, %15
  %26 = phi i32 [ 0, %15 ], [ %66, %58 ]
  store i32 %26, ptr %8, align 4
  %27 = icmp ult i32 %26, 100000000
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  %29 = call i32 @Proc5()
  %30 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  store double 3.000000e+00, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.3, i64 31, i1 false) #6
  store i32 10000, ptr %5, align 4
  %31 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %31, 0
  %32 = zext i1 %.not to i32
  store i32 %32, ptr @BoolGlob, align 4
  %.pre = load double, ptr %1, align 8
  br label %33

33:                                               ; preds = %36, %28
  %34 = phi double [ %40, %36 ], [ %.pre, %28 ]
  %35 = fcmp olt double %34, 3.000000e+00
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = call double @llvm.fmuladd.f64(double %34, double 5.000000e+00, double -3.000000e+00)
  store double %37, ptr %3, align 8
  %38 = call i32 @Proc7(double noundef %34, double noundef 3.000000e+00, ptr noundef nonnull %3)
  %39 = load double, ptr %1, align 8
  %40 = fadd double %39, 1.000000e+00
  store double %40, ptr %1, align 8
  br label %33, !llvm.loop !9

41:                                               ; preds = %33
  %42 = load double, ptr %3, align 8
  %43 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, double noundef %34, double noundef %42)
  %44 = load ptr, ptr @PtrGlb, align 8
  %45 = call i32 @Proc1(ptr noundef %44)
  br label %46

46:                                               ; preds = %56, %41
  %47 = phi i8 [ 65, %41 ], [ %57, %56 ]
  store i8 %47, ptr %4, align 1
  %48 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %47, %48
  br i1 %.not3, label %58, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %5, align 4
  %51 = sext i8 %47 to i32
  %52 = call i32 @Func1(i32 noundef %51, i32 noundef 67)
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %56

56:                                               ; preds = %54, %49
  %57 = add i8 %47, 1
  br label %46, !llvm.loop !10

58:                                               ; preds = %46
  %59 = load double, ptr %1, align 8
  %60 = fmul double 3.000000e+00, %59
  store double %60, ptr %3, align 8
  %61 = fdiv double %60, %59
  %62 = fsub double %60, %61
  %63 = fneg double %59
  %64 = call double @llvm.fmuladd.f64(double %62, double 7.000000e+00, double %63)
  store double %64, ptr %2, align 8
  %65 = call i32 @Proc2(ptr noundef nonnull %1)
  %66 = add i32 %26, 1
  br label %25, !llvm.loop !11

67:                                               ; preds = %25
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
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 5.000000e+00, ptr %3, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 5.000000e+00, ptr %5, align 8
  %6 = load ptr, ptr %0, align 8
  store ptr %6, ptr %6, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load double, ptr %0, align 8
  %6 = fadd double %5, 1.000000e+01
  store double %6, ptr %3, align 8
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %7

7:                                                ; preds = %20, %1
  %8 = phi i32 [ %16, %20 ], [ undef, %1 ]
  %9 = phi double [ %17, %20 ], [ %6, %1 ]
  %10 = icmp eq i8 %.pre, 65
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = fadd double %9, -1.000000e+00
  store double %12, ptr %3, align 8
  %13 = load double, ptr @IntGlob, align 8
  %14 = fsub double %12, %13
  store double %14, ptr %0, align 8
  store i32 0, ptr %4, align 4
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ 0, %11 ], [ %8, %7 ]
  %17 = phi double [ %12, %11 ], [ %9, %7 ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  ret i32 undef

20:                                               ; preds = %15
  br label %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr @PtrGlb, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %3, align 8
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
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %11 = call i32 @Proc7(i32 noundef 10, double noundef %9, ptr noundef nonnull %10)
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
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %1, align 4
  %5 = call i32 @Func3(i32 noundef %0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %7

6:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %7

7:                                                ; preds = %6, %2
  switch i32 %0, label %18 [
    i32 0, label %8
    i32 10000, label %9
    i32 10001, label %15
    i32 10002, label %16
    i32 10003, label %17
  ]

8:                                                ; preds = %7
  store i32 0, ptr %1, align 4
  br label %18

9:                                                ; preds = %7
  %10 = load double, ptr @IntGlob, align 8
  %11 = fcmp ogt double %10, 1.000000e+02
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, ptr %1, align 4
  br label %14

13:                                               ; preds = %9
  store i32 10002, ptr %1, align 4
  br label %14

14:                                               ; preds = %13, %12
  br label %18

15:                                               ; preds = %7
  store i32 10000, ptr %1, align 4
  br label %18

16:                                               ; preds = %7
  br label %18

17:                                               ; preds = %7
  store i32 10001, ptr %1, align 4
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %8, %7
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
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = fadd double %2, 5.000000e+00
  store double %9, ptr %7, align 8
  %10 = fptosi double %9 to i32
  %11 = sext i32 %10 to i64
  %12 = getelementptr [8 x i8], ptr %0, i64 %11
  store double %3, ptr %12, align 8
  %13 = getelementptr i8, ptr %12, i64 8
  store double %3, ptr %13, align 8
  %14 = getelementptr i8, ptr %12, i64 240
  store double %9, ptr %14, align 8
  br label %15

15:                                               ; preds = %19, %4
  %16 = phi double [ %9, %4 ], [ %24, %19 ]
  store double %16, ptr %8, align 8
  %17 = fadd double %9, 1.000000e+00
  %18 = fcmp ugt double %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds [408 x i8], ptr %1, i64 %11
  %21 = fptosi double %16 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %20, i64 %22
  store double %9, ptr %23, align 8
  %24 = fadd double %16, 1.000000e+00
  br label %15, !llvm.loop !12

25:                                               ; preds = %15
  %26 = getelementptr [408 x i8], ptr %1, i64 %11
  %27 = getelementptr [8 x i8], ptr %26, i64 %11
  %28 = getelementptr i8, ptr %27, i64 -8
  %29 = load double, ptr %28, align 8
  %30 = fadd double %29, 1.000000e+00
  store double %30, ptr %28, align 8
  %31 = load double, ptr %12, align 8
  %32 = getelementptr i8, ptr %26, i64 8160
  %33 = getelementptr inbounds [8 x i8], ptr %32, i64 %11
  store double %31, ptr %33, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %.not.unshifted = xor i32 %0, %1
  %.not.mask = and i32 %.not.unshifted, 255
  %.not = icmp eq i32 %.not.mask, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %storemerge = phi i32 [ 10000, %4 ], [ 0, %3 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store double 1.000000e+00, ptr %6, align 8
  br label %8

8:                                                ; preds = %26, %2
  %9 = phi i8 [ %27, %26 ], [ undef, %2 ]
  %10 = phi double [ %28, %26 ], [ 1.000000e+00, %2 ]
  %11 = fcmp ugt double %10, 1.000000e+00
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = fptosi double %10 to i32
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = sext i8 %16 to i32
  %18 = getelementptr i8, ptr %1, i64 %14
  %19 = getelementptr i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 @Func1(i32 noundef %17, i32 noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  store i8 65, ptr %7, align 1
  %25 = fadd double %10, 1.000000e+00
  store double %25, ptr %6, align 8
  br label %26

26:                                               ; preds = %24, %12
  %27 = phi i8 [ 65, %24 ], [ %9, %12 ]
  %28 = phi double [ %25, %24 ], [ %10, %12 ]
  br label %8, !llvm.loop !13

29:                                               ; preds = %8
  %30 = icmp sgt i8 %9, 86
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = icmp slt i8 %9, 91
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  store double 7.000000e+00, ptr %6, align 8
  br label %34

34:                                               ; preds = %33, %31, %29
  %35 = phi double [ 7.000000e+00, %33 ], [ %10, %31 ], [ %10, %29 ]
  %36 = icmp eq i8 %9, 88
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, ptr %3, align 4
  br label %44

38:                                               ; preds = %34
  %39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #6
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = fadd double %35, 7.000000e+00
  store double %42, ptr %6, align 8
  store i32 1, ptr %3, align 4
  br label %44

43:                                               ; preds = %38
  store i32 0, ptr %3, align 4
  br label %44

44:                                               ; preds = %43, %41, %37
  %45 = phi i32 [ 0, %43 ], [ 1, %41 ], [ 1, %37 ]
  ret i32 %45
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
  %storemerge = phi i32 [ 0, %4 ], [ 1, %3 ]
  ret i32 %storemerge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
