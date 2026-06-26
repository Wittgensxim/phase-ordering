; ModuleID = 'results\paper_full\Stanford_Perm\Stanford_Perm.ll'
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
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr %0, align 4
  store i32 %3, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize() #0 {
  br label %1

1:                                                ; preds = %0, %5
  %.04 = phi i32 [ 1, %0 ], [ %6, %5 ]
  %2 = sub nsw i32 %.04, 1
  %3 = sext i32 %.04 to i64
  %4 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %3
  store i32 %2, ptr %4, align 4
  br label %5

5:                                                ; preds = %1
  %6 = add nsw i32 %.04, 1
  %7 = icmp sle i32 %6, 7
  br i1 %7, label %1, label %8, !llvm.loop !7

8:                                                ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Permute(i32 noundef %0) #0 {
  %2 = load i32, ptr @pctr, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr @pctr, align 4
  %4 = icmp ne i32 %0, 1
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = sub nsw i32 %0, 1
  call void @Permute(i32 noundef %6)
  %7 = sub nsw i32 %0, 1
  %8 = icmp sge i32 %7, 1
  br i1 %8, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %5
  br label %9

9:                                                ; preds = %.lr.ph, %19
  %.010 = phi i32 [ %7, %.lr.ph ], [ %20, %19 ]
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %10
  %12 = sext i32 %.010 to i64
  %13 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %12
  call void @Swap(ptr noundef %11, ptr noundef %13)
  %14 = sub nsw i32 %0, 1
  call void @Permute(i32 noundef %14)
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %15
  %17 = sext i32 %.010 to i64
  %18 = getelementptr inbounds [11 x i32], ptr @permarray, i64 0, i64 %17
  call void @Swap(ptr noundef %16, ptr noundef %18)
  br label %19

19:                                               ; preds = %9
  %20 = add nsw i32 %.010, -1
  %21 = icmp sge i32 %20, 1
  br i1 %21, label %9, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %19
  br label %22

22:                                               ; preds = %._crit_edge, %5
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Perm() #0 {
  store i32 0, ptr @pctr, align 4
  br label %1

1:                                                ; preds = %0, %2
  %.02 = phi i32 [ 1, %0 ], [ %3, %2 ]
  call void @Initialize()
  call void @Permute(i32 noundef 7)
  br label %2

2:                                                ; preds = %1
  %3 = add nsw i32 %.02, 1
  %4 = icmp sle i32 %3, 5
  br i1 %4, label %1, label %5, !llvm.loop !10

5:                                                ; preds = %2
  %6 = load i32, ptr @pctr, align 4
  %7 = icmp ne i32 %6, 43300
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %10

10:                                               ; preds = %8, %5
  %11 = load i32, ptr @pctr, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %2
  %.02 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Perm()
  br label %2

2:                                                ; preds = %1
  %3 = add nsw i32 %.02, 1
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !11

5:                                                ; preds = %2
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
