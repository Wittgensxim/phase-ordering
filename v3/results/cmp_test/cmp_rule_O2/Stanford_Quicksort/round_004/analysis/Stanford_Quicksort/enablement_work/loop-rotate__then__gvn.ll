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

16:                                               ; preds = %65, %3
  %17 = phi i32 [ %66, %65 ], [ %2, %3 ]
  %18 = phi i32 [ %67, %65 ], [ %1, %3 ]
  %19 = phi ptr [ %68, %65 ], [ %0, %3 ]
  %20 = phi ptr [ %69, %65 ], [ %0, %3 ]
  %21 = phi i32 [ %48, %65 ], [ %15, %3 ]
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %20, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, %21
  br i1 %25, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %16
  br label %31

..preheader_crit_edge:                            ; preds = %31
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %16
  %26 = phi i32 [ %33, %..preheader_crit_edge ], [ %18, %16 ]
  %27 = sext i32 %17 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %20, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %21, %29
  br i1 %30, label %.lr.ph1, label %45

.lr.ph1:                                          ; preds = %.preheader
  br label %38

31:                                               ; preds = %.lr.ph, %31
  %32 = phi i32 [ %18, %.lr.ph ], [ %33, %31 ]
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %20, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %36, %21
  br i1 %37, label %31, label %..preheader_crit_edge, !llvm.loop !9

38:                                               ; preds = %.lr.ph1, %38
  %39 = phi i32 [ %17, %.lr.ph1 ], [ %40, %38 ]
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i8], ptr %19, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %15, %43
  br i1 %44, label %38, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %38
  br label %45

45:                                               ; preds = %._crit_edge, %.preheader
  %46 = phi i32 [ %40, %._crit_edge ], [ %17, %.preheader ]
  %47 = phi ptr [ %19, %._crit_edge ], [ %20, %.preheader ]
  %48 = phi i32 [ %15, %._crit_edge ], [ %21, %.preheader ]
  %.not = icmp sgt i32 %26, %46
  br i1 %.not, label %65, label %49

49:                                               ; preds = %45
  %50 = sext i32 %26 to i64
  %51 = getelementptr inbounds [4 x i8], ptr %47, i64 %50
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %10, align 4
  %53 = sext i32 %46 to i64
  %54 = getelementptr inbounds [4 x i8], ptr %19, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds [4 x i8], ptr %19, i64 %50
  store i32 %55, ptr %56, align 4
  %57 = load i32, ptr %10, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = load i32, ptr %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8], ptr %58, i64 %60
  store i32 %57, ptr %61, align 4
  %62 = load i32, ptr %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %7, align 4
  %64 = add nsw i32 %59, -1
  store i32 %64, ptr %8, align 4
  br label %65

65:                                               ; preds = %49, %45
  %66 = phi i32 [ %64, %49 ], [ %46, %45 ]
  %67 = phi i32 [ %63, %49 ], [ %26, %45 ]
  %68 = phi ptr [ %58, %49 ], [ %19, %45 ]
  %69 = phi ptr [ %58, %49 ], [ %47, %45 ]
  %.not1 = icmp sgt i32 %67, %66
  br i1 %.not1, label %70, label %16, !llvm.loop !11

70:                                               ; preds = %65
  %71 = load i32, ptr %5, align 4
  %72 = icmp slt i32 %71, %66
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  call void @Quicksort(ptr noundef %68, i32 noundef %71, i32 noundef %66)
  %.pre = load i32, ptr %7, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32 [ %.pre, %73 ], [ %67, %70 ]
  %76 = load i32, ptr %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %79, i32 noundef %75, i32 noundef %76)
  br label %80

80:                                               ; preds = %78, %74
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
