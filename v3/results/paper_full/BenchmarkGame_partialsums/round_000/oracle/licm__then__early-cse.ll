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
  %.promoted1 = load double, ptr %6, align 8
  %.promoted3 = load double, ptr %7, align 8
  %.promoted5 = load double, ptr %23, align 8
  %.promoted7 = load double, ptr %24, align 8
  %.promoted9 = load double, ptr %25, align 8
  %.promoted11 = load double, ptr %8, align 8
  %.promoted13 = load double, ptr %9, align 8
  br label %36

36:                                               ; preds = %65, %2
  %37 = phi double [ %64, %65 ], [ %.promoted13, %2 ]
  %38 = phi double [ %60, %65 ], [ %.promoted11, %2 ]
  %39 = phi double [ %56, %65 ], [ %.promoted9, %2 ]
  %40 = phi double [ %55, %65 ], [ %.promoted7, %2 ]
  %41 = phi double [ %54, %65 ], [ %.promoted5, %2 ]
  %42 = phi double [ %52, %65 ], [ %.promoted3, %2 ]
  %43 = phi double [ %49, %65 ], [ %.promoted1, %2 ]
  %44 = phi double [ %66, %65 ], [ 1.000000e+00, %2 ]
  %45 = fcmp ole double %44, %35
  br i1 %45, label %46, label %67

46:                                               ; preds = %36
  %47 = fsub double %44, 1.000000e+00
  %48 = call double @pow(double noundef f0x3FE5555555555555, double noundef %47) #4
  %49 = fadd double %43, %48
  %50 = call double @sqrt(double noundef %44) #4
  %51 = fdiv double 1.000000e+00, %50
  %52 = fadd double %42, %51
  %53 = fmul double %44, %44
  %54 = fmul double %53, %44
  %55 = call double @sin(double noundef %44) #4
  %56 = call double @cos(double noundef %44) #4
  %57 = fmul double %54, %55
  %58 = fmul double %57, %55
  %59 = fdiv double 1.000000e+00, %58
  %60 = fadd double %38, %59
  %61 = fmul double %54, %56
  %62 = fmul double %61, %56
  %63 = fdiv double 1.000000e+00, %62
  %64 = fadd double %37, %63
  br label %65

65:                                               ; preds = %46
  %66 = fadd double %44, 1.000000e+00
  br label %36, !llvm.loop !7

67:                                               ; preds = %36
  store double %44, ptr %22, align 8
  store double %43, ptr %6, align 8
  store double %42, ptr %7, align 8
  store double %41, ptr %23, align 8
  store double %40, ptr %24, align 8
  store double %39, ptr %25, align 8
  store double %38, ptr %8, align 8
  store double %37, ptr %9, align 8
  %68 = load <2 x double>, ptr %18, align 16
  store <2 x double> %68, ptr %20, align 16
  %69 = load i32, ptr %26, align 4
  %70 = sitofp i32 %69 to double
  %71 = load <2 x double>, ptr %16, align 16
  %72 = load <2 x double>, ptr %21, align 16
  %73 = load <2 x double>, ptr %17, align 16
  %74 = fneg <2 x double> %71
  %.promoted15 = load <2 x double>, ptr %12, align 16
  %.promoted17 = load <2 x double>, ptr %10, align 16
  %.promoted19 = load <2 x double>, ptr %11, align 16
  %.promoted21 = load <2 x double>, ptr %13, align 16
  %.promoted23 = load <2 x double>, ptr %14, align 16
  br label %75

75:                                               ; preds = %99, %67
  %76 = phi <2 x double> [ %98, %99 ], [ %.promoted23, %67 ]
  %77 = phi <2 x double> [ %95, %99 ], [ %.promoted21, %67 ]
  %78 = phi <2 x double> [ %93, %99 ], [ %.promoted19, %67 ]
  %79 = phi <2 x double> [ %90, %99 ], [ %.promoted17, %67 ]
  %80 = phi <2 x double> [ %88, %99 ], [ %.promoted15, %67 ]
  %81 = load double, ptr %20, align 16
  %82 = fcmp ole double %81, %70
  br i1 %82, label %83, label %101

83:                                               ; preds = %75
  %84 = load <2 x double>, ptr %20, align 16
  %85 = fadd <2 x double> %84, %71
  %86 = fmul <2 x double> %84, %85
  %87 = fdiv <2 x double> %71, %86
  %88 = fadd <2 x double> %80, %87
  %89 = fdiv <2 x double> %71, %84
  %90 = fadd <2 x double> %79, %89
  %91 = fmul <2 x double> %84, %84
  %92 = fdiv <2 x double> %71, %91
  %93 = fadd <2 x double> %78, %92
  %94 = fdiv <2 x double> %72, %84
  %95 = fadd <2 x double> %77, %94
  %96 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %73, <2 x double> %84, <2 x double> %74)
  %97 = fdiv <2 x double> %72, %96
  %98 = fadd <2 x double> %76, %97
  br label %99

99:                                               ; preds = %83
  %100 = fadd <2 x double> %84, %73
  store <2 x double> %100, ptr %20, align 16
  br label %75, !llvm.loop !9

101:                                              ; preds = %75
  store <2 x double> %80, ptr %12, align 16
  store <2 x double> %79, ptr %10, align 16
  store <2 x double> %78, ptr %11, align 16
  store <2 x double> %77, ptr %13, align 16
  store <2 x double> %76, ptr %14, align 16
  %102 = load double, ptr %6, align 8
  %103 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %102, ptr noundef @.str.1)
  %104 = load double, ptr %7, align 8
  %105 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %104, ptr noundef @.str.2)
  %106 = load <2 x double>, ptr %12, align 16
  %107 = call double @sum_vec(<2 x double> noundef %106)
  %108 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %107, ptr noundef @.str.3)
  %109 = load double, ptr %8, align 8
  %110 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %109, ptr noundef @.str.4)
  %111 = load double, ptr %9, align 8
  %112 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %111, ptr noundef @.str.5)
  %113 = load <2 x double>, ptr %10, align 16
  %114 = call double @sum_vec(<2 x double> noundef %113)
  %115 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %114, ptr noundef @.str.6)
  %116 = load <2 x double>, ptr %11, align 16
  %117 = call double @sum_vec(<2 x double> noundef %116)
  %118 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %117, ptr noundef @.str.7)
  %119 = load <2 x double>, ptr %13, align 16
  %120 = call double @sum_vec(<2 x double> noundef %119)
  %121 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %120, ptr noundef @.str.8)
  %122 = load <2 x double>, ptr %14, align 16
  %123 = call double @sum_vec(<2 x double> noundef %122)
  %124 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %123, ptr noundef @.str.9)
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
