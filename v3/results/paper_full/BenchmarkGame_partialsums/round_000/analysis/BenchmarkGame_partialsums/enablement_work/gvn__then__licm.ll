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
  store double %0, ptr %5, align 8
  %7 = getelementptr inbounds double, ptr %5, i64 1
  store double %1, ptr %7, align 8
  %8 = load <2 x double>, ptr %5, align 16
  ret <2 x double> %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %2 = alloca <2 x double>, align 16
  %3 = alloca ptr, align 8
  store <2 x double> %0, ptr %2, align 16
  store ptr %2, ptr %3, align 8
  %4 = bitcast <2 x double> %0 to i128
  %5 = trunc i128 %4 to i64
  %6 = bitcast i64 %5 to double
  %7 = getelementptr inbounds double, ptr %2, i64 1
  %8 = lshr i128 %4, 64
  %9 = trunc i128 %8 to i64
  %10 = bitcast i64 %9 to double
  %11 = fadd double %6, %10
  ret double %11
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
  store <2 x double> %27, ptr %14, align 16
  store <2 x double> %27, ptr %13, align 16
  store <2 x double> %27, ptr %12, align 16
  store <2 x double> %27, ptr %11, align 16
  store <2 x double> %27, ptr %10, align 16
  store double 1.000000e+00, ptr %22, align 8
  %.promoted = load double, ptr %6, align 1
  %.promoted10 = load double, ptr %7, align 1
  %.promoted12 = load double, ptr %23, align 1
  %.promoted14 = load double, ptr %24, align 1
  %.promoted16 = load double, ptr %25, align 1
  %.promoted18 = load double, ptr %8, align 1
  %.promoted20 = load double, ptr %9, align 1
  %.promoted22 = load double, ptr %22, align 1
  br label %33

33:                                               ; preds = %48, %2
  %34 = phi double [ %67, %48 ], [ %.promoted22, %2 ]
  %35 = phi double [ %66, %48 ], [ %.promoted20, %2 ]
  %36 = phi double [ %62, %48 ], [ %.promoted18, %2 ]
  %37 = phi double [ %58, %48 ], [ %.promoted16, %2 ]
  %38 = phi double [ %57, %48 ], [ %.promoted14, %2 ]
  %39 = phi double [ %56, %48 ], [ %.promoted12, %2 ]
  %40 = phi double [ %54, %48 ], [ %.promoted10, %2 ]
  %41 = phi double [ %51, %48 ], [ %.promoted, %2 ]
  %42 = phi double [ %66, %48 ], [ 0.000000e+00, %2 ]
  %43 = phi double [ %62, %48 ], [ 0.000000e+00, %2 ]
  %44 = phi double [ %54, %48 ], [ 0.000000e+00, %2 ]
  %45 = phi double [ %51, %48 ], [ 0.000000e+00, %2 ]
  %46 = phi double [ %67, %48 ], [ 1.000000e+00, %2 ]
  %47 = fcmp ole double %46, 2.500000e+06
  br i1 %47, label %48, label %68

48:                                               ; preds = %33
  %49 = fsub double %46, 1.000000e+00
  %50 = call double @pow(double noundef f0x3FE5555555555555, double noundef %49) #4
  %51 = fadd double %45, %50
  %52 = call double @sqrt(double noundef %46) #4
  %53 = fdiv double 1.000000e+00, %52
  %54 = fadd double %44, %53
  %55 = fmul double %46, %46
  %56 = fmul double %55, %46
  %57 = call double @sin(double noundef %46) #4
  %58 = call double @cos(double noundef %46) #4
  %59 = fmul double %56, %57
  %60 = fmul double %59, %57
  %61 = fdiv double 1.000000e+00, %60
  %62 = fadd double %43, %61
  %63 = fmul double %56, %58
  %64 = fmul double %63, %58
  %65 = fdiv double 1.000000e+00, %64
  %66 = fadd double %42, %65
  %67 = fadd double %46, 1.000000e+00
  br label %33, !llvm.loop !7

68:                                               ; preds = %33
  %.lcssa23 = phi double [ %34, %33 ]
  %.lcssa21 = phi double [ %35, %33 ]
  %.lcssa19 = phi double [ %36, %33 ]
  %.lcssa17 = phi double [ %37, %33 ]
  %.lcssa15 = phi double [ %38, %33 ]
  %.lcssa13 = phi double [ %39, %33 ]
  %.lcssa11 = phi double [ %40, %33 ]
  %.lcssa9 = phi double [ %41, %33 ]
  %.lcssa8 = phi double [ %42, %33 ]
  %.lcssa7 = phi double [ %43, %33 ]
  %.lcssa6 = phi double [ %44, %33 ]
  %.lcssa5 = phi double [ %45, %33 ]
  store double %.lcssa9, ptr %6, align 1
  store double %.lcssa11, ptr %7, align 1
  store double %.lcssa13, ptr %23, align 1
  store double %.lcssa15, ptr %24, align 1
  store double %.lcssa17, ptr %25, align 1
  store double %.lcssa19, ptr %8, align 1
  store double %.lcssa21, ptr %9, align 1
  store double %.lcssa23, ptr %22, align 1
  store <2 x double> %31, ptr %20, align 16
  %69 = bitcast <2 x double> %31 to i128
  %70 = trunc i128 %69 to i64
  %71 = bitcast i64 %70 to double
  %72 = fneg <2 x double> %28
  %.promoted24 = load <2 x double>, ptr %12, align 1
  %.promoted26 = load <2 x double>, ptr %10, align 1
  %.promoted28 = load <2 x double>, ptr %11, align 1
  %.promoted30 = load <2 x double>, ptr %13, align 1
  %.promoted32 = load <2 x double>, ptr %14, align 1
  %.promoted34 = load <2 x double>, ptr %20, align 1
  br label %73

