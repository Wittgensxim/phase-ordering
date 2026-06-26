; ModuleID = 'results\paper_full\Stanford_Oscar\Stanford_Oscar.ll'
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

2:                                                ; preds = %21, %1
  %.03 = phi float [ 1.000000e+00, %1 ], [ %.1, %21 ]
  %.02 = phi i32 [ 1, %1 ], [ %5, %21 ]
  %.01 = phi i32 [ 2, %1 ], [ %22, %21 ]
  %.0 = phi float [ %0, %1 ], [ %6, %21 ]
  %3 = icmp sle i32 %.01, 10
  br i1 %3, label %4, label %23

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
  %22 = add nsw i32 %.01, 1
  br label %2, !llvm.loop !7

23:                                               ; preds = %2
  ret float %.03
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

4:                                                ; preds = %6, %2
  %.04 = phi i32 [ 1, %2 ], [ %14, %6 ]
  %.03 = phi float [ 4.000000e+00, %2 ], [ %13, %6 ]
  %5 = icmp sle i32 %.04, 25
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = fdiv float f0x40490FDB, %.03
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float 2.000000e+00, %8
  %10 = fdiv float 1.000000e+00, %9
  %11 = sext i32 %.04 to i64
  %12 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %11
  store float %10, ptr %12, align 4
  %13 = fadd float %.03, %.03
  %14 = add nsw i32 %.04, 1
  br label %4, !llvm.loop !10

15:                                               ; preds = %4
  %16 = sdiv i32 %0, 2
  %17 = sdiv i32 %16, 2
  %18 = getelementptr inbounds %struct.complex, ptr %1, i64 1
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

28:                                               ; preds = %55, %15
  %.02 = phi i32 [ 1, %15 ], [ %57, %55 ]
  %.0 = phi i32 [ %17, %15 ], [ %29, %55 ]
  %29 = sdiv i32 %.0, 2
  %.phi.trans.insert = sext i32 %.02 to i64
  %.phi.trans.insert5 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert5, align 4
  br label %30

30:                                               ; preds = %30, %28
  %.01 = phi i32 [ %29, %28 ], [ %53, %30 ]
  %31 = add nsw i32 %.01, %29
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %1, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = sub nsw i32 %.01, %29
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.complex, ptr %1, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = fadd float %35, %40
  %42 = fmul float %.pre, %41
  %43 = add nsw i32 %.01, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.complex, ptr %1, i64 %44
  store float %42, ptr %45, align 4
  %46 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 1
  %47 = load float, ptr %46, align 4
  %48 = getelementptr inbounds nuw %struct.complex, ptr %39, i32 0, i32 1
  %49 = load float, ptr %48, align 4
  %50 = fadd float %47, %49
  %51 = fmul float %.pre, %50
  %52 = getelementptr inbounds nuw %struct.complex, ptr %45, i32 0, i32 1
  store float %51, ptr %52, align 4
  %53 = add nsw i32 %.01, %.0
  %54 = icmp sle i32 %53, %16
  br i1 %54, label %30, label %55, !llvm.loop !11

55:                                               ; preds = %30
  %56 = add nsw i32 %.02, 1
  %57 = call i32 @Min0(i32 noundef %56, i32 noundef 25)
  %58 = icmp sgt i32 %29, 1
  br i1 %58, label %28, label %59, !llvm.loop !12

59:                                               ; preds = %55
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
  %.04 = phi i32 [ 1, %7 ], [ %56, %58 ]
  %.03 = phi i32 [ %.01, %7 ], [ %59, %58 ]
  %.02 = phi i32 [ 0, %7 ], [ %.03, %58 ]
  br label %9

9:                                                ; preds = %9, %8
  %.1 = phi i32 [ %.04, %8 ], [ %56, %9 ]
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
  %57 = icmp sle i32 %56, %.03
  br i1 %57, label %9, label %58, !llvm.loop !13

58:                                               ; preds = %9
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
  br label %72

72:                                               ; preds = %74, %71
  %.2 = phi i32 [ 1, %71 ], [ %83, %74 ]
  %73 = icmp sle i32 %.2, %0
  br i1 %73, label %74, label %84

74:                                               ; preds = %72
  %75 = sext i32 %.2 to i64
  %76 = getelementptr inbounds %struct.complex, ptr %1, i64 %75
  %77 = load float, ptr %76, align 4
  %78 = fmul float %4, %77
  store float %78, ptr %76, align 4
  %79 = fneg float %4
  %80 = getelementptr inbounds nuw %struct.complex, ptr %76, i32 0, i32 1
  %81 = load float, ptr %80, align 4
  %82 = fmul float %79, %81
  store float %82, ptr %80, align 4
  %83 = add nsw i32 %.2, 1
  br label %72, !llvm.loop !17

84:                                               ; preds = %72
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

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 5767, %0 ], [ %7, %5 ]
  %.0 = phi i32 [ 1, %0 ], [ %15, %5 ]
  %4 = icmp sle i32 %.0, 256
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  store i32 %3, ptr %1, align 4
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
  %15 = add nsw i32 %.0, 1
  br label %2, !llvm.loop !18

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %19, %16
  %.1 = phi i32 [ 1, %16 ], [ %20, %19 ]
  %18 = icmp sle i32 %.1, 20
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %20 = add nsw i32 %.1, 1
  br label %17, !llvm.loop !19

21:                                               ; preds = %17
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %.0, 10
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Oscar()
  %4 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !20

5:                                                ; preds = %1
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
