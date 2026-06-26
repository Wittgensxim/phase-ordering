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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
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
  %.promoted = load i32, ptr %1, align 4
  br label %2

2:                                                ; preds = %9, %0
  %3 = phi i32 [ %10, %9 ], [ %.promoted, %0 ]
  %4 = icmp sle i32 %3, 7
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = sub nsw i32 %3, 1
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %7
  store i32 %6, ptr %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = add nsw i32 %3, 1
  br label %2, !llvm.loop !7

11:                                               ; preds = %2
  %.lcssa = phi i32 [ %3, %2 ]
  store i32 %.lcssa, ptr %1, align 4
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
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4
  %10 = sub nsw i32 %9, 1
  call void @Permute(i32 noundef %10)
  %11 = load i32, ptr %2, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, ptr %3, align 4
  %13 = load i32, ptr %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %14
  %16 = load i32, ptr %2, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, ptr %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %19
  %.promoted = load i32, ptr %3, align 4
  br label %21

21:                                               ; preds = %29, %8
  %22 = phi i32 [ %30, %29 ], [ %.promoted, %8 ]
  %23 = icmp sge i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = zext nneg i32 %22 to i64
  %26 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %25
  call void @Swap(ptr noundef %15, ptr noundef %26)
  call void @Permute(i32 noundef %17)
  %27 = zext nneg i32 %22 to i64
  %28 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %27
  call void @Swap(ptr noundef %20, ptr noundef %28)
  br label %29

29:                                               ; preds = %24
  %30 = add nsw i32 %22, -1
  br label %21, !llvm.loop !9

31:                                               ; preds = %21
  %.lcssa = phi i32 [ %22, %21 ]
  store i32 %.lcssa, ptr %3, align 4
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Perm() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr @pctr, align 4
  store i32 1, ptr %1, align 4
  %.promoted = load i32, ptr %1, align 4
  br label %2

2:                                                ; preds = %6, %0
  %3 = phi i32 [ %7, %6 ], [ %.promoted, %0 ]
  %4 = icmp sle i32 %3, 5
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  call void @Initialize()
  call void @Permute(i32 noundef 7)
  br label %6

6:                                                ; preds = %5
  %7 = add nsw i32 %3, 1
  br label %2, !llvm.loop !10

8:                                                ; preds = %2
  %.lcssa = phi i32 [ %3, %2 ]
  store i32 %.lcssa, ptr %1, align 4
  %9 = load i32, ptr @pctr, align 4
  %10 = icmp ne i32 %9, 43300
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, ptr @pctr, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %14)
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
  br label %3

3:                                                ; preds = %7, %0
  %4 = phi i32 [ %8, %7 ], [ %.promoted, %0 ]
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  call void @Perm()
  br label %7

7:                                                ; preds = %6
  %8 = add nsw i32 %4, 1
  br label %3, !llvm.loop !11

9:                                                ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %2, align 4
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
