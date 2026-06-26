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
  br i1 %10, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %2
  br label %11

11:                                               ; preds = %.lr.ph, %30
  %.068 = phi double [ 1.000000e+00, %.lr.ph ], [ %31, %30 ]
  %.066 = phi double [ 0.000000e+00, %.lr.ph ], [ %29, %30 ]
  %.064 = phi double [ 0.000000e+00, %.lr.ph ], [ %25, %30 ]
  %.062 = phi double [ 0.000000e+00, %.lr.ph ], [ %17, %30 ]
  %.0 = phi double [ 0.000000e+00, %.lr.ph ], [ %14, %30 ]
  %12 = fsub double %.068, 1.000000e+00
  %13 = call double @pow(double noundef f0x3FE5555555555555, double noundef %12) #4
  %14 = fadd double %.0, %13
  %15 = call double @sqrt(double noundef %.068) #4
  %16 = fdiv double 1.000000e+00, %15
  %17 = fadd double %.062, %16
  %18 = fmul double %.068, %.068
  %19 = fmul double %18, %.068
  %20 = call double @sin(double noundef %.068) #4
  %21 = call double @cos(double noundef %.068) #4
  %22 = fmul double %19, %20
  %23 = fmul double %22, %20
  %24 = fdiv double 1.000000e+00, %23
  %25 = fadd double %.064, %24
  %26 = fmul double %19, %21
  %27 = fmul double %26, %21
  %28 = fdiv double 1.000000e+00, %27
  %29 = fadd double %.066, %28
  br label %30

30:                                               ; preds = %11
  %31 = fadd double %.068, 1.000000e+00
  %32 = sitofp i32 2500000 to double
  %33 = fcmp ole double %31, %32
  br i1 %33, label %11, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %30
  br label %34

34:                                               ; preds = %._crit_edge, %2
  %.167 = phi double [ %29, %._crit_edge ], [ 0.000000e+00, %2 ]
  %.165 = phi double [ %25, %._crit_edge ], [ 0.000000e+00, %2 ]
  %.163 = phi double [ %17, %._crit_edge ], [ 0.000000e+00, %2 ]
  %.1 = phi double [ %14, %._crit_edge ], [ 0.000000e+00, %2 ]
  %.0.vec.extract34 = extractelement <2 x double> %7, i32 0
  %35 = sitofp i32 2500000 to double
  %36 = fcmp ole double %.0.vec.extract34, %35
  br i1 %36, label %.lr.ph2, label %57

.lr.ph2:                                          ; preds = %34
  br label %37

37:                                               ; preds = %.lr.ph2, %53
  %.078 = phi <2 x double> [ %3, %.lr.ph2 ], [ %52, %53 ]
  %.076 = phi <2 x double> [ %3, %.lr.ph2 ], [ %48, %53 ]
  %.074 = phi <2 x double> [ %3, %.lr.ph2 ], [ %41, %53 ]
  %.072 = phi <2 x double> [ %3, %.lr.ph2 ], [ %46, %53 ]
  %.071 = phi <2 x double> [ %7, %.lr.ph2 ], [ %54, %53 ]
  %.069 = phi <2 x double> [ %3, %.lr.ph2 ], [ %43, %53 ]
  %38 = fadd <2 x double> %.071, %4
  %39 = fmul <2 x double> %.071, %38
  %40 = fdiv <2 x double> %4, %39
  %41 = fadd <2 x double> %.074, %40
  %42 = fdiv <2 x double> %4, %.071
  %43 = fadd <2 x double> %.069, %42
  %44 = fmul <2 x double> %.071, %.071
  %45 = fdiv <2 x double> %4, %44
  %46 = fadd <2 x double> %.072, %45
  %47 = fdiv <2 x double> %8, %.071
  %48 = fadd <2 x double> %.076, %47
  %49 = fneg <2 x double> %4
  %50 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %.071, <2 x double> %49)
  %51 = fdiv <2 x double> %8, %50
  %52 = fadd <2 x double> %.078, %51
  br label %53

53:                                               ; preds = %37
  %54 = fadd <2 x double> %.071, %5
  %.0.vec.extract = extractelement <2 x double> %54, i32 0
  %55 = sitofp i32 2500000 to double
  %56 = fcmp ole double %.0.vec.extract, %55
  br i1 %56, label %37, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %53
  br label %57

57:                                               ; preds = %._crit_edge3, %34
  %.179 = phi <2 x double> [ %52, %._crit_edge3 ], [ %3, %34 ]
  %.177 = phi <2 x double> [ %48, %._crit_edge3 ], [ %3, %34 ]
  %.175 = phi <2 x double> [ %41, %._crit_edge3 ], [ %3, %34 ]
  %.173 = phi <2 x double> [ %46, %._crit_edge3 ], [ %3, %34 ]
  %.170 = phi <2 x double> [ %43, %._crit_edge3 ], [ %3, %34 ]
  %58 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.1, ptr noundef @.str.1)
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.163, ptr noundef @.str.2)
  %60 = call double @sum_vec(<2 x double> noundef %.175)
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %60, ptr noundef @.str.3)
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.165, ptr noundef @.str.4)
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.167, ptr noundef @.str.5)
  %64 = call double @sum_vec(<2 x double> noundef %.170)
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %64, ptr noundef @.str.6)
  %66 = call double @sum_vec(<2 x double> noundef %.173)
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %66, ptr noundef @.str.7)
  %68 = call double @sum_vec(<2 x double> noundef %.177)
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %68, ptr noundef @.str.8)
  %70 = call double @sum_vec(<2 x double> noundef %.179)
  %71 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %70, ptr noundef @.str.9)
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
