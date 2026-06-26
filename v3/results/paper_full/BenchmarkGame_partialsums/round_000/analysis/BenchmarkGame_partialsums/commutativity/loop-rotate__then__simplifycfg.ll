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
  br i1 %37, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %.lr.ph
  %38 = load double, ptr %22, align 8
  %39 = fsub double %38, 1.000000e+00
  %40 = call double @pow(double noundef f0x3FE5555555555555, double noundef %39) #4
  %41 = load double, ptr %6, align 8
  %42 = fadd double %41, %40
  store double %42, ptr %6, align 8
  %43 = load double, ptr %22, align 8
  %44 = call double @sqrt(double noundef %43) #4
  %45 = fdiv double 1.000000e+00, %44
  %46 = load double, ptr %7, align 8
  %47 = fadd double %46, %45
  store double %47, ptr %7, align 8
  %48 = load double, ptr %22, align 8
  %49 = load double, ptr %22, align 8
  %50 = fmul double %48, %49
  %51 = load double, ptr %22, align 8
  %52 = fmul double %50, %51
  store double %52, ptr %23, align 8
  %53 = load double, ptr %22, align 8
  %54 = call double @sin(double noundef %53) #4
  store double %54, ptr %24, align 8
  %55 = load double, ptr %22, align 8
  %56 = call double @cos(double noundef %55) #4
  store double %56, ptr %25, align 8
  %57 = load double, ptr %23, align 8
  %58 = load double, ptr %24, align 8
  %59 = fmul double %57, %58
  %60 = load double, ptr %24, align 8
  %61 = fmul double %59, %60
  %62 = fdiv double 1.000000e+00, %61
  %63 = load double, ptr %8, align 8
  %64 = fadd double %63, %62
  store double %64, ptr %8, align 8
  %65 = load double, ptr %23, align 8
  %66 = load double, ptr %25, align 8
  %67 = fmul double %65, %66
  %68 = load double, ptr %25, align 8
  %69 = fmul double %67, %68
  %70 = fdiv double 1.000000e+00, %69
  %71 = load double, ptr %9, align 8
  %72 = fadd double %71, %70
  store double %72, ptr %9, align 8
  %73 = load double, ptr %22, align 8
  %74 = fadd double %73, 1.000000e+00
  store double %74, ptr %22, align 8
  %75 = load double, ptr %22, align 8
  %76 = load i32, ptr %26, align 4
  %77 = sitofp i32 %76 to double
  %78 = fcmp ole double %75, %77
  br i1 %78, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %2
  %79 = load <2 x double>, ptr %18, align 16
  store <2 x double> %79, ptr %20, align 16
  %80 = load double, ptr %20, align 16
  %81 = load i32, ptr %26, align 4
  %82 = sitofp i32 %81 to double
  %83 = fcmp ole double %80, %82
  br i1 %83, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %._crit_edge, %.lr.ph2
  %84 = load <2 x double>, ptr %16, align 16
  %85 = load <2 x double>, ptr %20, align 16
  %86 = load <2 x double>, ptr %20, align 16
  %87 = load <2 x double>, ptr %16, align 16
  %88 = fadd <2 x double> %86, %87
  %89 = fmul <2 x double> %85, %88
  %90 = fdiv <2 x double> %84, %89
  %91 = load <2 x double>, ptr %12, align 16
  %92 = fadd <2 x double> %91, %90
  store <2 x double> %92, ptr %12, align 16
  %93 = load <2 x double>, ptr %16, align 16
  %94 = load <2 x double>, ptr %20, align 16
  %95 = fdiv <2 x double> %93, %94
  %96 = load <2 x double>, ptr %10, align 16
  %97 = fadd <2 x double> %96, %95
  store <2 x double> %97, ptr %10, align 16
  %98 = load <2 x double>, ptr %16, align 16
  %99 = load <2 x double>, ptr %20, align 16
  %100 = load <2 x double>, ptr %20, align 16
  %101 = fmul <2 x double> %99, %100
  %102 = fdiv <2 x double> %98, %101
  %103 = load <2 x double>, ptr %11, align 16
  %104 = fadd <2 x double> %103, %102
  store <2 x double> %104, ptr %11, align 16
  %105 = load <2 x double>, ptr %21, align 16
  %106 = load <2 x double>, ptr %20, align 16
  %107 = fdiv <2 x double> %105, %106
  %108 = load <2 x double>, ptr %13, align 16
  %109 = fadd <2 x double> %108, %107
  store <2 x double> %109, ptr %13, align 16
  %110 = load <2 x double>, ptr %21, align 16
  %111 = load <2 x double>, ptr %17, align 16
  %112 = load <2 x double>, ptr %20, align 16
  %113 = load <2 x double>, ptr %16, align 16
  %114 = fneg <2 x double> %113
  %115 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %111, <2 x double> %112, <2 x double> %114)
  %116 = fdiv <2 x double> %110, %115
  %117 = load <2 x double>, ptr %14, align 16
  %118 = fadd <2 x double> %117, %116
  store <2 x double> %118, ptr %14, align 16
  %119 = load <2 x double>, ptr %17, align 16
  %120 = load <2 x double>, ptr %20, align 16
  %121 = fadd <2 x double> %120, %119
  store <2 x double> %121, ptr %20, align 16
  %122 = load double, ptr %20, align 16
  %123 = load i32, ptr %26, align 4
  %124 = sitofp i32 %123 to double
  %125 = fcmp ole double %122, %124
  br i1 %125, label %.lr.ph2, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %.lr.ph2, %._crit_edge
  %126 = load double, ptr %6, align 8
  %127 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %126, ptr noundef @.str.1)
  %128 = load double, ptr %7, align 8
  %129 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %128, ptr noundef @.str.2)
  %130 = load <2 x double>, ptr %12, align 16
  %131 = call double @sum_vec(<2 x double> noundef %130)
  %132 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %131, ptr noundef @.str.3)
  %133 = load double, ptr %8, align 8
  %134 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %133, ptr noundef @.str.4)
  %135 = load double, ptr %9, align 8
  %136 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %135, ptr noundef @.str.5)
  %137 = load <2 x double>, ptr %10, align 16
  %138 = call double @sum_vec(<2 x double> noundef %137)
  %139 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %138, ptr noundef @.str.6)
  %140 = load <2 x double>, ptr %11, align 16
  %141 = call double @sum_vec(<2 x double> noundef %140)
  %142 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %141, ptr noundef @.str.7)
  %143 = load <2 x double>, ptr %13, align 16
  %144 = call double @sum_vec(<2 x double> noundef %143)
  %145 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %144, ptr noundef @.str.8)
  %146 = load <2 x double>, ptr %14, align 16
  %147 = call double @sum_vec(<2 x double> noundef %146)
  %148 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %147, ptr noundef @.str.9)
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