73:                                               ; preds = %88, %68
  %74 = phi <2 x double> [ %103, %88 ], [ %.promoted34, %68 ]
  %75 = phi <2 x double> [ %102, %88 ], [ %.promoted32, %68 ]
  %76 = phi <2 x double> [ %99, %88 ], [ %.promoted30, %68 ]
  %77 = phi <2 x double> [ %97, %88 ], [ %.promoted28, %68 ]
  %78 = phi <2 x double> [ %94, %88 ], [ %.promoted26, %68 ]
  %79 = phi <2 x double> [ %92, %88 ], [ %.promoted24, %68 ]
  %80 = phi <2 x double> [ %103, %88 ], [ %31, %68 ]
  %81 = phi <2 x double> [ %102, %88 ], [ %27, %68 ]
  %82 = phi <2 x double> [ %99, %88 ], [ %27, %68 ]
  %83 = phi <2 x double> [ %97, %88 ], [ %27, %68 ]
  %84 = phi <2 x double> [ %94, %88 ], [ %27, %68 ]
  %85 = phi <2 x double> [ %92, %88 ], [ %27, %68 ]
  %86 = phi double [ %106, %88 ], [ %71, %68 ]
  %87 = fcmp ole double %86, 2.500000e+06
  br i1 %87, label %88, label %107

88:                                               ; preds = %73
  %89 = fadd <2 x double> %80, %28
  %90 = fmul <2 x double> %80, %89
  %91 = fdiv <2 x double> %28, %90
  %92 = fadd <2 x double> %85, %91
  %93 = fdiv <2 x double> %28, %80
  %94 = fadd <2 x double> %84, %93
  %95 = fmul <2 x double> %80, %80
  %96 = fdiv <2 x double> %28, %95
  %97 = fadd <2 x double> %83, %96
  %98 = fdiv <2 x double> %32, %80
  %99 = fadd <2 x double> %82, %98
  %100 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %80, <2 x double> %72)
  %101 = fdiv <2 x double> %32, %100
  %102 = fadd <2 x double> %81, %101
  %103 = fadd <2 x double> %80, %29
  %104 = bitcast <2 x double> %103 to i128
  %105 = trunc i128 %104 to i64
  %106 = bitcast i64 %105 to double
  br label %73, !llvm.loop !9

107:                                              ; preds = %73
  %.lcssa35 = phi <2 x double> [ %74, %73 ]
  %.lcssa33 = phi <2 x double> [ %75, %73 ]
  %.lcssa31 = phi <2 x double> [ %76, %73 ]
  %.lcssa29 = phi <2 x double> [ %77, %73 ]
  %.lcssa27 = phi <2 x double> [ %78, %73 ]
  %.lcssa25 = phi <2 x double> [ %79, %73 ]
  %.lcssa4 = phi <2 x double> [ %81, %73 ]
  %.lcssa3 = phi <2 x double> [ %82, %73 ]
  %.lcssa2 = phi <2 x double> [ %83, %73 ]
  %.lcssa1 = phi <2 x double> [ %84, %73 ]
  %.lcssa = phi <2 x double> [ %85, %73 ]
  store <2 x double> %.lcssa25, ptr %12, align 1
  store <2 x double> %.lcssa27, ptr %10, align 1
  store <2 x double> %.lcssa29, ptr %11, align 1
  store <2 x double> %.lcssa31, ptr %13, align 1
  store <2 x double> %.lcssa33, ptr %14, align 1
  store <2 x double> %.lcssa35, ptr %20, align 1
  %108 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa5, ptr noundef @.str.1)
  %109 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa6, ptr noundef @.str.2)
  %110 = call double @sum_vec(<2 x double> noundef %.lcssa)
  %111 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %110, ptr noundef @.str.3)
  %112 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa7, ptr noundef @.str.4)
  %113 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa8, ptr noundef @.str.5)
  %114 = call double @sum_vec(<2 x double> noundef %.lcssa1)
  %115 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %114, ptr noundef @.str.6)
  %116 = call double @sum_vec(<2 x double> noundef %.lcssa2)
  %117 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %116, ptr noundef @.str.7)
  %118 = call double @sum_vec(<2 x double> noundef %.lcssa3)
  %119 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %118, ptr noundef @.str.8)
  %120 = call double @sum_vec(<2 x double> noundef %.lcssa4)
  %121 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %120, ptr noundef @.str.9)
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
