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
  br label %36

36:                                               ; preds = %65, %2
  %37 = phi double [ %64, %65 ], [ %.promoted13, %2 ]
  %38 = phi double [ %60, %65 ], [ %.promoted11, %2 ]
  %39 = phi double [ %56, %65 ], [ %.promoted9, %2 ]
  %40 = phi double [ %55, %65 ], [ %.promoted7, %2 ]
  %41 = phi double [ %54, %65 ], [ %.promoted5, %2 ]
  %42 = phi double [ %52, %65 ], [ %.promoted3, %2 ]
  %43 = phi double [ %49, %65 ], [ %.promoted1, %2 ]
  %44 = phi double [ %66, %65 ], [ %.promoted, %2 ]
  %45 = fcmp ole double %44, %35
  br i1 %45, label %46, label %67

46:                                               ; preds = %36
  %47 = fsub double %44, 1.000000e+00
  %48 = call double @pow(double noundef f0x3FE5555555555555, double noundef %47) #4
  %49 = fadd double %48, %43
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
  %.lcssa14 = phi double [ %37, %36 ]
  %.lcssa12 = phi double [ %38, %36 ]
  %.lcssa10 = phi double [ %39, %36 ]
  %.lcssa8 = phi double [ %40, %36 ]
  %.lcssa6 = phi double [ %41, %36 ]
  %.lcssa4 = phi double [ %42, %36 ]
  %.lcssa2 = phi double [ %43, %36 ]
  %.lcssa = phi double [ %44, %36 ]
  store double %.lcssa, ptr %22, align 8
  store double %.lcssa2, ptr %6, align 8
  store double %.lcssa4, ptr %7, align 8
  store double %.lcssa6, ptr %23, align 8
  store double %.lcssa8, ptr %24, align 8
  store double %.lcssa10, ptr %25, align 8
  store double %.lcssa12, ptr %8, align 8
  store double %.lcssa14, ptr %9, align 8
  %68 = load <2 x double>, ptr %18, align 16
  store <2 x double> %68, ptr %20, align 16
  %69 = load i32, ptr %26, align 4
  %70 = sitofp i32 %69 to double
  %71 = load <2 x double>, ptr %16, align 16
  %72 = load <2 x double>, ptr %16, align 16
  %73 = load <2 x double>, ptr %16, align 16
  %74 = load <2 x double>, ptr %16, align 16
  %75 = load <2 x double>, ptr %21, align 16
  %76 = load <2 x double>, ptr %21, align 16
  %77 = load <2 x double>, ptr %17, align 16
  %78 = load <2 x double>, ptr %16, align 16
  %79 = fneg <2 x double> %78
  %80 = load <2 x double>, ptr %17, align 16
  %.promoted15 = load <2 x double>, ptr %12, align 16
  %.promoted17 = load <2 x double>, ptr %10, align 16
  %.promoted19 = load <2 x double>, ptr %11, align 16
  %.promoted21 = load <2 x double>, ptr %13, align 16
  %.promoted23 = load <2 x double>, ptr %14, align 16
  br label %81

81:                                               ; preds = %111, %67
  %82 = phi <2 x double> [ %110, %111 ], [ %.promoted23, %67 ]
  %83 = phi <2 x double> [ %106, %111 ], [ %.promoted21, %67 ]
  %84 = phi <2 x double> [ %103, %111 ], [ %.promoted19, %67 ]
  %85 = phi <2 x double> [ %98, %111 ], [ %.promoted17, %67 ]
  %86 = phi <2 x double> [ %95, %111 ], [ %.promoted15, %67 ]
  %87 = load double, ptr %20, align 16
  %88 = fcmp ole double %87, %70
  br i1 %88, label %89, label %114

89:                                               ; preds = %81
  %90 = load <2 x double>, ptr %20, align 16
  %91 = load <2 x double>, ptr %20, align 16
  %92 = fadd <2 x double> %91, %72
  %93 = fmul <2 x double> %90, %92
  %94 = fdiv <2 x double> %71, %93
  %95 = fadd <2 x double> %86, %94
  %96 = load <2 x double>, ptr %20, align 16
  %97 = fdiv <2 x double> %73, %96
  %98 = fadd <2 x double> %85, %97
  %99 = load <2 x double>, ptr %20, align 16
  %100 = load <2 x double>, ptr %20, align 16
  %101 = fmul <2 x double> %99, %100
  %102 = fdiv <2 x double> %74, %101
  %103 = fadd <2 x double> %84, %102
  %104 = load <2 x double>, ptr %20, align 16
  %105 = fdiv <2 x double> %75, %104
  %106 = fadd <2 x double> %83, %105
  %107 = load <2 x double>, ptr %20, align 16
  %108 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %77, <2 x double> %107, <2 x double> %79)
  %109 = fdiv <2 x double> %76, %108
  %110 = fadd <2 x double> %82, %109
  br label %111

111:                                              ; preds = %89
  %112 = load <2 x double>, ptr %20, align 16
  %113 = fadd <2 x double> %80, %112
  store <2 x double> %113, ptr %20, align 16
  br label %81, !llvm.loop !9

114:                                              ; preds = %81
  %.lcssa24 = phi <2 x double> [ %82, %81 ]
  %.lcssa22 = phi <2 x double> [ %83, %81 ]
  %.lcssa20 = phi <2 x double> [ %84, %81 ]
  %.lcssa18 = phi <2 x double> [ %85, %81 ]
  %.lcssa16 = phi <2 x double> [ %86, %81 ]
  store <2 x double> %.lcssa16, ptr %12, align 16
  store <2 x double> %.lcssa18, ptr %10, align 16
  store <2 x double> %.lcssa20, ptr %11, align 16
  store <2 x double> %.lcssa22, ptr %13, align 16
  store <2 x double> %.lcssa24, ptr %14, align 16
  %115 = load double, ptr %6, align 8
  %116 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %115, ptr noundef @.str.1)
  %117 = load double, ptr %7, align 8
  %118 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %117, ptr noundef @.str.2)
  %119 = load <2 x double>, ptr %12, align 16
  %120 = call double @sum_vec(<2 x double> noundef %119)
  %121 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %120, ptr noundef @.str.3)
  %122 = load double, ptr %8, align 8
  %123 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %122, ptr noundef @.str.4)
  %124 = load double, ptr %9, align 8
  %125 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %124, ptr noundef @.str.5)
  %126 = load <2 x double>, ptr %10, align 16
  %127 = call double @sum_vec(<2 x double> noundef %126)
  %128 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %127, ptr noundef @.str.6)
  %129 = load <2 x double>, ptr %11, align 16
  %130 = call double @sum_vec(<2 x double> noundef %129)
  %131 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %130, ptr noundef @.str.7)
  %132 = load <2 x double>, ptr %13, align 16
  %133 = call double @sum_vec(<2 x double> noundef %132)
  %134 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %133, ptr noundef @.str.8)
  %135 = load <2 x double>, ptr %14, align 16
  %136 = call double @sum_vec(<2 x double> noundef %135)
  %137 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %136, ptr noundef @.str.9)
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
