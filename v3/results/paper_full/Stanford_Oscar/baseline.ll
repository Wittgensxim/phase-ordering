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

2:                                                ; preds = %1, %18
  %.07 = phi float [ %0, %1 ], [ %4, %18 ]
  %.016 = phi i32 [ 2, %1 ], [ %19, %18 ]
  %.025 = phi i32 [ 1, %1 ], [ %3, %18 ]
  %.034 = phi float [ 1.000000e+00, %1 ], [ %.1, %18 ]
  %3 = mul nuw nsw i32 %.025, %.016
  %4 = fmul float %.07, %0
  %5 = and i32 %.016, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = and i32 %.016, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = uitofp nneg i32 %3 to float
  %12 = fdiv float %4, %11
  %13 = fadd float %.034, %12
  br label %18

14:                                               ; preds = %7
  %15 = uitofp nneg i32 %3 to float
  %16 = fdiv float %4, %15
  %17 = fsub float %.034, %16
  br label %18

18:                                               ; preds = %2, %14, %10
  %.1 = phi float [ %.034, %2 ], [ %13, %10 ], [ %17, %14 ]
  %19 = add nuw nsw i32 %.016, 1
  %20 = icmp samesign ult i32 %19, 11
  br i1 %20, label %2, label %21, !llvm.loop !7

21:                                               ; preds = %18
  %.03.lcssa = phi float [ %.1, %18 ]
  ret float %.03.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %0, %1
  %. = select i1 %3, i32 %0, i32 %1
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %putchar = call i32 @putchar(i32 10)
  br label %5

5:                                                ; preds = %5, %4
  %.0 = phi i32 [ %1, %4 ], [ %23, %5 ]
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
  %23 = add nsw i32 %14, %3
  %.not = icmp sgt i32 %23, %2
  br i1 %.not, label %24, label %5, !llvm.loop !9

24:                                               ; preds = %5
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

4:                                                ; preds = %2, %4
  %.0310 = phi float [ 4.000000e+00, %2 ], [ %11, %4 ]
  %.049 = phi i32 [ 1, %2 ], [ %12, %4 ]
  %5 = fdiv float f0x40490FDB, %.0310
  %6 = call float @Cos(float noundef %5)
  %7 = fmul float %6, 2.000000e+00
  %8 = fdiv float 1.000000e+00, %7
  %9 = zext nneg i32 %.049 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %9
  store float %8, ptr %10, align 4
  %11 = fadd float %.0310, %.0310
  %12 = add nuw nsw i32 %.049, 1
  %13 = icmp samesign ult i32 %12, 26
  br i1 %13, label %4, label %14, !llvm.loop !10

14:                                               ; preds = %4
  %15 = sdiv i32 %0, 2
  %16 = sdiv i32 %0, 4
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %17, align 4
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %18, align 4
  %19 = sext i32 %16 to i64
  %20 = getelementptr [8 x i8], ptr %1, i64 %19
  %21 = getelementptr i8, ptr %20, i64 8
  store float 0.000000e+00, ptr %21, align 4
  %22 = getelementptr i8, ptr %20, i64 12
  store float 1.000000e+00, ptr %22, align 4
  %23 = sext i32 %15 to i64
  %24 = getelementptr [8 x i8], ptr %1, i64 %23
  %25 = getelementptr i8, ptr %24, i64 8
  store float -1.000000e+00, ptr %25, align 4
  %26 = getelementptr i8, ptr %24, i64 12
  store float 0.000000e+00, ptr %26, align 4
  br label %27

27:                                               ; preds = %53, %14
  %.02 = phi i32 [ 1, %14 ], [ %55, %53 ]
  %.0 = phi i32 [ %16, %14 ], [ %28, %53 ]
  %28 = sdiv i32 %.0, 2
  %.phi.trans.insert = sext i32 %.02 to i64
  %.phi.trans.insert5 = getelementptr inbounds [4 x i8], ptr %3, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert5, align 4
  br label %29

29:                                               ; preds = %29, %27
  %.01 = phi i32 [ %28, %27 ], [ %52, %29 ]
  %30 = add nsw i32 %.01, %28
  %31 = sext i32 %30 to i64
  %32 = getelementptr [8 x i8], ptr %1, i64 %31
  %33 = getelementptr i8, ptr %32, i64 8
  %34 = load float, ptr %33, align 4
  %35 = sub nsw i32 %.01, %28
  %36 = sext i32 %35 to i64
  %37 = getelementptr [8 x i8], ptr %1, i64 %36
  %38 = getelementptr i8, ptr %37, i64 8
  %39 = load float, ptr %38, align 4
  %40 = fadd float %34, %39
  %41 = fmul float %.pre, %40
  %42 = sext i32 %.01 to i64
  %43 = getelementptr [8 x i8], ptr %1, i64 %42
  %44 = getelementptr i8, ptr %43, i64 8
  store float %41, ptr %44, align 4
  %45 = getelementptr i8, ptr %32, i64 12
  %46 = load float, ptr %45, align 4
  %47 = getelementptr i8, ptr %37, i64 12
  %48 = load float, ptr %47, align 4
  %49 = fadd float %46, %48
  %50 = fmul float %.pre, %49
  %51 = getelementptr i8, ptr %43, i64 12
  store float %50, ptr %51, align 4
  %52 = add nsw i32 %.01, %.0
  %.not = icmp sgt i32 %52, %15
  br i1 %.not, label %53, label %29, !llvm.loop !11

