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
  %3 = icmp samesign ult i32 %.01, 11
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = mul nuw nsw i32 %.02, %.01
  %6 = fmul float %.0, %0
  %7 = and i32 %.01, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = and i32 %.01, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = uitofp nneg i32 %5 to float
  %14 = fdiv float %6, %13
  %15 = fadd float %.03, %14
  br label %20

16:                                               ; preds = %9
  %17 = uitofp nneg i32 %5 to float
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
  %23 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !7

24:                                               ; preds = %2
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
  %putchar = call i32 @putchar(i32 10)
  br label %5

5:                                                ; preds = %23, %4
  %.0 = phi i32 [ %1, %4 ], [ %24, %23 ]
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds [8 x i8], ptr %0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %11 = load float, ptr %10, align 4
  %12 = fpext float %11 to double
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %9, double noundef %12) #5
  %14 = add nsw i32 %.0, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %20 = load float, ptr %19, align 4
  %21 = fpext float %20 to double
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %18, double noundef %21) #5
  %putchar1 = call i32 @putchar(i32 10)
  br label %23

23:                                               ; preds = %5
  %24 = add nsw i32 %14, %3
  %.not = icmp sgt i32 %24, %2
  br i1 %.not, label %25, label %5, !llvm.loop !9

25:                                               ; preds = %23
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = mul nsw i32 %3, 4855
  %5 = add nsw i32 %4, 1731
  %6 = and i32 %5, 8191
  store i32 %6, ptr %0, align 4
  %7 = uitofp nneg i32 %6 to float
  %8 = fmul nnan float %7, f0x39000000
  store float %8, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %13, %2
  %.04 = phi i32 [ 1, %2 ], [ %15, %13 ]
  %.03 = phi float [ 4.000000e+00, %2 ], [ %14, %13 ]
  %5 = icmp samesign ult i32 %.04, 26
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = fdiv float f0x40490FDB, %.03
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float %8, 2.000000e+00
  %10 = fdiv float 1.000000e+00, %9
  %11 = zext nneg i32 %.04 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %11
  store float %10, ptr %12, align 4
  br label %13

13:                                               ; preds = %6
  %14 = fadd float %.03, %.03
  %15 = add nuw nsw i32 %.04, 1
  br label %4, !llvm.loop !10

16:                                               ; preds = %4
  %17 = sdiv i32 %0, 2
  %18 = sdiv i32 %0, 4
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %19, align 4
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %20, align 4
  %21 = sext i32 %18 to i64
  %22 = getelementptr [8 x i8], ptr %1, i64 %21
  %23 = getelementptr i8, ptr %22, i64 8
  store float 0.000000e+00, ptr %23, align 4
  %24 = getelementptr i8, ptr %22, i64 12
  store float 1.000000e+00, ptr %24, align 4
  %25 = sext i32 %17 to i64
  %26 = getelementptr [8 x i8], ptr %1, i64 %25
  %27 = getelementptr i8, ptr %26, i64 8
  store float -1.000000e+00, ptr %27, align 4
  %28 = getelementptr i8, ptr %26, i64 12
  store float 0.000000e+00, ptr %28, align 4
  br label %29

29:                                               ; preds = %58, %16
  %.02 = phi i32 [ 1, %16 ], [ %57, %58 ]
  %.0 = phi i32 [ %18, %16 ], [ %30, %58 ]
  %30 = sdiv i32 %.0, 2
  %31 = sext i32 %.02 to i64
  %32 = getelementptr inbounds [4 x i8], ptr %3, i64 %31
  %33 = load float, ptr %32, align 4
  %invariant.op = add nsw i32 %30, 1
  br label %34

34:                                               ; preds = %53, %29
  %.01 = phi i32 [ %30, %29 ], [ %54, %53 ]
  %.reass = add i32 %.01, %invariant.op
  %35 = sext i32 %.reass to i64
  %36 = getelementptr inbounds [8 x i8], ptr %1, i64 %35
  %37 = load float, ptr %36, align 4
  %reass.sub = sub i32 %.01, %30
  %.reass2 = add i32 %reass.sub, 1
  %38 = sext i32 %.reass2 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %1, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = fadd float %37, %40
  %42 = fmul float %33, %41
  %43 = sext i32 %.01 to i64
  %44 = getelementptr [8 x i8], ptr %1, i64 %43
  %45 = getelementptr i8, ptr %44, i64 8
  store float %42, ptr %45, align 4
  %46 = getelementptr inbounds nuw i8, ptr %36, i64 4
  %47 = load float, ptr %46, align 4
  %48 = getelementptr inbounds nuw i8, ptr %39, i64 4
  %49 = load float, ptr %48, align 4
  %50 = fadd float %47, %49
  %51 = fmul float %33, %50
  %52 = getelementptr i8, ptr %44, i64 12
  store float %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %34
  %54 = add nsw i32 %.01, %.0
  %.not = icmp sgt i32 %54, %17
  br i1 %.not, label %55, label %34, !llvm.loop !11

55:                                               ; preds = %53
  %56 = add nsw i32 %.02, 1
  %57 = call i32 @Min0(i32 noundef %56, i32 noundef 25)
  br label %58

