; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Bubblesort\round_003\output.ll'
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
  %1 = alloca i32, align 4
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  store i32 1, ptr %1, align 4
  %.promoted = load i32, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %19
  %3 = phi i32 [ %.promoted, %0 ], [ %20, %19 ]
  %4 = call i32 @Rand()
  %.fr = freeze i32 %4
  %5 = srem i32 %.fr, 100000
  %6 = add nsw i32 %5, -50000
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %7
  store i32 %6, ptr %8, align 4
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr @biggest, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 %11, ptr @biggest, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32, ptr @littlest, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 %11, ptr @littlest, align 4
  br label %19

19:                                               ; preds = %18, %15, %14
  %20 = add nsw i32 %3, 1
  %21 = icmp slt i32 %20, 501
  br i1 %21, label %2, label %22, !llvm.loop !7

22:                                               ; preds = %19
  %.lcssa = phi i32 [ %20, %19 ]
  store i32 %.lcssa, ptr %1, align 4
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
  %top.promoted = load i32, ptr @top, align 4
  %.promoted8 = load i32, ptr %4, align 4
  br label %.preheader

.preheader:                                       ; preds = %1, %32
  %.lcssa210 = phi i32 [ %.promoted8, %1 ], [ %.lcssa29, %32 ]
  %5 = phi i32 [ %top.promoted, %1 ], [ %33, %32 ]
  %6 = icmp slt i32 1, %5
  br i1 %6, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %.preheader
  br label %7

7:                                                ; preds = %.lr.ph, %28
  %8 = phi i32 [ 1, %.lr.ph ], [ %30, %28 ]
  %9 = phi i32 [ %.lcssa210, %.lr.ph ], [ %29, %28 ]
  %storemerge21 = phi i32 [ 1, %.lr.ph ], [ %30, %28 ]
  %10 = sext i32 %storemerge21 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %storemerge21 to i64
  %14 = getelementptr [4 x i8], ptr @sortlist, i64 %13
  %15 = getelementptr i8, ptr %14, i64 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %12, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %7
  %19 = sext i32 %8 to i64
  %20 = getelementptr [4 x i8], ptr @sortlist, i64 %19
  %21 = getelementptr i8, ptr %20, i64 4
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %8 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %23
  store i32 %22, ptr %24, align 4
  %25 = sext i32 %8 to i64
  %26 = getelementptr [4 x i8], ptr @sortlist, i64 %25
  %27 = getelementptr i8, ptr %26, i64 4
  store i32 %12, ptr %27, align 4
  br label %28

28:                                               ; preds = %18, %7
  %29 = phi i32 [ %12, %18 ], [ %9, %7 ]
  %30 = add nsw i32 %8, 1
  %31 = icmp slt i32 %30, %5
  br i1 %31, label %7, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %28
  %.lcssa4 = phi i32 [ %30, %28 ]
  %.lcssa2 = phi i32 [ %29, %28 ]
  %split = phi i32 [ %5, %28 ]
  br label %32

32:                                               ; preds = %._crit_edge, %.preheader
  %.lcssa29 = phi i32 [ %.lcssa2, %._crit_edge ], [ %.lcssa210, %.preheader ]
  %.lcssa46 = phi i32 [ %.lcssa4, %._crit_edge ], [ 1, %.preheader ]
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %5, %.preheader ]
  %33 = add nsw i32 %.lcssa, -1
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %.preheader, label %35, !llvm.loop !10

35:                                               ; preds = %32
  %.lcssa29.lcssa = phi i32 [ %.lcssa29, %32 ]
  %.lcssa7 = phi i32 [ %33, %32 ]
  %.lcssa46.lcssa = phi i32 [ %.lcssa46, %32 ]
  store i32 %.lcssa46.lcssa, ptr %3, align 4
  store i32 %.lcssa7, ptr @top, align 4
  store i32 %.lcssa29.lcssa, ptr %4, align 4
  %36 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %37 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %36, %37
  br i1 %.not, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %40 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %39, %40
  br i1 %.not1, label %42, label %41

41:                                               ; preds = %38, %35
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, ptr %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr [4 x i8], ptr @sortlist, i64 %44
  %46 = getelementptr i8, ptr %45, i64 4
  %47 = load i32, ptr %46, align 4
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %47) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %.promoted = load i32, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i32 [ %.promoted, %0 ], [ %4, %2 ]
  %storemerge1 = phi i32 [ 0, %0 ], [ %4, %2 ]
  call void @Bubble(i32 noundef %storemerge1)
  %4 = add nsw i32 %3, 1
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %6, !llvm.loop !11

6:                                                ; preds = %2
  %.lcssa = phi i32 [ %4, %2 ]
  store i32 %.lcssa, ptr %1, align 4
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