53:                                               ; preds = %29
  %54 = add nsw i32 %.02, 1
  %55 = call i32 @Min0(i32 noundef %54, i32 noundef 25)
  %56 = icmp sgt i32 %.0, 3
  br i1 %56, label %27, label %57, !llvm.loop !12

57:                                               ; preds = %53
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %65, %5
  %.01 = phi i32 [ 1, %5 ], [ %66, %65 ]
  br label %8

8:                                                ; preds = %57, %7
  %.04 = phi i32 [ 1, %7 ], [ %.lcssa, %57 ]
  %.03 = phi i32 [ %.01, %7 ], [ %58, %57 ]
  %.02 = phi i32 [ 0, %7 ], [ %.03, %57 ]
  br label %9

9:                                                ; preds = %9, %8
  %.1 = phi i32 [ %.04, %8 ], [ %56, %9 ]
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
  %.not.not = icmp slt i32 %.1, %.03
  br i1 %.not.not, label %9, label %57, !llvm.loop !13

57:                                               ; preds = %9
  %.lcssa = phi i32 [ %56, %9 ]
  %58 = add nsw i32 %.03, %.01
  %.not = icmp sgt i32 %58, %6
  br i1 %.not, label %.preheader11, label %8, !llvm.loop !14

.preheader11:                                     ; preds = %57
  br label %59

59:                                               ; preds = %.preheader11, %59
  %.0 = phi i32 [ %64, %59 ], [ 1, %.preheader11 ]
  %60 = zext nneg i32 %.0 to i64
  %61 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %60
  %62 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %60
  %63 = load i64, ptr %62, align 4
  store i64 %63, ptr %61, align 4
  %64 = add nuw nsw i32 %.0, 1
  %.not5.not = icmp slt i32 %.0, %0
  br i1 %.not5.not, label %59, label %65, !llvm.loop !15

65:                                               ; preds = %59
  %66 = shl nsw i32 %.01, 1
  %.not6 = icmp sgt i32 %66, %6
  br i1 %.not6, label %.preheader, label %7, !llvm.loop !16

.preheader:                                       ; preds = %65
  %.not712 = icmp sgt i32 1, %0
  br i1 %.not712, label %77, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %67

67:                                               ; preds = %.lr.ph, %67
  %.213 = phi i32 [ 1, %.lr.ph ], [ %76, %67 ]
  %68 = zext nneg i32 %.213 to i64
  %69 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %68
  %70 = load float, ptr %69, align 4
  %71 = fmul float %4, %70
  store float %71, ptr %69, align 4
  %72 = fneg float %4
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 4
  %74 = load float, ptr %73, align 4
  %75 = fmul float %74, %72
  store float %75, ptr %73, align 4
  %76 = add nuw nsw i32 %.213, 1
  %.not7 = icmp sgt i32 %76, %0
  br i1 %.not7, label %._crit_edge, label %67, !llvm.loop !17

._crit_edge:                                      ; preds = %67
  br label %77

77:                                               ; preds = %._crit_edge, %.preheader
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

.preheader:                                       ; preds = %2
  br label %15

2:                                                ; preds = %0, %2
  %.01 = phi i32 [ 1, %0 ], [ %13, %2 ]
  %3 = phi i32 [ 5767, %0 ], [ %5, %2 ]
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
  %13 = add nuw nsw i32 %.01, 1
  %14 = icmp samesign ult i32 %13, 257
  br i1 %14, label %2, label %.preheader, !llvm.loop !18

15:                                               ; preds = %.preheader, %15
  %.12 = phi i32 [ 1, %.preheader ], [ %16, %15 ]
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  %16 = add nuw nsw i32 %.12, 1
  %17 = icmp samesign ult i32 %16, 21
  br i1 %17, label %15, label %18, !llvm.loop !19

18:                                               ; preds = %15
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %.01 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Oscar()
  %2 = add nuw nsw i32 %.01, 1
  %3 = icmp samesign ult i32 %2, 10
  br i1 %3, label %1, label %4, !llvm.loop !20

4:                                                ; preds = %1
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
