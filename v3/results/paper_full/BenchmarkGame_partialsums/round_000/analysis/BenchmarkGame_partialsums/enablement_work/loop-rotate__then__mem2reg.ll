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
  %3 = alloca <2 x double>, align 16
  store double %0, ptr %3, align 8
  %4 = getelementptr inbounds double, ptr %3, i64 1
  store double %1, ptr %4, align 8
  %5 = load <2 x double>, ptr %3, align 16
  ret <2 x double> %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %2 = alloca <2 x double>, align 16
  store <2 x double> %0, ptr %2, align 16
  %3 = load double, ptr %2, align 8
  %4 = getelementptr inbounds double, ptr %2, i64 1
  %5 = load double, ptr %4, align 8
  %6 = fadd double %3, %5
  ret double %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca <2 x double>, align 16
  %4 = call <2 x double> @make_vec(double noundef 0.000000e+00, double noundef 0.000000e+00)
  %5 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 1.000000e+00)
  %6 = call <2 x double> @make_vec(double noundef 2.000000e+00, double noundef 2.000000e+00)
  %7 = call <2 x double> @make_vec(double noundef -1.000000e+00, double noundef -1.000000e+00)
  %8 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 2.000000e+00)
  %9 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef -1.000000e+00)
  %10 = sitofp i32 2500000 to double
  %11 = fcmp ole double 1.000000e+00, %10
  br i1 %11, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %31
  %.013 = phi double [ 0.000000e+00, %.lr.ph ], [ %30, %31 ]
  %.011 = phi double [ 0.000000e+00, %.lr.ph ], [ %26, %31 ]
  %.09 = phi double [ 0.000000e+00, %.lr.ph ], [ %18, %31 ]
  %.07 = phi double [ 0.000000e+00, %.lr.ph ], [ %15, %31 ]
  %.0 = phi double [ 1.000000e+00, %.lr.ph ], [ %32, %31 ]
  %13 = fsub double %.0, 1.000000e+00
  %14 = call double @pow(double noundef f0x3FE5555555555555, double noundef %13) #4
  %15 = fadd double %.07, %14
  %16 = call double @sqrt(double noundef %.0) #4
  %17 = fdiv double 1.000000e+00, %16
  %18 = fadd double %.09, %17
  %19 = fmul double %.0, %.0
  %20 = fmul double %19, %.0
  %21 = call double @sin(double noundef %.0) #4
  %22 = call double @cos(double noundef %.0) #4
  %23 = fmul double %20, %21
  %24 = fmul double %23, %21
  %25 = fdiv double 1.000000e+00, %24
  %26 = fadd double %.011, %25
  %27 = fmul double %20, %22
  %28 = fmul double %27, %22
  %29 = fdiv double 1.000000e+00, %28
  %30 = fadd double %.013, %29
  br label %31

31:                                               ; preds = %12
  %32 = fadd double %.0, 1.000000e+00
  %33 = sitofp i32 2500000 to double
  %34 = fcmp ole double %32, %33
  br i1 %34, label %12, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %31
  br label %35

35:                                               ; preds = %._crit_edge, %2
  %.114 = phi double [ %30, %._crit_edge ], [ 0.000000e+00, %2 ]
  %.112 = phi double [ %26, %._crit_edge ], [ 0.000000e+00, %2 ]
  %.110 = phi double [ %18, %._crit_edge ], [ 0.000000e+00, %2 ]
  %.18 = phi double [ %15, %._crit_edge ], [ 0.000000e+00, %2 ]
  store <2 x double> %8, ptr %3, align 16
  %36 = load double, ptr %3, align 16
  %37 = sitofp i32 2500000 to double
  %38 = fcmp ole double %36, %37
  br i1 %38, label %.lr.ph2, label %68

.lr.ph2:                                          ; preds = %35
  br label %39

39:                                               ; preds = %.lr.ph2, %62
  %.019 = phi <2 x double> [ %4, %.lr.ph2 ], [ %45, %62 ]
  %.017 = phi <2 x double> [ %4, %.lr.ph2 ], [ %53, %62 ]
  %.015 = phi <2 x double> [ %4, %.lr.ph2 ], [ %48, %62 ]
  %.05 = phi <2 x double> [ %4, %.lr.ph2 ], [ %56, %62 ]
  %.04 = phi <2 x double> [ %4, %.lr.ph2 ], [ %61, %62 ]
  %40 = load <2 x double>, ptr %3, align 16
  %41 = load <2 x double>, ptr %3, align 16
  %42 = fadd <2 x double> %41, %5
  %43 = fmul <2 x double> %40, %42
  %44 = fdiv <2 x double> %5, %43
  %45 = fadd <2 x double> %.019, %44
  %46 = load <2 x double>, ptr %3, align 16
  %47 = fdiv <2 x double> %5, %46
  %48 = fadd <2 x double> %.015, %47
  %49 = load <2 x double>, ptr %3, align 16
  %50 = load <2 x double>, ptr %3, align 16
  %51 = fmul <2 x double> %49, %50
  %52 = fdiv <2 x double> %5, %51
  %53 = fadd <2 x double> %.017, %52
  %54 = load <2 x double>, ptr %3, align 16
  %55 = fdiv <2 x double> %9, %54
  %56 = fadd <2 x double> %.05, %55
  %57 = load <2 x double>, ptr %3, align 16
  %58 = fneg <2 x double> %5
  %59 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %57, <2 x double> %58)
  %60 = fdiv <2 x double> %9, %59
  %61 = fadd <2 x double> %.04, %60
  br label %62

62:                                               ; preds = %39
  %63 = load <2 x double>, ptr %3, align 16
  %64 = fadd <2 x double> %63, %6
  store <2 x double> %64, ptr %3, align 16
  %65 = load double, ptr %3, align 16
  %66 = sitofp i32 2500000 to double
  %67 = fcmp ole double %65, %66
  br i1 %67, label %39, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %62
  br label %68

68:                                               ; preds = %._crit_edge3, %35
  %.120 = phi <2 x double> [ %45, %._crit_edge3 ], [ %4, %35 ]
  %.118 = phi <2 x double> [ %53, %._crit_edge3 ], [ %4, %35 ]
  %.116 = phi <2 x double> [ %48, %._crit_edge3 ], [ %4, %35 ]
  %.16 = phi <2 x double> [ %56, %._crit_edge3 ], [ %4, %35 ]
  %.1 = phi <2 x double> [ %61, %._crit_edge3 ], [ %4, %35 ]
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.18, ptr noundef @.str.1)
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.110, ptr noundef @.str.2)
  %71 = call double @sum_vec(<2 x double> noundef %.120)
  %72 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %71, ptr noundef @.str.3)
  %73 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.112, ptr noundef @.str.4)
  %74 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.114, ptr noundef @.str.5)
  %75 = call double @sum_vec(<2 x double> noundef %.116)
  %76 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %75, ptr noundef @.str.6)
  %77 = call double @sum_vec(<2 x double> noundef %.118)
  %78 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %77, ptr noundef @.str.7)
  %79 = call double @sum_vec(<2 x double> noundef %.16)
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %79, ptr noundef @.str.8)
  %81 = call double @sum_vec(<2 x double> noundef %.1)
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %81, ptr noundef @.str.9)
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
