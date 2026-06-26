; ModuleID = 'results\paper_full\BenchmarkGame_partialsums\BenchmarkGame_partialsums.ll'
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
  %.0.vec.insert = insertelement <2 x double> undef, double %0, i32 0
  %.8.vec.insert = insertelement <2 x double> %.0.vec.insert, double %1, i32 1
  ret <2 x double> %.8.vec.insert
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %.0.vec.extract = extractelement <2 x double> %0, i32 0
  %.8.vec.extract = extractelement <2 x double> %0, i32 1
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
  %9 = sitofp i32 2500000 to double
  %10 = fcmp ole double 1.000000e+00, %9
  br i1 %10, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %2
  br label %11

11:                                               ; preds = %.lr.ph, %30
  %.068 = phi double [ 0.000000e+00, %.lr.ph ], [ %14, %30 ]
  %.05467 = phi double [ 0.000000e+00, %.lr.ph ], [ %17, %30 ]
  %.05566 = phi double [ 0.000000e+00, %.lr.ph ], [ %25, %30 ]
  %.05665 = phi double [ 0.000000e+00, %.lr.ph ], [ %29, %30 ]
  %.05764 = phi double [ 1.000000e+00, %.lr.ph ], [ %31, %30 ]
  %12 = fsub double %.05764, 1.000000e+00
  %13 = call double @pow(double noundef f0x3FE5555555555555, double noundef %12) #4
  %14 = fadd double %.068, %13
  %15 = call double @sqrt(double noundef %.05764) #4
  %16 = fdiv double 1.000000e+00, %15
  %17 = fadd double %.05467, %16
  %18 = fmul double %.05764, %.05764
  %19 = fmul double %18, %.05764
  %20 = call double @sin(double noundef %.05764) #4
  %21 = call double @cos(double noundef %.05764) #4
  %22 = fmul double %19, %20
  %23 = fmul double %22, %20
  %24 = fdiv double 1.000000e+00, %23
  %25 = fadd double %.05566, %24
  %26 = fmul double %19, %21
  %27 = fmul double %26, %21
  %28 = fdiv double 1.000000e+00, %27
  %29 = fadd double %.05665, %28
  br label %30

30:                                               ; preds = %11
  %31 = fadd double %.05764, 1.000000e+00
  %32 = fcmp ole double %31, %9
  br i1 %32, label %11, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %30
  %split = phi double [ %29, %30 ]
  %split69 = phi double [ %25, %30 ]
  %split70 = phi double [ %17, %30 ]
  %split71 = phi double [ %14, %30 ]
  br label %33

33:                                               ; preds = %._crit_edge, %2
  %.056.lcssa = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %2 ]
  %.055.lcssa = phi double [ %split69, %._crit_edge ], [ 0.000000e+00, %2 ]
  %.054.lcssa = phi double [ %split70, %._crit_edge ], [ 0.000000e+00, %2 ]
  %.0.lcssa = phi double [ %split71, %._crit_edge ], [ 0.000000e+00, %2 ]
  %.0.vec.extract72 = extractelement <2 x double> %7, i32 0
  %34 = sitofp i32 2500000 to double
  %35 = fcmp ole double %.0.vec.extract72, %34
  br i1 %35, label %.lr.ph80, label %55

.lr.ph80:                                         ; preds = %33
  br label %36

36:                                               ; preds = %.lr.ph80, %52
  %.05878 = phi <2 x double> [ %3, %.lr.ph80 ], [ %42, %52 ]
  %.05977 = phi <2 x double> [ %7, %.lr.ph80 ], [ %53, %52 ]
  %.06076 = phi <2 x double> [ %3, %.lr.ph80 ], [ %45, %52 ]
  %.06175 = phi <2 x double> [ %3, %.lr.ph80 ], [ %40, %52 ]
  %.06274 = phi <2 x double> [ %3, %.lr.ph80 ], [ %47, %52 ]
  %.06373 = phi <2 x double> [ %3, %.lr.ph80 ], [ %51, %52 ]
  %37 = fadd <2 x double> %.05977, %4
  %38 = fmul <2 x double> %.05977, %37
  %39 = fdiv <2 x double> %4, %38
  %40 = fadd <2 x double> %.06175, %39
  %41 = fdiv <2 x double> %4, %.05977
  %42 = fadd <2 x double> %.05878, %41
  %43 = fmul <2 x double> %.05977, %.05977
  %44 = fdiv <2 x double> %4, %43
  %45 = fadd <2 x double> %.06076, %44
  %46 = fdiv <2 x double> %8, %.05977
  %47 = fadd <2 x double> %.06274, %46
  %48 = fneg <2 x double> %4
  %49 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %.05977, <2 x double> %48)
  %50 = fdiv <2 x double> %8, %49
  %51 = fadd <2 x double> %.06373, %50
  br label %52

52:                                               ; preds = %36
  %53 = fadd <2 x double> %.05977, %5
  %.0.vec.extract = extractelement <2 x double> %53, i32 0
  %54 = fcmp ole double %.0.vec.extract, %34
  br i1 %54, label %36, label %._crit_edge81, !llvm.loop !9

._crit_edge81:                                    ; preds = %52
  %split82 = phi <2 x double> [ %51, %52 ]
  %split83 = phi <2 x double> [ %47, %52 ]
  %split84 = phi <2 x double> [ %40, %52 ]
  %split85 = phi <2 x double> [ %45, %52 ]
  %split86 = phi <2 x double> [ %42, %52 ]
  br label %55

55:                                               ; preds = %._crit_edge81, %33
  %.063.lcssa = phi <2 x double> [ %split82, %._crit_edge81 ], [ %3, %33 ]
  %.062.lcssa = phi <2 x double> [ %split83, %._crit_edge81 ], [ %3, %33 ]
  %.061.lcssa = phi <2 x double> [ %split84, %._crit_edge81 ], [ %3, %33 ]
  %.060.lcssa = phi <2 x double> [ %split85, %._crit_edge81 ], [ %3, %33 ]
  %.058.lcssa = phi <2 x double> [ %split86, %._crit_edge81 ], [ %3, %33 ]
  %56 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.0.lcssa, ptr noundef @.str.1)
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.054.lcssa, ptr noundef @.str.2)
  %58 = call double @sum_vec(<2 x double> noundef %.061.lcssa)
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %58, ptr noundef @.str.3)
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.055.lcssa, ptr noundef @.str.4)
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.056.lcssa, ptr noundef @.str.5)
  %62 = call double @sum_vec(<2 x double> noundef %.058.lcssa)
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %62, ptr noundef @.str.6)
  %64 = call double @sum_vec(<2 x double> noundef %.060.lcssa)
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %64, ptr noundef @.str.7)
  %66 = call double @sum_vec(<2 x double> noundef %.062.lcssa)
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %66, ptr noundef @.str.8)
  %68 = call double @sum_vec(<2 x double> noundef %.063.lcssa)
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %68, ptr noundef @.str.9)
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
