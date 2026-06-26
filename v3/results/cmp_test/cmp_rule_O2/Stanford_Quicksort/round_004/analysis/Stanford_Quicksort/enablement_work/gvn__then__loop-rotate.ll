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
  br label %2

2:                                                ; preds = %0, %16
  %3 = phi i32 [ 1, %0 ], [ %17, %16 ]
  %4 = call i32 @Rand()
  %.fr = freeze i32 %4
  %5 = srem i32 %.fr, 100000
  %6 = add nsw i32 %5, -50000
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %7
  store i32 %6, ptr %8, align 4
  %9 = load i32, ptr @biggest, align 4
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 %6, ptr @biggest, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load i32, ptr @littlest, align 4
  %14 = icmp slt i32 %6, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 %6, ptr @littlest, align 4
  br label %16

16:                                               ; preds = %15, %12, %11
  %17 = add nsw i32 %3, 1
  store i32 %17, ptr %1, align 4
  %18 = icmp slt i32 %17, 5001
  br i1 %18, label %2, label %19, !llvm.loop !7

19:                                               ; preds = %16
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
  br label %16

16:                                               ; preds = %54, %3
  %17 = phi i32 [ %55, %54 ], [ %2, %3 ]
  %18 = phi i32 [ %56, %54 ], [ %1, %3 ]
  %19 = phi ptr [ %57, %54 ], [ %0, %3 ]
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %19, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, %15
  br i1 %23, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %16
  br label %28

..preheader_crit_edge:                            ; preds = %28
  %split = phi i32 [ %30, %28 ]
  %split7 = phi ptr [ %32, %28 ]
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %16
  %.lcssa1 = phi i32 [ %split, %..preheader_crit_edge ], [ %18, %16 ]
  %.lcssa = phi ptr [ %split7, %..preheader_crit_edge ], [ %21, %16 ]
  %24 = sext i32 %17 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %19, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %15, %26
  br i1 %27, label %.lr.ph8, label %42

.lr.ph8:                                          ; preds = %.preheader
  br label %35

28:                                               ; preds = %.lr.ph, %28
  %29 = phi i32 [ %18, %.lr.ph ], [ %30, %28 ]
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr %19, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %33, %15
  br i1 %34, label %28, label %..preheader_crit_edge, !llvm.loop !9

35:                                               ; preds = %.lr.ph8, %35
  %36 = phi i32 [ %17, %.lr.ph8 ], [ %37, %35 ]
  %37 = add nsw i32 %36, -1
  store i32 %37, ptr %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr %19, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %15, %40
  br i1 %41, label %35, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %35
  %split9 = phi i32 [ %37, %35 ]
  %split10 = phi ptr [ %39, %35 ]
  br label %42

42:                                               ; preds = %._crit_edge, %.preheader
  %.lcssa3 = phi i32 [ %split9, %._crit_edge ], [ %17, %.preheader ]
  %.lcssa2 = phi ptr [ %split10, %._crit_edge ], [ %25, %.preheader ]
  %.not = icmp sgt i32 %.lcssa1, %.lcssa3
  br i1 %.not, label %54, label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %.lcssa, align 4
  store i32 %44, ptr %10, align 4
  %45 = load i32, ptr %.lcssa2, align 4
  store i32 %45, ptr %.lcssa, align 4
  %46 = load i32, ptr %10, align 4
  %47 = load ptr, ptr %4, align 8
  %48 = load i32, ptr %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i8], ptr %47, i64 %49
  store i32 %46, ptr %50, align 4
  %51 = load i32, ptr %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %7, align 4
  %53 = add nsw i32 %48, -1
  store i32 %53, ptr %8, align 4
  br label %54

54:                                               ; preds = %43, %42
  %55 = phi i32 [ %53, %43 ], [ %.lcssa3, %42 ]
  %56 = phi i32 [ %52, %43 ], [ %.lcssa1, %42 ]
  %57 = phi ptr [ %47, %43 ], [ %19, %42 ]
  %.not1 = icmp sgt i32 %56, %55
  br i1 %.not1, label %58, label %16, !llvm.loop !11

58:                                               ; preds = %54
  %.lcssa6 = phi i32 [ %55, %54 ]
  %.lcssa5 = phi i32 [ %56, %54 ]
  %.lcssa4 = phi ptr [ %57, %54 ]
  %59 = load i32, ptr %5, align 4
  %60 = icmp slt i32 %59, %.lcssa6
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @Quicksort(ptr noundef %.lcssa4, i32 noundef %59, i32 noundef %.lcssa6)
  %.pre = load i32, ptr %7, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i32 [ %.pre, %61 ], [ %.lcssa5, %58 ]
  %64 = load i32, ptr %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %67, i32 noundef %63, i32 noundef %64)
  br label %68

68:                                               ; preds = %66, %62
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
  %10 = sext i32 %0 to i64
  %11 = getelementptr [4 x i8], ptr @sortlist, i64 %10
  %12 = getelementptr i8, ptr %11, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %13) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %4, %2 ]
  call void @Quick(i32 noundef %3)
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %1, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %6, !llvm.loop !12

6:                                                ; preds = %2
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
