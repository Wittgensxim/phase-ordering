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
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca <2 x double>, align 16
  %6 = alloca ptr, align 8
  store double %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  store ptr %5, ptr %6, align 8
  %7 = load double, ptr %3, align 8
  %8 = load ptr, ptr %6, align 8
  store double %7, ptr %8, align 8
  %9 = load double, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds double, ptr %10, i64 1
  store double %9, ptr %11, align 8
  %12 = load <2 x double>, ptr %5, align 16
  ret <2 x double> %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %2 = alloca <2 x double>, align 16
  %3 = alloca ptr, align 8
  store <2 x double> %0, ptr %2, align 16
  store ptr %2, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load double, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds double, ptr %6, i64 1
  %8 = load double, ptr %7, align 8
  %9 = fadd double %5, %8
  ret double %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca <2 x double>, align 16
  %11 = alloca <2 x double>, align 16
  %12 = alloca <2 x double>, align 16
  %13 = alloca <2 x double>, align 16
  %14 = alloca <2 x double>, align 16
  %15 = alloca <2 x double>, align 16
  %16 = alloca <2 x double>, align 16
  %17 = alloca <2 x double>, align 16
  %18 = alloca <2 x double>, align 16
  %19 = alloca <2 x double>, align 16
  %20 = alloca <2 x double>, align 16
  %21 = alloca <2 x double>, align 16
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  store double 0.000000e+00, ptr %7, align 8
  store double 0.000000e+00, ptr %8, align 8
  store double 0.000000e+00, ptr %9, align 8
  store i32 2500000, ptr %26, align 4
  %27 = call <2 x double> @make_vec(double noundef 0.000000e+00, double noundef 0.000000e+00)
  store <2 x double> %27, ptr %15, align 16
  %28 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 1.000000e+00)
  store <2 x double> %28, ptr %16, align 16
  %29 = call <2 x double> @make_vec(double noundef 2.000000e+00, double noundef 2.000000e+00)
  store <2 x double> %29, ptr %17, align 16
  %30 = call <2 x double> @make_vec(double noundef -1.000000e+00, double noundef -1.000000e+00)
  store <2 x double> %30, ptr %19, align 16
  %31 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 2.000000e+00)
  store <2 x double> %31, ptr %18, align 16
  %32 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef -1.000000e+00)
  store <2 x double> %32, ptr %21, align 16
  %33 = load <2 x double>, ptr %15, align 16
  store <2 x double> %33, ptr %14, align 16
  store <2 x double> %33, ptr %13, align 16
  store <2 x double> %33, ptr %12, align 16
  store <2 x double> %33, ptr %11, align 16
  store <2 x double> %33, ptr %10, align 16
  store double 1.000000e+00, ptr %22, align 8
  %34 = load i32, ptr %26, align 4
  %35 = sitofp i32 %34 to double
  %.promoted = load double, ptr %22, align 8
  %.promoted1 = load double, ptr %6, align 8
  %.promoted3 = load double, ptr %7, align 8
  %.promoted5 = load double, ptr %23, align 8
  %.promoted7 = load double, ptr %24, align 8
  %.promoted9 = load double, ptr %25, align 8
  %.promoted11 = load double, ptr %8, align 8
  %.promoted13 = load double, ptr %9, align 8
  %36 = fcmp ole double %.promoted, %35
  br i1 %36, label %.lr.ph, label %64

.lr.ph:                                           ; preds = %2
  br label %37

37:                                               ; preds = %.lr.ph, %61
  %38 = phi double [ %.promoted, %.lr.ph ], [ %62, %61 ]
  %39 = phi double [ %.promoted1, %.lr.ph ], [ %45, %61 ]
  %40 = phi double [ %.promoted3, %.lr.ph ], [ %48, %61 ]
  %41 = phi double [ %.promoted11, %.lr.ph ], [ %56, %61 ]
  %42 = phi double [ %.promoted13, %.lr.ph ], [ %60, %61 ]
  %43 = fsub double %38, 1.000000e+00
  %44 = call double @pow(double noundef f0x3FE5555555555555, double noundef %43) #4
  %45 = fadd double %39, %44
  %46 = call double @sqrt(double noundef %38) #4
  %47 = fdiv double 1.000000e+00, %46
  %48 = fadd double %40, %47
  %49 = fmul double %38, %38
  %50 = fmul double %49, %38
  %51 = call double @sin(double noundef %38) #4
  %52 = call double @cos(double noundef %38) #4
  %53 = fmul double %50, %51
  %54 = fmul double %53, %51
  %55 = fdiv double 1.000000e+00, %54
  %56 = fadd double %41, %55
  %57 = fmul double %50, %52
  %58 = fmul double %57, %52
  %59 = fdiv double 1.000000e+00, %58
  %60 = fadd double %42, %59
  br label %61

