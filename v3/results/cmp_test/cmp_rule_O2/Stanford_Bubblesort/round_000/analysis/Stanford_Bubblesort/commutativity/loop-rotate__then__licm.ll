; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Bubblesort\Stanford_Bubblesort.ll'
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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bInitarr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  store i32 1, ptr %1, align 4
  %3 = load i32, ptr %1, align 4
  %4 = icmp sle i32 %3, 500
  br i1 %4, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %1, align 4
  br label %5

5:                                                ; preds = %.lr.ph, %35
  %6 = phi i32 [ %.promoted, %.lr.ph ], [ %36, %35 ]
  %7 = call i32 @Rand()
  %8 = sdiv i32 %7, 100000
  %9 = mul nsw i32 %8, 100000
  %10 = sub nsw i32 %7, %9
  %11 = sub nsw i32 %10, 50000
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %12
  store i32 %11, ptr %13, align 4
  %14 = sext i32 %6 to i64
  %15 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr @biggest, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = sext i32 %6 to i64
  %21 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr @biggest, align 4
  br label %34

23:                                               ; preds = %5
  %24 = sext i32 %6 to i64
  %25 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr @littlest, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = sext i32 %6 to i64
  %31 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr @littlest, align 4
  br label %33

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %33, %19
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %6, 1
  %37 = icmp sle i32 %36, 500
  br i1 %37, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %35
  %.lcssa1 = phi i32 [ %36, %35 ]
  %.lcssa = phi i32 [ %7, %35 ]
  store i32 %.lcssa, ptr %2, align 4
  store i32 %.lcssa1, ptr %1, align 4
  br label %38

38:                                               ; preds = %._crit_edge, %0
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
  %5 = load i32, ptr @top, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %.lr.ph2, label %41

.lr.ph2:                                          ; preds = %1
  %top.promoted = load i32, ptr @top, align 4
  %.promoted = load i32, ptr %4, align 4
  br label %7

7:                                                ; preds = %.lr.ph2, %38
  %.lcssa510 = phi i32 [ %.promoted, %.lr.ph2 ], [ %.lcssa59, %38 ]
  %8 = phi i32 [ %top.promoted, %.lr.ph2 ], [ %39, %38 ]
  %9 = icmp slt i32 1, %8
  br i1 %9, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %7
  br label %10

10:                                               ; preds = %.lr.ph, %34
  %11 = phi i32 [ %.lcssa510, %.lr.ph ], [ %35, %34 ]
  %12 = phi i32 [ 1, %.lr.ph ], [ %36, %34 ]
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = add nsw i32 %12, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %10
  %22 = sext i32 %12 to i64
  %23 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %12, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %12 to i64
  %30 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %29
  store i32 %28, ptr %30, align 4
  %31 = add nsw i32 %12, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %32
  store i32 %24, ptr %33, align 4
  br label %34

34:                                               ; preds = %21, %10
  %35 = phi i32 [ %24, %21 ], [ %11, %10 ]
  %36 = add nsw i32 %12, 1
  %37 = icmp slt i32 %36, %8
  br i1 %37, label %10, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %34
  %.lcssa5 = phi i32 [ %35, %34 ]
  %.lcssa = phi i32 [ %36, %34 ]
  br label %38

38:                                               ; preds = %._crit_edge, %7
  %.lcssa59 = phi i32 [ %.lcssa5, %._crit_edge ], [ %.lcssa510, %7 ]
  %.lcssa7 = phi i32 [ %.lcssa, %._crit_edge ], [ 1, %7 ]
  %39 = sub nsw i32 %8, 1
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %7, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %38
  %.lcssa59.lcssa = phi i32 [ %.lcssa59, %38 ]
  %.lcssa8 = phi i32 [ %39, %38 ]
  %.lcssa7.lcssa = phi i32 [ %.lcssa7, %38 ]
  store i32 %.lcssa7.lcssa, ptr %3, align 4
  store i32 %.lcssa8, ptr @top, align 4
  store i32 %.lcssa59.lcssa, ptr %4, align 4
  br label %41

41:                                               ; preds = %._crit_edge3, %1
  %42 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %43 = load i32, ptr @littlest, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %47 = load i32, ptr @biggest, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, ptr %2, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %56)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %2, align 4
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %6 = phi i32 [ %.promoted, %.lr.ph ], [ %8, %7 ]
  call void @Bubble(i32 noundef %6)
  br label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %6, 1
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %5, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %2, align 4
  br label %10

10:                                               ; preds = %._crit_edge, %0
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
