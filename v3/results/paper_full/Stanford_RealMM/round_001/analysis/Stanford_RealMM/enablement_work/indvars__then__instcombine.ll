; ModuleID = 'results\paper_full\Stanford_RealMM\round_000\output.ll'
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

2:                                                ; preds = %13, %1
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %13 ], [ 1, %1 ]
  %exitcond5.not = icmp eq i64 %indvars.iv2, 41
  br i1 %exitcond5.not, label %14, label %3

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %5, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %5 ], [ 1, %3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 41
  br i1 %exitcond.not, label %13, label %5

5:                                                ; preds = %4
  %6 = call i32 @Rand()
  %.fr = freeze i32 %6
  %7 = srem i32 %.fr, 120
  %8 = add nsw i32 %7, -60
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, 3.000000e+00
  %11 = getelementptr inbounds nuw [328 x i8], ptr %0, i64 %indvars.iv2
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv
  store double %10, ptr %12, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !7

13:                                               ; preds = %4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %2, !llvm.loop !9

14:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInnerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  store double 0.000000e+00, ptr %0, align 8
  br label %6

6:                                                ; preds = %8, %5
  %indvars.iv = phi i64 [ %indvars.iv.next, %8 ], [ 1, %5 ]
  %7 = phi double [ %17, %8 ], [ 0.000000e+00, %5 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 41
  br i1 %exitcond.not, label %18, label %8

8:                                                ; preds = %6
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds [328 x i8], ptr %1, i64 %9
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %12 = load double, ptr %11, align 8
  %13 = getelementptr inbounds nuw [328 x i8], ptr %2, i64 %indvars.iv
  %14 = sext i32 %4 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %13, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = call double @llvm.fmuladd.f64(double %12, double %16, double %7)
  store double %17, ptr %0, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %6, !llvm.loop !10

18:                                               ; preds = %6
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Mm(i32 noundef %0) #0 {
  call void @Initrand()
  call void @rInitmatrix(ptr noundef nonnull @rma)
  call void @rInitmatrix(ptr noundef nonnull @rmb)
  br label %2

2:                                                ; preds = %10, %1
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %10 ], [ 1, %1 ]
  %exitcond5.not = icmp eq i64 %indvars.iv2, 41
  br i1 %exitcond5.not, label %11, label %3

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %5, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %5 ], [ 1, %3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 41
  br i1 %exitcond.not, label %10, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [328 x i8], ptr @rmr, i64 %indvars.iv2
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %8 = trunc nuw nsw i64 %indvars.iv to i32
  %9 = trunc nuw nsw i64 %indvars.iv2 to i32
  call void @rInnerproduct(ptr noundef nonnull %7, ptr noundef nonnull @rma, ptr noundef nonnull @rmb, i32 noundef %9, i32 noundef %8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !11

10:                                               ; preds = %4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %2, !llvm.loop !12

11:                                               ; preds = %2
  %12 = add nsw i32 %0, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [328 x i8], ptr @rmr, i64 %13
  %15 = getelementptr inbounds [8 x i8], ptr %14, i64 %13
  %16 = load double, ptr %15, align 8
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %16) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %2 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %exitcond.not = icmp eq i32 %2, 10
  br i1 %exitcond.not, label %5, label %3

3:                                                ; preds = %1
  call void @Mm(i32 noundef %2)
  %4 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !13

5:                                                ; preds = %1
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
