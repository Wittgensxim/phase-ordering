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
  br i1 true, label %.lr.ph, label %._crit_edge4

._crit_edge4:                                     ; preds = %2
  br label %59

.lr.ph:                                           ; preds = %2
  br label %33

33:                                               ; preds = %.lr.ph, %33
  %34 = phi double [ 0.000000e+00, %.lr.ph ], [ %56, %33 ]
  %35 = phi double [ 0.000000e+00, %.lr.ph ], [ %52, %33 ]
  %36 = phi double [ 0.000000e+00, %.lr.ph ], [ %44, %33 ]
  %37 = phi double [ 0.000000e+00, %.lr.ph ], [ %41, %33 ]
  %38 = phi double [ 1.000000e+00, %.lr.ph ], [ %57, %33 ]
  %39 = fsub double %38, 1.000000e+00
  %40 = call double @pow(double noundef f0x3FE5555555555555, double noundef %39) #4
  %41 = fadd double %37, %40
  store double %41, ptr %6, align 8
  %42 = call double @sqrt(double noundef %38) #4
  %43 = fdiv double 1.000000e+00, %42
  %44 = fadd double %36, %43
  store double %44, ptr %7, align 8
  %45 = fmul double %38, %38
  %46 = fmul double %45, %38
  store double %46, ptr %23, align 8
  %47 = call double @sin(double noundef %38) #4
  store double %47, ptr %24, align 8
  %48 = call double @cos(double noundef %38) #4
  store double %48, ptr %25, align 8
  %49 = fmul double %46, %47
  %50 = fmul double %49, %47
  %51 = fdiv double 1.000000e+00, %50
  %52 = fadd double %35, %51
  store double %52, ptr %8, align 8
  %53 = fmul double %46, %48
  %54 = fmul double %53, %48
  %55 = fdiv double 1.000000e+00, %54
  %56 = fadd double %34, %55
  store double %56, ptr %9, align 8
  %57 = fadd double %38, 1.000000e+00
  store double %57, ptr %22, align 8
  %58 = fcmp ole double %57, 2.500000e+06
  br i1 %58, label %33, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %33
  br label %59

59:                                               ; preds = %._crit_edge4, %._crit_edge
  %60 = phi double [ 0.000000e+00, %._crit_edge4 ], [ %56, %._crit_edge ]
  %61 = phi double [ 0.000000e+00, %._crit_edge4 ], [ %52, %._crit_edge ]
  %62 = phi double [ 0.000000e+00, %._crit_edge4 ], [ %44, %._crit_edge ]
  %63 = phi double [ 0.000000e+00, %._crit_edge4 ], [ %41, %._crit_edge ]
  store <2 x double> %31, ptr %20, align 16
  %64 = bitcast <2 x double> %31 to i128
  %65 = trunc i128 %64 to i64
  %66 = bitcast i64 %65 to double
  %67 = fcmp ole double %66, 2.500000e+06
  br i1 %67, label %.lr.ph2, label %95

.lr.ph2:                                          ; preds = %59
  br label %68

68:                                               ; preds = %.lr.ph2, %68
  %69 = phi <2 x double> [ %31, %.lr.ph2 ], [ %90, %68 ]
  %70 = phi <2 x double> [ %27, %.lr.ph2 ], [ %89, %68 ]
  %71 = phi <2 x double> [ %27, %.lr.ph2 ], [ %85, %68 ]
  %72 = phi <2 x double> [ %27, %.lr.ph2 ], [ %83, %68 ]
  %73 = phi <2 x double> [ %27, %.lr.ph2 ], [ %80, %68 ]
  %74 = phi <2 x double> [ %27, %.lr.ph2 ], [ %78, %68 ]
  %75 = fadd <2 x double> %69, %28
  %76 = fmul <2 x double> %69, %75
  %77 = fdiv <2 x double> %28, %76
  %78 = fadd <2 x double> %74, %77
  store <2 x double> %78, ptr %12, align 16
  %79 = fdiv <2 x double> %28, %69
  %80 = fadd <2 x double> %73, %79
  store <2 x double> %80, ptr %10, align 16
  %81 = fmul <2 x double> %69, %69
  %82 = fdiv <2 x double> %28, %81
  %83 = fadd <2 x double> %72, %82
  store <2 x double> %83, ptr %11, align 16
  %84 = fdiv <2 x double> %32, %69
  %85 = fadd <2 x double> %71, %84
  store <2 x double> %85, ptr %13, align 16
  %86 = fneg <2 x double> %28
  %87 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %69, <2 x double> %86)
  %88 = fdiv <2 x double> %32, %87
  %89 = fadd <2 x double> %70, %88
  store <2 x double> %89, ptr %14, align 16
  %90 = fadd <2 x double> %69, %29
  store <2 x double> %90, ptr %20, align 16
  %91 = bitcast <2 x double> %90 to i128
  %92 = trunc i128 %91 to i64
  %93 = bitcast i64 %92 to double
  %94 = fcmp ole double %93, 2.500000e+06
  br i1 %94, label %68, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %68
  br label %95

95:                                               ; preds = %._crit_edge3, %59
  %96 = phi <2 x double> [ %89, %._crit_edge3 ], [ %27, %59 ]
  %97 = phi <2 x double> [ %85, %._crit_edge3 ], [ %27, %59 ]
  %98 = phi <2 x double> [ %83, %._crit_edge3 ], [ %27, %59 ]
  %99 = phi <2 x double> [ %80, %._crit_edge3 ], [ %27, %59 ]
  %100 = phi <2 x double> [ %78, %._crit_edge3 ], [ %27, %59 ]
  %101 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %63, ptr noundef @.str.1)
  %102 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %62, ptr noundef @.str.2)
  %103 = call double @sum_vec(<2 x double> noundef %100)
  %104 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %103, ptr noundef @.str.3)
  %105 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %61, ptr noundef @.str.4)
  %106 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %60, ptr noundef @.str.5)
  %107 = call double @sum_vec(<2 x double> noundef %99)
  %108 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %107, ptr noundef @.str.6)
  %109 = call double @sum_vec(<2 x double> noundef %98)
  %110 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %109, ptr noundef @.str.7)
  %111 = call double @sum_vec(<2 x double> noundef %97)
  %112 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %111, ptr noundef @.str.8)
  %113 = call double @sum_vec(<2 x double> noundef %96)
  %114 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %113, ptr noundef @.str.9)
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
