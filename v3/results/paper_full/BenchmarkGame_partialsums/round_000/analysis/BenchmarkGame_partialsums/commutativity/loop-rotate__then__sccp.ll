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
  %11 = getelementptr inbounds nuw double, ptr %10, i64 1
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
  %7 = getelementptr inbounds nuw double, ptr %6, i64 1
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
  br i1 %37, label %.lr.ph, label %81

.lr.ph:                                           ; preds = %2
  br label %38

38:                                               ; preds = %.lr.ph, %74
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
  br label %74

74:                                               ; preds = %38
  %75 = load double, ptr %22, align 8
  %76 = fadd double %75, 1.000000e+00
  store double %76, ptr %22, align 8
  %77 = load double, ptr %22, align 8
  %78 = load i32, ptr %26, align 4
  %79 = sitofp i32 %78 to double
  %80 = fcmp ole double %77, %79
  br i1 %80, label %38, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %74
  br label %81

81:                                               ; preds = %._crit_edge, %2
  %82 = load <2 x double>, ptr %18, align 16
  store <2 x double> %82, ptr %20, align 16
  %83 = load double, ptr %20, align 16
  %84 = load i32, ptr %26, align 4
  %85 = sitofp i32 %84 to double
  %86 = fcmp ole double %83, %85
  br i1 %86, label %.lr.ph2, label %131

.lr.ph2:                                          ; preds = %81
  br label %87

87:                                               ; preds = %.lr.ph2, %123
  %88 = load <2 x double>, ptr %16, align 16
  %89 = load <2 x double>, ptr %20, align 16
  %90 = load <2 x double>, ptr %20, align 16
  %91 = load <2 x double>, ptr %16, align 16
  %92 = fadd <2 x double> %90, %91
  %93 = fmul <2 x double> %89, %92
  %94 = fdiv <2 x double> %88, %93
  %95 = load <2 x double>, ptr %12, align 16
  %96 = fadd <2 x double> %95, %94
  store <2 x double> %96, ptr %12, align 16
  %97 = load <2 x double>, ptr %16, align 16
  %98 = load <2 x double>, ptr %20, align 16
  %99 = fdiv <2 x double> %97, %98
  %100 = load <2 x double>, ptr %10, align 16
  %101 = fadd <2 x double> %100, %99
  store <2 x double> %101, ptr %10, align 16
  %102 = load <2 x double>, ptr %16, align 16
  %103 = load <2 x double>, ptr %20, align 16
  %104 = load <2 x double>, ptr %20, align 16
  %105 = fmul <2 x double> %103, %104
  %106 = fdiv <2 x double> %102, %105
  %107 = load <2 x double>, ptr %11, align 16
  %108 = fadd <2 x double> %107, %106
  store <2 x double> %108, ptr %11, align 16
  %109 = load <2 x double>, ptr %21, align 16
  %110 = load <2 x double>, ptr %20, align 16
  %111 = fdiv <2 x double> %109, %110
  %112 = load <2 x double>, ptr %13, align 16
  %113 = fadd <2 x double> %112, %111
  store <2 x double> %113, ptr %13, align 16
  %114 = load <2 x double>, ptr %21, align 16
  %115 = load <2 x double>, ptr %17, align 16
  %116 = load <2 x double>, ptr %20, align 16
  %117 = load <2 x double>, ptr %16, align 16
  %118 = fneg <2 x double> %117
  %119 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %115, <2 x double> %116, <2 x double> %118)
  %120 = fdiv <2 x double> %114, %119
  %121 = load <2 x double>, ptr %14, align 16
  %122 = fadd <2 x double> %121, %120
  store <2 x double> %122, ptr %14, align 16
  br label %123

123:                                              ; preds = %87
  %124 = load <2 x double>, ptr %17, align 16
  %125 = load <2 x double>, ptr %20, align 16
  %126 = fadd <2 x double> %125, %124
  store <2 x double> %126, ptr %20, align 16
  %127 = load double, ptr %20, align 16
  %128 = load i32, ptr %26, align 4
  %129 = sitofp i32 %128 to double
  %130 = fcmp ole double %127, %129
  br i1 %130, label %87, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %123
  br label %131

131:                                              ; preds = %._crit_edge3, %81
  %132 = load double, ptr %6, align 8
  %133 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %132, ptr noundef @.str.1)
  %134 = load double, ptr %7, align 8
  %135 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %134, ptr noundef @.str.2)
  %136 = load <2 x double>, ptr %12, align 16
  %137 = call double @sum_vec(<2 x double> noundef %136)
  %138 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %137, ptr noundef @.str.3)
  %139 = load double, ptr %8, align 8
  %140 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %139, ptr noundef @.str.4)
  %141 = load double, ptr %9, align 8
  %142 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %141, ptr noundef @.str.5)
  %143 = load <2 x double>, ptr %10, align 16
  %144 = call double @sum_vec(<2 x double> noundef %143)
  %145 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %144, ptr noundef @.str.6)
  %146 = load <2 x double>, ptr %11, align 16
  %147 = call double @sum_vec(<2 x double> noundef %146)
  %148 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %147, ptr noundef @.str.7)
  %149 = load <2 x double>, ptr %13, align 16
  %150 = call double @sum_vec(<2 x double> noundef %149)
  %151 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %150, ptr noundef @.str.8)
  %152 = load <2 x double>, ptr %14, align 16
  %153 = call double @sum_vec(<2 x double> noundef %152)
  %154 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %153, ptr noundef @.str.9)
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
