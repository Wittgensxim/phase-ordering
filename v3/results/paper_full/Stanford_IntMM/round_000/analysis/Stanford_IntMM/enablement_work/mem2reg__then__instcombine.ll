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
  br label %2

2:                                                ; preds = %18, %1
  %.01 = phi i32 [ 1, %1 ], [ %19, %18 ]
  %3 = icmp samesign ult i32 %.01, 41
  br i1 %3, label %4, label %20

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %15, %4
  %.0 = phi i32 [ 1, %4 ], [ %16, %15 ]
  %6 = icmp samesign ult i32 %.0, 41
  br i1 %6, label %7, label %17

7:                                                ; preds = %5
  %8 = call i32 @Rand()
  %.fr = freeze i32 %8
  %9 = srem i32 %.fr, 120
  %10 = add nsw i32 %9, -60
  %11 = zext nneg i32 %.01 to i64
  %12 = getelementptr inbounds nuw [164 x i8], ptr %0, i64 %11
  %13 = zext nneg i32 %.0 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %13
  store i32 %10, ptr %14, align 4
  br label %15

15:                                               ; preds = %7
  %16 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !7

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !9

20:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Innerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  store i32 0, ptr %0, align 4
  br label %6

6:                                                ; preds = %22, %5
  %.0 = phi i32 [ 1, %5 ], [ %23, %22 ]
  %7 = icmp samesign ult i32 %.0, 41
  br i1 %7, label %8, label %24

8:                                                ; preds = %6
  %9 = load i32, ptr %0, align 4
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds [164 x i8], ptr %1, i64 %10
  %12 = zext nneg i32 %.0 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = zext nneg i32 %.0 to i64
  %16 = getelementptr inbounds nuw [164 x i8], ptr %2, i64 %15
  %17 = sext i32 %4 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = mul nsw i32 %14, %19
  %21 = add nsw i32 %9, %20
  store i32 %21, ptr %0, align 4
  br label %22

22:                                               ; preds = %8
  %23 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !10

24:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Intmm(i32 noundef %0) #0 {
  call void @Initrand()
  call void @Initmatrix(ptr noundef nonnull @ima)
  call void @Initmatrix(ptr noundef nonnull @imb)
  br label %2

2:                                                ; preds = %15, %1
  %.01 = phi i32 [ 1, %1 ], [ %16, %15 ]
  %3 = icmp samesign ult i32 %.01, 41
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %12, %4
  %.0 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %6 = icmp samesign ult i32 %.0, 41
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = zext nneg i32 %.01 to i64
  %9 = getelementptr inbounds nuw [164 x i8], ptr @imr, i64 %8
  %10 = zext nneg i32 %.0 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %10
  call void @Innerproduct(ptr noundef nonnull %11, ptr noundef nonnull @ima, ptr noundef nonnull @imb, i32 noundef %.01, i32 noundef %.0)
  br label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !11

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !12

17:                                               ; preds = %2
  %18 = sext i32 %0 to i64
  %19 = getelementptr [164 x i8], ptr @imr, i64 %18
  %20 = sext i32 %0 to i64
  %21 = getelementptr [4 x i8], ptr %19, i64 %20
  %22 = getelementptr i8, ptr %21, i64 168
  %23 = load i32, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %23) #2
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp samesign ult i32 %.0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Intmm(i32 noundef %.0)
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !13

6:                                                ; preds = %1
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
