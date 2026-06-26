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
  br label %2

2:                                                ; preds = %25, %1
  %.lcssa27 = phi i32 [ %.lcssa2, %25 ], [ undef, %1 ]
  %.lcssa6 = phi i32 [ %.lcssa, %25 ], [ undef, %1 ]
  %3 = phi i32 [ %26, %25 ], [ 1, %1 ]
  %4 = icmp sle i32 %3, 40
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [41 x double], ptr %0, i64 %6
  br label %8

8:                                                ; preds = %22, %5
  %9 = phi i32 [ %13, %22 ], [ %.lcssa27, %5 ]
  %10 = phi i32 [ %23, %22 ], [ 1, %5 ]
  %11 = icmp sle i32 %10, 40
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = call i32 @Rand()
  %14 = sdiv i32 %13, 120
  %15 = mul nsw i32 %14, 120
  %16 = sub nsw i32 %13, %15
  %17 = sub nsw i32 %16, 60
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 3.000000e+00
  %20 = sext i32 %10 to i64
  %21 = getelementptr inbounds [41 x double], ptr %7, i64 0, i64 %20
  store double %19, ptr %21, align 8
  br label %22

22:                                               ; preds = %12
  %23 = add nsw i32 %10, 1
  br label %8, !llvm.loop !7

24:                                               ; preds = %8
  %.lcssa2 = phi i32 [ %9, %8 ]
  %.lcssa = phi i32 [ %10, %8 ]
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %3, 1
  br label %2, !llvm.loop !9

27:                                               ; preds = %2
  %.lcssa27.lcssa = phi i32 [ %.lcssa27, %2 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %2 ]
  %.lcssa4 = phi i32 [ %3, %2 ]
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInnerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  store double 0.000000e+00, ptr %0, align 8
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [41 x double], ptr %1, i64 %6
  %8 = sext i32 %4 to i64
  %invariant.gep = getelementptr [41 x double], ptr %2, i64 0, i64 %8
  br label %9

9:                                                ; preds = %20, %5
  %10 = phi i32 [ %21, %20 ], [ 1, %5 ]
  %11 = icmp sle i32 %10, 40
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load double, ptr %0, align 8
  %14 = sext i32 %10 to i64
  %15 = getelementptr inbounds [41 x double], ptr %7, i64 0, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = sext i32 %10 to i64
  %gep = getelementptr [41 x double], ptr %invariant.gep, i64 %17
  %18 = load double, ptr %gep, align 8
  %19 = call double @llvm.fmuladd.f64(double %16, double %18, double %13)
  store double %19, ptr %0, align 8
  br label %20

20:                                               ; preds = %12
  %21 = add nsw i32 %10, 1
  br label %9, !llvm.loop !10

22:                                               ; preds = %9
  %.lcssa = phi i32 [ %10, %9 ]
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Mm(i32 noundef %0) #0 {
  call void @Initrand()
  call void @rInitmatrix(ptr noundef @rma)
  call void @rInitmatrix(ptr noundef @rmb)
  br label %2

2:                                                ; preds = %17, %1
  %.lcssa4 = phi i32 [ %.lcssa, %17 ], [ undef, %1 ]
  %3 = phi i32 [ %18, %17 ], [ 1, %1 ]
  %4 = icmp sle i32 %3, 40
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %6
  br label %8

8:                                                ; preds = %14, %5
  %9 = phi i32 [ %15, %14 ], [ 1, %5 ]
  %10 = icmp sle i32 %9, 40
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [41 x double], ptr %7, i64 0, i64 %12
  call void @rInnerproduct(ptr noundef %13, ptr noundef @rma, ptr noundef @rmb, i32 noundef %3, i32 noundef %9)
  br label %14

14:                                               ; preds = %11
  %15 = add nsw i32 %9, 1
  br label %8, !llvm.loop !11

16:                                               ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
  br label %17

17:                                               ; preds = %16
  %18 = add nsw i32 %3, 1
  br label %2, !llvm.loop !12

19:                                               ; preds = %2
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %2 ]
  %.lcssa2 = phi i32 [ %3, %2 ]
  %20 = add nsw i32 %0, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %21
  %23 = add nsw i32 %0, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [41 x double], ptr %22, i64 0, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %26)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %3 = icmp slt i32 %2, 10
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  call void @Mm(i32 noundef %2)
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %2, 1
  br label %1, !llvm.loop !13

7:                                                ; preds = %1
  %.lcssa = phi i32 [ %2, %1 ]
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
