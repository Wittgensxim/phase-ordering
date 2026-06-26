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
  %7 = lshr i128 %4, 64
  %8 = trunc i128 %7 to i64
  %9 = bitcast i64 %8 to double
  %10 = fadd double %6, %9
  ret double %10
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

33:                                               ; preds = %40, %2
  %34 = phi double [ %58, %40 ], [ 0.000000e+00, %2 ]
  %35 = phi double [ %54, %40 ], [ 0.000000e+00, %2 ]
  %36 = phi double [ %46, %40 ], [ 0.000000e+00, %2 ]
  %37 = phi double [ %43, %40 ], [ 0.000000e+00, %2 ]
  %38 = phi double [ %59, %40 ], [ 1.000000e+00, %2 ]
  %39 = fcmp ole double %38, 2.500000e+06
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = fsub double %38, 1.000000e+00
  %42 = call double @pow(double noundef f0x3FE5555555555555, double noundef %41) #4
  %43 = fadd double %37, %42
  store double %43, ptr %6, align 8
  %44 = call double @sqrt(double noundef %38) #4
  %45 = fdiv double 1.000000e+00, %44
  %46 = fadd double %36, %45
  store double %46, ptr %7, align 8
  %47 = fmul double %38, %38
  %48 = fmul double %38, %47
  store double %48, ptr %23, align 8
  %49 = call double @sin(double noundef %38) #4
  store double %49, ptr %24, align 8
  %50 = call double @cos(double noundef %38) #4
  store double %50, ptr %25, align 8
  %51 = fmul double %48, %49
  %52 = fmul double %49, %51
  %53 = fdiv double 1.000000e+00, %52
  %54 = fadd double %35, %53
  store double %54, ptr %8, align 8
  %55 = fmul double %48, %50
  %56 = fmul double %50, %55
  %57 = fdiv double 1.000000e+00, %56
  %58 = fadd double %34, %57
  store double %58, ptr %9, align 8
  %59 = fadd double %38, 1.000000e+00
  store double %59, ptr %22, align 8
  br label %33, !llvm.loop !7

60:                                               ; preds = %33
  store <2 x double> %31, ptr %20, align 16
  %61 = bitcast <2 x double> %31 to i128
  %62 = trunc i128 %61 to i64
  %63 = bitcast i64 %62 to double
  br label %64

64:                                               ; preds = %73, %60
  %65 = phi <2 x double> [ %89, %73 ], [ %31, %60 ]
  %66 = phi <2 x double> [ %88, %73 ], [ %27, %60 ]
  %67 = phi <2 x double> [ %84, %73 ], [ %27, %60 ]
  %68 = phi <2 x double> [ %82, %73 ], [ %27, %60 ]
  %69 = phi <2 x double> [ %79, %73 ], [ %27, %60 ]
  %70 = phi <2 x double> [ %77, %73 ], [ %27, %60 ]
  %71 = phi double [ %92, %73 ], [ %63, %60 ]
  %72 = fcmp ole double %71, 2.500000e+06
  br i1 %72, label %73, label %93

73:                                               ; preds = %64
  %74 = fadd <2 x double> %28, %65
  %75 = fmul <2 x double> %65, %74
  %76 = fdiv <2 x double> %28, %75
  %77 = fadd <2 x double> %76, %70
  store <2 x double> %77, ptr %12, align 16
  %78 = fdiv <2 x double> %28, %65
  %79 = fadd <2 x double> %78, %69
  store <2 x double> %79, ptr %10, align 16
  %80 = fmul <2 x double> %65, %65
  %81 = fdiv <2 x double> %28, %80
  %82 = fadd <2 x double> %81, %68
  store <2 x double> %82, ptr %11, align 16
  %83 = fdiv <2 x double> %32, %65
  %84 = fadd <2 x double> %83, %67
  store <2 x double> %84, ptr %13, align 16
  %85 = fneg <2 x double> %28
  %86 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %65, <2 x double> %85)
  %87 = fdiv <2 x double> %32, %86
  %88 = fadd <2 x double> %66, %87
  store <2 x double> %88, ptr %14, align 16
  %89 = fadd <2 x double> %29, %65
  store <2 x double> %89, ptr %20, align 16
  %90 = bitcast <2 x double> %89 to i128
  %91 = trunc i128 %90 to i64
  %92 = bitcast i64 %91 to double
  br label %64, !llvm.loop !9

93:                                               ; preds = %64
  %94 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %37, ptr noundef @.str.1)
  %95 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %36, ptr noundef @.str.2)
  %96 = call double @sum_vec(<2 x double> noundef %70)
  %97 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %96, ptr noundef @.str.3)
  %98 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %35, ptr noundef @.str.4)
  %99 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %34, ptr noundef @.str.5)
  %100 = call double @sum_vec(<2 x double> noundef %69)
  %101 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %100, ptr noundef @.str.6)
  %102 = call double @sum_vec(<2 x double> noundef %68)
  %103 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %102, ptr noundef @.str.7)
  %104 = call double @sum_vec(<2 x double> noundef %67)
  %105 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %104, ptr noundef @.str.8)
  %106 = call double @sum_vec(<2 x double> noundef %66)
  %107 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %106, ptr noundef @.str.9)
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
