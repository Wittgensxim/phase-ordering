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
  br i1 %37, label %.lr.ph, label %80

.lr.ph:                                           ; preds = %2
  br label %38

38:                                               ; preds = %.lr.ph, %38
  %39 = load double, ptr %22, align 8
  %40 = fsub double %39, 1.000000e+00
  %41 = call double @pow(double noundef f0x3FE5555555555555, double noundef %40) #4
  %42 = load double, ptr %6, align 8
  %43 = fadd double %42, %41
  store double %43, ptr %6, align 8
  %44 = load double, ptr %22, align 8
  %45 = call double @sqrt(double noundef %44) #4
  %46 = fdiv double 1.000000e+00, %45
  %47 = load double, ptr %7, align 8
  %48 = fadd double %47, %46
  store double %48, ptr %7, align 8
  %49 = load double, ptr %22, align 8
  %50 = load double, ptr %22, align 8
  %51 = fmul double %49, %50
  %52 = load double, ptr %22, align 8
  %53 = fmul double %51, %52
  store double %53, ptr %23, align 8
  %54 = load double, ptr %22, align 8
  %55 = call double @sin(double noundef %54) #4
  store double %55, ptr %24, align 8
  %56 = load double, ptr %22, align 8
  %57 = call double @cos(double noundef %56) #4
  store double %57, ptr %25, align 8
  %58 = load double, ptr %23, align 8
  %59 = load double, ptr %24, align 8
  %60 = fmul double %58, %59
  %61 = load double, ptr %24, align 8
  %62 = fmul double %60, %61
  %63 = fdiv double 1.000000e+00, %62
  %64 = load double, ptr %8, align 8
  %65 = fadd double %64, %63
  store double %65, ptr %8, align 8
  %66 = load double, ptr %23, align 8
  %67 = load double, ptr %25, align 8
  %68 = fmul double %66, %67
  %69 = load double, ptr %25, align 8
  %70 = fmul double %68, %69
  %71 = fdiv double 1.000000e+00, %70
  %72 = load double, ptr %9, align 8
  %73 = fadd double %72, %71
  store double %73, ptr %9, align 8
  %74 = load double, ptr %22, align 8
  %75 = fadd double %74, 1.000000e+00
  store double %75, ptr %22, align 8
  %76 = load double, ptr %22, align 8
  %77 = load i32, ptr %26, align 4
  %78 = sitofp i32 %77 to double
  %79 = fcmp ole double %76, %78
  br i1 %79, label %38, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %38
  br label %80

80:                                               ; preds = %._crit_edge, %2
  %81 = load <2 x double>, ptr %18, align 16
  store <2 x double> %81, ptr %20, align 16
  %82 = load double, ptr %20, align 16
  %83 = load i32, ptr %26, align 4
  %84 = sitofp i32 %83 to double
  %85 = fcmp ole double %82, %84
  br i1 %85, label %.lr.ph2, label %129

.lr.ph2:                                          ; preds = %80
  br label %86

86:                                               ; preds = %.lr.ph2, %86
  %87 = load <2 x double>, ptr %16, align 16
  %88 = load <2 x double>, ptr %20, align 16
  %89 = load <2 x double>, ptr %20, align 16
  %90 = load <2 x double>, ptr %16, align 16
  %91 = fadd <2 x double> %89, %90
  %92 = fmul <2 x double> %88, %91
  %93 = fdiv <2 x double> %87, %92
  %94 = load <2 x double>, ptr %12, align 16
  %95 = fadd <2 x double> %94, %93
  store <2 x double> %95, ptr %12, align 16
  %96 = load <2 x double>, ptr %16, align 16
  %97 = load <2 x double>, ptr %20, align 16
  %98 = fdiv <2 x double> %96, %97
  %99 = load <2 x double>, ptr %10, align 16
  %100 = fadd <2 x double> %99, %98
  store <2 x double> %100, ptr %10, align 16
  %101 = load <2 x double>, ptr %16, align 16
  %102 = load <2 x double>, ptr %20, align 16
  %103 = load <2 x double>, ptr %20, align 16
  %104 = fmul <2 x double> %102, %103
  %105 = fdiv <2 x double> %101, %104
  %106 = load <2 x double>, ptr %11, align 16
  %107 = fadd <2 x double> %106, %105
  store <2 x double> %107, ptr %11, align 16
  %108 = load <2 x double>, ptr %21, align 16
  %109 = load <2 x double>, ptr %20, align 16
  %110 = fdiv <2 x double> %108, %109
  %111 = load <2 x double>, ptr %13, align 16
  %112 = fadd <2 x double> %111, %110
  store <2 x double> %112, ptr %13, align 16
  %113 = load <2 x double>, ptr %21, align 16
  %114 = load <2 x double>, ptr %17, align 16
  %115 = load <2 x double>, ptr %20, align 16
  %116 = load <2 x double>, ptr %16, align 16
  %117 = fneg <2 x double> %116
  %118 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %114, <2 x double> %115, <2 x double> %117)
  %119 = fdiv <2 x double> %113, %118
  %120 = load <2 x double>, ptr %14, align 16
  %121 = fadd <2 x double> %120, %119
  store <2 x double> %121, ptr %14, align 16
  %122 = load <2 x double>, ptr %17, align 16
  %123 = load <2 x double>, ptr %20, align 16
  %124 = fadd <2 x double> %123, %122
  store <2 x double> %124, ptr %20, align 16
  %125 = load double, ptr %20, align 16
  %126 = load i32, ptr %26, align 4
  %127 = sitofp i32 %126 to double
  %128 = fcmp ole double %125, %127
  br i1 %128, label %86, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %86
  br label %129

129:                                              ; preds = %._crit_edge3, %80
  %130 = load double, ptr %6, align 8
  %131 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %130, ptr noundef @.str.1)
  %132 = load double, ptr %7, align 8
  %133 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %132, ptr noundef @.str.2)
  %134 = load <2 x double>, ptr %12, align 16
  %135 = call double @sum_vec(<2 x double> noundef %134)
  %136 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %135, ptr noundef @.str.3)
  %137 = load double, ptr %8, align 8
  %138 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %137, ptr noundef @.str.4)
  %139 = load double, ptr %9, align 8
  %140 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %139, ptr noundef @.str.5)
  %141 = load <2 x double>, ptr %10, align 16
  %142 = call double @sum_vec(<2 x double> noundef %141)
  %143 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %142, ptr noundef @.str.6)
  %144 = load <2 x double>, ptr %11, align 16
  %145 = call double @sum_vec(<2 x double> noundef %144)
  %146 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %145, ptr noundef @.str.7)
  %147 = load <2 x double>, ptr %13, align 16
  %148 = call double @sum_vec(<2 x double> noundef %147)
  %149 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %148, ptr noundef @.str.8)
  %150 = load <2 x double>, ptr %14, align 16
  %151 = call double @sum_vec(<2 x double> noundef %150)
  %152 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %151, ptr noundef @.str.9)
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
