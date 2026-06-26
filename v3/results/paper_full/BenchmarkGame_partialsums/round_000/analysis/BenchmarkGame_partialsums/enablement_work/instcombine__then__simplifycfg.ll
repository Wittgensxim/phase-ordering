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

29:                                               ; preds = %33, %2
  %storemerge = phi double [ 1.000000e+00, %2 ], [ %61, %33 ]
  store double %storemerge, ptr %18, align 8
  %30 = load i32, ptr %21, align 4
  %31 = sitofp i32 %30 to double
  %32 = fcmp ugt double %storemerge, %31
  br i1 %32, label %62, label %33

33:                                               ; preds = %29
  %34 = load double, ptr %18, align 8
  %35 = fadd double %34, -1.000000e+00
  %36 = call double @pow(double noundef f0x3FE5555555555555, double noundef %35) #4
  %37 = load double, ptr %3, align 8
  %38 = fadd double %37, %36
  store double %38, ptr %3, align 8
  %39 = call double @sqrt(double noundef %34) #4
  %40 = fdiv double 1.000000e+00, %39
  %41 = load double, ptr %4, align 8
  %42 = fadd double %41, %40
  store double %42, ptr %4, align 8
  %43 = load double, ptr %18, align 8
  %44 = fmul double %43, %43
  %45 = fmul double %44, %43
  store double %45, ptr %19, align 8
  %46 = call double @sin(double noundef %43) #4
  %47 = call double @cos(double noundef %43) #4
  store double %47, ptr %20, align 8
  %48 = fmul double %45, %46
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
  %60 = load double, ptr %18, align 8
  %61 = fadd double %60, 1.000000e+00
  br label %29, !llvm.loop !7

62:                                               ; preds = %29
  %63 = load <2 x double>, ptr %15, align 16
  br label %64

64:                                               ; preds = %69, %62
  %storemerge1 = phi <2 x double> [ %63, %62 ], [ %100, %69 ]
  store <2 x double> %storemerge1, ptr %16, align 16
  %65 = load double, ptr %16, align 16
  %66 = load i32, ptr %21, align 4
  %67 = sitofp i32 %66 to double
  %68 = fcmp ugt double %65, %67
  br i1 %68, label %101, label %69

69:                                               ; preds = %64
  %70 = load <2 x double>, ptr %13, align 16
  %71 = load <2 x double>, ptr %16, align 16
  %72 = fadd <2 x double> %71, %70
  %73 = fmul <2 x double> %71, %72
  %74 = fdiv <2 x double> %70, %73
  %75 = load <2 x double>, ptr %9, align 16
  %76 = fadd <2 x double> %75, %74
  store <2 x double> %76, ptr %9, align 16
  %77 = load <2 x double>, ptr %13, align 16
  %78 = load <2 x double>, ptr %16, align 16
  %79 = fdiv <2 x double> %77, %78
  %80 = load <2 x double>, ptr %7, align 16
  %81 = fadd <2 x double> %80, %79
  store <2 x double> %81, ptr %7, align 16
  %82 = fmul <2 x double> %78, %78
  %83 = fdiv <2 x double> %77, %82
  %84 = load <2 x double>, ptr %8, align 16
  %85 = fadd <2 x double> %84, %83
  store <2 x double> %85, ptr %8, align 16
  %86 = load <2 x double>, ptr %17, align 16
  %87 = load <2 x double>, ptr %16, align 16
  %88 = fdiv <2 x double> %86, %87
  %89 = load <2 x double>, ptr %10, align 16
  %90 = fadd <2 x double> %89, %88
  store <2 x double> %90, ptr %10, align 16
  %91 = load <2 x double>, ptr %14, align 16
  %92 = load <2 x double>, ptr %13, align 16
  %93 = fneg <2 x double> %92
  %94 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %91, <2 x double> %87, <2 x double> %93)
  %95 = fdiv <2 x double> %86, %94
  %96 = load <2 x double>, ptr %11, align 16
  %97 = fadd <2 x double> %96, %95
  store <2 x double> %97, ptr %11, align 16
  %98 = load <2 x double>, ptr %14, align 16
  %99 = load <2 x double>, ptr %16, align 16
  %100 = fadd <2 x double> %99, %98
  br label %64, !llvm.loop !9

101:                                              ; preds = %64
  %102 = load double, ptr %3, align 8
  %103 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %102, ptr noundef nonnull @.str.1) #4
  %104 = load double, ptr %4, align 8
  %105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %104, ptr noundef nonnull @.str.2) #4
  %106 = load <2 x double>, ptr %9, align 16
  %107 = call double @sum_vec(<2 x double> noundef %106)
  %108 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %107, ptr noundef nonnull @.str.3) #4
  %109 = load double, ptr %5, align 8
  %110 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %109, ptr noundef nonnull @.str.4) #4
  %111 = load double, ptr %6, align 8
  %112 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %111, ptr noundef nonnull @.str.5) #4
  %113 = load <2 x double>, ptr %7, align 16
  %114 = call double @sum_vec(<2 x double> noundef %113)
  %115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %114, ptr noundef nonnull @.str.6) #4
  %116 = load <2 x double>, ptr %8, align 16
  %117 = call double @sum_vec(<2 x double> noundef %116)
  %118 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %117, ptr noundef nonnull @.str.7) #4
  %119 = load <2 x double>, ptr %10, align 16
  %120 = call double @sum_vec(<2 x double> noundef %119)
  %121 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %120, ptr noundef nonnull @.str.8) #4
  %122 = load <2 x double>, ptr %11, align 16
  %123 = call double @sum_vec(<2 x double> noundef %122)
  %124 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %123, ptr noundef nonnull @.str.9) #4
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
