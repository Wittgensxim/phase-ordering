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
  store double %7, ptr %5, align 8
  %8 = load double, ptr %4, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds double, ptr %9, i64 1
  store double %8, ptr %10, align 8
  %11 = load <2 x double>, ptr %5, align 16
  ret <2 x double> %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %2 = alloca <2 x double>, align 16
  %3 = alloca ptr, align 8
  store <2 x double> %0, ptr %2, align 16
  store ptr %2, ptr %3, align 8
  %4 = load double, ptr %2, align 8
  %5 = getelementptr inbounds double, ptr %2, i64 1
  %6 = load double, ptr %5, align 8
  %7 = fadd double %4, %6
  ret double %7
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
  %36 = fcmp ole double 1.000000e+00, %35
  br i1 %36, label %.lr.ph, label %75

.lr.ph:                                           ; preds = %2
  br label %37

37:                                               ; preds = %.lr.ph, %69
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
  %49 = fmul double %48, %48
  %50 = fmul double %49, %48
  store double %50, ptr %23, align 8
  %51 = load double, ptr %22, align 8
  %52 = call double @sin(double noundef %51) #4
  store double %52, ptr %24, align 8
  %53 = load double, ptr %22, align 8
  %54 = call double @cos(double noundef %53) #4
  store double %54, ptr %25, align 8
  %55 = load double, ptr %23, align 8
  %56 = load double, ptr %24, align 8
  %57 = fmul double %55, %56
  %58 = fmul double %57, %56
  %59 = fdiv double 1.000000e+00, %58
  %60 = load double, ptr %8, align 8
  %61 = fadd double %60, %59
  store double %61, ptr %8, align 8
  %62 = load double, ptr %23, align 8
  %63 = load double, ptr %25, align 8
  %64 = fmul double %62, %63
  %65 = fmul double %64, %63
  %66 = fdiv double 1.000000e+00, %65
  %67 = load double, ptr %9, align 8
  %68 = fadd double %67, %66
  store double %68, ptr %9, align 8
  br label %69

69:                                               ; preds = %37
  %70 = load double, ptr %22, align 8
  %71 = fadd double %70, 1.000000e+00
  store double %71, ptr %22, align 8
  %72 = load i32, ptr %26, align 4
  %73 = sitofp i32 %72 to double
  %74 = fcmp ole double %71, %73
  br i1 %74, label %37, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %69
  br label %75

75:                                               ; preds = %._crit_edge, %2
  %76 = load <2 x double>, ptr %18, align 16
  store <2 x double> %76, ptr %20, align 16
  %77 = load double, ptr %20, align 16
  %78 = load i32, ptr %26, align 4
  %79 = sitofp i32 %78 to double
  %80 = fcmp ole double %77, %79
  br i1 %80, label %.lr.ph2, label %122

.lr.ph2:                                          ; preds = %75
  br label %81

81:                                               ; preds = %.lr.ph2, %114
  %82 = load <2 x double>, ptr %16, align 16
  %83 = load <2 x double>, ptr %20, align 16
  %84 = fadd <2 x double> %83, %82
  %85 = fmul <2 x double> %83, %84
  %86 = fdiv <2 x double> %82, %85
  %87 = load <2 x double>, ptr %12, align 16
  %88 = fadd <2 x double> %87, %86
  store <2 x double> %88, ptr %12, align 16
  %89 = load <2 x double>, ptr %16, align 16
  %90 = load <2 x double>, ptr %20, align 16
  %91 = fdiv <2 x double> %89, %90
  %92 = load <2 x double>, ptr %10, align 16
  %93 = fadd <2 x double> %92, %91
  store <2 x double> %93, ptr %10, align 16
  %94 = load <2 x double>, ptr %16, align 16
  %95 = load <2 x double>, ptr %20, align 16
  %96 = fmul <2 x double> %95, %95
  %97 = fdiv <2 x double> %94, %96
  %98 = load <2 x double>, ptr %11, align 16
  %99 = fadd <2 x double> %98, %97
  store <2 x double> %99, ptr %11, align 16
  %100 = load <2 x double>, ptr %21, align 16
  %101 = load <2 x double>, ptr %20, align 16
  %102 = fdiv <2 x double> %100, %101
  %103 = load <2 x double>, ptr %13, align 16
  %104 = fadd <2 x double> %103, %102
  store <2 x double> %104, ptr %13, align 16
  %105 = load <2 x double>, ptr %21, align 16
  %106 = load <2 x double>, ptr %17, align 16
  %107 = load <2 x double>, ptr %20, align 16
  %108 = load <2 x double>, ptr %16, align 16
  %109 = fneg <2 x double> %108
  %110 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %106, <2 x double> %107, <2 x double> %109)
  %111 = fdiv <2 x double> %105, %110
  %112 = load <2 x double>, ptr %14, align 16
  %113 = fadd <2 x double> %112, %111
  store <2 x double> %113, ptr %14, align 16
  br label %114

114:                                              ; preds = %81
  %115 = load <2 x double>, ptr %17, align 16
  %116 = load <2 x double>, ptr %20, align 16
  %117 = fadd <2 x double> %116, %115
  store <2 x double> %117, ptr %20, align 16
  %118 = load double, ptr %20, align 16
  %119 = load i32, ptr %26, align 4
  %120 = sitofp i32 %119 to double
  %121 = fcmp ole double %118, %120
  br i1 %121, label %81, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %114
  br label %122

122:                                              ; preds = %._crit_edge3, %75
  %123 = load double, ptr %6, align 8
  %124 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %123, ptr noundef @.str.1)
  %125 = load double, ptr %7, align 8
  %126 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %125, ptr noundef @.str.2)
  %127 = load <2 x double>, ptr %12, align 16
  %128 = call double @sum_vec(<2 x double> noundef %127)
  %129 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %128, ptr noundef @.str.3)
  %130 = load double, ptr %8, align 8
  %131 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %130, ptr noundef @.str.4)
  %132 = load double, ptr %9, align 8
  %133 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %132, ptr noundef @.str.5)
  %134 = load <2 x double>, ptr %10, align 16
  %135 = call double @sum_vec(<2 x double> noundef %134)
  %136 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %135, ptr noundef @.str.6)
  %137 = load <2 x double>, ptr %11, align 16
  %138 = call double @sum_vec(<2 x double> noundef %137)
  %139 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %138, ptr noundef @.str.7)
  %140 = load <2 x double>, ptr %13, align 16
  %141 = call double @sum_vec(<2 x double> noundef %140)
  %142 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %141, ptr noundef @.str.8)
  %143 = load <2 x double>, ptr %14, align 16
  %144 = call double @sum_vec(<2 x double> noundef %143)
  %145 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %144, ptr noundef @.str.9)
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
