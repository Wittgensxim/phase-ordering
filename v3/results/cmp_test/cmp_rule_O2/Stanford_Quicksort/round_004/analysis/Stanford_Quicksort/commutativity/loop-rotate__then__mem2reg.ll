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
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %1

1:                                                ; preds = %0, %17
  %.0 = phi i32 [ 1, %0 ], [ %18, %17 ]
  %2 = call i32 @Rand()
  %.fr = freeze i32 %2
  %3 = srem i32 %.fr, 100000
  %4 = add nsw i32 %3, -50000
  %5 = sext i32 %.0 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %5
  store i32 %4, ptr %6, align 4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr @biggest, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 %9, ptr @biggest, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i32, ptr @littlest, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 %9, ptr @littlest, align 4
  br label %17

17:                                               ; preds = %16, %13, %12
  %18 = add nsw i32 %.0, 1
  %19 = icmp slt i32 %18, 5001
  br i1 %19, label %1, label %20, !llvm.loop !7

20:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add nsw i32 %1, %2
  %5 = sdiv i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %46, %3
  %.03 = phi i32 [ %1, %3 ], [ %.25, %46 ]
  %.0 = phi i32 [ %2, %3 ], [ %.2, %46 ]
  %10 = sext i32 %.03 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %9
  br label %18

..preheader_crit_edge:                            ; preds = %18
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %9
  %.14 = phi i32 [ %20, %..preheader_crit_edge ], [ %.03, %9 ]
  %14 = sext i32 %.0 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %8, %16
  br i1 %17, label %.lr.ph1, label %32

.lr.ph1:                                          ; preds = %.preheader
  br label %25

18:                                               ; preds = %.lr.ph, %18
  %19 = phi i32 [ %.03, %.lr.ph ], [ %20, %18 ]
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %23, %8
  br i1 %24, label %18, label %..preheader_crit_edge, !llvm.loop !9

25:                                               ; preds = %.lr.ph1, %25
  %26 = phi i32 [ %.0, %.lr.ph1 ], [ %27, %25 ]
  %27 = add nsw i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8], ptr %0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp slt i32 %8, %30
  br i1 %31, label %25, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %25
  %split = phi ptr [ %0, %25 ]
  %split2 = phi i32 [ %27, %25 ]
  br label %32

32:                                               ; preds = %._crit_edge, %.preheader
  %.1 = phi i32 [ %27, %._crit_edge ], [ %.0, %.preheader ]
  %.lcssa2 = phi ptr [ %split, %._crit_edge ], [ %0, %.preheader ]
  %.lcssa = phi i32 [ %split2, %._crit_edge ], [ %.0, %.preheader ]
  %.not = icmp sgt i32 %.14, %.lcssa
  br i1 %.not, label %46, label %33

33:                                               ; preds = %32
  %34 = sext i32 %.14 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %.lcssa2, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %.1 to i64
  %38 = getelementptr inbounds [4 x i8], ptr %0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = sext i32 %.14 to i64
  %41 = getelementptr inbounds [4 x i8], ptr %0, i64 %40
  store i32 %39, ptr %41, align 4
  %42 = sext i32 %.1 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %0, i64 %42
  store i32 %36, ptr %43, align 4
  %44 = add nsw i32 %.14, 1
  %45 = add nsw i32 %.1, -1
  br label %46

46:                                               ; preds = %33, %32
  %.25 = phi i32 [ %.14, %32 ], [ %44, %33 ]
  %.2 = phi i32 [ %.1, %32 ], [ %45, %33 ]
  %.not1 = icmp sgt i32 %.25, %.2
  br i1 %.not1, label %47, label %9, !llvm.loop !11

47:                                               ; preds = %46
  %.lcssa3 = phi i32 [ %.2, %46 ]
  %48 = icmp slt i32 %1, %.lcssa3
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  call void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %.lcssa3)
  br label %50

50:                                               ; preds = %49, %47
  %51 = icmp slt i32 %.25, %2
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  call void @Quicksort(ptr noundef %0, i32 noundef %.25, i32 noundef %2)
  br label %53

53:                                               ; preds = %52, %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quick(i32 noundef %0) #0 {
  call void @Initarr()
  call void @Quicksort(ptr noundef nonnull @sortlist, i32 noundef 1, i32 noundef 5000)
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %3 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %2, %3
  br i1 %.not, label %4, label %7

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 20000), align 16
  %6 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %5, %6
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4, %1
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %8

8:                                                ; preds = %7, %4
  %9 = sext i32 %0 to i64
  %10 = getelementptr [4 x i8], ptr @sortlist, i64 %9
  %11 = getelementptr i8, ptr %10, i64 4
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %12) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %.0 = phi i32 [ 0, %0 ], [ %2, %1 ]
  %storemerge1 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Quick(i32 noundef %storemerge1)
  %2 = add nsw i32 %.0, 1
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %1, label %4, !llvm.loop !12

4:                                                ; preds = %1
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
