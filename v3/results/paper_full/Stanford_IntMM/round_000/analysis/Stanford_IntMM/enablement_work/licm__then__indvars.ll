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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initmatrix(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 1, ptr %4, align 4
  %6 = load ptr, ptr %2, align 8
  %.promoted3 = load i32, ptr %4, align 4
  %.promoted5 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %3, align 4
  %7 = sext i32 %.promoted3 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted3, i32 41)
  %wide.trip.count = sext i32 %smax to i64
  br label %8

8:                                                ; preds = %23, %1
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %23 ], [ %7, %1 ]
  %.lcssa27 = phi i32 [ %.lcssa2, %23 ], [ %.promoted, %1 ]
  %.lcssa6 = phi i32 [ %22, %23 ], [ %.promoted5, %1 ]
  %exitcond12 = icmp ne i64 %indvars.iv9, %wide.trip.count
  br i1 %exitcond12, label %9, label %24

9:                                                ; preds = %8
  %10 = getelementptr inbounds [41 x i32], ptr %6, i64 %indvars.iv9
  br label %11

11:                                               ; preds = %20, %9
  %indvars.iv = phi i64 [ %indvars.iv.next, %20 ], [ 1, %9 ]
  %12 = phi i32 [ %14, %20 ], [ %.lcssa27, %9 ]
  %exitcond = icmp ne i64 %indvars.iv, 41
  br i1 %exitcond, label %13, label %21

13:                                               ; preds = %11
  %14 = call i32 @Rand()
  %15 = sdiv i32 %14, 120
  %16 = mul nsw i32 %15, 120
  %17 = sub nsw i32 %14, %16
  %18 = sub nsw i32 %17, 60
  %19 = getelementptr inbounds [41 x i32], ptr %10, i64 0, i64 %indvars.iv
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %11, !llvm.loop !7

21:                                               ; preds = %11
  %.lcssa2 = phi i32 [ %12, %11 ]
  %22 = trunc nuw nsw i64 41 to i32
  br label %23

23:                                               ; preds = %21
  %indvars.iv.next10 = add nsw i64 %indvars.iv9, 1
  br label %8, !llvm.loop !9

24:                                               ; preds = %8
  %.lcssa27.lcssa = phi i32 [ %.lcssa27, %8 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %8 ]
  %.lcssa4.wide = phi i64 [ %indvars.iv9, %8 ]
  %25 = trunc nsw i64 %.lcssa4.wide to i32
  store i32 %25, ptr %4, align 4
  store i32 %.lcssa6.lcssa, ptr %5, align 4
  store i32 %.lcssa27.lcssa, ptr %3, align 4
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
  %12 = load ptr, ptr %6, align 8
  store i32 0, ptr %12, align 4
  store i32 1, ptr %11, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = load i32, ptr %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [41 x i32], ptr %14, i64 %16
  %18 = load ptr, ptr %8, align 8
  %19 = load i32, ptr %10, align 4
  %20 = sext i32 %19 to i64
  %invariant.gep = getelementptr [41 x i32], ptr %18, i64 0, i64 %20
  %21 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %11, align 4
  %22 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 41)
  %wide.trip.count = sext i32 %smax to i64
  br label %23

23:                                               ; preds = %31, %5
  %indvars.iv = phi i64 [ %indvars.iv.next, %31 ], [ %22, %5 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %24, label %32

24:                                               ; preds = %23
  %25 = load i32, ptr %13, align 4
  %26 = getelementptr inbounds [41 x i32], ptr %17, i64 0, i64 %indvars.iv
  %27 = load i32, ptr %26, align 4
  %gep = getelementptr [41 x i32], ptr %invariant.gep, i64 %indvars.iv
  %28 = load i32, ptr %gep, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %25, %29
  store i32 %30, ptr %21, align 4
  br label %31

31:                                               ; preds = %24
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %23, !llvm.loop !10

32:                                               ; preds = %23
  %.lcssa.wide = phi i64 [ %indvars.iv, %23 ]
  %33 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %33, ptr %11, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Intmm(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @Initrand()
  call void @Initmatrix(ptr noundef @ima)
  call void @Initmatrix(ptr noundef @imb)
  store i32 1, ptr %3, align 4
  %.promoted1 = load i32, ptr %3, align 4
  %.promoted3 = load i32, ptr %4, align 4
  %5 = sext i32 %.promoted1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted1, i32 41)
  %wide.trip.count = sext i32 %smax to i64
  br label %6

6:                                                ; preds = %17, %1
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %17 ], [ %5, %1 ]
  %.lcssa4 = phi i32 [ %16, %17 ], [ %.promoted3, %1 ]
  %exitcond9 = icmp ne i64 %indvars.iv6, %wide.trip.count
  br i1 %exitcond9, label %7, label %18

7:                                                ; preds = %6
  %8 = getelementptr inbounds [41 x [41 x i32]], ptr @imr, i64 0, i64 %indvars.iv6
  br label %9

9:                                                ; preds = %14, %7
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 1, %7 ]
  %exitcond = icmp ne i64 %indvars.iv, 41
  br i1 %exitcond, label %10, label %15

10:                                               ; preds = %9
  %11 = getelementptr inbounds [41 x i32], ptr %8, i64 0, i64 %indvars.iv
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  %13 = trunc nsw i64 %indvars.iv6 to i32
  call void @Innerproduct(ptr noundef %11, ptr noundef @ima, ptr noundef @imb, i32 noundef %13, i32 noundef %12)
  br label %14

14:                                               ; preds = %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %9, !llvm.loop !11

15:                                               ; preds = %9
  %16 = trunc nuw nsw i64 41 to i32
  br label %17

17:                                               ; preds = %15
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, 1
  br label %6, !llvm.loop !12

18:                                               ; preds = %6
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %6 ]
  %.lcssa2.wide = phi i64 [ %indvars.iv6, %6 ]
  %19 = trunc nsw i64 %.lcssa2.wide to i32
  store i32 %19, ptr %3, align 4
  store i32 %.lcssa4.lcssa, ptr %4, align 4
  %20 = load i32, ptr %2, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [41 x [41 x i32]], ptr @imr, i64 0, i64 %22
  %24 = load i32, ptr %2, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [41 x i32], ptr %23, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %28)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %.promoted = load i32, ptr %2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 10)
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ %.promoted, %0 ]
  %exitcond = icmp ne i32 %4, %smax
  br i1 %exitcond, label %5, label %8

5:                                                ; preds = %3
  call void @Intmm(i32 noundef %4)
  br label %6

6:                                                ; preds = %5
  %7 = add i32 %4, 1
  br label %3, !llvm.loop !13

8:                                                ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