61:                                               ; preds = %37
  %62 = fadd double %38, 1.000000e+00
  %63 = fcmp ole double %62, %35
  br i1 %63, label %37, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %61
  %split = phi double [ %60, %61 ]
  %split25 = phi double [ %56, %61 ]
  %split26 = phi double [ %52, %61 ]
  %split27 = phi double [ %51, %61 ]
  %split28 = phi double [ %50, %61 ]
  %split29 = phi double [ %48, %61 ]
  %split30 = phi double [ %45, %61 ]
  %split31 = phi double [ %62, %61 ]
  br label %64

64:                                               ; preds = %._crit_edge, %2
  %.lcssa14 = phi double [ %split, %._crit_edge ], [ %.promoted13, %2 ]
  %.lcssa12 = phi double [ %split25, %._crit_edge ], [ %.promoted11, %2 ]
  %.lcssa10 = phi double [ %split26, %._crit_edge ], [ %.promoted9, %2 ]
  %.lcssa8 = phi double [ %split27, %._crit_edge ], [ %.promoted7, %2 ]
  %.lcssa6 = phi double [ %split28, %._crit_edge ], [ %.promoted5, %2 ]
  %.lcssa4 = phi double [ %split29, %._crit_edge ], [ %.promoted3, %2 ]
  %.lcssa2 = phi double [ %split30, %._crit_edge ], [ %.promoted1, %2 ]
  %.lcssa = phi double [ %split31, %._crit_edge ], [ %.promoted, %2 ]
  store double %.lcssa, ptr %22, align 8
  store double %.lcssa2, ptr %6, align 8
  store double %.lcssa4, ptr %7, align 8
  store double %.lcssa6, ptr %23, align 8
  store double %.lcssa8, ptr %24, align 8
  store double %.lcssa10, ptr %25, align 8
  store double %.lcssa12, ptr %8, align 8
  store double %.lcssa14, ptr %9, align 8
  %65 = load <2 x double>, ptr %18, align 16
  store <2 x double> %65, ptr %20, align 16
  %66 = load i32, ptr %26, align 4
  %67 = sitofp i32 %66 to double
  %68 = load <2 x double>, ptr %16, align 16
  %69 = load <2 x double>, ptr %16, align 16
  %70 = load <2 x double>, ptr %16, align 16
  %71 = load <2 x double>, ptr %16, align 16
  %72 = load <2 x double>, ptr %21, align 16
  %73 = load <2 x double>, ptr %21, align 16
  %74 = load <2 x double>, ptr %17, align 16
  %75 = load <2 x double>, ptr %16, align 16
  %76 = fneg <2 x double> %75
  %77 = load <2 x double>, ptr %17, align 16
  %.promoted15 = load <2 x double>, ptr %12, align 16
  %.promoted17 = load <2 x double>, ptr %10, align 16
  %.promoted19 = load <2 x double>, ptr %11, align 16
  %.promoted21 = load <2 x double>, ptr %13, align 16
  %.promoted23 = load <2 x double>, ptr %14, align 16
  %78 = load double, ptr %20, align 16
  %79 = fcmp ole double %78, %67
  br i1 %79, label %.lr.ph33, label %112

.lr.ph33:                                         ; preds = %64
  br label %80

