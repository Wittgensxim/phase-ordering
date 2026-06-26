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
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInitmatrix(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %22, %1
  %3 = phi i32 [ %23, %22 ], [ 1, %1 ]
  %4 = icmp sle i32 %3, 40
  br i1 %4, label %5, label %24

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %9, %5
  %7 = phi i32 [ %21, %9 ], [ 1, %5 ]
  %8 = icmp sle i32 %7, 40
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = call i32 @Rand()
  %11 = sdiv i32 %10, 120
  %12 = mul nsw i32 %11, 120
  %13 = sub nsw i32 %10, %12
  %14 = sub nsw i32 %13, 60
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %15, 3.000000e+00
  %17 = sext i32 %3 to i64
  %18 = getelementptr inbounds [41 x double], ptr %0, i64 %17
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds [41 x double], ptr %18, i64 0, i64 %19
  store double %16, ptr %20, align 8
  %21 = add nsw i32 %7, 1
  br label %6, !llvm.loop !7

22:                                               ; preds = %6
  %23 = add nsw i32 %3, 1
  br label %2, !llvm.loop !9

24:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInnerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  store double 0.000000e+00, ptr %0, align 8
  br label %6

6:                                                ; preds = %10, %5
  %7 = phi double [ %20, %10 ], [ 0.000000e+00, %5 ]
  %8 = phi i32 [ %21, %10 ], [ 1, %5 ]
  %9 = icmp sle i32 %8, 40
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds [41 x double], ptr %1, i64 %11
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds [41 x double], ptr %12, i64 0, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = getelementptr inbounds [41 x double], ptr %2, i64 %13
  %17 = sext i32 %4 to i64
  %18 = getelementptr inbounds [41 x double], ptr %16, i64 0, i64 %17
  %19 = load double, ptr %18, align 8
  %20 = call double @llvm.fmuladd.f64(double %15, double %19, double %7)
  store double %20, ptr %0, align 8
  %21 = add nsw i32 %8, 1
  br label %6, !llvm.loop !10

22:                                               ; preds = %6
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

2:                                                ; preds = %15, %1
  %3 = phi i32 [ %16, %15 ], [ 1, %1 ]
  %4 = icmp sle i32 %3, 40
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %9, %5
  %7 = phi i32 [ %14, %9 ], [ 1, %5 ]
  %8 = icmp sle i32 %7, 40
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %10
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds [41 x double], ptr %11, i64 0, i64 %12
  call void @rInnerproduct(ptr noundef %13, ptr noundef @rma, ptr noundef @rmb, i32 noundef %3, i32 noundef %7)
  %14 = add nsw i32 %7, 1
  br label %6, !llvm.loop !11

15:                                               ; preds = %6
  %16 = add nsw i32 %3, 1
  br label %2, !llvm.loop !12

17:                                               ; preds = %2
  %18 = add nsw i32 %0, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %19
  %21 = getelementptr inbounds [41 x double], ptr %20, i64 0, i64 %19
  %22 = load double, ptr %21, align 8
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %22)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i32 %2, 10
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Mm(i32 noundef %2)
  %5 = add nsw i32 %2, 1
  br label %1, !llvm.loop !13

6:                                                ; preds = %1
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
