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

2:                                                ; preds = %1, %20
  %.04 = phi float [ %0, %1 ], [ %4, %20 ]
  %.013 = phi i32 [ 2, %1 ], [ %21, %20 ]
  %.022 = phi i32 [ 1, %1 ], [ %3, %20 ]
  %.031 = phi float [ 1.000000e+00, %1 ], [ %.1, %20 ]
  %3 = mul nuw nsw i32 %.022, %.013
  %4 = fmul float %.04, %0
  %5 = and i32 %.013, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = and i32 %.013, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = uitofp nneg i32 %3 to float
  %12 = fdiv float %4, %11
  %13 = fadd float %.031, %12
  br label %18

14:                                               ; preds = %7
  %15 = uitofp nneg i32 %3 to float
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
  %21 = add nuw nsw i32 %.013, 1
  %22 = icmp samesign ult i32 %21, 11
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

4:                                                ; preds = %2, %11
  %.032 = phi float [ 4.000000e+00, %2 ], [ %12, %11 ]
  %.041 = phi i32 [ 1, %2 ], [ %13, %11 ]
  %5 = fdiv float f0x40490FDB, %.032
  %6 = call float @Cos(float noundef %5)
  %7 = fmul float %6, 2.000000e+00
  %8 = fdiv float 1.000000e+00, %7
  %9 = zext nneg i32 %.041 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %9
  store float %8, ptr %10, align 4
  br label %11

11:                                               ; preds = %4
  %12 = fadd float %.032, %.032
  %13 = add nuw nsw i32 %.041, 1
  %14 = icmp samesign ult i32 %13, 26
  br i1 %14, label %4, label %15, !llvm.loop !10

15:                                               ; preds = %11
  %16 = sdiv i32 %0, 2
  %17 = sdiv i32 %0, 4
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %18, align 4
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %19, align 4
  %20 = sext i32 %17 to i64
  %21 = getelementptr [8 x i8], ptr %1, i64 %20
  %22 = getelementptr i8, ptr %21, i64 8
  store float 0.000000e+00, ptr %22, align 4
  %23 = getelementptr i8, ptr %21, i64 12
  store float 1.000000e+00, ptr %23, align 4
  %24 = sext i32 %16 to i64
  %25 = getelementptr [8 x i8], ptr %1, i64 %24
  %26 = getelementptr i8, ptr %25, i64 8
  store float -1.000000e+00, ptr %26, align 4
  %27 = getelementptr i8, ptr %25, i64 12
  store float 0.000000e+00, ptr %27, align 4
  br label %28

28:                                               ; preds = %62, %15
  %.02 = phi i32 [ 1, %15 ], [ %61, %62 ]
  %.0 = phi i32 [ %17, %15 ], [ %29, %62 ]
  %29 = sdiv i32 %.0, 2
  br label %30

30:                                               ; preds = %57, %28
  %.01 = phi i32 [ %29, %28 ], [ %58, %57 ]
  %31 = sext i32 %.02 to i64
  %32 = getelementptr inbounds [4 x i8], ptr %3, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = add nsw i32 %.01, %29
  %35 = sext i32 %34 to i64
  %36 = getelementptr [8 x i8], ptr %1, i64 %35
  %37 = getelementptr i8, ptr %36, i64 8
  %38 = load float, ptr %37, align 4
  %39 = sub nsw i32 %.01, %29
  %40 = sext i32 %39 to i64
  %41 = getelementptr [8 x i8], ptr %1, i64 %40
  %42 = getelementptr i8, ptr %41, i64 8
  %43 = load float, ptr %42, align 4
  %44 = fadd float %38, %43
  %45 = fmul float %33, %44
  %46 = sext i32 %.01 to i64
  %47 = getelementptr [8 x i8], ptr %1, i64 %46
  %48 = getelementptr i8, ptr %47, i64 8
  store float %45, ptr %48, align 4
  %49 = load float, ptr %32, align 4
  %50 = getelementptr i8, ptr %36, i64 12
  %51 = load float, ptr %50, align 4
  %52 = getelementptr i8, ptr %41, i64 12
  %53 = load float, ptr %52, align 4
  %54 = fadd float %51, %53
  %55 = fmul float %49, %54
  %56 = getelementptr i8, ptr %47, i64 12
  store float %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %30
  %58 = add nsw i32 %.01, %.0
  %.not = icmp sgt i32 %58, %16
  br i1 %.not, label %59, label %30, !llvm.loop !11

59:                                               ; preds = %57
  %60 = add nsw i32 %.02, 1
  %61 = call i32 @Min0(i32 noundef %60, i32 noundef 25)
  br label %62

