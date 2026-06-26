; ModuleID = 'results\paper_full\Dhrystone_fldry\round_002\output.ll'
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
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef 8) #7
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
  %6 = call i32 @clock() #7
  br label %7

7:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %8 = icmp samesign ult i32 %.0, 100000000
  br i1 %8, label %9, label %18

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
  %17 = add nuw nsw i32 %.0, 8
  br label %7, !llvm.loop !7

18:                                               ; preds = %7
  %19 = call i32 @clock() #7
  %20 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #8
  store ptr %20, ptr @PtrGlbNext, align 8
  %21 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #8
  store ptr %21, ptr @PtrGlb, align 8
  %22 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %22, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 10001, ptr %24, align 4
  %25 = getelementptr inbounds nuw i8, ptr %21, i64 16
  store double 4.000000e+01, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %21, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %26, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #7
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %27 = call i32 @clock() #7
  br label %28

28:                                               ; preds = %59, %18
  %.1 = phi i32 [ 0, %18 ], [ %63, %59 ]
  %29 = icmp samesign ult i32 %.1, 100000000
  br i1 %29, label %30, label %64

30:                                               ; preds = %28
  %31 = call i32 @Proc5()
  %32 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.3, i64 31, i1 false) #7
  store i32 10000, ptr %3, align 4
  %33 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %33, 0
  %34 = zext i1 %.not to i32
  store i32 %34, ptr @BoolGlob, align 4
  %.pre = load double, ptr %1, align 8
  br label %35

35:                                               ; preds = %38, %30
  %36 = phi double [ %42, %38 ], [ %.pre, %30 ]
  %37 = fcmp olt double %36, 3.000000e+00
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = call double @llvm.fmuladd.f64(double %36, double 5.000000e+00, double -3.000000e+00)
  store double %39, ptr %2, align 8
  %40 = call i32 @Proc7(double noundef %36, double noundef 3.000000e+00, ptr noundef nonnull %2)
  %41 = load double, ptr %1, align 8
  %42 = fadd double %41, 1.000000e+00
  store double %42, ptr %1, align 8
  br label %35, !llvm.loop !9

43:                                               ; preds = %35
  %44 = load double, ptr %2, align 8
  %45 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, double noundef %36, double noundef %44)
  %46 = load ptr, ptr @PtrGlb, align 8
  %47 = call i32 @Proc1(ptr noundef %46)
  br label %48

48:                                               ; preds = %57, %43
  %.01 = phi i8 [ 65, %43 ], [ %58, %57 ]
  %49 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %.01, %49
  br i1 %.not1, label %59, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %3, align 4
  %52 = sext i8 %.01 to i32
  %53 = call i32 @Func1(i32 noundef %52, i32 noundef 67)
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %57

57:                                               ; preds = %55, %50
  %58 = add i8 %.01, 1
  br label %48, !llvm.loop !10

59:                                               ; preds = %48
  %60 = load double, ptr %1, align 8
  %61 = fmul double %60, 3.000000e+00
  store double %61, ptr %2, align 8
  %62 = call i32 @Proc2(ptr noundef nonnull %1)
  %63 = add nuw nsw i32 %.1, 1
  br label %28, !llvm.loop !11

64:                                               ; preds = %28
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
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 5.000000e+00, ptr %2, align 8
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double 5.000000e+00, ptr %4, align 8
  %5 = load ptr, ptr %0, align 8
  store ptr %5, ptr %5, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %.pre = load i8, ptr @Char1Glob, align 1
  %2 = icmp eq i8 %.pre, 65
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = load double, ptr %0, align 8
  %5 = fadd double %4, 1.000000e+01
  %6 = fadd double %5, -1.000000e+00
  %7 = load double, ptr @IntGlob, align 8
  %8 = fsub double %6, %7
  store double %8, ptr %0, align 8
  br label %9

9:                                                ; preds = %3, %1
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8, !nonnull !12, !noundef !12
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %0, align 8
  %.pre = load double, ptr @IntGlob, align 8
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  %4 = getelementptr inbounds nuw i8, ptr %.pre1, i64 16
  %5 = call i32 @Proc7(i32 noundef 10, double noundef %.pre, ptr noundef nonnull %4)
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
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %5

5:                                                ; preds = %4, %2
  switch i32 %0, label %12 [
    i32 0, label %6
    i32 10000, label %7
    i32 10001, label %10
    i32 10003, label %11
  ]

6:                                                ; preds = %5
  store i32 0, ptr %1, align 4
  br label %12

7:                                                ; preds = %5
  %8 = load double, ptr @IntGlob, align 8
  %9 = fcmp ogt double %8, 1.000000e+02
  %. = select i1 %9, i32 0, i32 10002
  store i32 %., ptr %1, align 4
  br label %12

10:                                               ; preds = %5
  store i32 10000, ptr %1, align 4
  br label %12

11:                                               ; preds = %5
  store i32 10001, ptr %1, align 4
  br label %12

12:                                               ; preds = %11, %10, %7, %6, %5
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
  %8 = getelementptr inbounds [8 x i8], ptr %0, i64 %7
  store double %3, ptr %8, align 8
  %9 = getelementptr i8, ptr %8, i64 8
  store double %3, ptr %9, align 8
  %10 = getelementptr i8, ptr %8, i64 240
  store double %5, ptr %10, align 8
  br label %11

11:                                               ; preds = %14, %4
  %.0 = phi double [ %5, %4 ], [ %19, %14 ]
  %12 = fadd double %5, 1.000000e+00
  %13 = fcmp ugt double %.0, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds [408 x i8], ptr %1, i64 %7
  %16 = fptosi double %.0 to i32
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i8], ptr %15, i64 %17
  store double %5, ptr %18, align 8
  %19 = fadd double %.0, 1.000000e+00
  br label %11, !llvm.loop !13

20:                                               ; preds = %11
  %21 = getelementptr inbounds [408 x i8], ptr %1, i64 %7
  %22 = getelementptr [8 x i8], ptr %21, i64 %7
  %23 = getelementptr i8, ptr %22, i64 -8
  %24 = load double, ptr %23, align 8
  %25 = fadd double %24, 1.000000e+00
  store double %25, ptr %23, align 8
  %26 = load double, ptr %8, align 8
  %27 = getelementptr i8, ptr %21, i64 8160
  %28 = getelementptr inbounds [8 x i8], ptr %27, i64 %7
  store double %26, ptr %28, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %.not.unshifted = xor i32 %0, %1
  %.not.mask = and i32 %.not.unshifted, 255
  %.not = icmp eq i32 %.not.mask, 0
  %. = select i1 %.not, i32 10000, i32 0
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi double [ 1.000000e+00, %2 ], [ %.1, %5 ]
  %4 = fcmp ugt double %.01, 1.000000e+00
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = fptosi double %.01 to i32
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1
  %10 = sext i8 %9 to i32
  %11 = getelementptr i8, ptr %1, i64 %7
  %12 = getelementptr i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 @Func1(i32 noundef %10, i32 noundef %14)
  %16 = icmp eq i32 %15, 0
  %17 = fadd double %.01, 1.000000e+00
  %.1 = select i1 %16, double %17, double %.01
  br label %3, !llvm.loop !14

18:                                               ; preds = %3
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #7
  %20 = icmp sgt i32 %19, 0
  %. = zext i1 %20 to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  %. = zext i1 %2 to i32
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!12 = !{}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
