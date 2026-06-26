; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Quicksort\round_003\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Quicksort.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c" Error in Quick.\0A\00", align 1
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
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [17 x i8] c" Error in Quick.\00", align 1

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
define dso_local void @Initarr() #0 {
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
  %21 = icmp slt i32 %20, 5001
  br i1 %21, label %2, label %22, !llvm.loop !7

22:                                               ; preds = %19
  %.lcssa = phi i32 [ %20, %19 ]
  store i32 %.lcssa, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  %11 = add nsw i32 %1, %2
  %12 = sdiv i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %9, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %9, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %9, align 4
  %20 = load i32, ptr %9, align 4
  %21 = load ptr, ptr %4, align 8
  %22 = load i32, ptr %9, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %7, align 4
  %.promoted9 = load i32, ptr %8, align 4
  br label %26

26:                                               ; preds = %63, %3
  %.lcssa512 = phi i32 [ %.lcssa510, %63 ], [ %.promoted9, %3 ]
  %.lcssa48 = phi i32 [ %.lcssa46, %63 ], [ %.promoted, %3 ]
  %27 = sext i32 %.lcssa48 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %16, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %29, %17
  br i1 %30, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %26
  br label %35

..preheader_crit_edge:                            ; preds = %35
  %.lcssa4 = phi i32 [ %37, %35 ]
  store i32 %.lcssa4, ptr %7, align 4
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %26
  %.lcssa47 = phi i32 [ %.lcssa4, %..preheader_crit_edge ], [ %.lcssa48, %26 ]
  %31 = sext i32 %.lcssa512 to i64
  %32 = getelementptr inbounds [4 x i8], ptr %21, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %20, %33
  br i1 %34, label %.lr.ph1, label %49

.lr.ph1:                                          ; preds = %.preheader
  br label %42

35:                                               ; preds = %.lr.ph, %35
  %36 = phi i32 [ %.lcssa48, %.lr.ph ], [ %37, %35 ]
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr %18, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %40, %19
  br i1 %41, label %35, label %..preheader_crit_edge, !llvm.loop !9

42:                                               ; preds = %.lr.ph1, %42
  %43 = phi i32 [ %.lcssa512, %.lr.ph1 ], [ %44, %42 ]
  %44 = add nsw i32 %43, -1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i8], ptr %23, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %22, %47
  br i1 %48, label %42, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %42
  %.lcssa5 = phi i32 [ %44, %42 ]
  %split = phi ptr [ %23, %42 ]
  %split2 = phi i32 [ %44, %42 ]
  store i32 %.lcssa5, ptr %8, align 4
  br label %49

49:                                               ; preds = %._crit_edge, %.preheader
  %.lcssa511 = phi i32 [ %.lcssa5, %._crit_edge ], [ %.lcssa512, %.preheader ]
  %.lcssa2 = phi ptr [ %split, %._crit_edge ], [ %21, %.preheader ]
  %.lcssa = phi i32 [ %split2, %._crit_edge ], [ %.lcssa512, %.preheader ]
  %.not = icmp sgt i32 %.lcssa47, %.lcssa
  br i1 %.not, label %63, label %50

50:                                               ; preds = %49
  %51 = sext i32 %.lcssa47 to i64
  %52 = getelementptr inbounds [4 x i8], ptr %.lcssa2, i64 %51
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %10, align 4
  %54 = sext i32 %.lcssa511 to i64
  %55 = getelementptr inbounds [4 x i8], ptr %24, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = sext i32 %.lcssa47 to i64
  %58 = getelementptr inbounds [4 x i8], ptr %24, i64 %57
  store i32 %56, ptr %58, align 4
  %59 = sext i32 %.lcssa511 to i64
  %60 = getelementptr inbounds [4 x i8], ptr %25, i64 %59
  store i32 %53, ptr %60, align 4
  %61 = add nsw i32 %.lcssa47, 1
  store i32 %61, ptr %7, align 4
  %62 = add nsw i32 %.lcssa511, -1
  store i32 %62, ptr %8, align 4
  br label %63

63:                                               ; preds = %50, %49
  %.lcssa510 = phi i32 [ %62, %50 ], [ %.lcssa511, %49 ]
  %.lcssa46 = phi i32 [ %61, %50 ], [ %.lcssa47, %49 ]
  %.not1 = icmp sgt i32 %.lcssa46, %.lcssa510
  br i1 %.not1, label %64, label %26, !llvm.loop !11

64:                                               ; preds = %63
  %.lcssa3 = phi i32 [ %.lcssa510, %63 ]
  %65 = load i32, ptr %5, align 4
  %66 = icmp slt i32 %65, %.lcssa3
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %68, i32 noundef %65, i32 noundef %.lcssa3)
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, ptr %7, align 4
  %71 = load i32, ptr %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %74, i32 noundef %70, i32 noundef %71)
  br label %75

75:                                               ; preds = %73, %69
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quick(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @Initarr()
  call void @Quicksort(ptr noundef nonnull @sortlist, i32 noundef 1, i32 noundef 5000)
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %4 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %3, %4
  br i1 %.not, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 20000), align 16
  %7 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %6, %7
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %5, %1
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i32, ptr %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr [4 x i8], ptr @sortlist, i64 %11
  %13 = getelementptr i8, ptr %12, i64 4
  %14 = load i32, ptr %13, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14) #3
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
  call void @Quick(i32 noundef %storemerge1)
  %4 = add nsw i32 %3, 1
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %6, !llvm.loop !12

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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Quicksort.c", directory: "E:/Phase Ordering/v3")
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
