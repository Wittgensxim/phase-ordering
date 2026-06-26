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
  %3 = alloca <2 x double>, align 16
  store double %0, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %4, align 8
  %5 = load <2 x double>, ptr %3, align 16
  ret <2 x double> %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %2 = alloca <2 x double>, align 16
  store <2 x double> %0, ptr %2, align 16
  %3 = load double, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = load double, ptr %4, align 8
  %6 = fadd double %3, %5
  ret double %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca <2 x double>, align 16
  %8 = alloca <2 x double>, align 16
  %9 = alloca <2 x double>, align 16
  %10 = alloca <2 x double>, align 16
  %11 = alloca <2 x double>, align 16
  %12 = alloca <2 x double>, align 16
  %13 = alloca <2 x double>, align 16
  %14 = alloca <2 x double>, align 16
  %15 = alloca <2 x double>, align 16
  %16 = alloca <2 x double>, align 16
  %17 = alloca <2 x double>, align 16
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  store i32 2500000, ptr %21, align 4
  %22 = call <2 x double> @make_vec(double noundef 0.000000e+00, double noundef 0.000000e+00)
  store <2 x double> %22, ptr %12, align 16
  %23 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 1.000000e+00)
  store <2 x double> %23, ptr %13, align 16
  %24 = call <2 x double> @make_vec(double noundef 2.000000e+00, double noundef 2.000000e+00)
  store <2 x double> %24, ptr %14, align 16
  %25 = call <2 x double> @make_vec(double noundef -1.000000e+00, double noundef -1.000000e+00)
  %26 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 2.000000e+00)
  store <2 x double> %26, ptr %15, align 16
  %27 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef -1.000000e+00)
  store <2 x double> %27, ptr %17, align 16
  %28 = load <2 x double>, ptr %12, align 16
  store <2 x double> %28, ptr %11, align 16
  store <2 x double> %28, ptr %10, align 16
  store <2 x double> %28, ptr %9, align 16
  store <2 x double> %28, ptr %8, align 16
  store <2 x double> %28, ptr %7, align 16
  store double 1.000000e+00, ptr %18, align 8
  %29 = load i32, ptr %21, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %.lr.ph, label %64

.lr.ph:                                           ; preds = %2
  br label %31

31:                                               ; preds = %.lr.ph, %58
  %32 = load double, ptr %18, align 8
  %33 = fadd double %32, -1.000000e+00
  %34 = call double @pow(double noundef f0x3FE5555555555555, double noundef %33) #4
  %35 = load double, ptr %3, align 8
  %36 = fadd double %35, %34
  store double %36, ptr %3, align 8
  %37 = call double @sqrt(double noundef %32) #4
  %38 = fdiv double 1.000000e+00, %37
  %39 = load double, ptr %4, align 8
  %40 = fadd double %39, %38
  store double %40, ptr %4, align 8
  %41 = load double, ptr %18, align 8
  %42 = fmul double %41, %41
  %43 = fmul double %42, %41
  store double %43, ptr %19, align 8
  %44 = call double @sin(double noundef %41) #4
  %45 = call double @cos(double noundef %41) #4
  store double %45, ptr %20, align 8
  %46 = fmul double %43, %44
  %47 = fmul double %46, %44
  %48 = fdiv double 1.000000e+00, %47
  %49 = load double, ptr %5, align 8
  %50 = fadd double %49, %48
  store double %50, ptr %5, align 8
  %51 = load double, ptr %19, align 8
  %52 = load double, ptr %20, align 8
  %53 = fmul double %51, %52
  %54 = fmul double %53, %52
  %55 = fdiv double 1.000000e+00, %54
  %56 = load double, ptr %6, align 8
  %57 = fadd double %56, %55
  store double %57, ptr %6, align 8
  br label %58

58:                                               ; preds = %31
  %59 = load double, ptr %18, align 8
  %60 = fadd double %59, 1.000000e+00
  store double %60, ptr %18, align 8
  %61 = load i32, ptr %21, align 4
  %62 = sitofp i32 %61 to double
  %63 = fcmp ugt double %60, %62
  br i1 %63, label %._crit_edge, label %31, !llvm.loop !7

._crit_edge:                                      ; preds = %58
  br label %64

