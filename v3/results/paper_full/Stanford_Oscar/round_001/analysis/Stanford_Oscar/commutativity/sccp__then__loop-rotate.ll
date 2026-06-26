; ModuleID = 'results\paper_full\Stanford_Oscar\round_000\output.ll'
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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
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

2:                                                ; preds = %1, %20
  %.04 = phi float [ %0, %1 ], [ %4, %20 ]
  %.013 = phi i32 [ 2, %1 ], [ %21, %20 ]
  %.022 = phi i32 [ 1, %1 ], [ %3, %20 ]
  %.031 = phi float [ 1.000000e+00, %1 ], [ %.1, %20 ]
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
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %.013, 1
  %22 = icmp sle i32 %21, 10
  br i1 %22, label %2, label %23, !llvm.loop !7

23:                                               ; preds = %20
  %.03.lcssa = phi float [ %.1, %20 ]
  ret float %.03.lcssa
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

6:                                                ; preds = %26, %4
  %.0 = phi i32 [ %1, %4 ], [ %25, %26 ]
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
  br label %26

26:                                               ; preds = %6
  %27 = icmp sle i32 %25, %2
  br i1 %27, label %6, label %28, !llvm.loop !9

28:                                               ; preds = %26
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
  %7 = uitofp nneg i32 %6 to float
  %8 = fdiv float %7, 8.192000e+03
  store float %8, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %2, %12
  %.038 = phi float [ 4.000000e+00, %2 ], [ %11, %12 ]
  %.047 = phi i32 [ 1, %2 ], [ %13, %12 ]
  %5 = fdiv float f0x40490FDB, %.038
  %6 = call float @Cos(float noundef %5)
  %7 = fmul float 2.000000e+00, %6
  %8 = fdiv float 1.000000e+00, %7
  %9 = sext i32 %.047 to i64
  %10 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %9
  store float %8, ptr %10, align 4
  %11 = fadd float %.038, %.038
  br label %12

12:                                               ; preds = %4
  %13 = add nsw i32 %.047, 1
  %14 = icmp sle i32 %13, 25
  br i1 %14, label %4, label %15, !llvm.loop !10

15:                                               ; preds = %12
  %16 = sdiv i32 %0, 2
  %17 = sdiv i32 %16, 2
  %18 = getelementptr inbounds nuw %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %18, align 4
  %19 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 1
  store float 0.000000e+00, ptr %19, align 4
  %20 = add nsw i32 %17, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.complex, ptr %1, i64 %21
  store float 0.000000e+00, ptr %22, align 4
  %23 = getelementptr inbounds nuw %struct.complex, ptr %22, i32 0, i32 1
  store float 1.000000e+00, ptr %23, align 4
  %24 = add nsw i32 %16, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.complex, ptr %1, i64 %25
  store float -1.000000e+00, ptr %26, align 4
  %27 = getelementptr inbounds nuw %struct.complex, ptr %26, i32 0, i32 1
  store float 0.000000e+00, ptr %27, align 4
  br label %28

28:                                               ; preds = %63, %15
  %.02 = phi i32 [ 1, %15 ], [ %62, %63 ]
  %.0 = phi i32 [ %17, %15 ], [ %29, %63 ]
  %29 = sdiv i32 %.0, 2
  br label %30

30:                                               ; preds = %58, %28
  %.01 = phi i32 [ %29, %28 ], [ %57, %58 ]
  %31 = sext i32 %.02 to i64
  %32 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = add nsw i32 %.01, %29
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.complex, ptr %1, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = sub nsw i32 %.01, %29
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.complex, ptr %1, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = fadd float %38, %43
  %45 = fmul float %33, %44
  %46 = add nsw i32 %.01, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.complex, ptr %1, i64 %47
  store float %45, ptr %48, align 4
  %49 = load float, ptr %32, align 4
  %50 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 1
  %51 = load float, ptr %50, align 4
  %52 = getelementptr inbounds nuw %struct.complex, ptr %42, i32 0, i32 1
  %53 = load float, ptr %52, align 4
  %54 = fadd float %51, %53
  %55 = fmul float %49, %54
  %56 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 1
  store float %55, ptr %56, align 4
  %57 = add nsw i32 %.01, %.0
  br label %58

58:                                               ; preds = %30
  %59 = icmp sle i32 %57, %16
  br i1 %59, label %30, label %60, !llvm.loop !11

60:                                               ; preds = %58
  %61 = add nsw i32 %.02, 1
  %62 = call i32 @Min0(i32 noundef %61, i32 noundef 25)
  br label %63

63:                                               ; preds = %60
  %64 = icmp sgt i32 %29, 1
  br i1 %64, label %28, label %65, !llvm.loop !12

65:                                               ; preds = %63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %73, %5
  %.01 = phi i32 [ 1, %5 ], [ %72, %73 ]
  br label %8

8:                                                ; preds = %61, %7
  %.04 = phi i32 [ 1, %7 ], [ %.lcssa, %61 ]
  %.03 = phi i32 [ %.01, %7 ], [ %60, %61 ]
  %.02 = phi i32 [ 0, %7 ], [ %.03, %61 ]
  br label %9

