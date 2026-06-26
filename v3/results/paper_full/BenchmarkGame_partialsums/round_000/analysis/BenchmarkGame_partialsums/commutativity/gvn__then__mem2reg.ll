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
  %4 = getelementptr inbounds double, ptr %3, i64 1
  store double %1, ptr %4, align 8
  %5 = load <2 x double>, ptr %3, align 16
  ret <2 x double> %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %2 = alloca <2 x double>, align 16
  store <2 x double> %0, ptr %2, align 16
  %3 = bitcast <2 x double> %0 to i128
  %4 = trunc i128 %3 to i64
  %5 = bitcast i64 %4 to double
  %6 = getelementptr inbounds double, ptr %2, i64 1
  %7 = lshr i128 %3, 64
  %8 = trunc i128 %7 to i64
  %9 = bitcast i64 %8 to double
  %10 = fadd double %5, %9
  ret double %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call <2 x double> @make_vec(double noundef 0.000000e+00, double noundef 0.000000e+00)
  %4 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 1.000000e+00)
  %5 = call <2 x double> @make_vec(double noundef 2.000000e+00, double noundef 2.000000e+00)
  %6 = call <2 x double> @make_vec(double noundef -1.000000e+00, double noundef -1.000000e+00)
  %7 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 2.000000e+00)
  %8 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef -1.000000e+00)
  br label %9

9:                                                ; preds = %16, %2
  %10 = phi double [ %34, %16 ], [ 0.000000e+00, %2 ]
  %11 = phi double [ %30, %16 ], [ 0.000000e+00, %2 ]
  %12 = phi double [ %22, %16 ], [ 0.000000e+00, %2 ]
  %13 = phi double [ %19, %16 ], [ 0.000000e+00, %2 ]
  %14 = phi double [ %35, %16 ], [ 1.000000e+00, %2 ]
  %15 = fcmp ole double %14, 2.500000e+06
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = fsub double %14, 1.000000e+00
  %18 = call double @pow(double noundef f0x3FE5555555555555, double noundef %17) #4
  %19 = fadd double %13, %18
  %20 = call double @sqrt(double noundef %14) #4
  %21 = fdiv double 1.000000e+00, %20
  %22 = fadd double %12, %21
  %23 = fmul double %14, %14
  %24 = fmul double %23, %14
  %25 = call double @sin(double noundef %14) #4
  %26 = call double @cos(double noundef %14) #4
  %27 = fmul double %24, %25
  %28 = fmul double %27, %25
  %29 = fdiv double 1.000000e+00, %28
  %30 = fadd double %11, %29
  %31 = fmul double %24, %26
  %32 = fmul double %31, %26
  %33 = fdiv double 1.000000e+00, %32
  %34 = fadd double %10, %33
  %35 = fadd double %14, 1.000000e+00
  br label %9, !llvm.loop !7

36:                                               ; preds = %9
  %37 = bitcast <2 x double> %7 to i128
  %38 = trunc i128 %37 to i64
  %39 = bitcast i64 %38 to double
  br label %40

40:                                               ; preds = %49, %36
  %41 = phi <2 x double> [ %65, %49 ], [ %7, %36 ]
  %42 = phi <2 x double> [ %64, %49 ], [ %3, %36 ]
  %43 = phi <2 x double> [ %60, %49 ], [ %3, %36 ]
  %44 = phi <2 x double> [ %58, %49 ], [ %3, %36 ]
  %45 = phi <2 x double> [ %55, %49 ], [ %3, %36 ]
  %46 = phi <2 x double> [ %53, %49 ], [ %3, %36 ]
  %47 = phi double [ %68, %49 ], [ %39, %36 ]
  %48 = fcmp ole double %47, 2.500000e+06
  br i1 %48, label %49, label %69

49:                                               ; preds = %40
  %50 = fadd <2 x double> %41, %4
  %51 = fmul <2 x double> %41, %50
  %52 = fdiv <2 x double> %4, %51
  %53 = fadd <2 x double> %46, %52
  %54 = fdiv <2 x double> %4, %41
  %55 = fadd <2 x double> %45, %54
  %56 = fmul <2 x double> %41, %41
  %57 = fdiv <2 x double> %4, %56
  %58 = fadd <2 x double> %44, %57
  %59 = fdiv <2 x double> %8, %41
  %60 = fadd <2 x double> %43, %59
  %61 = fneg <2 x double> %4
  %62 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %41, <2 x double> %61)
  %63 = fdiv <2 x double> %8, %62
  %64 = fadd <2 x double> %42, %63
  %65 = fadd <2 x double> %41, %5
  %66 = bitcast <2 x double> %65 to i128
  %67 = trunc i128 %66 to i64
  %68 = bitcast i64 %67 to double
  br label %40, !llvm.loop !9

69:                                               ; preds = %40
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %13, ptr noundef @.str.1)
  %71 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %12, ptr noundef @.str.2)
  %72 = call double @sum_vec(<2 x double> noundef %46)
  %73 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %72, ptr noundef @.str.3)
  %74 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %11, ptr noundef @.str.4)
  %75 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %10, ptr noundef @.str.5)
  %76 = call double @sum_vec(<2 x double> noundef %45)
  %77 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %76, ptr noundef @.str.6)
  %78 = call double @sum_vec(<2 x double> noundef %44)
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %78, ptr noundef @.str.7)
  %80 = call double @sum_vec(<2 x double> noundef %43)
  %81 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %80, ptr noundef @.str.8)
  %82 = call double @sum_vec(<2 x double> noundef %42)
  %83 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %82, ptr noundef @.str.9)
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
