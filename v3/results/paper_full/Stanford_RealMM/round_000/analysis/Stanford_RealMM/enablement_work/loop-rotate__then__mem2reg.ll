; ModuleID = 'results\paper_full\Stanford_RealMM\Stanford_RealMM.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/RealMM.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { double, double }

@seed = dso_local global i32 0, align 4
@rma = dso_local global [41 x [41 x double]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x double]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x double]] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@value = dso_local global double 0.000000e+00, align 8
@fixed = dso_local global double 0.000000e+00, align 8
@floated = dso_local global double 0.000000e+00, align 8
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
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global double 0.000000e+00, align 8
@zi = dso_local global double 0.000000e+00, align 8

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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInitmatrix(ptr noundef %0) #0 {
  %2 = icmp sle i32 1, 40
  br i1 %2, label %.lr.ph2, label %24

.lr.ph2:                                          ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph2, %21
  %.04 = phi i32 [ 1, %.lr.ph2 ], [ %22, %21 ]
  %4 = icmp sle i32 1, 40
  br i1 %4, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %17
  %.0 = phi i32 [ 1, %.lr.ph ], [ %18, %17 ]
  %6 = call i32 @Rand()
  %7 = sdiv i32 %6, 120
  %8 = mul nsw i32 %7, 120
  %9 = sub nsw i32 %6, %8
  %10 = sub nsw i32 %9, 60
  %11 = sitofp i32 %10 to double
  %12 = fdiv double %11, 3.000000e+00
  %13 = sext i32 %.04 to i64
  %14 = getelementptr inbounds [41 x double], ptr %0, i64 %13
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds [41 x double], ptr %14, i64 0, i64 %15
  store double %12, ptr %16, align 8
  br label %17

17:                                               ; preds = %5
  %18 = add nsw i32 %.0, 1
  %19 = icmp sle i32 %18, 40
  br i1 %19, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %17
  br label %20

20:                                               ; preds = %._crit_edge, %3
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %.04, 1
  %23 = icmp sle i32 %22, 40
  br i1 %23, label %3, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %21
  br label %24

24:                                               ; preds = %._crit_edge3, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInnerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  store double 0.000000e+00, ptr %0, align 8
  %6 = icmp sle i32 1, 40
  br i1 %6, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %5
  br label %7

7:                                                ; preds = %.lr.ph, %20
  %.0 = phi i32 [ 1, %.lr.ph ], [ %21, %20 ]
  %8 = load double, ptr %0, align 8
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds [41 x double], ptr %1, i64 %9
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [41 x double], ptr %10, i64 0, i64 %11
  %13 = load double, ptr %12, align 8
  %14 = sext i32 %.0 to i64
  %15 = getelementptr inbounds [41 x double], ptr %2, i64 %14
  %16 = sext i32 %4 to i64
  %17 = getelementptr inbounds [41 x double], ptr %15, i64 0, i64 %16
  %18 = load double, ptr %17, align 8
  %19 = call double @llvm.fmuladd.f64(double %13, double %18, double %8)
  store double %19, ptr %0, align 8
  br label %20

20:                                               ; preds = %7
  %21 = add nsw i32 %.0, 1
  %22 = icmp sle i32 %21, 40
  br i1 %22, label %7, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %20
  br label %23

23:                                               ; preds = %._crit_edge, %5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Mm(i32 noundef %0) #0 {
  call void @Initrand()
  call void @rInitmatrix(ptr noundef @rma)
  call void @rInitmatrix(ptr noundef @rmb)
  %2 = icmp sle i32 1, 40
  br i1 %2, label %.lr.ph2, label %17

.lr.ph2:                                          ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph2, %14
  %.04 = phi i32 [ 1, %.lr.ph2 ], [ %15, %14 ]
  %4 = icmp sle i32 1, 40
  br i1 %4, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %10
  %.0 = phi i32 [ 1, %.lr.ph ], [ %11, %10 ]
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %6
  %8 = sext i32 %.0 to i64
  %9 = getelementptr inbounds [41 x double], ptr %7, i64 0, i64 %8
  call void @rInnerproduct(ptr noundef %9, ptr noundef @rma, ptr noundef @rmb, i32 noundef %.04, i32 noundef %.0)
  br label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %.0, 1
  %12 = icmp sle i32 %11, 40
  br i1 %12, label %5, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %10
  br label %13

13:                                               ; preds = %._crit_edge, %3
  br label %14

14:                                               ; preds = %13
  %15 = add nsw i32 %.04, 1
  %16 = icmp sle i32 %15, 40
  br i1 %16, label %3, label %._crit_edge3, !llvm.loop !12

._crit_edge3:                                     ; preds = %14
  br label %17

17:                                               ; preds = %._crit_edge3, %1
  %18 = add nsw i32 %0, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %19
  %21 = add nsw i32 %0, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [41 x double], ptr %20, i64 0, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %24)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = icmp slt i32 0, 10
  br i1 %1, label %.lr.ph, label %6

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %3
  %.0 = phi i32 [ 0, %.lr.ph ], [ %4, %3 ]
  call void @Mm(i32 noundef %.0)
  br label %3

3:                                                ; preds = %2
  %4 = add nsw i32 %.0, 1
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %2, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %3
  br label %6

6:                                                ; preds = %._crit_edge, %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/RealMM.c", directory: "E:/Phase Ordering/v3")
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