9:                                                ; preds = %57, %8
  %.1 = phi i32 [ %.04, %8 ], [ %56, %57 ]
  %10 = sext i32 %.1 to i64
  %11 = getelementptr inbounds %struct.complex, ptr %1, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = add nsw i32 %6, %.1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.complex, ptr %1, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %12, %16
  %18 = add nsw i32 %.1, %.02
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.complex, ptr %2, i64 %19
  store float %17, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.complex, ptr %11, i32 0, i32 1
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds nuw %struct.complex, ptr %15, i32 0, i32 1
  %24 = load float, ptr %23, align 4
  %25 = fadd float %22, %24
  %26 = getelementptr inbounds nuw %struct.complex, ptr %20, i32 0, i32 1
  store float %25, ptr %26, align 4
  %27 = add nsw i32 %.02, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.complex, ptr %3, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load float, ptr %11, align 4
  %32 = load float, ptr %15, align 4
  %33 = fsub float %31, %32
  %34 = getelementptr inbounds nuw %struct.complex, ptr %29, i32 0, i32 1
  %35 = load float, ptr %34, align 4
  %36 = load float, ptr %21, align 4
  %37 = load float, ptr %23, align 4
  %38 = fsub float %36, %37
  %39 = fmul float %35, %38
  %40 = fneg float %39
  %41 = call float @llvm.fmuladd.f32(float %30, float %33, float %40)
  %42 = add nsw i32 %.1, %.03
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.complex, ptr %2, i64 %43
  store float %41, ptr %44, align 4
  %45 = load float, ptr %29, align 4
  %46 = load float, ptr %21, align 4
  %47 = load float, ptr %23, align 4
  %48 = fsub float %46, %47
  %49 = load float, ptr %34, align 4
  %50 = load float, ptr %11, align 4
  %51 = load float, ptr %15, align 4
  %52 = fsub float %50, %51
  %53 = fmul float %49, %52
  %54 = call float @llvm.fmuladd.f32(float %45, float %48, float %53)
  %55 = getelementptr inbounds nuw %struct.complex, ptr %44, i32 0, i32 1
  store float %54, ptr %55, align 4
  %56 = add nsw i32 %.1, 1
  br label %57

57:                                               ; preds = %9
  %58 = icmp sle i32 %56, %.03
  br i1 %58, label %9, label %59, !llvm.loop !13

59:                                               ; preds = %57
  %.lcssa = phi i32 [ %56, %57 ]
  %60 = add nsw i32 %.03, %.01
  br label %61

61:                                               ; preds = %59
  %62 = icmp sle i32 %60, %6
  br i1 %62, label %8, label %63, !llvm.loop !14

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %69, %63
  %.0 = phi i32 [ 1, %63 ], [ %68, %69 ]
  %65 = sext i32 %.0 to i64
  %66 = getelementptr inbounds %struct.complex, ptr %1, i64 %65
  %67 = getelementptr inbounds %struct.complex, ptr %2, i64 %65
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %66, ptr align 4 %67, i64 8, i1 false)
  %68 = add nsw i32 %.0, 1
  br label %69

69:                                               ; preds = %64
  %70 = icmp sle i32 %68, %0
  br i1 %70, label %64, label %71, !llvm.loop !15

71:                                               ; preds = %69
  %72 = add nsw i32 %.01, %.01
  br label %73

73:                                               ; preds = %71
  %74 = icmp sle i32 %72, %6
  br i1 %74, label %7, label %75, !llvm.loop !16

75:                                               ; preds = %73
  %76 = icmp sle i32 1, %0
  br i1 %76, label %.lr.ph, label %89

.lr.ph:                                           ; preds = %75
  br label %77

77:                                               ; preds = %.lr.ph, %86
  %.212 = phi i32 [ 1, %.lr.ph ], [ %87, %86 ]
  %78 = sext i32 %.212 to i64
  %79 = getelementptr inbounds %struct.complex, ptr %1, i64 %78
  %80 = load float, ptr %79, align 4
  %81 = fmul float %4, %80
  store float %81, ptr %79, align 4
  %82 = fneg float %4
  %83 = getelementptr inbounds nuw %struct.complex, ptr %79, i32 0, i32 1
  %84 = load float, ptr %83, align 4
  %85 = fmul float %82, %84
  store float %85, ptr %83, align 4
  br label %86

86:                                               ; preds = %77
  %87 = add nsw i32 %.212, 1
  %88 = icmp sle i32 %87, %0
  br i1 %88, label %77, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %86
  br label %89

89:                                               ; preds = %._crit_edge, %75
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

2:                                                ; preds = %0, %13
  %.01 = phi i32 [ 1, %0 ], [ %14, %13 ]
  %3 = load i32, ptr @seed, align 4
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
  br label %13

13:                                               ; preds = %2
  %14 = add nsw i32 %.01, 1
  %15 = icmp sle i32 %14, 256
  br i1 %15, label %2, label %16, !llvm.loop !18

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %18
  %.12 = phi i32 [ 1, %16 ], [ %19, %18 ]
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %18

18:                                               ; preds = %17
  %19 = add nsw i32 %.12, 1
  %20 = icmp sle i32 %19, 20
  br i1 %20, label %17, label %21, !llvm.loop !19

21:                                               ; preds = %18
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %2
  %.01 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Oscar()
  br label %2

2:                                                ; preds = %1
  %3 = add nsw i32 %.01, 1
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %1, label %5, !llvm.loop !20

5:                                                ; preds = %2
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