64:                                               ; preds = %._crit_edge, %2
  %65 = load <2 x double>, ptr %15, align 16
  store <2 x double> %65, ptr %16, align 16
  %66 = load double, ptr %16, align 16
  %67 = load i32, ptr %21, align 4
  %68 = sitofp i32 %67 to double
  %69 = fcmp ugt double %66, %68
  br i1 %69, label %107, label %.lr.ph2

.lr.ph2:                                          ; preds = %64
  br label %70

70:                                               ; preds = %.lr.ph2, %99
  %71 = load <2 x double>, ptr %13, align 16
  %72 = load <2 x double>, ptr %16, align 16
  %73 = fadd <2 x double> %72, %71
  %74 = fmul <2 x double> %72, %73
  %75 = fdiv <2 x double> %71, %74
  %76 = load <2 x double>, ptr %9, align 16
  %77 = fadd <2 x double> %76, %75
  store <2 x double> %77, ptr %9, align 16
  %78 = load <2 x double>, ptr %13, align 16
  %79 = load <2 x double>, ptr %16, align 16
  %80 = fdiv <2 x double> %78, %79
  %81 = load <2 x double>, ptr %7, align 16
  %82 = fadd <2 x double> %81, %80
  store <2 x double> %82, ptr %7, align 16
  %83 = fmul <2 x double> %79, %79
  %84 = fdiv <2 x double> %78, %83
  %85 = load <2 x double>, ptr %8, align 16
  %86 = fadd <2 x double> %85, %84
  store <2 x double> %86, ptr %8, align 16
  %87 = load <2 x double>, ptr %17, align 16
  %88 = load <2 x double>, ptr %16, align 16
  %89 = fdiv <2 x double> %87, %88
  %90 = load <2 x double>, ptr %10, align 16
  %91 = fadd <2 x double> %90, %89
  store <2 x double> %91, ptr %10, align 16
  %92 = load <2 x double>, ptr %14, align 16
  %93 = load <2 x double>, ptr %13, align 16
  %94 = fneg <2 x double> %93
  %95 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %92, <2 x double> %88, <2 x double> %94)
  %96 = fdiv <2 x double> %87, %95
  %97 = load <2 x double>, ptr %11, align 16
  %98 = fadd <2 x double> %97, %96
  store <2 x double> %98, ptr %11, align 16
  br label %99

99:                                               ; preds = %70
  %100 = load <2 x double>, ptr %14, align 16
  %101 = load <2 x double>, ptr %16, align 16
  %102 = fadd <2 x double> %101, %100
  store <2 x double> %102, ptr %16, align 16
  %103 = load double, ptr %16, align 16
  %104 = load i32, ptr %21, align 4
  %105 = sitofp i32 %104 to double
  %106 = fcmp ugt double %103, %105
  br i1 %106, label %._crit_edge3, label %70, !llvm.loop !9

._crit_edge3:                                     ; preds = %99
  br label %107

107:                                              ; preds = %._crit_edge3, %64
  %108 = load double, ptr %3, align 8
  %109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %108, ptr noundef nonnull @.str.1) #4
  %110 = load double, ptr %4, align 8
  %111 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %110, ptr noundef nonnull @.str.2) #4
  %112 = load <2 x double>, ptr %9, align 16
  %113 = call double @sum_vec(<2 x double> noundef %112)
  %114 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %113, ptr noundef nonnull @.str.3) #4
  %115 = load double, ptr %5, align 8
  %116 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %115, ptr noundef nonnull @.str.4) #4
  %117 = load double, ptr %6, align 8
  %118 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %117, ptr noundef nonnull @.str.5) #4
  %119 = load <2 x double>, ptr %7, align 16
  %120 = call double @sum_vec(<2 x double> noundef %119)
  %121 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %120, ptr noundef nonnull @.str.6) #4
  %122 = load <2 x double>, ptr %8, align 16
  %123 = call double @sum_vec(<2 x double> noundef %122)
  %124 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %123, ptr noundef nonnull @.str.7) #4
  %125 = load <2 x double>, ptr %10, align 16
  %126 = call double @sum_vec(<2 x double> noundef %125)
  %127 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %126, ptr noundef nonnull @.str.8) #4
  %128 = load <2 x double>, ptr %11, align 16
  %129 = call double @sum_vec(<2 x double> noundef %128)
  %130 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %129, ptr noundef nonnull @.str.9) #4
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
