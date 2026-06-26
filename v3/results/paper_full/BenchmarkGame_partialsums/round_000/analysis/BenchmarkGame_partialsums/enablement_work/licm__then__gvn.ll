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

33:                                               ; preds = %43, %2
  %34 = phi double [ %61, %43 ], [ 0.000000e+00, %2 ]
  %35 = phi double [ %57, %43 ], [ 0.000000e+00, %2 ]
  %36 = phi double [ %53, %43 ], [ undef, %2 ]
  %37 = phi double [ %52, %43 ], [ undef, %2 ]
  %38 = phi double [ %51, %43 ], [ undef, %2 ]
  %39 = phi double [ %49, %43 ], [ 0.000000e+00, %2 ]
  %40 = phi double [ %46, %43 ], [ 0.000000e+00, %2 ]
  %41 = phi double [ %62, %43 ], [ 1.000000e+00, %2 ]
  %42 = fcmp ole double %41, 2.500000e+06
  br i1 %42, label %43, label %63

43:                                               ; preds = %33
  %44 = fsub double %41, 1.000000e+00
  %45 = call double @pow(double noundef f0x3FE5555555555555, double noundef %44) #4
  %46 = fadd double %40, %45
  %47 = call double @sqrt(double noundef %41) #4
  %48 = fdiv double 1.000000e+00, %47
  %49 = fadd double %39, %48
  %50 = fmul double %41, %41
  %51 = fmul double %50, %41
  %52 = call double @sin(double noundef %41) #4
  %53 = call double @cos(double noundef %41) #4
  %54 = fmul double %51, %52
  %55 = fmul double %54, %52
  %56 = fdiv double 1.000000e+00, %55
  %57 = fadd double %35, %56
  %58 = fmul double %51, %53
  %59 = fmul double %58, %53
  %60 = fdiv double 1.000000e+00, %59
  %61 = fadd double %34, %60
  %62 = fadd double %41, 1.000000e+00
  br label %33, !llvm.loop !7

63:                                               ; preds = %33
  store double %41, ptr %22, align 8
  store double %40, ptr %6, align 8
  store double %39, ptr %7, align 8
  store double %38, ptr %23, align 8
  store double %37, ptr %24, align 8
  store double %36, ptr %25, align 8
  store double %35, ptr %8, align 8
  store double %34, ptr %9, align 8
  store <2 x double> %31, ptr %20, align 16
  %64 = fneg <2 x double> %28
  %65 = bitcast <2 x double> %31 to i128
  %66 = trunc i128 %65 to i64
  %67 = bitcast i64 %66 to double
  br label %68

68:                                               ; preds = %77, %63
  %69 = phi <2 x double> [ %92, %77 ], [ %31, %63 ]
  %70 = phi double [ %95, %77 ], [ %67, %63 ]
  %71 = phi <2 x double> [ %91, %77 ], [ %27, %63 ]
  %72 = phi <2 x double> [ %88, %77 ], [ %27, %63 ]
  %73 = phi <2 x double> [ %86, %77 ], [ %27, %63 ]
  %74 = phi <2 x double> [ %83, %77 ], [ %27, %63 ]
  %75 = phi <2 x double> [ %81, %77 ], [ %27, %63 ]
  %76 = fcmp ole double %70, 2.500000e+06
  br i1 %76, label %77, label %96

77:                                               ; preds = %68
  %78 = fadd <2 x double> %69, %28
  %79 = fmul <2 x double> %69, %78
  %80 = fdiv <2 x double> %28, %79
  %81 = fadd <2 x double> %75, %80
  %82 = fdiv <2 x double> %28, %69
  %83 = fadd <2 x double> %74, %82
  %84 = fmul <2 x double> %69, %69
  %85 = fdiv <2 x double> %28, %84
  %86 = fadd <2 x double> %73, %85
  %87 = fdiv <2 x double> %32, %69
  %88 = fadd <2 x double> %72, %87
  %89 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %69, <2 x double> %64)
  %90 = fdiv <2 x double> %32, %89
  %91 = fadd <2 x double> %71, %90
  %92 = fadd <2 x double> %69, %29
  store <2 x double> %92, ptr %20, align 16
  %93 = bitcast <2 x double> %92 to i128
  %94 = trunc i128 %93 to i64
  %95 = bitcast i64 %94 to double
  br label %68, !llvm.loop !9

96:                                               ; preds = %68
  store <2 x double> %75, ptr %12, align 16
  store <2 x double> %74, ptr %10, align 16
  store <2 x double> %73, ptr %11, align 16
  store <2 x double> %72, ptr %13, align 16
  store <2 x double> %71, ptr %14, align 16
  %97 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %40, ptr noundef @.str.1)
  %98 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %39, ptr noundef @.str.2)
  %99 = call double @sum_vec(<2 x double> noundef %75)
  %100 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %99, ptr noundef @.str.3)
  %101 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %35, ptr noundef @.str.4)
  %102 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %34, ptr noundef @.str.5)
  %103 = call double @sum_vec(<2 x double> noundef %74)
  %104 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %103, ptr noundef @.str.6)
  %105 = call double @sum_vec(<2 x double> noundef %73)
  %106 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %105, ptr noundef @.str.7)
  %107 = call double @sum_vec(<2 x double> noundef %72)
  %108 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %107, ptr noundef @.str.8)
  %109 = call double @sum_vec(<2 x double> noundef %71)
  %110 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %109, ptr noundef @.str.9)
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
