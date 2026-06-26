; ModuleID = 'results\test_baseline_all\Stanford_Bubblesort\Stanford_Bubblesort.ll'
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
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  br label %23

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %20
  %4 = phi i32 [ 1, %.lr.ph ], [ %21, %20 ]
  %5 = call i32 @Rand()
  store i32 %5, ptr %2, align 4
  %6 = sdiv i32 %5, 100000
  %7 = mul nsw i32 %6, 100000
  %8 = sub nsw i32 %5, %7
  %9 = sub nsw i32 %8, 50000
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %10
  store i32 %9, ptr %11, align 4
  %12 = load i32, ptr @biggest, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 %9, ptr @biggest, align 4
  br label %20

15:                                               ; preds = %3
  %16 = load i32, ptr @littlest, align 4
  %17 = icmp slt i32 %9, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 %9, ptr @littlest, align 4
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %19, %14
  %21 = add nsw i32 %4, 1
  store i32 %21, ptr %1, align 4
  %22 = icmp sle i32 %21, 500
  br i1 %22, label %3, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %20
  br label %23

23:                                               ; preds = %._crit_edge1, %._crit_edge
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
  br i1 true, label %.lr.ph2, label %._crit_edge4

._crit_edge4:                                     ; preds = %1
  br label %25

.lr.ph2:                                          ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph2, %22
  %6 = phi i32 [ 500, %.lr.ph2 ], [ %23, %22 ]
  store i32 1, ptr %3, align 4
  %7 = icmp slt i32 1, %6
  br i1 %7, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %5
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  br label %8

8:                                                ; preds = %.lr.ph, %19
  %9 = phi i32 [ %.pre, %.lr.ph ], [ %20, %19 ]
  %10 = phi i32 [ 1, %.lr.ph ], [ %13, %19 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %11
  %13 = add nsw i32 %10, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %9, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store i32 %9, ptr %4, align 4
  store i32 %16, ptr %12, align 4
  store i32 %9, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %8
  %20 = phi i32 [ %9, %18 ], [ %16, %8 ]
  store i32 %13, ptr %3, align 4
  %21 = icmp slt i32 %13, %6
  br i1 %21, label %8, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %19
  br label %22

22:                                               ; preds = %._crit_edge, %5
  %23 = sub nsw i32 %6, 1
  store i32 %23, ptr @top, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %5, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %22
  br label %25

25:                                               ; preds = %._crit_edge4, %._crit_edge3
  %26 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %27 = load i32, ptr @littlest, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %31 = load i32, ptr @biggest, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %35

35:                                               ; preds = %33, %29
  %36 = add nsw i32 %0, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %39)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  br label %7

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %4 = phi i32 [ 0, %.lr.ph ], [ %5, %3 ]
  call void @Bubble(i32 noundef %4)
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %2, align 4
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %3, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %3
  br label %7

7:                                                ; preds = %._crit_edge1, %._crit_edge
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
