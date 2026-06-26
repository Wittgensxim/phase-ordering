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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initmatrix(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %15, %1
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %15 ], [ 1, %1 ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 41
  br i1 %exitcond13, label %3, label %16

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %13, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 1, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, 41
  br i1 %exitcond, label %5, label %14

5:                                                ; preds = %4
  %6 = call i32 @Rand()
  %7 = sdiv i32 %6, 120
  %8 = mul nsw i32 %7, 120
  %9 = sub nsw i32 %6, %8
  %10 = sub nsw i32 %9, 60
  %11 = getelementptr inbounds [41 x i32], ptr %0, i64 %indvars.iv10
  %12 = getelementptr inbounds [41 x i32], ptr %11, i64 0, i64 %indvars.iv
  store i32 %10, ptr %12, align 4
  br label %13

13:                                               ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !7

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %14
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %2, !llvm.loop !9

16:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Innerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  store i32 0, ptr %0, align 4
  br label %6

6:                                                ; preds = %19, %5
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 1, %5 ]
  %exitcond = icmp ne i64 %indvars.iv, 41
  br i1 %exitcond, label %7, label %20

7:                                                ; preds = %6
  %8 = load i32, ptr %0, align 4
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds [41 x i32], ptr %1, i64 %9
  %11 = getelementptr inbounds [41 x i32], ptr %10, i64 0, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [41 x i32], ptr %2, i64 %indvars.iv
  %14 = sext i32 %4 to i64
  %15 = getelementptr inbounds [41 x i32], ptr %13, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = mul nsw i32 %12, %16
  %18 = add nsw i32 %8, %17
  store i32 %18, ptr %0, align 4
  br label %19

19:                                               ; preds = %7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %6, !llvm.loop !10

20:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Intmm(i32 noundef %0) #0 {
  call void @Initrand()
  call void @Initmatrix(ptr noundef @ima)
  call void @Initmatrix(ptr noundef @imb)
  br label %2

2:                                                ; preds = %12, %1
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %12 ], [ 1, %1 ]
  %exitcond15 = icmp ne i64 %indvars.iv12, 41
  br i1 %exitcond15, label %3, label %13

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %10, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ 1, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, 41
  br i1 %exitcond, label %5, label %11

5:                                                ; preds = %4
  %6 = getelementptr inbounds [41 x [41 x i32]], ptr @imr, i64 0, i64 %indvars.iv12
  %7 = getelementptr inbounds [41 x i32], ptr %6, i64 0, i64 %indvars.iv
  %8 = trunc nuw nsw i64 %indvars.iv to i32
  %9 = trunc nuw nsw i64 %indvars.iv12 to i32
  call void @Innerproduct(ptr noundef %7, ptr noundef @ima, ptr noundef @imb, i32 noundef %9, i32 noundef %8)
  br label %10

10:                                               ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !11

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %2, !llvm.loop !12

13:                                               ; preds = %2
  %14 = add nsw i32 %0, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [41 x [41 x i32]], ptr @imr, i64 0, i64 %15
  %17 = add nsw i32 %0, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [41 x i32], ptr %16, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %20)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %exitcond = icmp ne i32 %.0, 10
  br i1 %exitcond, label %2, label %5

2:                                                ; preds = %1
  call void @Intmm(i32 noundef %.0)
  br label %3

3:                                                ; preds = %2
  %4 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !13

5:                                                ; preds = %1
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
