; ModuleID = 'results\paper_full\Stanford_IntMM\Stanford_IntMM.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/IntMM.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4

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
define dso_local void @Initmatrix(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  br label %5

5:                                                ; preds = %25, %1
  %storemerge = phi i32 [ 1, %1 ], [ %27, %25 ]
  store i32 %storemerge, ptr %3, align 4
  %6 = icmp slt i32 %storemerge, 41
  br i1 %6, label %7, label %28

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %21, %7
  %storemerge1 = phi i32 [ 1, %7 ], [ %23, %21 ]
  store i32 %storemerge1, ptr %4, align 4
  %9 = icmp slt i32 %storemerge1, 41
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  %11 = call i32 @Rand()
  %.fr = freeze i32 %11
  %12 = srem i32 %.fr, 120
  %13 = add nsw i32 %12, -60
  %14 = load ptr, ptr %2, align 8
  %15 = load i32, ptr %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [164 x i8], ptr %14, i64 %16
  %18 = load i32, ptr %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %17, i64 %19
  store i32 %13, ptr %20, align 4
  br label %21

21:                                               ; preds = %10
  %22 = load i32, ptr %4, align 4
  %23 = add nsw i32 %22, 1
  br label %8, !llvm.loop !7

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %3, align 4
  %27 = add nsw i32 %26, 1
  br label %5, !llvm.loop !9

28:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Innerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
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
  store i32 0, ptr %0, align 4
  br label %12

12:                                               ; preds = %32, %5
  %storemerge = phi i32 [ 1, %5 ], [ %34, %32 ]
  store i32 %storemerge, ptr %11, align 4
  %13 = icmp slt i32 %storemerge, 41
  br i1 %13, label %14, label %35

14:                                               ; preds = %12
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %7, align 8
  %18 = load i32, ptr %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [164 x i8], ptr %17, i64 %19
  %21 = sext i32 %storemerge to i64
  %22 = getelementptr inbounds [4 x i8], ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds [164 x i8], ptr %24, i64 %21
  %26 = load i32, ptr %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = mul nsw i32 %23, %29
  %31 = add nsw i32 %16, %30
  store i32 %31, ptr %15, align 4
  br label %32

32:                                               ; preds = %14
  %33 = load i32, ptr %11, align 4
  %34 = add nsw i32 %33, 1
  br label %12, !llvm.loop !10

35:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Intmm(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @Initrand()
  call void @Initmatrix(ptr noundef nonnull @ima)
  call void @Initmatrix(ptr noundef nonnull @imb)
  br label %5

5:                                                ; preds = %20, %1
  %storemerge = phi i32 [ 1, %1 ], [ %22, %20 ]
  store i32 %storemerge, ptr %3, align 4
  %6 = icmp slt i32 %storemerge, 41
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %16, %7
  %storemerge1 = phi i32 [ 1, %7 ], [ %18, %16 ]
  store i32 %storemerge1, ptr %4, align 4
  %9 = icmp slt i32 %storemerge1, 41
  br i1 %9, label %10, label %19

10:                                               ; preds = %8
  %11 = load i32, ptr %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [164 x i8], ptr @imr, i64 %12
  %14 = sext i32 %storemerge1 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %13, i64 %14
  call void @Innerproduct(ptr noundef nonnull %15, ptr noundef nonnull @ima, ptr noundef nonnull @imb, i32 noundef %11, i32 noundef %storemerge1)
  br label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, 1
  br label %8, !llvm.loop !11

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19
  %21 = load i32, ptr %3, align 4
  %22 = add nsw i32 %21, 1
  br label %5, !llvm.loop !12

23:                                               ; preds = %5
  %24 = load i32, ptr %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr [164 x i8], ptr @imr, i64 %25
  %27 = getelementptr [4 x i8], ptr %26, i64 %25
  %28 = getelementptr i8, ptr %27, i64 168
  %29 = load i32, ptr %28, align 4
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %29) #2
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %storemerge = phi i32 [ 0, %0 ], [ %7, %5 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = icmp slt i32 %storemerge, 10
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  call void @Intmm(i32 noundef %storemerge)
  br label %5

5:                                                ; preds = %4
  %6 = load i32, ptr %1, align 4
  %7 = add nsw i32 %6, 1
  br label %2, !llvm.loop !13

8:                                                ; preds = %2
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/IntMM.c", directory: "E:/Phase Ordering/v3")
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
