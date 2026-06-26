; ModuleID = 'results\paper_full\Stanford_IntMM\round_000\output.ll'
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
  br label %2

2:                                                ; preds = %17, %1
  %3 = phi i32 [ %18, %17 ], [ 1, %1 ]
  %4 = icmp samesign ult i32 %3, 41
  br i1 %4, label %5, label %19

5:                                                ; preds = %2, %8
  %6 = phi i32 [ %16, %8 ], [ 1, %2 ]
  %7 = icmp samesign ult i32 %6, 41
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = call i32 @Rand()
  %.fr = freeze i32 %9
  %10 = srem i32 %.fr, 120
  %11 = add nsw i32 %10, -60
  %12 = zext nneg i32 %3 to i64
  %13 = getelementptr inbounds nuw [164 x i8], ptr %0, i64 %12
  %14 = zext nneg i32 %6 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %14
  store i32 %11, ptr %15, align 4
  %16 = add nuw nsw i32 %6, 1
  br label %5, !llvm.loop !7

17:                                               ; preds = %5
  %18 = add nuw nsw i32 %3, 1
  br label %2, !llvm.loop !9

19:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Innerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  store i32 0, ptr %0, align 4
  br label %6

6:                                                ; preds = %10, %5
  %7 = phi i32 [ 0, %5 ], [ %33, %10 ]
  %8 = phi i32 [ 1, %5 ], [ %34, %10 ]
  %9 = icmp samesign ult i32 %8, 41
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds [164 x i8], ptr %1, i64 %11
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds nuw [164 x i8], ptr %2, i64 %13
  %17 = sext i32 %4 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = mul nsw i32 %15, %19
  %21 = add nsw i32 %7, %20
  store i32 %21, ptr %0, align 4
  %22 = add nuw nsw i32 %8, 1
  %23 = sext i32 %3 to i64
  %24 = getelementptr inbounds [164 x i8], ptr %1, i64 %23
  %25 = zext nneg i32 %22 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds nuw [164 x i8], ptr %2, i64 %25
  %29 = sext i32 %4 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %28, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = mul nsw i32 %27, %31
  %33 = add nsw i32 %21, %32
  store i32 %33, ptr %0, align 4
  %34 = add nuw nsw i32 %8, 2
  br label %6, !llvm.loop !10

35:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Intmm(i32 noundef %0) #0 {
  call void @Initrand()
  call void @Initmatrix(ptr noundef nonnull @ima)
  call void @Initmatrix(ptr noundef nonnull @imb)
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi i32 [ %15, %14 ], [ 1, %1 ]
  %4 = icmp samesign ult i32 %3, 41
  br i1 %4, label %5, label %16

5:                                                ; preds = %2, %8
  %6 = phi i32 [ %13, %8 ], [ 1, %2 ]
  %7 = icmp samesign ult i32 %6, 41
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = zext nneg i32 %3 to i64
  %10 = getelementptr inbounds nuw [164 x i8], ptr @imr, i64 %9
  %11 = zext nneg i32 %6 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %11
  call void @Innerproduct(ptr noundef nonnull %12, ptr noundef nonnull @ima, ptr noundef nonnull @imb, i32 noundef %3, i32 noundef %6)
  %13 = add nuw nsw i32 %6, 1
  br label %5, !llvm.loop !11

14:                                               ; preds = %5
  %15 = add nuw nsw i32 %3, 1
  br label %2, !llvm.loop !12

16:                                               ; preds = %2
  %17 = add nsw i32 %0, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [164 x i8], ptr @imr, i64 %18
  %20 = getelementptr inbounds [4 x i8], ptr %19, i64 %18
  %21 = load i32, ptr %20, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %21) #2
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @Intmm(i32 noundef 0)
  call void @Intmm(i32 noundef 1)
  call void @Intmm(i32 noundef 2)
  call void @Intmm(i32 noundef 3)
  call void @Intmm(i32 noundef 4)
  call void @Intmm(i32 noundef 5)
  call void @Intmm(i32 noundef 6)
  call void @Intmm(i32 noundef 7)
  call void @Intmm(i32 noundef 8)
  call void @Intmm(i32 noundef 9)
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
