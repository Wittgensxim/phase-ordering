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
  br label %29

29:                                               ; preds = %60, %2
  %storemerge = phi double [ 1.000000e+00, %2 ], [ %62, %60 ]
  store double %storemerge, ptr %18, align 8
  %30 = load i32, ptr %21, align 4
  %31 = sitofp i32 %30 to double
  %32 = fcmp ugt double %storemerge, %31
  br i1 %32, label %63, label %33

33:                                               ; preds = %29
  %34 = fadd double %storemerge, -1.000000e+00
  %35 = call double @pow(double noundef f0x3FE5555555555555, double noundef %34) #4
  %36 = load double, ptr %3, align 8
  %37 = fadd double %36, %35
  store double %37, ptr %3, align 8
  %38 = load double, ptr %18, align 8
  %39 = call double @sqrt(double noundef %38) #4
  %40 = fdiv double 1.000000e+00, %39
  %41 = load double, ptr %4, align 8
  %42 = fadd double %41, %40
  store double %42, ptr %4, align 8
  %43 = fmul double %38, %38
  %44 = fmul double %43, %38
  store double %44, ptr %19, align 8
  %45 = load double, ptr %18, align 8
  %46 = call double @sin(double noundef %45) #4
  %47 = call double @cos(double noundef %45) #4
  store double %47, ptr %20, align 8
  %48 = fmul double %44, %46
  %49 = fmul double %48, %46
  %50 = fdiv double 1.000000e+00, %49
  %51 = load double, ptr %5, align 8
  %52 = fadd double %51, %50
  store double %52, ptr %5, align 8
  %53 = load double, ptr %19, align 8
  %54 = load double, ptr %20, align 8
  %55 = fmul double %53, %54
  %56 = fmul double %55, %54
  %57 = fdiv double 1.000000e+00, %56
  %58 = load double, ptr %6, align 8
  %59 = fadd double %58, %57
  store double %59, ptr %6, align 8
  br label %60

60:                                               ; preds = %33
  %61 = load double, ptr %18, align 8
  %62 = fadd double %61, 1.000000e+00
  br label %29, !llvm.loop !7

63:                                               ; preds = %29
  %64 = load <2 x double>, ptr %15, align 16
  br label %65

65:                                               ; preds = %99, %63
  %storemerge1 = phi <2 x double> [ %64, %63 ], [ %102, %99 ]
  store <2 x double> %storemerge1, ptr %16, align 16
  %66 = load double, ptr %16, align 16
  %67 = load i32, ptr %21, align 4
  %68 = sitofp i32 %67 to double
  %69 = fcmp ugt double %66, %68
  br i1 %69, label %103, label %70

70:                                               ; preds = %65
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
  br label %65, !llvm.loop !9

103:                                              ; preds = %65
  %104 = load double, ptr %3, align 8
  %105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %104, ptr noundef nonnull @.str.1) #4
  %106 = load double, ptr %4, align 8
  %107 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %106, ptr noundef nonnull @.str.2) #4
  %108 = load <2 x double>, ptr %9, align 16
  %109 = call double @sum_vec(<2 x double> noundef %108)
  %110 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %109, ptr noundef nonnull @.str.3) #4
  %111 = load double, ptr %5, align 8
  %112 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %111, ptr noundef nonnull @.str.4) #4
  %113 = load double, ptr %6, align 8
  %114 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %113, ptr noundef nonnull @.str.5) #4
  %115 = load <2 x double>, ptr %7, align 16
  %116 = call double @sum_vec(<2 x double> noundef %115)
  %117 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %116, ptr noundef nonnull @.str.6) #4
  %118 = load <2 x double>, ptr %8, align 16
  %119 = call double @sum_vec(<2 x double> noundef %118)
  %120 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %119, ptr noundef nonnull @.str.7) #4
  %121 = load <2 x double>, ptr %10, align 16
  %122 = call double @sum_vec(<2 x double> noundef %121)
  %123 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %122, ptr noundef nonnull @.str.8) #4
  %124 = load <2 x double>, ptr %11, align 16
  %125 = call double @sum_vec(<2 x double> noundef %124)
  %126 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %125, ptr noundef nonnull @.str.9) #4
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
