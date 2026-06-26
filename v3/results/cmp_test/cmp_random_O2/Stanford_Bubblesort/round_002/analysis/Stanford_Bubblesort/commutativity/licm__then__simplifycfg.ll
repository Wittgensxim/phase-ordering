; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Bubblesort\round_001\output.ll'
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
@str = private unnamed_addr constant [18 x i8] c"Error3 in Bubble.\00", align 1

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
.lr.ph:
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %0

0:                                                ; preds = %14, %.lr.ph
  %1 = phi i32 [ %15, %14 ], [ 1, %.lr.ph ]
  %2 = call i32 @Rand()
  %.fr = freeze i32 %2
  %3 = srem i32 %.fr, 100000
  %4 = add nsw i32 %3, -50000
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %5
  store i32 %4, ptr %6, align 4
  %7 = load i32, ptr @biggest, align 4
  %8 = icmp sgt i32 %4, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 %4, ptr @biggest, align 4
  br label %14

10:                                               ; preds = %0
  %11 = load i32, ptr @littlest, align 4
  %12 = icmp slt i32 %4, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 %4, ptr @littlest, align 4
  br label %14

14:                                               ; preds = %10, %13, %9
  %15 = add nuw nsw i32 %1, 1
  %16 = icmp samesign ult i32 %1, 500
  br i1 %16, label %0, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
.lr.ph2:
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  br label %1

1:                                                ; preds = %._crit_edge, %.lr.ph2
  %2 = phi i32 [ %18, %._crit_edge ], [ 500, %.lr.ph2 ]
  %3 = icmp samesign ugt i32 %2, 1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  br label %4

4:                                                ; preds = %15, %.lr.ph
  %5 = phi i32 [ %16, %15 ], [ %.pre, %.lr.ph ]
  %6 = phi i32 [ %7, %15 ], [ 1, %.lr.ph ]
  %7 = add nuw nsw i32 %6, 1
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %5, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = zext nneg i32 %6 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %13
  store i32 %10, ptr %14, align 4
  store i32 %5, ptr %9, align 4
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i32 [ %5, %12 ], [ %10, %4 ]
  %17 = icmp samesign ult i32 %7, %2
  br i1 %17, label %4, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %15, %1
  %18 = add nsw i32 %2, -1
  %19 = icmp sgt i32 %2, 2
  br i1 %19, label %1, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %._crit_edge
  %.lcssa = phi i32 [ %18, %._crit_edge ]
  store i32 %.lcssa, ptr @top, align 4
  %20 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %21 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %20, %21
  br i1 %.not, label %22, label %25

22:                                               ; preds = %._crit_edge3
  %23 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %24 = load i32, ptr @biggest, align 4
  %.not2 = icmp eq i32 %23, %24
  br i1 %.not2, label %26, label %25

25:                                               ; preds = %22, %._crit_edge3
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %26

26:                                               ; preds = %25, %22
  %27 = sext i32 %0 to i64
  %28 = getelementptr [4 x i8], ptr @sortlist, i64 %27
  %29 = getelementptr i8, ptr %28, i64 4
  %30 = load i32, ptr %29, align 4
  %31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %30) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
.lr.ph:
  br label %0

0:                                                ; preds = %0, %.lr.ph
  %1 = phi i32 [ %2, %0 ], [ 0, %.lr.ph ]
  call void @Bubble(i32 noundef %1)
  %2 = add nuw nsw i32 %1, 1
  %3 = icmp samesign ult i32 %1, 99
  br i1 %3, label %0, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %0
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