58:                                               ; preds = %55
  %59 = icmp sgt i32 %.0, 3
  br i1 %59, label %29, label %60, !llvm.loop !12

60:                                               ; preds = %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %70, %5
  %.01 = phi i32 [ 1, %5 ], [ %71, %70 ]
  br label %8

8:                                                ; preds = %59, %7
  %.04 = phi i32 [ 1, %7 ], [ %57, %59 ]
  %.03 = phi i32 [ %.01, %7 ], [ %60, %59 ]
  %.02 = phi i32 [ 0, %7 ], [ %.03, %59 ]
  %9 = sext i32 %.02 to i64
  %10 = getelementptr [8 x i8], ptr %3, i64 %9
  %11 = getelementptr i8, ptr %10, i64 8
  %12 = getelementptr i8, ptr %10, i64 12
  br label %13

13:                                               ; preds = %56, %8
  %.1 = phi i32 [ %.04, %8 ], [ %57, %56 ]
  %14 = sext i32 %.1 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %1, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = add nsw i32 %6, %.1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i8], ptr %1, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fadd float %16, %20
  %22 = add nsw i32 %.1, %.02
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i8], ptr %2, i64 %23
  store float %21, ptr %24, align 4
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %26 = load float, ptr %25, align 4
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %28 = load float, ptr %27, align 4
  %29 = fadd float %26, %28
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 4
  store float %29, ptr %30, align 4
  %31 = load float, ptr %11, align 4
  %32 = load float, ptr %15, align 4
  %33 = load float, ptr %19, align 4
  %34 = fsub float %32, %33
  %35 = load float, ptr %12, align 4
  %36 = load float, ptr %25, align 4
  %37 = load float, ptr %27, align 4
  %38 = fsub float %36, %37
  %39 = fneg float %38
  %40 = fmul float %35, %39
  %41 = call float @llvm.fmuladd.f32(float %31, float %34, float %40)
  %42 = add nsw i32 %.1, %.03
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %2, i64 %43
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
  %55 = getelementptr inbounds nuw i8, ptr %44, i64 4
  store float %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %13
  %57 = add nsw i32 %.1, 1
  %.not.not = icmp slt i32 %.1, %.03
  br i1 %.not.not, label %13, label %58, !llvm.loop !13

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %.03, %.01
  %.not = icmp sgt i32 %60, %6
  br i1 %.not, label %61, label %8, !llvm.loop !14

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %67, %61
  %.0 = phi i32 [ 1, %61 ], [ %68, %67 ]
  %63 = zext nneg i32 %.0 to i64
  %64 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %63
  %65 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %63
  %66 = load i64, ptr %65, align 4
  store i64 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %62
  %68 = add nuw nsw i32 %.0, 1
  %.not1.not = icmp slt i32 %.0, %0
  br i1 %.not1.not, label %62, label %69, !llvm.loop !15

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69
  %71 = shl nsw i32 %.01, 1
  %.not2 = icmp sgt i32 %71, %6
  br i1 %.not2, label %72, label %7, !llvm.loop !16

72:                                               ; preds = %70
  %73 = fneg float %4
  br label %74

74:                                               ; preds = %83, %72
  %.2 = phi i32 [ 1, %72 ], [ %84, %83 ]
  %.not3 = icmp sgt i32 %.2, %0
  br i1 %.not3, label %85, label %75

75:                                               ; preds = %74
  %76 = zext nneg i32 %.2 to i64
  %77 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %76
  %78 = load float, ptr %77, align 4
  %79 = fmul float %4, %78
  store float %79, ptr %77, align 4
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %81 = load float, ptr %80, align 4
  %82 = fmul float %81, %73
  store float %82, ptr %80, align 4
  br label %83

83:                                               ; preds = %75
  %84 = add nuw nsw i32 %.2, 1
  br label %74, !llvm.loop !17

85:                                               ; preds = %74
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
  %1 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, ptr noundef nonnull @e)
  store i32 5767, ptr @seed, align 4
  br label %2

2:                                                ; preds = %15, %0
  %.0 = phi i32 [ 1, %0 ], [ %16, %15 ]
  %3 = icmp samesign ult i32 %.0, 257
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = load i32, ptr @seed, align 4
  store i32 %5, ptr %1, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zr)
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zi)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @seed, align 4
  %8 = load float, ptr @zr, align 4
  %9 = call float @llvm.fmuladd.f32(float %8, float 2.000000e+01, float -1.000000e+01)
  %10 = zext nneg i32 %.0 to i64
  %11 = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %10
  store float %9, ptr %11, align 8
  %12 = load float, ptr @zi, align 4
  %13 = call float @llvm.fmuladd.f32(float %12, float 2.000000e+01, float -1.000000e+01)
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %21, %17
  %.1 = phi i32 [ 1, %17 ], [ %22, %21 ]
  %19 = icmp samesign ult i32 %.1, 21
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.1, 1
  br label %18, !llvm.loop !19

23:                                               ; preds = %18
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp samesign ult i32 %.0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Oscar()
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !20

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
