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
  %34 = load double, ptr %22, align 8
  %35 = load i32, ptr %26, align 4
  %36 = sitofp i32 %35 to double
  %37 = fcmp ole double %34, %36
  br i1 %37, label %.lr.ph, label %67

.lr.ph:                                           ; preds = %2
  %38 = load i32, ptr %26, align 4
  %39 = sitofp i32 %38 to double
  %.promoted = load double, ptr %22, align 8
  %.promoted4 = load double, ptr %6, align 8
  %.promoted6 = load double, ptr %7, align 8
  %.promoted14 = load double, ptr %8, align 8
  %.promoted16 = load double, ptr %9, align 8
  br label %40

40:                                               ; preds = %.lr.ph, %64
  %41 = phi double [ %.promoted16, %.lr.ph ], [ %63, %64 ]
  %42 = phi double [ %.promoted14, %.lr.ph ], [ %59, %64 ]
  %43 = phi double [ %.promoted6, %.lr.ph ], [ %51, %64 ]
  %44 = phi double [ %.promoted4, %.lr.ph ], [ %48, %64 ]
  %45 = phi double [ %.promoted, %.lr.ph ], [ %65, %64 ]
  %46 = fsub double %45, 1.000000e+00
  %47 = call double @pow(double noundef f0x3FE5555555555555, double noundef %46) #4
  %48 = fadd double %44, %47
  %49 = call double @sqrt(double noundef %45) #4
  %50 = fdiv double 1.000000e+00, %49
  %51 = fadd double %43, %50
  %52 = fmul double %45, %45
  %53 = fmul double %52, %45
  %54 = call double @sin(double noundef %45) #4
  %55 = call double @cos(double noundef %45) #4
  %56 = fmul double %53, %54
  %57 = fmul double %56, %54
  %58 = fdiv double 1.000000e+00, %57
  %59 = fadd double %42, %58
  %60 = fmul double %53, %55
  %61 = fmul double %60, %55
  %62 = fdiv double 1.000000e+00, %61
  %63 = fadd double %41, %62
  br label %64

64:                                               ; preds = %40
  %65 = fadd double %45, 1.000000e+00
  %66 = fcmp ole double %65, %39
  br i1 %66, label %40, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %64
  %.lcssa17 = phi double [ %63, %64 ]
  %.lcssa15 = phi double [ %59, %64 ]
  %.lcssa13 = phi double [ %55, %64 ]
  %.lcssa11 = phi double [ %54, %64 ]
  %.lcssa9 = phi double [ %53, %64 ]
  %.lcssa7 = phi double [ %51, %64 ]
  %.lcssa5 = phi double [ %48, %64 ]
  %.lcssa = phi double [ %65, %64 ]
  store double %.lcssa, ptr %22, align 8
  store double %.lcssa5, ptr %6, align 8
  store double %.lcssa7, ptr %7, align 8
  store double %.lcssa9, ptr %23, align 8
  store double %.lcssa11, ptr %24, align 8
  store double %.lcssa13, ptr %25, align 8
  store double %.lcssa15, ptr %8, align 8
  store double %.lcssa17, ptr %9, align 8
  br label %67

67:                                               ; preds = %._crit_edge, %2
  %68 = load <2 x double>, ptr %18, align 16
  store <2 x double> %68, ptr %20, align 16
  %69 = load double, ptr %20, align 16
  %70 = load i32, ptr %26, align 4
  %71 = sitofp i32 %70 to double
  %72 = fcmp ole double %69, %71
  br i1 %72, label %.lr.ph2, label %117

.lr.ph2:                                          ; preds = %67
  %73 = load <2 x double>, ptr %16, align 16
  %74 = load <2 x double>, ptr %16, align 16
  %75 = load <2 x double>, ptr %16, align 16
  %76 = load <2 x double>, ptr %16, align 16
  %77 = load <2 x double>, ptr %21, align 16
  %78 = load <2 x double>, ptr %21, align 16
  %79 = load <2 x double>, ptr %17, align 16
  %80 = load <2 x double>, ptr %16, align 16
  %81 = fneg <2 x double> %80
  %82 = load <2 x double>, ptr %17, align 16
  %83 = load i32, ptr %26, align 4
  %84 = sitofp i32 %83 to double
  %.promoted18 = load <2 x double>, ptr %12, align 16
  %.promoted20 = load <2 x double>, ptr %10, align 16
  %.promoted22 = load <2 x double>, ptr %11, align 16
  %.promoted24 = load <2 x double>, ptr %13, align 16
  %.promoted26 = load <2 x double>, ptr %14, align 16
  br label %85

