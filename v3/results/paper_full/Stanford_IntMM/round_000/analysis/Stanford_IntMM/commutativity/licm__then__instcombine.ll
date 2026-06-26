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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %.promoted5 = load i32, ptr %3, align 4
  %.promoted = load i32, ptr %2, align 4
  br label %4

4:                                                ; preds = %23, %1
  %.lcssa27 = phi i32 [ %11, %23 ], [ %.promoted, %1 ]
  %.lcssa6 = phi i32 [ %12, %23 ], [ %.promoted5, %1 ]
  %5 = phi i32 [ %24, %23 ], [ 1, %1 ]
  %6 = icmp samesign ult i32 %5, 41
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [164 x i8], ptr %0, i64 %8
  br label %10

10:                                               ; preds = %20, %7
  %11 = phi i32 [ %.fr, %20 ], [ %.lcssa27, %7 ]
  %12 = phi i32 [ %21, %20 ], [ 1, %7 ]
  %13 = icmp samesign ult i32 %12, 41
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = call i32 @Rand()
  %.fr = freeze i32 %15
  %16 = srem i32 %.fr, 120
  %17 = add nsw i32 %16, -60
  %18 = zext nneg i32 %12 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %18
  store i32 %17, ptr %19, align 4
  br label %20

20:                                               ; preds = %14
  %21 = add nuw nsw i32 %12, 1
  br label %10, !llvm.loop !7

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !9

25:                                               ; preds = %4
  store i32 %.lcssa6, ptr %3, align 4
  store i32 %.lcssa27, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Innerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %4, ptr %9, align 4
  store i32 0, ptr %0, align 4
  store i32 1, ptr %10, align 4
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds [164 x i8], ptr %12, i64 %13
  %15 = load ptr, ptr %8, align 8
  %16 = load i32, ptr %9, align 4
  %17 = sext i32 %16 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %15, i64 %17
  %18 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %10, align 4
  br label %19

19:                                               ; preds = %31, %5
  %20 = phi i32 [ %32, %31 ], [ %.promoted, %5 ]
  %21 = icmp slt i32 %20, 41
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, ptr %11, align 4
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %14, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %20 to i64
  %gep = getelementptr [164 x i8], ptr %invariant.gep, i64 %27
  %28 = load i32, ptr %gep, align 4
  %29 = mul nsw i32 %26, %28
  %30 = add nsw i32 %23, %29
  store i32 %30, ptr %18, align 4
  br label %31

31:                                               ; preds = %22
  %32 = add nsw i32 %20, 1
  br label %19, !llvm.loop !10

33:                                               ; preds = %19
  store i32 %20, ptr %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Intmm(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @Initrand()
  call void @Initmatrix(ptr noundef nonnull @ima)
  call void @Initmatrix(ptr noundef nonnull @imb)
  %.promoted3 = load i32, ptr %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %.lcssa4 = phi i32 [ %11, %19 ], [ %.promoted3, %1 ]
  %5 = phi i32 [ %20, %19 ], [ 1, %1 ]
  %6 = icmp samesign ult i32 %5, 41
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [164 x i8], ptr @imr, i64 %8
  br label %10

10:                                               ; preds = %16, %7
  %11 = phi i32 [ %17, %16 ], [ 1, %7 ]
  %12 = icmp samesign ult i32 %11, 41
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = zext nneg i32 %11 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %14
  call void @Innerproduct(ptr noundef nonnull %15, ptr noundef nonnull @ima, ptr noundef nonnull @imb, i32 noundef %5, i32 noundef %11)
  br label %16

16:                                               ; preds = %13
  %17 = add nuw nsw i32 %11, 1
  br label %10, !llvm.loop !11

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !12

21:                                               ; preds = %4
  store i32 %.lcssa4, ptr %3, align 4
  %22 = load i32, ptr %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr [164 x i8], ptr @imr, i64 %23
  %25 = sext i32 %22 to i64
  %26 = getelementptr [4 x i8], ptr %24, i64 %25
  %27 = getelementptr i8, ptr %26, i64 168
  %28 = load i32, ptr %27, align 4
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %28) #2
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 10
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  call void @Intmm(i32 noundef %2)
  br label %5

5:                                                ; preds = %4
  %6 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !13

7:                                                ; preds = %1
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
