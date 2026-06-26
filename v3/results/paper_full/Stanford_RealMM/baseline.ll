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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInitmatrix(ptr noundef %0) #0 {
  br label %.preheader

.preheader:                                       ; preds = %1, %14
  %.013 = phi i32 [ 1, %1 ], [ %15, %14 ]
  br label %2

2:                                                ; preds = %.preheader, %2
  %.02 = phi i32 [ 1, %.preheader ], [ %12, %2 ]
  %3 = call i32 @Rand()
  %.fr = freeze i32 %3
  %4 = urem i32 %.fr, 120
  %5 = add nsw i32 %4, -60
  %6 = sitofp i32 %5 to double
  %7 = fdiv double %6, 3.000000e+00
  %8 = zext nneg i32 %.013 to i64
  %9 = getelementptr inbounds nuw [328 x i8], ptr %0, i64 %8
  %10 = zext nneg i32 %.02 to i64
  %11 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %10
  store double %7, ptr %11, align 8
  %12 = add nuw nsw i32 %.02, 1
  %13 = icmp samesign ult i32 %12, 41
  br i1 %13, label %2, label %14, !llvm.loop !7

14:                                               ; preds = %2
  %15 = add nuw nsw i32 %.013, 1
  %16 = icmp samesign ult i32 %15, 41
  br i1 %16, label %.preheader, label %17, !llvm.loop !9

17:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInnerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  store double 0.000000e+00, ptr %0, align 8
  br label %6

6:                                                ; preds = %5, %6
  %.01 = phi i32 [ 1, %5 ], [ %18, %6 ]
  %7 = phi double [ 0.000000e+00, %5 ], [ %17, %6 ]
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds [328 x i8], ptr %1, i64 %8
  %10 = zext nneg i32 %.01 to i64
  %11 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = getelementptr inbounds nuw [328 x i8], ptr %2, i64 %10
  %14 = sext i32 %4 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %13, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = call double @llvm.fmuladd.f64(double %12, double %16, double %7)
  store double %17, ptr %0, align 8
  %18 = add nuw nsw i32 %.01, 1
  %19 = icmp samesign ult i32 %18, 41
  br i1 %19, label %6, label %20, !llvm.loop !10

20:                                               ; preds = %6
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Mm(i32 noundef %0) #0 {
  call void @Initrand()
  call void @rInitmatrix(ptr noundef nonnull @rma)
  call void @rInitmatrix(ptr noundef nonnull @rmb)
  br label %.preheader

.preheader:                                       ; preds = %1, %9
  %.013 = phi i32 [ 1, %1 ], [ %10, %9 ]
  br label %2

2:                                                ; preds = %.preheader, %2
  %.02 = phi i32 [ 1, %.preheader ], [ %7, %2 ]
  %3 = zext nneg i32 %.013 to i64
  %4 = getelementptr inbounds nuw [328 x i8], ptr @rmr, i64 %3
  %5 = zext nneg i32 %.02 to i64
  %6 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %5
  call void @rInnerproduct(ptr noundef nonnull %6, ptr noundef nonnull @rma, ptr noundef nonnull @rmb, i32 noundef %.013, i32 noundef %.02)
  %7 = add nuw nsw i32 %.02, 1
  %8 = icmp samesign ult i32 %7, 41
  br i1 %8, label %2, label %9, !llvm.loop !11

9:                                                ; preds = %2
  %10 = add nuw nsw i32 %.013, 1
  %11 = icmp samesign ult i32 %10, 41
  br i1 %11, label %.preheader, label %12, !llvm.loop !12

12:                                               ; preds = %9
  %13 = sext i32 %0 to i64
  %14 = getelementptr [328 x i8], ptr @rmr, i64 %13
  %15 = getelementptr [8 x i8], ptr %14, i64 %13
  %16 = getelementptr i8, ptr %15, i64 336
  %17 = load double, ptr %16, align 8
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %17) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %.01 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Mm(i32 noundef %.01)
  %2 = add nuw nsw i32 %.01, 1
  %3 = icmp samesign ult i32 %2, 10
  br i1 %3, label %1, label %4, !llvm.loop !13

4:                                                ; preds = %1
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
