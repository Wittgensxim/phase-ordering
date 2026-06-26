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
  %5 = load ptr, ptr %2, align 8
  %.promoted = load i32, ptr %4, align 1
  br label %6

6:                                                ; preds = %24, %1
  %storemerge1.lcssa2 = phi i32 [ %.promoted, %1 ], [ %storemerge1.lcssa, %24 ]
  %storemerge = phi i32 [ 1, %1 ], [ %25, %24 ]
  %7 = icmp slt i32 %storemerge, 41
  br i1 %7, label %8, label %26

8:                                                ; preds = %6
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [328 x i8], ptr %5, i64 %9
  br label %11

11:                                               ; preds = %21, %8
  %storemerge1 = phi i32 [ 1, %8 ], [ %22, %21 ]
  %12 = icmp slt i32 %storemerge1, 41
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = call i32 @Rand()
  %.fr = freeze i32 %14
  %15 = srem i32 %.fr, 120
  %16 = add nsw i32 %15, -60
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 3.000000e+00
  %19 = sext i32 %storemerge1 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %10, i64 %19
  store double %18, ptr %20, align 8
  br label %21

21:                                               ; preds = %13
  %22 = add nsw i32 %storemerge1, 1
  br label %11, !llvm.loop !7

23:                                               ; preds = %11
  %storemerge1.lcssa = phi i32 [ %storemerge1, %11 ]
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %storemerge, 1
  br label %6, !llvm.loop !9

26:                                               ; preds = %6
  %storemerge1.lcssa2.lcssa = phi i32 [ %storemerge1.lcssa2, %6 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %6 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %storemerge1.lcssa2.lcssa, ptr %4, align 1
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
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load i32, ptr %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [328 x i8], ptr %13, i64 %15
  %17 = load ptr, ptr %8, align 8
  %18 = load i32, ptr %10, align 4
  %19 = sext i32 %18 to i64
  %invariant.gep = getelementptr [8 x i8], ptr %17, i64 %19
  %20 = load ptr, ptr %6, align 8
  br label %21

21:                                               ; preds = %31, %5
  %storemerge = phi i32 [ 1, %5 ], [ %32, %31 ]
  %22 = icmp slt i32 %storemerge, 41
  br i1 %22, label %23, label %33

23:                                               ; preds = %21
  %24 = load double, ptr %12, align 8
  %25 = sext i32 %storemerge to i64
  %26 = getelementptr inbounds [8 x i8], ptr %16, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = sext i32 %storemerge to i64
  %gep = getelementptr [328 x i8], ptr %invariant.gep, i64 %28
  %29 = load double, ptr %gep, align 8
  %30 = call double @llvm.fmuladd.f64(double %27, double %29, double %24)
  store double %30, ptr %20, align 8
  br label %31

31:                                               ; preds = %23
  %32 = add nsw i32 %storemerge, 1
  br label %21, !llvm.loop !10

33:                                               ; preds = %21
  %storemerge.lcssa = phi i32 [ %storemerge, %21 ]
  store i32 %storemerge.lcssa, ptr %11, align 4
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
  %.promoted = load i32, ptr %4, align 1
  br label %5

5:                                                ; preds = %18, %1
  %storemerge1.lcssa2 = phi i32 [ %.promoted, %1 ], [ %storemerge1.lcssa, %18 ]
  %storemerge = phi i32 [ 1, %1 ], [ %19, %18 ]
  %6 = icmp slt i32 %storemerge, 41
  br i1 %6, label %7, label %20

7:                                                ; preds = %5
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [328 x i8], ptr @rmr, i64 %8
  br label %10

10:                                               ; preds = %15, %7
  %storemerge1 = phi i32 [ 1, %7 ], [ %16, %15 ]
  %11 = icmp slt i32 %storemerge1, 41
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = sext i32 %storemerge1 to i64
  %14 = getelementptr inbounds [8 x i8], ptr %9, i64 %13
  call void @rInnerproduct(ptr noundef nonnull %14, ptr noundef nonnull @rma, ptr noundef nonnull @rmb, i32 noundef %storemerge, i32 noundef %storemerge1)
  br label %15

15:                                               ; preds = %12
  %16 = add nsw i32 %storemerge1, 1
  br label %10, !llvm.loop !11

17:                                               ; preds = %10
  %storemerge1.lcssa = phi i32 [ %storemerge1, %10 ]
  br label %18

18:                                               ; preds = %17
  %19 = add nsw i32 %storemerge, 1
  br label %5, !llvm.loop !12

20:                                               ; preds = %5
  %storemerge1.lcssa2.lcssa = phi i32 [ %storemerge1.lcssa2, %5 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %5 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %storemerge1.lcssa2.lcssa, ptr %4, align 1
  %21 = load i32, ptr %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr [328 x i8], ptr @rmr, i64 %22
  %24 = sext i32 %21 to i64
  %25 = getelementptr [8 x i8], ptr %23, i64 %24
  %26 = getelementptr i8, ptr %25, i64 336
  %27 = load double, ptr %26, align 8
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %27) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %5 ]
  %3 = icmp slt i32 %storemerge, 10
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @Mm(i32 noundef %storemerge)
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %storemerge, 1
  br label %2, !llvm.loop !13

7:                                                ; preds = %2
  %storemerge.lcssa = phi i32 [ %storemerge, %2 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
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
