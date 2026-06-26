; ModuleID = 'results\paper_full\Stanford_RealMM\round_005\input.ll'
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

2:                                                ; preds = %11, %1
  %indvars.iv27 = phi i64 [ 1, %1 ], [ %indvars.iv.next3, %11 ]
  br label %3

3:                                                ; preds = %3, %2
  %indvars.iv6 = phi i64 [ 1, %2 ], [ %indvars.iv.next, %3 ]
  %4 = call i32 @Rand()
  %.fr = freeze i32 %4
  %5 = srem i32 %.fr, 120
  %6 = add nsw i32 %5, -60
  %7 = sitofp i32 %6 to double
  %8 = fdiv double %7, 3.000000e+00
  %9 = getelementptr inbounds nuw [328 x i8], ptr %0, i64 %indvars.iv27
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv6
  store double %8, ptr %10, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 41
  br i1 %exitcond, label %3, label %11, !llvm.loop !7

11:                                               ; preds = %3
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next3, 41
  br i1 %exitcond5, label %2, label %12, !llvm.loop !9

12:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInnerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  store double 0.000000e+00, ptr %0, align 8
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi double [ 0.000000e+00, %5 ], [ %25, %6 ]
  %indvars.iv2 = phi i64 [ 1, %5 ], [ %indvars.iv.next.1, %6 ]
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds [328 x i8], ptr %1, i64 %8
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv2
  %11 = load double, ptr %10, align 8
  %12 = getelementptr inbounds nuw [328 x i8], ptr %2, i64 %indvars.iv2
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds [8 x i8], ptr %12, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fmuladd.f64(double %11, double %15, double %7)
  store double %16, ptr %0, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1
  %17 = sext i32 %3 to i64
  %18 = getelementptr inbounds [328 x i8], ptr %1, i64 %17
  %19 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.next
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds nuw [328 x i8], ptr %2, i64 %indvars.iv.next
  %22 = sext i32 %4 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %21, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fmuladd.f64(double %20, double %24, double %16)
  store double %25, ptr %0, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv2, 2
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 41
  br i1 %exitcond.1, label %6, label %26, !llvm.loop !10

26:                                               ; preds = %6
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

2:                                                ; preds = %8, %1
  %indvars.iv27 = phi i64 [ 1, %1 ], [ %indvars.iv.next3, %8 ]
  br label %3

3:                                                ; preds = %3, %2
  %indvars.iv6 = phi i64 [ 1, %2 ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds nuw [328 x i8], ptr @rmr, i64 %indvars.iv27
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv6
  %6 = trunc nuw nsw i64 %indvars.iv6 to i32
  %7 = trunc nuw nsw i64 %indvars.iv27 to i32
  call void @rInnerproduct(ptr noundef nonnull %5, ptr noundef nonnull @rma, ptr noundef nonnull @rmb, i32 noundef %7, i32 noundef %6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 41
  br i1 %exitcond, label %3, label %8, !llvm.loop !11

8:                                                ; preds = %3
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next3, 41
  br i1 %exitcond5, label %2, label %9, !llvm.loop !12

9:                                                ; preds = %8
  %10 = add nsw i32 %0, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [328 x i8], ptr @rmr, i64 %11
  %13 = getelementptr inbounds [8 x i8], ptr %12, i64 %11
  %14 = load double, ptr %13, align 8
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %14) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0
  call void @Mm(i32 noundef 0)
  call void @Mm(i32 noundef 1)
  call void @Mm(i32 noundef 2)
  call void @Mm(i32 noundef 3)
  call void @Mm(i32 noundef 4)
  call void @Mm(i32 noundef 5)
  call void @Mm(i32 noundef 6)
  call void @Mm(i32 noundef 7)
  call void @Mm(i32 noundef 8)
  call void @Mm(i32 noundef 9)
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
