; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Bubblesort\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Bubblesort.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@top = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error3 in Bubble.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
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
define dso_local void @bInitarr() #0 {
.lr.ph:
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  store i32 1, ptr %0, align 4
  %.promoted = load i32, ptr %0, align 4
  br label %2

2:                                                ; preds = %21, %.lr.ph
  %3 = phi i32 [ %22, %21 ], [ %.promoted, %.lr.ph ]
  %4 = call i32 @Rand()
  %5 = sdiv i32 %4, 100000
  %6 = mul nsw i32 %5, 100000
  %7 = sub nsw i32 %4, %6
  %8 = sub nsw i32 %7, 50000
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %9
  store i32 %8, ptr %10, align 4
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @biggest, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 %13, ptr @biggest, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, ptr @littlest, align 4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 %13, ptr @littlest, align 4
  br label %21

21:                                               ; preds = %16, %20, %17
  %22 = add nsw i32 %3, 1
  %23 = icmp sle i32 %22, 500
  br i1 %23, label %2, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %21
  %.lcssa1 = phi i32 [ %22, %21 ]
  %.lcssa = phi i32 [ %4, %21 ]
  store i32 %.lcssa, ptr %1, align 1
  store i32 %.lcssa1, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
.lr.ph2:
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %1, align 4
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  %top.promoted = load i32, ptr @top, align 4
  %.promoted = load i32, ptr %3, align 4
  br label %4

4:                                                ; preds = %._crit_edge, %.lr.ph2
  %.lcssa27 = phi i32 [ %.lcssa26, %._crit_edge ], [ %.promoted, %.lr.ph2 ]
  %5 = phi i32 [ %31, %._crit_edge ], [ %top.promoted, %.lr.ph2 ]
  %6 = icmp slt i32 1, %5
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4, %27
  %7 = phi i32 [ %28, %27 ], [ %.lcssa27, %4 ]
  %8 = phi i32 [ %29, %27 ], [ 1, %4 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = add nsw i32 %8, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %.lr.ph
  %18 = add nsw i32 %8, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %8 to i64
  %23 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %22
  store i32 %21, ptr %23, align 4
  %24 = add nsw i32 %8, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %25
  store i32 %11, ptr %26, align 4
  br label %27

27:                                               ; preds = %17, %.lr.ph
  %28 = phi i32 [ %11, %17 ], [ %7, %.lr.ph ]
  %29 = add nsw i32 %8, 1
  %30 = icmp slt i32 %29, %5
  br i1 %30, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %27, %4
  %.lcssa26 = phi i32 [ %.lcssa27, %4 ], [ %28, %27 ]
  %.lcssa4 = phi i32 [ 1, %4 ], [ %29, %27 ]
  %31 = sub nsw i32 %5, 1
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %4, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %._crit_edge
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %._crit_edge ]
  %.lcssa5 = phi i32 [ %31, %._crit_edge ]
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %._crit_edge ]
  store i32 %.lcssa4.lcssa, ptr %2, align 4
  store i32 %.lcssa5, ptr @top, align 4
  store i32 %.lcssa26.lcssa, ptr %3, align 4
  %33 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %34 = load i32, ptr @littlest, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %._crit_edge3
  %37 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %38 = load i32, ptr @biggest, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %._crit_edge3
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, ptr %1, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %47)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
.lr.ph:
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  store i32 0, ptr %0, align 4
  store i32 0, ptr %1, align 4
  %.promoted = load i32, ptr %1, align 4
  br label %2

2:                                                ; preds = %2, %.lr.ph
  %3 = phi i32 [ %4, %2 ], [ %.promoted, %.lr.ph ]
  call void @Bubble(i32 noundef %3)
  %4 = add nsw i32 %3, 1
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %2
  %.lcssa = phi i32 [ %4, %2 ]
  store i32 %.lcssa, ptr %1, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Bubblesort.c", directory: "E:/Phase Ordering/v3")
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
