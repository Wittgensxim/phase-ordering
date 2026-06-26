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

7:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %7 ]
  %8 = icmp samesign ult i32 %.0, 100000000
  %9 = add nuw nsw i32 %.0, 1
  br i1 %8, label %7, label %10, !llvm.loop !7

10:                                               ; preds = %7
  %11 = call i32 @clock() #7
  %12 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #8
  store ptr %12, ptr @PtrGlbNext, align 8
  %13 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #8
  store ptr %13, ptr @PtrGlb, align 8
  %14 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %14, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 10001, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store double 4.000000e+01, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %18, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #7
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %19 = call i32 @clock() #7
  br label %20

20:                                               ; preds = %10, %._crit_edge5
  %.16 = phi i32 [ 0, %10 ], [ %49, %._crit_edge5 ]
  %21 = call i32 @Proc5()
  %22 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.3, i64 31, i1 false) #7
  store i32 10000, ptr %3, align 4
  %23 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %23, 0
  %24 = zext i1 %.not to i32
  store i32 %24, ptr @BoolGlob, align 4
  %.pre = load double, ptr %1, align 8
  %25 = fcmp olt double %.pre, 3.000000e+00
  br i1 %25, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %20, %.lr.ph
  %26 = phi double [ %30, %.lr.ph ], [ %.pre, %20 ]
  %27 = call double @llvm.fmuladd.f64(double %26, double 5.000000e+00, double -3.000000e+00)
  store double %27, ptr %2, align 8
  %28 = call i32 @Proc7(double noundef %26, double noundef 3.000000e+00, ptr noundef nonnull %2)
  %29 = load double, ptr %1, align 8
  %30 = fadd double %29, 1.000000e+00
  store double %30, ptr %1, align 8
  %31 = fcmp olt double %30, 3.000000e+00
  br i1 %31, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %20
  %.lcssa = phi double [ %.pre, %20 ], [ %30, %.lr.ph ]
  %32 = load double, ptr %2, align 8
  %33 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, double noundef %.lcssa, double noundef %32)
  %34 = load ptr, ptr @PtrGlb, align 8
  %35 = call i32 @Proc1(ptr noundef %34)
  %36 = load i8, ptr @Char2Glob, align 1
  %.not11 = icmp sgt i8 65, %36
  br i1 %.not11, label %._crit_edge5, label %.lr.ph4

.lr.ph4:                                          ; preds = %._crit_edge, %43
  %.012 = phi i8 [ %44, %43 ], [ 65, %._crit_edge ]
  %37 = load i32, ptr %3, align 4
  %38 = sext i8 %.012 to i32
  %39 = call i32 @Func1(i32 noundef %38, i32 noundef 67)
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %.lr.ph4
  %42 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %43

43:                                               ; preds = %41, %.lr.ph4
  %44 = add i8 %.012, 1
  %45 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %44, %45
  br i1 %.not1, label %._crit_edge5, label %.lr.ph4, !llvm.loop !10

._crit_edge5:                                     ; preds = %43, %._crit_edge
  %46 = load double, ptr %1, align 8
  %47 = fmul double %46, 3.000000e+00
  store double %47, ptr %2, align 8
  %48 = call i32 @Proc2(ptr noundef nonnull %1)
  %49 = add nuw nsw i32 %.16, 1
  %50 = icmp samesign ult i32 %49, 100000000
  br i1 %50, label %20, label %51, !llvm.loop !11

51:                                               ; preds = %._crit_edge5
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
  %2 = load double, ptr %0, align 8
  %3 = fadd double %2, 1.000000e+01
  %.pre = load i8, ptr @Char1Glob, align 1
  %4 = icmp eq i8 %.pre, 65
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = fadd double %3, -1.000000e+00
  %7 = load double, ptr @IntGlob, align 8
  %8 = fsub double %6, %7
  store double %8, ptr %0, align 8
  br label %9

9:                                                ; preds = %5, %1
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %.not = icmp eq ptr %2, null
  %3 = xor i1 %.not, true
  call void @llvm.assume(i1 %3)
  %4 = load ptr, ptr %2, align 8
  store ptr %4, ptr %0, align 8
  %.pre = load double, ptr @IntGlob, align 8
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  %5 = getelementptr inbounds nuw i8, ptr %.pre1, i64 16
  %6 = call i32 @Proc7(i32 noundef 10, double noundef %.pre, ptr noundef nonnull %5)
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
  br i1 %12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4, %.lr.ph
  %.01 = phi double [ %17, %.lr.ph ], [ %5, %4 ]
  %13 = getelementptr inbounds [408 x i8], ptr %1, i64 %7
  %14 = fptosi double %.01 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %13, i64 %15
  store double %5, ptr %16, align 8
  %17 = fadd double %.01, 1.000000e+00
  %18 = fcmp ugt double %17, %11
  br i1 %18, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %4
  %19 = getelementptr inbounds [408 x i8], ptr %1, i64 %7
  %20 = getelementptr [8 x i8], ptr %19, i64 %7
  %21 = getelementptr i8, ptr %20, i64 -8
  %22 = load double, ptr %21, align 8
  %23 = fadd double %22, 1.000000e+00
  store double %23, ptr %21, align 8
  %24 = load double, ptr %8, align 8
  %25 = getelementptr i8, ptr %19, i64 8160
  %26 = getelementptr inbounds [8 x i8], ptr %25, i64 %7
  store double %24, ptr %26, align 8
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
  %. = select i1 %19, i32 1, i32 0
  ret i32 %.
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  %. = select i1 %2, i32 1, i32 0
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
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
