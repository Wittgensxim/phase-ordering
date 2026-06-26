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

34:                                               ; preds = %39, %2
  %35 = load double, ptr %22, align 8
  %36 = load i32, ptr %26, align 4
  %37 = sitofp i32 %36 to double
  %38 = fcmp ole double %35, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %34
  %40 = fsub double %35, 1.000000e+00
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
  %70 = load double, ptr %22, align 8
  %71 = fadd double %70, 1.000000e+00
  store double %71, ptr %22, align 8
  br label %34, !llvm.loop !7

72:                                               ; preds = %34
  %73 = load <2 x double>, ptr %18, align 16
  store <2 x double> %73, ptr %20, align 16
  br label %74

74:                                               ; preds = %79, %72
  %75 = load double, ptr %20, align 16
  %76 = load i32, ptr %26, align 4
  %77 = sitofp i32 %76 to double
  %78 = fcmp ole double %75, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %74
  %80 = load <2 x double>, ptr %16, align 16
  %81 = load <2 x double>, ptr %20, align 16
  %82 = fadd <2 x double> %81, %80
  %83 = fmul <2 x double> %81, %82
  %84 = fdiv <2 x double> %80, %83
  %85 = load <2 x double>, ptr %12, align 16
  %86 = fadd <2 x double> %85, %84
  store <2 x double> %86, ptr %12, align 16
  %87 = load <2 x double>, ptr %16, align 16
  %88 = load <2 x double>, ptr %20, align 16
  %89 = fdiv <2 x double> %87, %88
  %90 = load <2 x double>, ptr %10, align 16
  %91 = fadd <2 x double> %90, %89
  store <2 x double> %91, ptr %10, align 16
  %92 = load <2 x double>, ptr %16, align 16
  %93 = load <2 x double>, ptr %20, align 16
  %94 = fmul <2 x double> %93, %93
  %95 = fdiv <2 x double> %92, %94
  %96 = load <2 x double>, ptr %11, align 16
  %97 = fadd <2 x double> %96, %95
  store <2 x double> %97, ptr %11, align 16
  %98 = load <2 x double>, ptr %21, align 16
  %99 = load <2 x double>, ptr %20, align 16
  %100 = fdiv <2 x double> %98, %99
  %101 = load <2 x double>, ptr %13, align 16
  %102 = fadd <2 x double> %101, %100
  store <2 x double> %102, ptr %13, align 16
  %103 = load <2 x double>, ptr %21, align 16
  %104 = load <2 x double>, ptr %17, align 16
  %105 = load <2 x double>, ptr %20, align 16
  %106 = load <2 x double>, ptr %16, align 16
  %107 = fneg <2 x double> %106
  %108 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %104, <2 x double> %105, <2 x double> %107)
  %109 = fdiv <2 x double> %103, %108
  %110 = load <2 x double>, ptr %14, align 16
  %111 = fadd <2 x double> %110, %109
  store <2 x double> %111, ptr %14, align 16
  %112 = load <2 x double>, ptr %17, align 16
  %113 = load <2 x double>, ptr %20, align 16
  %114 = fadd <2 x double> %113, %112
  store <2 x double> %114, ptr %20, align 16
  br label %74, !llvm.loop !9

115:                                              ; preds = %74
  %116 = load double, ptr %6, align 8
  %117 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %116, ptr noundef @.str.1)
  %118 = load double, ptr %7, align 8
  %119 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %118, ptr noundef @.str.2)
  %120 = load <2 x double>, ptr %12, align 16
  %121 = call double @sum_vec(<2 x double> noundef %120)
  %122 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %121, ptr noundef @.str.3)
  %123 = load double, ptr %8, align 8
  %124 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %123, ptr noundef @.str.4)
  %125 = load double, ptr %9, align 8
  %126 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %125, ptr noundef @.str.5)
  %127 = load <2 x double>, ptr %10, align 16
  %128 = call double @sum_vec(<2 x double> noundef %127)
  %129 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %128, ptr noundef @.str.6)
  %130 = load <2 x double>, ptr %11, align 16
  %131 = call double @sum_vec(<2 x double> noundef %130)
  %132 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %131, ptr noundef @.str.7)
  %133 = load <2 x double>, ptr %13, align 16
  %134 = call double @sum_vec(<2 x double> noundef %133)
  %135 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %134, ptr noundef @.str.8)
  %136 = load <2 x double>, ptr %14, align 16
  %137 = call double @sum_vec(<2 x double> noundef %136)
  %138 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %137, ptr noundef @.str.9)
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
