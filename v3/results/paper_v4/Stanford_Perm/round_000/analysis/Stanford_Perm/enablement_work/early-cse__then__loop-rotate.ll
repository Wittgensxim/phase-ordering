; ModuleID = 'results\paper_v4\Stanford_Perm\Stanford_Perm.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Perm.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" Error in Perm.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
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
define dso_local void @Swap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %5, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %3, align 8
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %5, align 4
  %12 = load ptr, ptr %4, align 8
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize() #0 {
  %1 = alloca i32, align 4
  store i32 1, ptr %1, align 4
  %2 = load i32, ptr %1, align 4
  %3 = icmp sle i32 %2, 7
  br i1 %3, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %0
  br label %4

4:                                                ; preds = %.lr.ph, %9
  %5 = phi i32 [ %2, %.lr.ph ], [ %12, %9 ]
  %6 = sub nsw i32 %5, 1
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %7
  store i32 %6, ptr %8, align 4
  br label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %1, align 4
  %12 = load i32, ptr %1, align 4
  %13 = icmp sle i32 %12, 7
  br i1 %13, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %9
  br label %14

14:                                               ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Permute(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr @pctr, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr @pctr, align 4
  %6 = load i32, ptr %2, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = sub nsw i32 %6, 1
  call void @Permute(i32 noundef %9)
  %10 = load i32, ptr %2, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, ptr %3, align 4
  %12 = load i32, ptr %3, align 4
  %13 = icmp sge i32 %12, 1
  br i1 %13, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %8
  br label %14

14:                                               ; preds = %.lr.ph, %29
  %15 = phi i32 [ %12, %.lr.ph ], [ %32, %29 ]
  %16 = load i32, ptr %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %17
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %19
  call void @Swap(ptr noundef %18, ptr noundef %20)
  %21 = load i32, ptr %2, align 4
  %22 = sub nsw i32 %21, 1
  call void @Permute(i32 noundef %22)
  %23 = load i32, ptr %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %24
  %26 = load i32, ptr %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %27
  call void @Swap(ptr noundef %25, ptr noundef %28)
  br label %29

29:                                               ; preds = %14
  %30 = load i32, ptr %3, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %3, align 4
  %32 = load i32, ptr %3, align 4
  %33 = icmp sge i32 %32, 1
  br i1 %33, label %14, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %29
  br label %34

34:                                               ; preds = %._crit_edge, %8
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Perm() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr @pctr, align 4
  store i32 1, ptr %1, align 4
  %2 = load i32, ptr %1, align 4
  %3 = icmp sle i32 %2, 5
  br i1 %3, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %0
  br label %4

4:                                                ; preds = %.lr.ph, %5
  call void @Initialize()
  call void @Permute(i32 noundef 7)
  br label %5

5:                                                ; preds = %4
  %6 = load i32, ptr %1, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %1, align 4
  %8 = load i32, ptr %1, align 4
  %9 = icmp sle i32 %8, 5
  br i1 %9, label %4, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %5
  br label %10

10:                                               ; preds = %._crit_edge, %0
  %11 = load i32, ptr @pctr, align 4
  %12 = icmp ne i32 %11, 43300
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32, ptr @pctr, align 4
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %16)
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
  br i1 %4, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %6
  call void @Perm()
  br label %6

6:                                                ; preds = %5
  %7 = load i32, ptr %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %5, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %6
  br label %11

11:                                               ; preds = %._crit_edge, %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Perm.c", directory: "E:/Phase Ordering/v3")
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