85:                                               ; preds = %.lr.ph2, %112
  %86 = phi <2 x double> [ %.promoted26, %.lr.ph2 ], [ %111, %112 ]
  %87 = phi <2 x double> [ %.promoted24, %.lr.ph2 ], [ %107, %112 ]
  %88 = phi <2 x double> [ %.promoted22, %.lr.ph2 ], [ %104, %112 ]
  %89 = phi <2 x double> [ %.promoted20, %.lr.ph2 ], [ %99, %112 ]
  %90 = phi <2 x double> [ %.promoted18, %.lr.ph2 ], [ %96, %112 ]
  %91 = load <2 x double>, ptr %20, align 16
  %92 = load <2 x double>, ptr %20, align 16
  %93 = fadd <2 x double> %92, %74
  %94 = fmul <2 x double> %91, %93
  %95 = fdiv <2 x double> %73, %94
  %96 = fadd <2 x double> %90, %95
  %97 = load <2 x double>, ptr %20, align 16
  %98 = fdiv <2 x double> %75, %97
  %99 = fadd <2 x double> %89, %98
  %100 = load <2 x double>, ptr %20, align 16
  %101 = load <2 x double>, ptr %20, align 16
  %102 = fmul <2 x double> %100, %101
  %103 = fdiv <2 x double> %76, %102
  %104 = fadd <2 x double> %88, %103
  %105 = load <2 x double>, ptr %20, align 16
  %106 = fdiv <2 x double> %77, %105
  %107 = fadd <2 x double> %87, %106
  %108 = load <2 x double>, ptr %20, align 16
  %109 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %79, <2 x double> %108, <2 x double> %81)
  %110 = fdiv <2 x double> %78, %109
  %111 = fadd <2 x double> %86, %110
  br label %112

112:                                              ; preds = %85
  %113 = load <2 x double>, ptr %20, align 16
  %114 = fadd <2 x double> %113, %82
  store <2 x double> %114, ptr %20, align 16
  %115 = load double, ptr %20, align 16
  %116 = fcmp ole double %115, %84
  br i1 %116, label %85, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %112
  %.lcssa27 = phi <2 x double> [ %111, %112 ]
  %.lcssa25 = phi <2 x double> [ %107, %112 ]
  %.lcssa23 = phi <2 x double> [ %104, %112 ]
  %.lcssa21 = phi <2 x double> [ %99, %112 ]
  %.lcssa19 = phi <2 x double> [ %96, %112 ]
  store <2 x double> %.lcssa19, ptr %12, align 16
  store <2 x double> %.lcssa21, ptr %10, align 16
  store <2 x double> %.lcssa23, ptr %11, align 16
  store <2 x double> %.lcssa25, ptr %13, align 16
  store <2 x double> %.lcssa27, ptr %14, align 16
  br label %117

117:                                              ; preds = %._crit_edge3, %67
  %118 = load double, ptr %6, align 8
  %119 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %118, ptr noundef @.str.1)
  %120 = load double, ptr %7, align 8
  %121 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %120, ptr noundef @.str.2)
  %122 = load <2 x double>, ptr %12, align 16
  %123 = call double @sum_vec(<2 x double> noundef %122)
  %124 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %123, ptr noundef @.str.3)
  %125 = load double, ptr %8, align 8
  %126 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %125, ptr noundef @.str.4)
  %127 = load double, ptr %9, align 8
  %128 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %127, ptr noundef @.str.5)
  %129 = load <2 x double>, ptr %10, align 16
  %130 = call double @sum_vec(<2 x double> noundef %129)
  %131 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %130, ptr noundef @.str.6)
  %132 = load <2 x double>, ptr %11, align 16
  %133 = call double @sum_vec(<2 x double> noundef %132)
  %134 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %133, ptr noundef @.str.7)
  %135 = load <2 x double>, ptr %13, align 16
  %136 = call double @sum_vec(<2 x double> noundef %135)
  %137 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %136, ptr noundef @.str.8)
  %138 = load <2 x double>, ptr %14, align 16
  %139 = call double @sum_vec(<2 x double> noundef %138)
  %140 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %139, ptr noundef @.str.9)
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
