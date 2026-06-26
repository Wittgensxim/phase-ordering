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
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 1, ptr %4, align 4
  br i1 true, label %.lr.ph2, label %._crit_edge4

._crit_edge4:                                     ; preds = %1
  br label %24

.lr.ph2:                                          ; preds = %1
  br label %6

6:                                                ; preds = %.lr.ph2, %21
  %7 = phi i32 [ 1, %.lr.ph2 ], [ %22, %21 ]
  store i32 1, ptr %5, align 4
  br i1 true, label %.lr.ph, label %._crit_edge5

._crit_edge5:                                     ; preds = %6
  br label %21

.lr.ph:                                           ; preds = %6
  br label %8

8:                                                ; preds = %.lr.ph, %8
  %9 = phi i32 [ 1, %.lr.ph ], [ %19, %8 ]
  %10 = call i32 @Rand()
  store i32 %10, ptr %3, align 4
  %11 = sdiv i32 %10, 120
  %12 = mul nsw i32 %11, 120
  %13 = sub nsw i32 %10, %12
  %14 = sub nsw i32 %13, 60
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds [41 x i32], ptr %0, i64 %15
  %17 = sext i32 %9 to i64
  %18 = getelementptr inbounds [41 x i32], ptr %16, i64 0, i64 %17
  store i32 %14, ptr %18, align 4
  %19 = add nsw i32 %9, 1
  store i32 %19, ptr %5, align 4
  %20 = icmp sle i32 %19, 40
  br i1 %20, label %8, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %8
  br label %21

21:                                               ; preds = %._crit_edge5, %._crit_edge
  %22 = add nsw i32 %7, 1
  store i32 %22, ptr %4, align 4
  %23 = icmp sle i32 %22, 40
  br i1 %23, label %6, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %21
  br label %24

24:                                               ; preds = %._crit_edge4, %._crit_edge3
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
  store i32 0, ptr %0, align 4
  store i32 1, ptr %11, align 4
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %5
  br label %28

.lr.ph:                                           ; preds = %5
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %13 = phi i32 [ 1, %.lr.ph ], [ %26, %12 ]
  %14 = phi i32 [ 0, %.lr.ph ], [ %25, %12 ]
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds [41 x i32], ptr %1, i64 %15
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds [41 x i32], ptr %16, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds [41 x i32], ptr %2, i64 %17
  %21 = sext i32 %4 to i64
  %22 = getelementptr inbounds [41 x i32], ptr %20, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = mul nsw i32 %19, %23
  %25 = add nsw i32 %14, %24
  store i32 %25, ptr %0, align 4
  %26 = add nsw i32 %13, 1
  store i32 %26, ptr %11, align 4
  %27 = icmp sle i32 %26, 40
  br i1 %27, label %12, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %12
  br label %28

28:                                               ; preds = %._crit_edge1, %._crit_edge
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
  br i1 true, label %.lr.ph2, label %._crit_edge4

._crit_edge4:                                     ; preds = %1
  br label %18

.lr.ph2:                                          ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph2, %15
  %6 = phi i32 [ 1, %.lr.ph2 ], [ %16, %15 ]
  store i32 1, ptr %4, align 4
  br i1 true, label %.lr.ph, label %._crit_edge5

._crit_edge5:                                     ; preds = %5
  br label %15

.lr.ph:                                           ; preds = %5
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %8 = phi i32 [ 1, %.lr.ph ], [ %13, %7 ]
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [41 x [41 x i32]], ptr @imr, i64 0, i64 %9
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [41 x i32], ptr %10, i64 0, i64 %11
  call void @Innerproduct(ptr noundef %12, ptr noundef @ima, ptr noundef @imb, i32 noundef %6, i32 noundef %8)
  %13 = add nsw i32 %8, 1
  store i32 %13, ptr %4, align 4
  %14 = icmp sle i32 %13, 40
  br i1 %14, label %7, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %7
  br label %15

15:                                               ; preds = %._crit_edge5, %._crit_edge
  %16 = add nsw i32 %6, 1
  store i32 %16, ptr %3, align 4
  %17 = icmp sle i32 %16, 40
  br i1 %17, label %5, label %._crit_edge3, !llvm.loop !12

._crit_edge3:                                     ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge4, %._crit_edge3
  %19 = add nsw i32 %0, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [41 x [41 x i32]], ptr @imr, i64 0, i64 %20
  %22 = getelementptr inbounds [41 x i32], ptr %21, i64 0, i64 %20
  %23 = load i32, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %23)
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
  call void @Intmm(i32 noundef %4)
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %2, align 4
  %6 = icmp slt i32 %5, 10
  br i1 %6, label %3, label %._crit_edge, !llvm.loop !13

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
