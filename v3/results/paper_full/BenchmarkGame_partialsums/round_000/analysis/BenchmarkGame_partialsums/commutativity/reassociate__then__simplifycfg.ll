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
  br label %34

34:                                               ; preds = %39, %2
  %35 = load double, ptr %22, align 8
  %36 = load i32, ptr %26, align 4
  %37 = sitofp i32 %36 to double
  %38 = fcmp ole double %35, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %34
  %40 = load double, ptr %22, align 8
  %41 = fsub double %40, 1.000000e+00
  %42 = call double @pow(double noundef f0x3FE5555555555555, double noundef %41) #4
  %43 = load double, ptr %6, align 8
  %44 = fadd double %42, %43
  store double %44, ptr %6, align 8
  %45 = load double, ptr %22, align 8
  %46 = call double @sqrt(double noundef %45) #4
  %47 = fdiv double 1.000000e+00, %46
  %48 = load double, ptr %7, align 8
  %49 = fadd double %48, %47
  store double %49, ptr %7, align 8
  %50 = load double, ptr %22, align 8
  %51 = load double, ptr %22, align 8
  %52 = fmul double %50, %51
  %53 = load double, ptr %22, align 8
  %54 = fmul double %52, %53
  store double %54, ptr %23, align 8
  %55 = load double, ptr %22, align 8
  %56 = call double @sin(double noundef %55) #4
  store double %56, ptr %24, align 8
  %57 = load double, ptr %22, align 8
  %58 = call double @cos(double noundef %57) #4
  store double %58, ptr %25, align 8
  %59 = load double, ptr %23, align 8
  %60 = load double, ptr %24, align 8
  %61 = fmul double %59, %60
  %62 = load double, ptr %24, align 8
  %63 = fmul double %61, %62
  %64 = fdiv double 1.000000e+00, %63
  %65 = load double, ptr %8, align 8
  %66 = fadd double %65, %64
  store double %66, ptr %8, align 8
  %67 = load double, ptr %23, align 8
  %68 = load double, ptr %25, align 8
  %69 = fmul double %67, %68
  %70 = load double, ptr %25, align 8
  %71 = fmul double %69, %70
  %72 = fdiv double 1.000000e+00, %71
  %73 = load double, ptr %9, align 8
  %74 = fadd double %73, %72
  store double %74, ptr %9, align 8
  %75 = load double, ptr %22, align 8
  %76 = fadd double %75, 1.000000e+00
  store double %76, ptr %22, align 8
  br label %34, !llvm.loop !7

77:                                               ; preds = %34
  %78 = load <2 x double>, ptr %18, align 16
  store <2 x double> %78, ptr %20, align 16
  br label %79

79:                                               ; preds = %84, %77
  %80 = load double, ptr %20, align 16
  %81 = load i32, ptr %26, align 4
  %82 = sitofp i32 %81 to double
  %83 = fcmp ole double %80, %82
  br i1 %83, label %84, label %123

84:                                               ; preds = %79
  %85 = load <2 x double>, ptr %16, align 16
  %86 = load <2 x double>, ptr %20, align 16
  %87 = load <2 x double>, ptr %20, align 16
  %88 = load <2 x double>, ptr %16, align 16
  %89 = fadd <2 x double> %87, %88
  %90 = fmul <2 x double> %86, %89
  %91 = fdiv <2 x double> %85, %90
  %92 = load <2 x double>, ptr %12, align 16
  %93 = fadd <2 x double> %92, %91
  store <2 x double> %93, ptr %12, align 16
  %94 = load <2 x double>, ptr %16, align 16
  %95 = load <2 x double>, ptr %20, align 16
  %96 = fdiv <2 x double> %94, %95
  %97 = load <2 x double>, ptr %10, align 16
  %98 = fadd <2 x double> %97, %96
  store <2 x double> %98, ptr %10, align 16
  %99 = load <2 x double>, ptr %16, align 16
  %100 = load <2 x double>, ptr %20, align 16
  %101 = load <2 x double>, ptr %20, align 16
  %102 = fmul <2 x double> %100, %101
  %103 = fdiv <2 x double> %99, %102
  %104 = load <2 x double>, ptr %11, align 16
  %105 = fadd <2 x double> %104, %103
  store <2 x double> %105, ptr %11, align 16
  %106 = load <2 x double>, ptr %21, align 16
  %107 = load <2 x double>, ptr %20, align 16
  %108 = fdiv <2 x double> %106, %107
  %109 = load <2 x double>, ptr %13, align 16
  %110 = fadd <2 x double> %109, %108
  store <2 x double> %110, ptr %13, align 16
  %111 = load <2 x double>, ptr %21, align 16
  %112 = load <2 x double>, ptr %17, align 16
  %113 = load <2 x double>, ptr %20, align 16
  %114 = load <2 x double>, ptr %16, align 16
  %115 = fneg <2 x double> %114
  %116 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %112, <2 x double> %113, <2 x double> %115)
  %117 = fdiv <2 x double> %111, %116
  %118 = load <2 x double>, ptr %14, align 16
  %119 = fadd <2 x double> %118, %117
  store <2 x double> %119, ptr %14, align 16
  %120 = load <2 x double>, ptr %17, align 16
  %121 = load <2 x double>, ptr %20, align 16
  %122 = fadd <2 x double> %120, %121
  store <2 x double> %122, ptr %20, align 16
  br label %79, !llvm.loop !9

123:                                              ; preds = %79
  %124 = load double, ptr %6, align 8
  %125 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %124, ptr noundef @.str.1)
  %126 = load double, ptr %7, align 8
  %127 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %126, ptr noundef @.str.2)
  %128 = load <2 x double>, ptr %12, align 16
  %129 = call double @sum_vec(<2 x double> noundef %128)
  %130 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %129, ptr noundef @.str.3)
  %131 = load double, ptr %8, align 8
  %132 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %131, ptr noundef @.str.4)
  %133 = load double, ptr %9, align 8
  %134 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %133, ptr noundef @.str.5)
  %135 = load <2 x double>, ptr %10, align 16
  %136 = call double @sum_vec(<2 x double> noundef %135)
  %137 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %136, ptr noundef @.str.6)
  %138 = load <2 x double>, ptr %11, align 16
  %139 = call double @sum_vec(<2 x double> noundef %138)
  %140 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %139, ptr noundef @.str.7)
  %141 = load <2 x double>, ptr %13, align 16
  %142 = call double @sum_vec(<2 x double> noundef %141)
  %143 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %142, ptr noundef @.str.8)
  %144 = load <2 x double>, ptr %14, align 16
  %145 = call double @sum_vec(<2 x double> noundef %144)
  %146 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %145, ptr noundef @.str.9)
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
