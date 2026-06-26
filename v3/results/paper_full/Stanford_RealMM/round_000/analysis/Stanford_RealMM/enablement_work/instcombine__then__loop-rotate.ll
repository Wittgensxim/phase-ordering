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
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 1, ptr %3, align 4
  br label %5

5:                                                ; preds = %1, %24
  store i32 1, ptr %4, align 4
  br label %6

6:                                                ; preds = %5, %19
  %7 = call i32 @Rand()
  %.fr = freeze i32 %7
  %8 = srem i32 %.fr, 120
  %9 = add nsw i32 %8, -60
  %10 = sitofp i32 %9 to double
  %11 = fdiv double %10, 3.000000e+00
  %12 = load ptr, ptr %2, align 8
  %13 = load i32, ptr %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [328 x i8], ptr %12, i64 %14
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i8], ptr %15, i64 %17
  store double %11, ptr %18, align 8
  br label %19

19:                                               ; preds = %6
  %20 = load i32, ptr %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %4, align 4
  %22 = icmp slt i32 %21, 41
  br i1 %22, label %6, label %23, !llvm.loop !7

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %3, align 4
  %27 = icmp slt i32 %26, 41
  br i1 %27, label %5, label %28, !llvm.loop !9

28:                                               ; preds = %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInnerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  store double 0.000000e+00, ptr %0, align 8
  store i32 1, ptr %11, align 4
  br label %12

12:                                               ; preds = %5, %32
  %13 = load ptr, ptr %6, align 8
  %14 = load double, ptr %13, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = load i32, ptr %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [328 x i8], ptr %15, i64 %17
  %19 = load i32, ptr %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i8], ptr %18, i64 %20
  %22 = load double, ptr %21, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = sext i32 %19 to i64
  %25 = getelementptr inbounds [328 x i8], ptr %23, i64 %24
  %26 = load i32, ptr %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %25, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fmuladd.f64(double %22, double %29, double %14)
  %31 = load ptr, ptr %6, align 8
  store double %30, ptr %31, align 8
  br label %32

32:                                               ; preds = %12
  %33 = load i32, ptr %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %11, align 4
  %35 = icmp slt i32 %34, 41
  br i1 %35, label %12, label %36, !llvm.loop !10

36:                                               ; preds = %32
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Mm(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @Initrand()
  call void @rInitmatrix(ptr noundef nonnull @rma)
  call void @rInitmatrix(ptr noundef nonnull @rmb)
  store i32 1, ptr %3, align 4
  br label %5

5:                                                ; preds = %1, %18
  store i32 1, ptr %4, align 4
  br label %6

6:                                                ; preds = %5, %13
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [328 x i8], ptr @rmr, i64 %8
  %10 = load i32, ptr %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i8], ptr %9, i64 %11
  call void @rInnerproduct(ptr noundef nonnull %12, ptr noundef nonnull @rma, ptr noundef nonnull @rmb, i32 noundef %7, i32 noundef %10)
  br label %13

13:                                               ; preds = %6
  %14 = load i32, ptr %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %4, align 4
  %16 = icmp slt i32 %15, 41
  br i1 %16, label %6, label %17, !llvm.loop !11

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17
  %19 = load i32, ptr %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %3, align 4
  %21 = icmp slt i32 %20, 41
  br i1 %21, label %5, label %22, !llvm.loop !12

22:                                               ; preds = %18
  %23 = load i32, ptr %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr [328 x i8], ptr @rmr, i64 %24
  %26 = sext i32 %23 to i64
  %27 = getelementptr [8 x i8], ptr %25, i64 %26
  %28 = getelementptr i8, ptr %27, i64 336
  %29 = load double, ptr %28, align 8
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %29) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %4
  %3 = load i32, ptr %1, align 4
  call void @Mm(i32 noundef %3)
  br label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %1, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %2, label %8, !llvm.loop !13

8:                                                ; preds = %4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
