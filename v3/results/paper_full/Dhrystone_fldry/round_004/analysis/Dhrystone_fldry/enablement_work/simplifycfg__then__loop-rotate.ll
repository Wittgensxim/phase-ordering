; ModuleID = 'results\paper_full\Dhrystone_fldry\round_003\output.ll'
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
  %7 = call i32 @clock() #7
  %8 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #8
  store ptr %8, ptr @PtrGlbNext, align 8
  %9 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #8
  store ptr %9, ptr @PtrGlb, align 8
  %10 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %10, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 10001, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double 4.000000e+01, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %14, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #7
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %15 = call i32 @clock() #7
  br label %16

16:                                               ; preds = %0, %45
  %.16 = phi i32 [ 0, %0 ], [ %49, %45 ]
  %17 = call i32 @Proc5()
  %18 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.3, i64 31, i1 false) #7
  store i32 10000, ptr %3, align 4
  %19 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %19, 0
  %20 = zext i1 %.not to i32
  store i32 %20, ptr @BoolGlob, align 4
  %.pre = load double, ptr %1, align 8
  %21 = fcmp olt double %.pre, 3.000000e+00
  br i1 %21, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %16
  br label %22

22:                                               ; preds = %.lr.ph, %22
  %23 = phi double [ %.pre, %.lr.ph ], [ %27, %22 ]
  %24 = call double @llvm.fmuladd.f64(double %23, double 5.000000e+00, double -3.000000e+00)
  store double %24, ptr %2, align 8
  %25 = call i32 @Proc7(double noundef %23, double noundef 3.000000e+00, ptr noundef nonnull %2)
  %26 = load double, ptr %1, align 8
  %27 = fadd double %26, 1.000000e+00
  store double %27, ptr %1, align 8
  %28 = fcmp olt double %27, 3.000000e+00
  br i1 %28, label %22, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %22
  %split = phi double [ %27, %22 ]
  br label %29

29:                                               ; preds = %._crit_edge, %16
  %.lcssa = phi double [ %split, %._crit_edge ], [ %.pre, %16 ]
  %30 = load double, ptr %2, align 8
  %31 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, double noundef %.lcssa, double noundef %30)
  %32 = load ptr, ptr @PtrGlb, align 8
  %33 = call i32 @Proc1(ptr noundef %32)
  %34 = load i8, ptr @Char2Glob, align 1
  %.not11 = icmp sgt i8 65, %34
  br i1 %.not11, label %45, label %.lr.ph4

.lr.ph4:                                          ; preds = %29
  br label %35

35:                                               ; preds = %.lr.ph4, %42
  %.012 = phi i8 [ 65, %.lr.ph4 ], [ %43, %42 ]
  %36 = load i32, ptr %3, align 4
  %37 = sext i8 %.012 to i32
  %38 = call i32 @Func1(i32 noundef %37, i32 noundef 67)
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %42

42:                                               ; preds = %40, %35
  %43 = add i8 %.012, 1
  %44 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %43, %44
  br i1 %.not1, label %._crit_edge5, label %35, !llvm.loop !9

._crit_edge5:                                     ; preds = %42
  br label %45

45:                                               ; preds = %._crit_edge5, %29
  %46 = load double, ptr %1, align 8
  %47 = fmul double %46, 3.000000e+00
  store double %47, ptr %2, align 8
  %48 = call i32 @Proc2(ptr noundef nonnull %1)
  %49 = add nuw nsw i32 %.16, 1
  %exitcond.not = icmp eq i32 %49, 100000000
  br i1 %exitcond.not, label %50, label %16, !llvm.loop !10

50:                                               ; preds = %45
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
  %2 = load ptr, ptr @PtrGlb, align 8, !nonnull !11, !noundef !11
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
  %11 = fadd double %5, 1.000000e+00
  %12 = fcmp ugt double %5, %11
  br i1 %12, label %20, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %.01 = phi double [ %5, %.lr.ph ], [ %18, %13 ]
  %14 = getelementptr inbounds [408 x i8], ptr %1, i64 %7
  %15 = fptosi double %.01 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i8], ptr %14, i64 %16
  store double %5, ptr %17, align 8
  %18 = fadd double %.01, 1.000000e+00
  %19 = fcmp ugt double %18, %11
  br i1 %19, label %._crit_edge, label %13, !llvm.loop !12

._crit_edge:                                      ; preds = %13
  br label %20

20:                                               ; preds = %._crit_edge, %4
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

3:                                                ; preds = %2, %3
  %.011 = phi double [ 1.000000e+00, %2 ], [ %.1, %3 ]
  %4 = fptosi double %.011 to i32
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr i8, ptr %1, i64 %5
  %10 = getelementptr i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %13 = call i32 @Func1(i32 noundef %8, i32 noundef %12)
  %14 = icmp eq i32 %13, 0
  %15 = fadd double %.011, 1.000000e+00
  %.1 = select i1 %14, double %15, double %.011
  %16 = fcmp ugt double %.1, 1.000000e+00
  br i1 %16, label %17, label %3, !llvm.loop !13

17:                                               ; preds = %3
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #7
  %19 = icmp sgt i32 %18, 0
  %. = zext i1 %19 to i32
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
!11 = !{}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
