; ModuleID = 'results\paper_full\Stanford_Oscar\round_002\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Oscar.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.complex = type { float, float }
%struct.element = type { i32, i32 }

@seed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"  %15.3f%15.3f\00", align 1
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i32 74755, ptr @seed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @Cos(float noundef %0) #0 {
  br label %2

2:                                                ; preds = %19, %1
  %.04 = phi float [ %0, %1 ], [ %4, %19 ]
  %.013 = phi i32 [ 2, %1 ], [ %20, %19 ]
  %.022 = phi i32 [ 1, %1 ], [ %3, %19 ]
  %.031 = phi float [ 1.000000e+00, %1 ], [ %.1, %19 ]
  %3 = mul nsw i32 %.022, %.013
  %4 = fmul float %.04, %0
  %5 = and i32 %.013, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = and i32 %.013, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = sitofp i32 %3 to float
  %12 = fdiv float %4, %11
  %13 = fadd float %.031, %12
  br label %18

14:                                               ; preds = %7
  %15 = sitofp i32 %3 to float
  %16 = fdiv float %4, %15
  %17 = fsub float %.031, %16
  br label %18

18:                                               ; preds = %14, %10
  %.2 = phi float [ %13, %10 ], [ %17, %14 ]
  br label %19

19:                                               ; preds = %18, %2
  %.1 = phi float [ %.2, %18 ], [ %.031, %2 ]
  %20 = add nsw i32 %.013, 1
  %21 = icmp sle i32 %20, 10
  br i1 %21, label %2, label %22, !llvm.loop !7

22:                                               ; preds = %19
  %.1.lcssa = phi float [ %.1, %19 ]
  ret float %.1.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %6

6:                                                ; preds = %6, %4
  %.0 = phi i32 [ %1, %4 ], [ %25, %6 ]
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.complex, ptr %0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds nuw %struct.complex, ptr %8, i32 0, i32 1
  %12 = load float, ptr %11, align 4
  %13 = fpext float %12 to double
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %10, double noundef %13)
  %15 = add nsw i32 %.0, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.complex, ptr %0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds nuw %struct.complex, ptr %17, i32 0, i32 1
  %21 = load float, ptr %20, align 4
  %22 = fpext float %21 to double
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %19, double noundef %22)
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %25 = add nsw i32 %15, %3
  %26 = icmp sle i32 %25, %2
  br i1 %26, label %6, label %27, !llvm.loop !9

27:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = mul nsw i32 4855, %3
  %5 = add nsw i32 %4, 1731
  %6 = and i32 %5, 8191
  store i32 %6, ptr %0, align 4
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %7, 8.192000e+03
  store float %8, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %4, %2
  %.032 = phi float [ 4.000000e+00, %2 ], [ %11, %4 ]
  %.041 = phi i32 [ 1, %2 ], [ %12, %4 ]
  %5 = fdiv float f0x40490FDB, %.032
  %6 = call float @Cos(float noundef %5)
  %7 = fmul float 2.000000e+00, %6
  %8 = fdiv float 1.000000e+00, %7
  %9 = sext i32 %.041 to i64
  %10 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %9
  store float %8, ptr %10, align 4
  %11 = fadd float %.032, %.032
  %12 = add nsw i32 %.041, 1
  %13 = icmp sle i32 %12, 25
  br i1 %13, label %4, label %14, !llvm.loop !10

14:                                               ; preds = %4
  %15 = sdiv i32 %0, 2
  %16 = sdiv i32 %15, 2
  %17 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %17, align 4
  %18 = getelementptr inbounds nuw %struct.complex, ptr %17, i32 0, i32 1
  store float 0.000000e+00, ptr %18, align 4
  %19 = add nsw i32 %16, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.complex, ptr %1, i64 %20
  store float 0.000000e+00, ptr %21, align 4
  %22 = getelementptr inbounds nuw %struct.complex, ptr %21, i32 0, i32 1
  store float 1.000000e+00, ptr %22, align 4
  %23 = add nsw i32 %15, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.complex, ptr %1, i64 %24
  store float -1.000000e+00, ptr %25, align 4
  %26 = getelementptr inbounds nuw %struct.complex, ptr %25, i32 0, i32 1
  store float 0.000000e+00, ptr %26, align 4
  br label %27