80:                                               ; preds = %.lr.ph33, %107
  %81 = phi <2 x double> [ %.promoted15, %.lr.ph33 ], [ %91, %107 ]
  %82 = phi <2 x double> [ %.promoted17, %.lr.ph33 ], [ %94, %107 ]
  %83 = phi <2 x double> [ %.promoted19, %.lr.ph33 ], [ %99, %107 ]
  %84 = phi <2 x double> [ %.promoted21, %.lr.ph33 ], [ %102, %107 ]
  %85 = phi <2 x double> [ %.promoted23, %.lr.ph33 ], [ %106, %107 ]
  %86 = load <2 x double>, ptr %20, align 16
  %87 = load <2 x double>, ptr %20, align 16
  %88 = fadd <2 x double> %87, %69
  %89 = fmul <2 x double> %86, %88
  %90 = fdiv <2 x double> %68, %89
  %91 = fadd <2 x double> %81, %90
  %92 = load <2 x double>, ptr %20, align 16
  %93 = fdiv <2 x double> %70, %92
  %94 = fadd <2 x double> %82, %93
  %95 = load <2 x double>, ptr %20, align 16
  %96 = load <2 x double>, ptr %20, align 16
  %97 = fmul <2 x double> %95, %96
  %98 = fdiv <2 x double> %71, %97
  %99 = fadd <2 x double> %83, %98
  %100 = load <2 x double>, ptr %20, align 16
  %101 = fdiv <2 x double> %72, %100
  %102 = fadd <2 x double> %84, %101
  %103 = load <2 x double>, ptr %20, align 16
  %104 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %74, <2 x double> %103, <2 x double> %76)
  %105 = fdiv <2 x double> %73, %104
  %106 = fadd <2 x double> %85, %105
  br label %107

107:                                              ; preds = %80
  %108 = load <2 x double>, ptr %20, align 16
  %109 = fadd <2 x double> %108, %77
  store <2 x double> %109, ptr %20, align 16
  %110 = load double, ptr %20, align 16
  %111 = fcmp ole double %110, %67
  br i1 %111, label %80, label %._crit_edge34, !llvm.loop !9

._crit_edge34:                                    ; preds = %107
  %split35 = phi <2 x double> [ %106, %107 ]
  %split36 = phi <2 x double> [ %102, %107 ]
  %split37 = phi <2 x double> [ %99, %107 ]
  %split38 = phi <2 x double> [ %94, %107 ]
  %split39 = phi <2 x double> [ %91, %107 ]
  br label %112

112:                                              ; preds = %._crit_edge34, %64
  %.lcssa24 = phi <2 x double> [ %split35, %._crit_edge34 ], [ %.promoted23, %64 ]
  %.lcssa22 = phi <2 x double> [ %split36, %._crit_edge34 ], [ %.promoted21, %64 ]
  %.lcssa20 = phi <2 x double> [ %split37, %._crit_edge34 ], [ %.promoted19, %64 ]
  %.lcssa18 = phi <2 x double> [ %split38, %._crit_edge34 ], [ %.promoted17, %64 ]
  %.lcssa16 = phi <2 x double> [ %split39, %._crit_edge34 ], [ %.promoted15, %64 ]
  store <2 x double> %.lcssa16, ptr %12, align 16
  store <2 x double> %.lcssa18, ptr %10, align 16
  store <2 x double> %.lcssa20, ptr %11, align 16
  store <2 x double> %.lcssa22, ptr %13, align 16
  store <2 x double> %.lcssa24, ptr %14, align 16
  %113 = load double, ptr %6, align 8
  %114 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %113, ptr noundef @.str.1)
  %115 = load double, ptr %7, align 8
  %116 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %115, ptr noundef @.str.2)
  %117 = load <2 x double>, ptr %12, align 16
  %118 = call double @sum_vec(<2 x double> noundef %117)
  %119 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %118, ptr noundef @.str.3)
  %120 = load double, ptr %8, align 8
  %121 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %120, ptr noundef @.str.4)
  %122 = load double, ptr %9, align 8
  %123 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %122, ptr noundef @.str.5)
  %124 = load <2 x double>, ptr %10, align 16
  %125 = call double @sum_vec(<2 x double> noundef %124)
  %126 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %125, ptr noundef @.str.6)
  %127 = load <2 x double>, ptr %11, align 16
  %128 = call double @sum_vec(<2 x double> noundef %127)
  %129 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %128, ptr noundef @.str.7)
  %130 = load <2 x double>, ptr %13, align 16
  %131 = call double @sum_vec(<2 x double> noundef %130)
  %132 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %131, ptr noundef @.str.8)
  %133 = load <2 x double>, ptr %14, align 16
  %134 = call double @sum_vec(<2 x double> noundef %133)
  %135 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %134, ptr noundef @.str.9)
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
