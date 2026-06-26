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
  br label %34

34:                                               ; preds = %70, %2
  %35 = load double, ptr %22, align 8
  %36 = load i32, ptr %26, align 4
  %37 = sitofp i32 %36 to double
  %38 = fcmp ole double %35, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %34
  %40 = fsub double %35, 1.000000e+00
  %41 = call double @pow(double noundef f0x3FE5555555555555, double noundef %40) #4
  %42 = load double, ptr %6, align 8
  %43 = fadd double %41, %42
  store double %43, ptr %6, align 8
  %44 = load double, ptr %22, align 8
  %45 = call double @sqrt(double noundef %44) #4
  %46 = fdiv double 1.000000e+00, %45
  %47 = load double, ptr %7, align 8
  %48 = fadd double %47, %46
  store double %48, ptr %7, align 8
  %49 = load double, ptr %22, align 8
  %50 = fmul double %49, %49
  %51 = fmul double %50, %49
  store double %51, ptr %23, align 8
  %52 = load double, ptr %22, align 8
  %53 = call double @sin(double noundef %52) #4
  store double %53, ptr %24, align 8
  %54 = load double, ptr %22, align 8
  %55 = call double @cos(double noundef %54) #4
  store double %55, ptr %25, align 8
  %56 = load double, ptr %23, align 8
  %57 = load double, ptr %24, align 8
  %58 = fmul double %56, %57
  %59 = fmul double %58, %57
  %60 = fdiv double 1.000000e+00, %59
  %61 = load double, ptr %8, align 8
  %62 = fadd double %61, %60
  store double %62, ptr %8, align 8
  %63 = load double, ptr %23, align 8
  %64 = load double, ptr %25, align 8
  %65 = fmul double %63, %64
  %66 = fmul double %65, %64
  %67 = fdiv double 1.000000e+00, %66
  %68 = load double, ptr %9, align 8
  %69 = fadd double %68, %67
  store double %69, ptr %9, align 8
  br label %70

70:                                               ; preds = %39
  %71 = load double, ptr %22, align 8
  %72 = fadd double %71, 1.000000e+00
  store double %72, ptr %22, align 8
  br label %34, !llvm.loop !7

73:                                               ; preds = %34
  %74 = load <2 x double>, ptr %18, align 16
  store <2 x double> %74, ptr %20, align 16
  br label %75

75:                                               ; preds = %113, %73
  %76 = load double, ptr %20, align 16
  %77 = load i32, ptr %26, align 4
  %78 = sitofp i32 %77 to double
  %79 = fcmp ole double %76, %78
  br i1 %79, label %80, label %117

80:                                               ; preds = %75
  %81 = load <2 x double>, ptr %16, align 16
  %82 = load <2 x double>, ptr %20, align 16
  %83 = fadd <2 x double> %82, %81
  %84 = fmul <2 x double> %82, %83
  %85 = fdiv <2 x double> %81, %84
  %86 = load <2 x double>, ptr %12, align 16
  %87 = fadd <2 x double> %86, %85
  store <2 x double> %87, ptr %12, align 16
  %88 = load <2 x double>, ptr %16, align 16
  %89 = load <2 x double>, ptr %20, align 16
  %90 = fdiv <2 x double> %88, %89
  %91 = load <2 x double>, ptr %10, align 16
  %92 = fadd <2 x double> %91, %90
  store <2 x double> %92, ptr %10, align 16
  %93 = load <2 x double>, ptr %16, align 16
  %94 = load <2 x double>, ptr %20, align 16
  %95 = fmul <2 x double> %94, %94
  %96 = fdiv <2 x double> %93, %95
  %97 = load <2 x double>, ptr %11, align 16
  %98 = fadd <2 x double> %97, %96
  store <2 x double> %98, ptr %11, align 16
  %99 = load <2 x double>, ptr %21, align 16
  %100 = load <2 x double>, ptr %20, align 16
  %101 = fdiv <2 x double> %99, %100
  %102 = load <2 x double>, ptr %13, align 16
  %103 = fadd <2 x double> %102, %101
  store <2 x double> %103, ptr %13, align 16
  %104 = load <2 x double>, ptr %21, align 16
  %105 = load <2 x double>, ptr %17, align 16
  %106 = load <2 x double>, ptr %20, align 16
  %107 = load <2 x double>, ptr %16, align 16
  %108 = fneg <2 x double> %107
  %109 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %105, <2 x double> %106, <2 x double> %108)
  %110 = fdiv <2 x double> %104, %109
  %111 = load <2 x double>, ptr %14, align 16
  %112 = fadd <2 x double> %111, %110
  store <2 x double> %112, ptr %14, align 16
  br label %113

113:                                              ; preds = %80
  %114 = load <2 x double>, ptr %17, align 16
  %115 = load <2 x double>, ptr %20, align 16
  %116 = fadd <2 x double> %114, %115
  store <2 x double> %116, ptr %20, align 16
  br label %75, !llvm.loop !9

117:                                              ; preds = %75
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
