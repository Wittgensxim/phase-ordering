; ModuleID = 'results\paper_full\BenchmarkGame_partialsums\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/partialsums.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%.9f\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(2/3)^k\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"k^-0.5\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1/k(k+1)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Flint Hills\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Cookson Hills\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Harmonic\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Riemann Zeta\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Alternating Harmonic\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Gregory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local <2 x double> @make_vec(double noundef %0, double noundef %1) #0 {
  %.0.vec.insert = insertelement <2 x double> poison, double %0, i64 0
  %.8.vec.insert = insertelement <2 x double> %.0.vec.insert, double %1, i64 1
  ret <2 x double> %.8.vec.insert
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %.0.vec.extract = extractelement <2 x double> %0, i64 0
  %.8.vec.extract = extractelement <2 x double> %0, i64 1
  %2 = fadd double %.0.vec.extract, %.8.vec.extract
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call <2 x double> @make_vec(double noundef 0.000000e+00, double noundef 0.000000e+00)
  %4 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 1.000000e+00)
  %5 = call <2 x double> @make_vec(double noundef 2.000000e+00, double noundef 2.000000e+00)
  %6 = call <2 x double> @make_vec(double noundef -1.000000e+00, double noundef -1.000000e+00)
  %7 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 2.000000e+00)
  %8 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef -1.000000e+00)
  br label %9

9:                                                ; preds = %11, %2
  %.057 = phi double [ 1.000000e+00, %2 ], [ %30, %11 ]
  %.056 = phi double [ 0.000000e+00, %2 ], [ %22, %11 ]
  %.055 = phi double [ 0.000000e+00, %2 ], [ %26, %11 ]
  %.054 = phi double [ 0.000000e+00, %2 ], [ %28, %11 ]
  %.0 = phi double [ 0.000000e+00, %2 ], [ %29, %11 ]
  %10 = fcmp ugt double %.057, 2.500000e+06
  br i1 %10, label %31, label %11

11:                                               ; preds = %9
  %12 = fadd double %.057, -1.000000e+00
  %13 = call double @pow(double noundef f0x3FE5555555555555, double noundef %12) #4
  %14 = call double @sqrt(double noundef %.057) #4
  %15 = call double @sin(double noundef %.057) #4
  %16 = call double @cos(double noundef %.057) #4
  %17 = fmul double %.057, %.057
  %18 = fmul double %17, %.057
  %19 = fmul double %18, %16
  %20 = fmul double %19, %16
  %21 = fdiv double 1.000000e+00, %20
  %22 = fadd double %.056, %21
  %23 = fmul double %18, %15
  %24 = fmul double %23, %15
  %25 = fdiv double 1.000000e+00, %24
  %26 = fadd double %.055, %25
  %27 = fdiv double 1.000000e+00, %14
  %28 = fadd double %.054, %27
  %29 = fadd double %.0, %13
  %30 = fadd double %.057, 1.000000e+00
  br label %9, !llvm.loop !7

31:                                               ; preds = %9
  br label %32

32:                                               ; preds = %34, %31
  %.063 = phi <2 x double> [ %3, %31 ], [ %38, %34 ]
  %.062 = phi <2 x double> [ %3, %31 ], [ %40, %34 ]
  %.061 = phi <2 x double> [ %3, %31 ], [ %49, %34 ]
  %.060 = phi <2 x double> [ %3, %31 ], [ %43, %34 ]
  %.059 = phi <2 x double> [ %7, %31 ], [ %50, %34 ]
  %.058 = phi <2 x double> [ %3, %31 ], [ %45, %34 ]
  %.0.vec.extract = extractelement <2 x double> %.059, i64 0
  %33 = fcmp ugt double %.0.vec.extract, 2.500000e+06
  br i1 %33, label %51, label %34

34:                                               ; preds = %32
  %35 = fneg <2 x double> %4
  %36 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %.059, <2 x double> %35)
  %37 = fdiv <2 x double> %8, %36
  %38 = fadd <2 x double> %.063, %37
  %39 = fdiv <2 x double> %8, %.059
  %40 = fadd <2 x double> %.062, %39
  %41 = fmul <2 x double> %.059, %.059
  %42 = fdiv <2 x double> %4, %41
  %43 = fadd <2 x double> %.060, %42
  %44 = fdiv <2 x double> %4, %.059
  %45 = fadd <2 x double> %.058, %44
  %46 = fadd <2 x double> %.059, %4
  %47 = fmul <2 x double> %.059, %46
  %48 = fdiv <2 x double> %4, %47
  %49 = fadd <2 x double> %.061, %48
  %50 = fadd <2 x double> %.059, %5
  br label %32, !llvm.loop !9

51:                                               ; preds = %32
  %52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.0, ptr noundef nonnull @.str.1) #4
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.054, ptr noundef nonnull @.str.2) #4
  %54 = call double @sum_vec(<2 x double> noundef %.061)
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %54, ptr noundef nonnull @.str.3) #4
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.055, ptr noundef nonnull @.str.4) #4
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.056, ptr noundef nonnull @.str.5) #4
  %58 = call double @sum_vec(<2 x double> noundef %.058)
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %58, ptr noundef nonnull @.str.6) #4
  %60 = call double @sum_vec(<2 x double> noundef %.060)
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %60, ptr noundef nonnull @.str.7) #4
  %62 = call double @sum_vec(<2 x double> noundef %.062)
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %62, ptr noundef nonnull @.str.8) #4
  %64 = call double @sum_vec(<2 x double> noundef %.063)
  %65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %64, ptr noundef nonnull @.str.9) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

declare dso_local i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/partialsums.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
