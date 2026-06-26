; ModuleID = 'results\paper_round2\Stanford_Towers\Stanford_Towers.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Towers.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c" Error in Towers: %s\0A\00", align 1
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"out of space   \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"disc size error\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nothing to pop \00", align 1
@movesdone = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c" Error in Towers.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
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
define dso_local void @Error(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Makenull(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %3
  store i32 0, ptr %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Getelement() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = load i32, ptr @freelist, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  store i32 %2, ptr %1, align 4
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %5
  %7 = getelementptr inbounds nuw %struct.element, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr @freelist, align 4
  br label %10

9:                                                ; preds = %0
  call void @Error(ptr noundef @.str.1)
  br label %10

10:                                               ; preds = %9, %4
  %11 = phi i32 [ 0, %9 ], [ %2, %4 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Push(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %12
  %14 = load i32, ptr %13, align 8
  %15 = icmp sle i32 %14, %0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, ptr %5, align 4
  call void @Error(ptr noundef @.str.2)
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi i32 [ 1, %16 ], [ 0, %11 ]
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = call i32 @Getelement()
  store i32 %23, ptr %6, align 4
  %24 = load i32, ptr %8, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %25
  %27 = getelementptr inbounds nuw %struct.element, ptr %26, i32 0, i32 1
  store i32 %24, ptr %27, align 4
  store i32 %23, ptr %8, align 4
  store i32 %0, ptr %26, align 8
  br label %28

28:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Init(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  call void @Makenull(i32 noundef %0)
  store i32 %1, ptr %5, align 4
  %6 = icmp sge i32 %1, 1
  br i1 %6, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %8 = phi i32 [ %1, %.lr.ph ], [ %9, %7 ]
  call void @Push(i32 noundef %8, i32 noundef %0)
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %5, align 4
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %7, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %7
  br label %11

11:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Pop(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %11
  %13 = load i32, ptr %12, align 8
  store i32 %13, ptr %5, align 4
  %14 = getelementptr inbounds nuw %struct.element, ptr %12, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %4, align 4
  %16 = load i32, ptr @freelist, align 4
  store i32 %16, ptr %14, align 4
  store i32 %8, ptr @freelist, align 4
  store i32 %15, ptr %7, align 4
  store i32 %13, ptr %2, align 4
  br label %18

17:                                               ; preds = %1
  call void @Error(ptr noundef @.str.3)
  store i32 0, ptr %2, align 4
  br label %18

18:                                               ; preds = %17, %10
  %19 = phi i32 [ 0, %17 ], [ %13, %10 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Move(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = call i32 @Pop(i32 noundef %0)
  call void @Push(i32 noundef %5, i32 noundef %1)
  %6 = load i32, ptr @movesdone, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @movesdone, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tower(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  call void @Move(i32 noundef %0, i32 noundef %1)
  br label %14

10:                                               ; preds = %3
  %11 = sub nsw i32 6, %0
  %12 = sub nsw i32 %11, %1
  store i32 %12, ptr %7, align 4
  %13 = sub nsw i32 %2, 1
  call void @tower(i32 noundef %0, i32 noundef %12, i32 noundef %13)
  call void @Move(i32 noundef %0, i32 noundef %1)
  call void @tower(i32 noundef %12, i32 noundef %1, i32 noundef %13)
  br label %14

14:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Towers() #0 {
  %1 = alloca i32, align 4
  store i32 1, ptr %1, align 4
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  br label %10

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %2
  %3 = phi i32 [ 1, %.lr.ph ], [ %8, %2 ]
  %4 = sub nsw i32 %3, 1
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %5
  %7 = getelementptr inbounds nuw %struct.element, ptr %6, i32 0, i32 1
  store i32 %4, ptr %7, align 4
  %8 = add nsw i32 %3, 1
  store i32 %8, ptr %1, align 4
  %9 = icmp sle i32 %8, 18
  br i1 %9, label %2, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %2
  br label %10

10:                                               ; preds = %._crit_edge1, %._crit_edge
  store i32 18, ptr @freelist, align 4
  call void @Init(i32 noundef 1, i32 noundef 14)
  call void @Makenull(i32 noundef 2)
  call void @Makenull(i32 noundef 3)
  store i32 0, ptr @movesdone, align 4
  call void @tower(i32 noundef 1, i32 noundef 2, i32 noundef 14)
  %11 = load i32, ptr @movesdone, align 4
  %12 = icmp ne i32 %11, 16383
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %.pre = load i32, ptr @movesdone, align 4
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %.pre, %13 ], [ 16383, %10 ]
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %16)
  ret void
}

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
  call void @Towers()
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %2, align 4
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %3, label %._crit_edge, !llvm.loop !10

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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Towers.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
