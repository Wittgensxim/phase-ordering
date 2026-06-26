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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initmatrix(ptr noundef %0) #0 {
  br label %.preheader

.preheader:                                       ; preds = %1, %12
  %.013 = phi i32 [ 1, %1 ], [ %13, %12 ]
  br label %2

2:                                                ; preds = %.preheader, %2
  %.02 = phi i32 [ 1, %.preheader ], [ %10, %2 ]
  %3 = call i32 @Rand()
  %.fr = freeze i32 %3
  %4 = urem i32 %.fr, 120
  %5 = add nsw i32 %4, -60
  %6 = zext nneg i32 %.013 to i64
  %7 = getelementptr inbounds nuw [164 x i8], ptr %0, i64 %6
  %8 = zext nneg i32 %.02 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %8
  store i32 %5, ptr %9, align 4
  %10 = add nuw nsw i32 %.02, 1
  %11 = icmp samesign ult i32 %10, 41
  br i1 %11, label %2, label %12, !llvm.loop !7

12:                                               ; preds = %2
  %13 = add nuw nsw i32 %.013, 1
  %14 = icmp samesign ult i32 %13, 41
  br i1 %14, label %.preheader, label %15, !llvm.loop !9

15:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Innerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  store i32 0, ptr %0, align 4
  br label %6

6:                                                ; preds = %5, %6
  %.01 = phi i32 [ 1, %5 ], [ %19, %6 ]
  %7 = phi i32 [ 0, %5 ], [ %18, %6 ]
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds [164 x i8], ptr %1, i64 %8
  %10 = zext nneg i32 %.01 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds nuw [164 x i8], ptr %2, i64 %10
  %14 = sext i32 %4 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = mul nsw i32 %12, %16
  %18 = add nsw i32 %7, %17
  store i32 %18, ptr %0, align 4
  %19 = add nuw nsw i32 %.01, 1
  %20 = icmp samesign ult i32 %19, 41
  br i1 %20, label %6, label %21, !llvm.loop !10

21:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Intmm(i32 noundef %0) #0 {
  call void @Initrand()
  call void @Initmatrix(ptr noundef nonnull @ima)
  call void @Initmatrix(ptr noundef nonnull @imb)
  br label %.preheader

.preheader:                                       ; preds = %1, %9
  %.013 = phi i32 [ 1, %1 ], [ %10, %9 ]
  br label %2

2:                                                ; preds = %.preheader, %2
  %.02 = phi i32 [ 1, %.preheader ], [ %7, %2 ]
  %3 = zext nneg i32 %.013 to i64
  %4 = getelementptr inbounds nuw [164 x i8], ptr @imr, i64 %3
  %5 = zext nneg i32 %.02 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  call void @Innerproduct(ptr noundef nonnull %6, ptr noundef nonnull @ima, ptr noundef nonnull @imb, i32 noundef %.013, i32 noundef %.02)
  %7 = add nuw nsw i32 %.02, 1
  %8 = icmp samesign ult i32 %7, 41
  br i1 %8, label %2, label %9, !llvm.loop !11

9:                                                ; preds = %2
  %10 = add nuw nsw i32 %.013, 1
  %11 = icmp samesign ult i32 %10, 41
  br i1 %11, label %.preheader, label %12, !llvm.loop !12

12:                                               ; preds = %9
  %13 = sext i32 %0 to i64
  %14 = getelementptr [164 x i8], ptr @imr, i64 %13
  %15 = getelementptr [4 x i8], ptr %14, i64 %13
  %16 = getelementptr i8, ptr %15, i64 168
  %17 = load i32, ptr %16, align 4
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %17) #2
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %.01 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Intmm(i32 noundef %.01)
  %2 = add nuw nsw i32 %.01, 1
  %3 = icmp samesign ult i32 %2, 10
  br i1 %3, label %1, label %4, !llvm.loop !13

4:                                                ; preds = %1
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