27:                                               ; preds = %50, %14
  %.02 = phi i32 [ 1, %14 ], [ %52, %50 ]
  %.0 = phi i32 [ %16, %14 ], [ %28, %50 ]
  %28 = sdiv i32 %.0, 2
  %.phi.trans.insert = sext i32 %.02 to i64
  %.phi.trans.insert3 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert3, align 4
  %invariant.op = add i32 %28, 1
  %invariant.op1 = sub i32 1, %28
  br label %29

29:                                               ; preds = %29, %27
  %.01 = phi i32 [ %28, %27 ], [ %48, %29 ]
  %.reass = add i32 %.01, %invariant.op
  %30 = sext i32 %.reass to i64
  %31 = getelementptr inbounds %struct.complex, ptr %1, i64 %30
  %32 = load float, ptr %31, align 4
  %.reass2 = add i32 %.01, %invariant.op1
  %33 = sext i32 %.reass2 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %1, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = fadd float %32, %35
  %37 = fmul float %.pre, %36
  %38 = add nsw i32 %.01, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.complex, ptr %1, i64 %39
  store float %37, ptr %40, align 4
  %41 = getelementptr inbounds nuw %struct.complex, ptr %31, i32 0, i32 1
  %42 = load float, ptr %41, align 4
  %43 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 1
  %44 = load float, ptr %43, align 4
  %45 = fadd float %42, %44
  %46 = fmul float %.pre, %45
  %47 = getelementptr inbounds nuw %struct.complex, ptr %40, i32 0, i32 1
  store float %46, ptr %47, align 4
  %48 = add nsw i32 %.01, %.0
  %49 = icmp sle i32 %48, %15
  br i1 %49, label %29, label %50, !llvm.loop !11

50:                                               ; preds = %29
  %51 = add nsw i32 %.02, 1
  %52 = call i32 @Min0(i32 noundef %51, i32 noundef 25)
  %53 = icmp sgt i32 %28, 1
  br i1 %53, label %27, label %54, !llvm.loop !12

54:                                               ; preds = %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %68, %5
  %.01 = phi i32 [ 1, %5 ], [ %69, %68 ]
  br label %8

8:                                                ; preds = %58, %7
  %.04 = phi i32 [ 1, %7 ], [ %.lcssa, %58 ]
  %.03 = phi i32 [ %.01, %7 ], [ %59, %58 ]
  %.02 = phi i32 [ 0, %7 ], [ %.03, %58 ]
  %9 = add nsw i32 %.02, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.complex, ptr %3, i64 %10
  %12 = getelementptr inbounds nuw %struct.complex, ptr %11, i32 0, i32 1
  br label %13

13:                                               ; preds = %13, %8
  %.1 = phi i32 [ %.04, %8 ], [ %56, %13 ]
  %14 = sext i32 %.1 to i64
  %15 = getelementptr inbounds %struct.complex, ptr %1, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = add nsw i32 %6, %.1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.complex, ptr %1, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fadd float %16, %20
  %22 = add nsw i32 %.1, %.02
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.complex, ptr %2, i64 %23
  store float %21, ptr %24, align 4
  %25 = getelementptr inbounds nuw %struct.complex, ptr %15, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = getelementptr inbounds nuw %struct.complex, ptr %19, i32 0, i32 1
  %28 = load float, ptr %27, align 4
  %29 = fadd float %26, %28
  %30 = getelementptr inbounds nuw %struct.complex, ptr %24, i32 0, i32 1
  store float %29, ptr %30, align 4
  %31 = load float, ptr %11, align 4
  %32 = load float, ptr %15, align 4
  %33 = load float, ptr %19, align 4
  %34 = fsub float %32, %33
  %35 = load float, ptr %12, align 4
  %36 = load float, ptr %25, align 4
  %37 = load float, ptr %27, align 4
  %38 = fsub float %36, %37
  %39 = fmul float %35, %38
  %40 = fneg float %39
  %41 = call float @llvm.fmuladd.f32(float %31, float %34, float %40)
  %42 = add nsw i32 %.1, %.03
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.complex, ptr %2, i64 %43
  store float %41, ptr %44, align 4
  %45 = load float, ptr %11, align 4
  %46 = load float, ptr %25, align 4
  %47 = load float, ptr %27, align 4
  %48 = fsub float %46, %47
  %49 = load float, ptr %12, align 4
  %50 = load float, ptr %15, align 4
  %51 = load float, ptr %19, align 4
  %52 = fsub float %50, %51
  %53 = fmul float %49, %52
  %54 = call float @llvm.fmuladd.f32(float %45, float %48, float %53)
  %55 = getelementptr inbounds nuw %struct.complex, ptr %44, i32 0, i32 1
  store float %54, ptr %55, align 4
  %56 = add nsw i32 %.1, 1
  %57 = icmp sle i32 %56, %.03
  br i1 %57, label %13, label %58, !llvm.loop !13