62:                                               ; preds = %59
  %63 = icmp sgt i32 %.0, 3
  br i1 %63, label %28, label %64, !llvm.loop !12

64:                                               ; preds = %62
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
  %.04 = phi i32 [ 1, %7 ], [ %.lcssa, %59 ]
  %.03 = phi i32 [ %.01, %7 ], [ %60, %59 ]
  %.02 = phi i32 [ 0, %7 ], [ %.03, %59 ]
  br label %9

9:                                                ; preds = %57, %8
  %.1 = phi i32 [ %.04, %8 ], [ %56, %57 ]
  %10 = sext i32 %.1 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %1, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = add nsw i32 %6, %.1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %1, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %12, %16
  %18 = add nsw i32 %.1, %.02
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %2, i64 %19
  store float %17, ptr %20, align 4
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %24 = load float, ptr %23, align 4
  %25 = fadd float %22, %24
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 4
  store float %25, ptr %26, align 4
  %27 = sext i32 %.02 to i64
  %28 = getelementptr [8 x i8], ptr %3, i64 %27
  %29 = getelementptr i8, ptr %28, i64 8
  %30 = load float, ptr %29, align 4
  %31 = load float, ptr %11, align 4
  %32 = load float, ptr %15, align 4
  %33 = fsub float %31, %32
  %34 = getelementptr i8, ptr %28, i64 12
  %35 = load float, ptr %34, align 4
  %36 = load float, ptr %21, align 4
  %37 = load float, ptr %23, align 4
  %38 = fsub float %36, %37
  %39 = fneg float %38
  %40 = fmul float %35, %39
  %41 = call float @llvm.fmuladd.f32(float %30, float %33, float %40)
  %42 = add nsw i32 %.1, %.03
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %2, i64 %43
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
  %55 = getelementptr inbounds nuw i8, ptr %44, i64 4
  store float %54, ptr %55, align 4
  %56 = add nsw i32 %.1, 1
  br label %57

57:                                               ; preds = %9
  %.not.not = icmp slt i32 %.1, %.03
  br i1 %.not.not, label %9, label %58, !llvm.loop !13

58:                                               ; preds = %57
  %.lcssa = phi i32 [ %56, %57 ]
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
  %.not34 = icmp sgt i32 1, %0
  br i1 %.not34, label %84, label %.lr.ph

.lr.ph:                                           ; preds = %72
  br label %73

73:                                               ; preds = %.lr.ph, %82
  %.25 = phi i32 [ 1, %.lr.ph ], [ %83, %82 ]
  %74 = zext nneg i32 %.25 to i64
  %75 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %74
  %76 = load float, ptr %75, align 4
  %77 = fmul float %4, %76
  store float %77, ptr %75, align 4
  %78 = fneg float %4
  %79 = getelementptr inbounds nuw i8, ptr %75, i64 4
  %80 = load float, ptr %79, align 4
  %81 = fmul float %80, %78
  store float %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %73
  %83 = add nuw nsw i32 %.25, 1
  %.not3 = icmp sgt i32 %83, %0
  br i1 %.not3, label %._crit_edge, label %73, !llvm.loop !17

._crit_edge:                                      ; preds = %82
  br label %84

84:                                               ; preds = %._crit_edge, %72
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

2:                                                ; preds = %0, %13
  %.01 = phi i32 [ 1, %0 ], [ %14, %13 ]
  %3 = load i32, ptr @seed, align 4
  store i32 %3, ptr %1, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zr)
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zi)
  %5 = load i32, ptr %1, align 4
  store i32 %5, ptr @seed, align 4
  %6 = load float, ptr @zr, align 4
  %7 = call float @llvm.fmuladd.f32(float %6, float 2.000000e+01, float -1.000000e+01)
  %8 = zext nneg i32 %.01 to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %8
  store float %7, ptr %9, align 8
  %10 = load float, ptr @zi, align 4
  %11 = call float @llvm.fmuladd.f32(float %10, float 2.000000e+01, float -1.000000e+01)
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %2
  %14 = add nuw nsw i32 %.01, 1
  %15 = icmp samesign ult i32 %14, 257
  br i1 %15, label %2, label %16, !llvm.loop !18

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %18
  %.12 = phi i32 [ 1, %16 ], [ %19, %18 ]
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.12, 1
  %20 = icmp samesign ult i32 %19, 21
  br i1 %20, label %17, label %21, !llvm.loop !19

21:                                               ; preds = %18
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
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
  %3 = add nuw nsw i32 %.01, 1
  %4 = icmp samesign ult i32 %3, 10
  br i1 %4, label %1, label %5, !llvm.loop !20

5:                                                ; preds = %2
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
