; ModuleID = 'results\paper_full\Stanford_Towers\Stanford_Towers.ll'
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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Error(ptr noundef %0) #0 {
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Makenull(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %2
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Getelement() #0 {
  %1 = load i32, ptr @freelist, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, ptr @freelist, align 4
  %5 = load i32, ptr @freelist, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %6
  %8 = getelementptr inbounds nuw %struct.element, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr @freelist, align 4
  br label %11

10:                                               ; preds = %0
  call void @Error(ptr noundef @.str.1)
  br label %11

11:                                               ; preds = %10, %3
  %.0 = phi i32 [ %4, %3 ], [ 0, %10 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Push(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %11
  %13 = getelementptr inbounds nuw %struct.element, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8
  %15 = icmp sle i32 %14, %0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  call void @Error(ptr noundef @.str.2)
  br label %17

17:                                               ; preds = %16, %7
  %.1 = phi i32 [ 1, %16 ], [ 0, %7 ]
  br label %18

18:                                               ; preds = %17, %2
  %.0 = phi i32 [ %.1, %17 ], [ 0, %2 ]
  %19 = icmp ne i32 %.0, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %18
  %21 = call i32 @Getelement()
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %25
  %27 = getelementptr inbounds nuw %struct.element, ptr %26, i32 0, i32 1
  store i32 %24, ptr %27, align 4
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %28
  store i32 %21, ptr %29, align 4
  %30 = sext i32 %21 to i64
  %31 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %30
  %32 = getelementptr inbounds nuw %struct.element, ptr %31, i32 0, i32 0
  store i32 %0, ptr %32, align 8
  br label %33

33:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Init(i32 noundef %0, i32 noundef %1) #0 {
  call void @Makenull(i32 noundef %0)
  %3 = icmp sge i32 %1, 1
  br i1 %3, label %.lr.ph, label %8

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %5
  %.06 = phi i32 [ %1, %.lr.ph ], [ %6, %5 ]
  call void @Push(i32 noundef %.06, i32 noundef %0)
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %.06, -1
  %7 = icmp sge i32 %6, 1
  br i1 %7, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %5
  br label %8

8:                                                ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Pop(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %10
  %12 = getelementptr inbounds nuw %struct.element, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %17
  %19 = getelementptr inbounds nuw %struct.element, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr @freelist, align 4
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %25
  %27 = getelementptr inbounds nuw %struct.element, ptr %26, i32 0, i32 1
  store i32 %21, ptr %27, align 4
  %28 = sext i32 %0 to i64
  %29 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr @freelist, align 4
  %31 = sext i32 %0 to i64
  %32 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %31
  store i32 %20, ptr %32, align 4
  br label %35

33:                                               ; preds = %1
  call void @Error(ptr noundef @.str.3)
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %6
  %.0 = phi i32 [ %13, %6 ], [ 0, %34 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Move(i32 noundef %0, i32 noundef %1) #0 {
  %3 = call i32 @Pop(i32 noundef %0)
  call void @Push(i32 noundef %3, i32 noundef %1)
  %4 = load i32, ptr @movesdone, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @movesdone, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tower(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void @Move(i32 noundef %0, i32 noundef %1)
  br label %11

6:                                                ; preds = %3
  %7 = sub nsw i32 6, %0
  %8 = sub nsw i32 %7, %1
  %9 = sub nsw i32 %2, 1
  call void @tower(i32 noundef %0, i32 noundef %8, i32 noundef %9)
  call void @Move(i32 noundef %0, i32 noundef %1)
  %10 = sub nsw i32 %2, 1
  call void @tower(i32 noundef %8, i32 noundef %1, i32 noundef %10)
  br label %11

11:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Towers() #0 {
  br label %1

1:                                                ; preds = %0, %6
  %.04 = phi i32 [ 1, %0 ], [ %7, %6 ]
  %2 = sub nsw i32 %.04, 1
  %3 = sext i32 %.04 to i64
  %4 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %3
  %5 = getelementptr inbounds nuw %struct.element, ptr %4, i32 0, i32 1
  store i32 %2, ptr %5, align 4
  br label %6

6:                                                ; preds = %1
  %7 = add nsw i32 %.04, 1
  %8 = icmp sle i32 %7, 18
  br i1 %8, label %1, label %9, !llvm.loop !9

9:                                                ; preds = %6
  store i32 18, ptr @freelist, align 4
  call void @Init(i32 noundef 1, i32 noundef 14)
  call void @Makenull(i32 noundef 2)
  call void @Makenull(i32 noundef 3)
  store i32 0, ptr @movesdone, align 4
  call void @tower(i32 noundef 1, i32 noundef 2, i32 noundef 14)
  %10 = load i32, ptr @movesdone, align 4
  %11 = icmp ne i32 %10, 16383
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32, ptr @movesdone, align 4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %2
  %.02 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Towers()
  br label %2

2:                                                ; preds = %1
  %3 = add nsw i32 %.02, 1
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !10

5:                                                ; preds = %2
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