58:                                               ; preds = %13
  %.lcssa = phi i32 [ %56, %13 ]
  %59 = add nsw i32 %.03, %.01
  %60 = icmp sle i32 %59, %6
  br i1 %60, label %8, label %61, !llvm.loop !14

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %62, %61
  %.0 = phi i32 [ 1, %61 ], [ %66, %62 ]
  %63 = sext i32 %.0 to i64
  %64 = getelementptr inbounds %struct.complex, ptr %1, i64 %63
  %65 = getelementptr inbounds %struct.complex, ptr %2, i64 %63
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %64, ptr align 4 %65, i64 8, i1 false)
  %66 = add nsw i32 %.0, 1
  %67 = icmp sle i32 %66, %0
  br i1 %67, label %62, label %68, !llvm.loop !15

68:                                               ; preds = %62
  %69 = add nsw i32 %.01, %.01
  %70 = icmp sle i32 %69, %6
  br i1 %70, label %7, label %71, !llvm.loop !16

71:                                               ; preds = %68
  %72 = icmp sle i32 1, %0
  br i1 %72, label %.lr.ph, label %84

.lr.ph:                                           ; preds = %71
  %73 = fneg float %4
  br label %74

74:                                               ; preds = %74, %.lr.ph
  %.21 = phi i32 [ 1, %.lr.ph ], [ %82, %74 ]
  %75 = sext i32 %.21 to i64
  %76 = getelementptr inbounds %struct.complex, ptr %1, i64 %75
  %77 = load float, ptr %76, align 4
  %78 = fmul float %4, %77
  store float %78, ptr %76, align 4
  %79 = getelementptr inbounds nuw %struct.complex, ptr %76, i32 0, i32 1
  %80 = load float, ptr %79, align 4
  %81 = fmul float %73, %80
  store float %81, ptr %79, align 4
  %82 = add nsw i32 %.21, 1
  %83 = icmp sle i32 %82, %0
  br i1 %83, label %74, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %74
  br label %84

84:                                               ; preds = %._crit_edge, %71
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
  %1 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, ptr noundef @e)
  store i32 5767, ptr @seed, align 4
  br label %2

2:                                                ; preds = %2, %0
  %3 = phi i32 [ 5767, %0 ], [ %5, %2 ]
  %.01 = phi i32 [ 1, %0 ], [ %13, %2 ]
  store i32 %3, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %5 = load i32, ptr %1, align 4
  store i32 %5, ptr @seed, align 4
  %6 = load float, ptr @zr, align 4
  %7 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %6, float -1.000000e+01)
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %8
  store float %7, ptr %9, align 8
  %10 = load float, ptr @zi, align 4
  %11 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %10, float -1.000000e+01)
  %12 = getelementptr inbounds nuw %struct.complex, ptr %9, i32 0, i32 1
  store float %11, ptr %12, align 4
  %13 = add nsw i32 %.01, 1
  %14 = icmp sle i32 %13, 256
  br i1 %14, label %2, label %15, !llvm.loop !18

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %16, %15
  %.12 = phi i32 [ 1, %15 ], [ %17, %16 ]
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %17 = add nsw i32 %.12, 1
  %18 = icmp sle i32 %17, 20
  br i1 %18, label %16, label %19, !llvm.loop !19

19:                                               ; preds = %16
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %.01 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Oscar()
  %2 = add nsw i32 %.01, 1
  %3 = icmp slt i32 %2, 10
  br i1 %3, label %1, label %4, !llvm.loop !20

4:                                                ; preds = %1
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Oscar.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
