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
  br label %33

33:                                               ; preds = %2, %33
  %34 = phi double [ 1.000000e+00, %2 ], [ %57, %33 ]
  %35 = phi double [ 0.000000e+00, %2 ], [ %41, %33 ]
  %36 = phi double [ 0.000000e+00, %2 ], [ %44, %33 ]
  %37 = phi double [ 0.000000e+00, %2 ], [ %52, %33 ]
  %38 = phi double [ 0.000000e+00, %2 ], [ %56, %33 ]
  %39 = fsub double %34, 1.000000e+00
  %40 = call double @pow(double noundef f0x3FE5555555555555, double noundef %39) #4
  %41 = fadd double %35, %40
  store double %41, ptr %6, align 8
  %42 = call double @sqrt(double noundef %34) #4
  %43 = fdiv double 1.000000e+00, %42
  %44 = fadd double %36, %43
  store double %44, ptr %7, align 8
  %45 = fmul double %34, %34
  %46 = fmul double %45, %34
  store double %46, ptr %23, align 8
  %47 = call double @sin(double noundef %34) #4
  store double %47, ptr %24, align 8
  %48 = call double @cos(double noundef %34) #4
  store double %48, ptr %25, align 8
  %49 = fmul double %46, %47
  %50 = fmul double %49, %47
  %51 = fdiv double 1.000000e+00, %50
  %52 = fadd double %37, %51
  store double %52, ptr %8, align 8
  %53 = fmul double %46, %48
  %54 = fmul double %53, %48
  %55 = fdiv double 1.000000e+00, %54
  %56 = fadd double %38, %55
  store double %56, ptr %9, align 8
  %57 = fadd double %34, 1.000000e+00
  store double %57, ptr %22, align 8
  %58 = fcmp ole double %57, 2.500000e+06
  br i1 %58, label %33, label %59, !llvm.loop !7

59:                                               ; preds = %33
  %.lcssa8 = phi double [ %56, %33 ]
  %.lcssa7 = phi double [ %52, %33 ]
  %.lcssa6 = phi double [ %44, %33 ]
  %.lcssa5 = phi double [ %41, %33 ]
  store <2 x double> %31, ptr %20, align 16
  %60 = bitcast <2 x double> %31 to i128
  %61 = trunc i128 %60 to i64
  %62 = bitcast i64 %61 to double
  %63 = fcmp ole double %62, 2.500000e+06
  br i1 %63, label %.lr.ph, label %91

.lr.ph:                                           ; preds = %59
  br label %64

64:                                               ; preds = %.lr.ph, %64
  %65 = phi <2 x double> [ %27, %.lr.ph ], [ %74, %64 ]
  %66 = phi <2 x double> [ %27, %.lr.ph ], [ %76, %64 ]
  %67 = phi <2 x double> [ %27, %.lr.ph ], [ %79, %64 ]
  %68 = phi <2 x double> [ %27, %.lr.ph ], [ %81, %64 ]
  %69 = phi <2 x double> [ %27, %.lr.ph ], [ %85, %64 ]
  %70 = phi <2 x double> [ %31, %.lr.ph ], [ %86, %64 ]
  %71 = fadd <2 x double> %70, %28
  %72 = fmul <2 x double> %70, %71
  %73 = fdiv <2 x double> %28, %72
  %74 = fadd <2 x double> %65, %73
  store <2 x double> %74, ptr %12, align 16
  %75 = fdiv <2 x double> %28, %70
  %76 = fadd <2 x double> %66, %75
  store <2 x double> %76, ptr %10, align 16
  %77 = fmul <2 x double> %70, %70
  %78 = fdiv <2 x double> %28, %77
  %79 = fadd <2 x double> %67, %78
  store <2 x double> %79, ptr %11, align 16
  %80 = fdiv <2 x double> %32, %70
  %81 = fadd <2 x double> %68, %80
  store <2 x double> %81, ptr %13, align 16
  %82 = fneg <2 x double> %28
  %83 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %70, <2 x double> %82)
  %84 = fdiv <2 x double> %32, %83
  %85 = fadd <2 x double> %69, %84
  store <2 x double> %85, ptr %14, align 16
  %86 = fadd <2 x double> %70, %29
  store <2 x double> %86, ptr %20, align 16
  %87 = bitcast <2 x double> %86 to i128
  %88 = trunc i128 %87 to i64
  %89 = bitcast i64 %88 to double
  %90 = fcmp ole double %89, 2.500000e+06
  br i1 %90, label %64, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %64
  %split = phi <2 x double> [ %85, %64 ]
  %split9 = phi <2 x double> [ %81, %64 ]
  %split10 = phi <2 x double> [ %79, %64 ]
  %split11 = phi <2 x double> [ %76, %64 ]
  %split12 = phi <2 x double> [ %74, %64 ]
  br label %91

91:                                               ; preds = %._crit_edge, %59
  %.lcssa4 = phi <2 x double> [ %split, %._crit_edge ], [ %27, %59 ]
  %.lcssa3 = phi <2 x double> [ %split9, %._crit_edge ], [ %27, %59 ]
  %.lcssa2 = phi <2 x double> [ %split10, %._crit_edge ], [ %27, %59 ]
  %.lcssa1 = phi <2 x double> [ %split11, %._crit_edge ], [ %27, %59 ]
  %.lcssa = phi <2 x double> [ %split12, %._crit_edge ], [ %27, %59 ]
  %92 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa5, ptr noundef @.str.1)
  %93 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa6, ptr noundef @.str.2)
  %94 = call double @sum_vec(<2 x double> noundef %.lcssa)
  %95 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %94, ptr noundef @.str.3)
  %96 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa7, ptr noundef @.str.4)
  %97 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa8, ptr noundef @.str.5)
  %98 = call double @sum_vec(<2 x double> noundef %.lcssa1)
  %99 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %98, ptr noundef @.str.6)
  %100 = call double @sum_vec(<2 x double> noundef %.lcssa2)
  %101 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %100, ptr noundef @.str.7)
  %102 = call double @sum_vec(<2 x double> noundef %.lcssa3)
  %103 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %102, ptr noundef @.str.8)
  %104 = call double @sum_vec(<2 x double> noundef %.lcssa4)
  %105 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %104, ptr noundef @.str.9)
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
