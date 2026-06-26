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

2:                                                ; preds = %22, %1
  %.03 = phi float [ 1.000000e+00, %1 ], [ %.1, %22 ]
  %.02 = phi i32 [ 1, %1 ], [ %5, %22 ]
  %.01 = phi i32 [ 2, %1 ], [ %23, %22 ]
  %.0 = phi float [ %0, %1 ], [ %6, %22 ]
  %3 = icmp sle i32 %.01, 10
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = mul nsw i32 %.02, %.01
  %6 = fmul float %.0, %0
  %7 = and i32 %.01, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = and i32 %.01, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = sitofp i32 %5 to float
  %14 = fdiv float %6, %13
  %15 = fadd float %.03, %14
  br label %20

16:                                               ; preds = %9
  %17 = sitofp i32 %5 to float
  %18 = fdiv float %6, %17
  %19 = fsub float %.03, %18
  br label %20

20:                                               ; preds = %16, %12
  %.2 = phi float [ %15, %12 ], [ %19, %16 ]
  br label %21

21:                                               ; preds = %20, %4
  %.1 = phi float [ %.2, %20 ], [ %.03, %4 ]
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.01, 1
  br label %2, !llvm.loop !7

24:                                               ; preds = %2
  %.03.lcssa = phi float [ %.03, %2 ]
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
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %7, 8.192000e+03
  store float %8, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %14, %2
  %.04 = phi i32 [ 1, %2 ], [ %15, %14 ]
  %.03 = phi float [ 4.000000e+00, %2 ], [ %13, %14 ]
  %5 = icmp sle i32 %.04, 25
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = fdiv float f0x40490FDB, %.03
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float 2.000000e+00, %8
  %10 = fdiv float 1.000000e+00, %9
  %11 = sext i32 %.04 to i64
  %12 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %11
  store float %10, ptr %12, align 4
  %13 = fadd float %.03, %.03
  br label %14

14:                                               ; preds = %6
  %15 = add nsw i32 %.04, 1
  br label %4, !llvm.loop !10

16:                                               ; preds = %4
  %17 = sdiv i32 %0, 2
  %18 = sdiv i32 %17, 2
  %19 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %19, align 4
  %20 = getelementptr inbounds nuw %struct.complex, ptr %19, i32 0, i32 1
  store float 0.000000e+00, ptr %20, align 4
  %21 = add nsw i32 %18, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.complex, ptr %1, i64 %22
  store float 0.000000e+00, ptr %23, align 4
  %24 = getelementptr inbounds nuw %struct.complex, ptr %23, i32 0, i32 1
  store float 1.000000e+00, ptr %24, align 4
  %25 = add nsw i32 %17, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.complex, ptr %1, i64 %26
  store float -1.000000e+00, ptr %27, align 4
  %28 = getelementptr inbounds nuw %struct.complex, ptr %27, i32 0, i32 1
  store float 0.000000e+00, ptr %28, align 4
  br label %29

29:                                               ; preds = %60, %16
  %.02 = phi i32 [ 1, %16 ], [ %59, %60 ]
  %.0 = phi i32 [ %18, %16 ], [ %30, %60 ]
  %30 = sdiv i32 %.0, 2
  %31 = sext i32 %.02 to i64
  %32 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %invariant.op = add i32 %30, 1
  %invariant.op1 = sub i32 1, %30
  %34 = load float, ptr %32, align 4
  br label %35

35:                                               ; preds = %55, %29
  %.01 = phi i32 [ %30, %29 ], [ %54, %55 ]
  %.reass = add i32 %.01, %invariant.op
  %36 = sext i32 %.reass to i64
  %37 = getelementptr inbounds %struct.complex, ptr %1, i64 %36
  %38 = load float, ptr %37, align 4
  %.reass2 = add i32 %.01, %invariant.op1
  %39 = sext i32 %.reass2 to i64
  %40 = getelementptr inbounds %struct.complex, ptr %1, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = fadd float %38, %41
  %43 = fmul float %33, %42
  %44 = add nsw i32 %.01, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.complex, ptr %1, i64 %45
  store float %43, ptr %46, align 4
  %47 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 1
  %48 = load float, ptr %47, align 4
  %49 = getelementptr inbounds nuw %struct.complex, ptr %40, i32 0, i32 1
  %50 = load float, ptr %49, align 4
  %51 = fadd float %48, %50
  %52 = fmul float %34, %51
  %53 = getelementptr inbounds nuw %struct.complex, ptr %46, i32 0, i32 1
  store float %52, ptr %53, align 4
  %54 = add nsw i32 %.01, %.0
  br label %55

55:                                               ; preds = %35
  %56 = icmp sle i32 %54, %17
  br i1 %56, label %35, label %57, !llvm.loop !11

57:                                               ; preds = %55
  %58 = add nsw i32 %.02, 1
  %59 = call i32 @Min0(i32 noundef %58, i32 noundef 25)
  br label %60

60:                                               ; preds = %57
  %61 = icmp sgt i32 %30, 1
  br i1 %61, label %29, label %62, !llvm.loop !12

62:                                               ; preds = %60
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
  %9 = add nsw i32 %.02, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.complex, ptr %3, i64 %10
  %12 = getelementptr inbounds nuw %struct.complex, ptr %11, i32 0, i32 1
  br label %13

13:                                               ; preds = %57, %8
  %.1 = phi i32 [ %.04, %8 ], [ %56, %57 ]
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
  br label %57

57:                                               ; preds = %13
  %58 = icmp sle i32 %56, %.03
  br i1 %58, label %13, label %59, !llvm.loop !13

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
  %76 = fneg float %4
  br label %77

77:                                               ; preds = %87, %75
  %.2 = phi i32 [ 1, %75 ], [ %88, %87 ]
  %78 = icmp sle i32 %.2, %0
  br i1 %78, label %79, label %89

79:                                               ; preds = %77
  %80 = sext i32 %.2 to i64
  %81 = getelementptr inbounds %struct.complex, ptr %1, i64 %80
  %82 = load float, ptr %81, align 4
  %83 = fmul float %4, %82
  store float %83, ptr %81, align 4
  %84 = getelementptr inbounds nuw %struct.complex, ptr %81, i32 0, i32 1
  %85 = load float, ptr %84, align 4
  %86 = fmul float %76, %85
  store float %86, ptr %84, align 4
  br label %87

87:                                               ; preds = %79
  %88 = add nsw i32 %.2, 1
  br label %77, !llvm.loop !17

89:                                               ; preds = %77
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

2:                                                ; preds = %15, %0
  %.0 = phi i32 [ 1, %0 ], [ %16, %15 ]
  %3 = icmp sle i32 %.0, 256
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = load i32, ptr @seed, align 4
  store i32 %5, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @seed, align 4
  %8 = load float, ptr @zr, align 4
  %9 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %8, float -1.000000e+01)
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %10
  store float %9, ptr %11, align 8
  %12 = load float, ptr @zi, align 4
  %13 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %12, float -1.000000e+01)
  %14 = getelementptr inbounds nuw %struct.complex, ptr %11, i32 0, i32 1
  store float %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add nsw i32 %.0, 1
  br label %2, !llvm.loop !18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %21, %17
  %.1 = phi i32 [ 1, %17 ], [ %22, %21 ]
  %19 = icmp sle i32 %.1, 20
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %.1, 1
  br label %18, !llvm.loop !19

23:                                               ; preds = %18
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp slt i32 %.0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Oscar()
  br label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !20

6:                                                ; preds = %1
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
