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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  store i32 1, ptr %1, align 4
  br i1 true, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %1, align 4
  br label %3

3:                                                ; preds = %24, %.lr.ph
  %4 = phi i32 [ %25, %24 ], [ %.promoted, %.lr.ph ]
  %5 = call i32 @Rand()
  %6 = sdiv i32 %5, 100000
  %7 = mul nsw i32 %6, 100000
  %8 = sub nsw i32 %5, %7
  %9 = sub nsw i32 %8, 50000
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %10
  store i32 %9, ptr %11, align 4
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr @biggest, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 %14, ptr @biggest, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load i32, ptr @littlest, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 %14, ptr @littlest, align 4
  br label %22

22:                                               ; preds = %21, %18
  br label %23

23:                                               ; preds = %22, %17
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %4, 1
  %26 = icmp sle i32 %25, 500
  br i1 %26, label %3, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %24
  %.lcssa1 = phi i32 [ %25, %24 ]
  %.lcssa = phi i32 [ %5, %24 ]
  store i32 %.lcssa, ptr %2, align 1
  store i32 %.lcssa1, ptr %1, align 4
  br label %27

27:                                               ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  br i1 true, label %.lr.ph2, label %36

.lr.ph2:                                          ; preds = %1
  %top.promoted = load i32, ptr @top, align 4
  %.promoted = load i32, ptr %4, align 4
  br label %5

5:                                                ; preds = %33, %.lr.ph2
  %.lcssa27 = phi i32 [ %.lcssa26, %33 ], [ %.promoted, %.lr.ph2 ]
  %6 = phi i32 [ %34, %33 ], [ %top.promoted, %.lr.ph2 ]
  %7 = icmp slt i32 1, %6
  br i1 %7, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %29, %.lr.ph
  %9 = phi i32 [ %30, %29 ], [ %.lcssa27, %.lr.ph ]
  %10 = phi i32 [ %31, %29 ], [ 1, %.lr.ph ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = add nsw i32 %10, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %13, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %8
  %20 = add nsw i32 %10, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %10 to i64
  %25 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %24
  store i32 %23, ptr %25, align 4
  %26 = add nsw i32 %10, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %27
  store i32 %13, ptr %28, align 4
  br label %29

29:                                               ; preds = %19, %8
  %30 = phi i32 [ %13, %19 ], [ %9, %8 ]
  %31 = add nsw i32 %10, 1
  %32 = icmp slt i32 %31, %6
  br i1 %32, label %8, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %29
  %.lcssa2 = phi i32 [ %30, %29 ]
  %.lcssa = phi i32 [ %31, %29 ]
  br label %33

33:                                               ; preds = %._crit_edge, %5
  %.lcssa26 = phi i32 [ %.lcssa2, %._crit_edge ], [ %.lcssa27, %5 ]
  %.lcssa4 = phi i32 [ %.lcssa, %._crit_edge ], [ 1, %5 ]
  %34 = sub nsw i32 %6, 1
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %5, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %33
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %33 ]
  %.lcssa5 = phi i32 [ %34, %33 ]
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %33 ]
  store i32 %.lcssa4.lcssa, ptr %3, align 4
  store i32 %.lcssa5, ptr @top, align 4
  store i32 %.lcssa26.lcssa, ptr %4, align 4
  br label %36

36:                                               ; preds = %._crit_edge3, %1
  %37 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %38 = load i32, ptr @littlest, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %42 = load i32, ptr @biggest, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, ptr %2, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %51)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph, label %8

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %2, align 4
  br label %3

3:                                                ; preds = %5, %.lr.ph
  %4 = phi i32 [ %6, %5 ], [ %.promoted, %.lr.ph ]
  call void @Bubble(i32 noundef %4)
  br label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %4, 1
  %7 = icmp slt i32 %6, 100
  br i1 %7, label %3, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %5
  %.lcssa = phi i32 [ %6, %5 ]
  store i32 %.lcssa, ptr %2, align 4
  br label %8

8:                                                ; preds = %._crit_edge, %0
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
