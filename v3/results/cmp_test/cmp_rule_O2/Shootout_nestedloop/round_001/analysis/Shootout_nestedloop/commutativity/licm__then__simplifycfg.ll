; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_000\input.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @atoi(ptr noundef %19)
  br label %21

21:                                               ; preds = %2, %16
  %22 = phi i32 [ %20, %16 ], [ 46, %2 ]
  store i32 %22, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %23 = load i32, ptr %6, align 4
  %24 = load i32, ptr %6, align 4
  %25 = load i32, ptr %6, align 4
  %26 = load i32, ptr %6, align 4
  %27 = load i32, ptr %6, align 4
  %28 = load i32, ptr %6, align 4
  %.promoted36 = load i32, ptr %7, align 4
  %.promoted38 = load i32, ptr %8, align 4
  %.promoted40 = load i32, ptr %9, align 4
  %.promoted42 = load i32, ptr %10, align 4
  %.promoted = load i32, ptr %11, align 4
  %.promoted45 = load i32, ptr %12, align 4
  %.promoted47 = load i32, ptr %13, align 4
  br label %29

29:                                               ; preds = %59, %21
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa, %59 ], [ %.promoted47, %21 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa, %59 ], [ %.promoted45, %21 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44 = phi i32 [ %.lcssa411.lcssa20.lcssa31.lcssa, %59 ], [ %.promoted, %21 ]
  %.lcssa918.lcssa29.lcssa43 = phi i32 [ %.lcssa918.lcssa29.lcssa, %59 ], [ %.promoted42, %21 ]
  %.lcssa1628.lcssa41 = phi i32 [ %.lcssa1628.lcssa, %59 ], [ %.promoted40, %21 ]
  %.lcssa2639 = phi i32 [ %.lcssa26, %59 ], [ %.promoted38, %21 ]
  %30 = phi i32 [ %60, %59 ], [ %.promoted36, %21 ]
  %31 = icmp slt i32 %30, %23
  br i1 %31, label %32, label %61

32:                                               ; preds = %29, %57
  %.lcssa27.lcssa15.lcssa24.lcssa35 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa, %57 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %29 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa, %57 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %29 ]
  %.lcssa411.lcssa20.lcssa31 = phi i32 [ %.lcssa411.lcssa20.lcssa, %57 ], [ %.lcssa411.lcssa20.lcssa31.lcssa44, %29 ]
  %.lcssa918.lcssa29 = phi i32 [ %.lcssa918.lcssa, %57 ], [ %.lcssa918.lcssa29.lcssa43, %29 ]
  %.lcssa1628 = phi i32 [ %.lcssa16, %57 ], [ %.lcssa1628.lcssa41, %29 ]
  %33 = phi i32 [ %58, %57 ], [ 0, %29 ]
  %34 = icmp slt i32 %33, %24
  br i1 %34, label %35, label %59

35:                                               ; preds = %32, %55
  %.lcssa27.lcssa15.lcssa24 = phi i32 [ %.lcssa27.lcssa15.lcssa, %55 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35, %32 ]
  %.lcssa6.lcssa13.lcssa22 = phi i32 [ %.lcssa6.lcssa13.lcssa, %55 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33, %32 ]
  %.lcssa411.lcssa20 = phi i32 [ %.lcssa411.lcssa, %55 ], [ %.lcssa411.lcssa20.lcssa31, %32 ]
  %.lcssa918 = phi i32 [ %.lcssa9, %55 ], [ %.lcssa918.lcssa29, %32 ]
  %36 = phi i32 [ %56, %55 ], [ 0, %32 ]
  %37 = icmp slt i32 %36, %25
  br i1 %37, label %38, label %57

38:                                               ; preds = %35, %53
  %.lcssa27.lcssa15 = phi i32 [ %.lcssa27.lcssa, %53 ], [ %.lcssa27.lcssa15.lcssa24, %35 ]
  %.lcssa6.lcssa13 = phi i32 [ %.lcssa6.lcssa, %53 ], [ %.lcssa6.lcssa13.lcssa22, %35 ]
  %.lcssa411 = phi i32 [ %.lcssa4, %53 ], [ %.lcssa411.lcssa20, %35 ]
  %39 = phi i32 [ %54, %53 ], [ 0, %35 ]
  %40 = icmp slt i32 %39, %26
  br i1 %40, label %41, label %55

41:                                               ; preds = %38, %51
  %.lcssa27 = phi i32 [ %.lcssa2, %51 ], [ %.lcssa27.lcssa15, %38 ]
  %.lcssa6 = phi i32 [ %.lcssa, %51 ], [ %.lcssa6.lcssa13, %38 ]
  %42 = phi i32 [ %52, %51 ], [ 0, %38 ]
  %43 = icmp slt i32 %42, %27
  br i1 %43, label %44, label %53

44:                                               ; preds = %41, %48
  %45 = phi i32 [ %49, %48 ], [ %.lcssa27, %41 ]
  %46 = phi i32 [ %50, %48 ], [ 0, %41 ]
  %47 = icmp slt i32 %46, %28
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = add nsw i32 %45, 1
  %50 = add nsw i32 %46, 1
  br label %44, !llvm.loop !7

51:                                               ; preds = %44
  %.lcssa2 = phi i32 [ %45, %44 ]
  %.lcssa = phi i32 [ %46, %44 ]
  %52 = add nsw i32 %42, 1
  br label %41, !llvm.loop !9

53:                                               ; preds = %41
  %.lcssa27.lcssa = phi i32 [ %.lcssa27, %41 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %41 ]
  %.lcssa4 = phi i32 [ %42, %41 ]
  %54 = add nsw i32 %39, 1
  br label %38, !llvm.loop !10

55:                                               ; preds = %38
  %.lcssa27.lcssa15.lcssa = phi i32 [ %.lcssa27.lcssa15, %38 ]
  %.lcssa6.lcssa13.lcssa = phi i32 [ %.lcssa6.lcssa13, %38 ]
  %.lcssa411.lcssa = phi i32 [ %.lcssa411, %38 ]
  %.lcssa9 = phi i32 [ %39, %38 ]
  %56 = add nsw i32 %36, 1
  br label %35, !llvm.loop !11

57:                                               ; preds = %35
  %.lcssa27.lcssa15.lcssa24.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24, %35 ]
  %.lcssa6.lcssa13.lcssa22.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22, %35 ]
  %.lcssa411.lcssa20.lcssa = phi i32 [ %.lcssa411.lcssa20, %35 ]
  %.lcssa918.lcssa = phi i32 [ %.lcssa918, %35 ]
  %.lcssa16 = phi i32 [ %36, %35 ]
  %58 = add nsw i32 %33, 1
  br label %32, !llvm.loop !12

59:                                               ; preds = %32
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35, %32 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33, %32 ]
  %.lcssa411.lcssa20.lcssa31.lcssa = phi i32 [ %.lcssa411.lcssa20.lcssa31, %32 ]
  %.lcssa918.lcssa29.lcssa = phi i32 [ %.lcssa918.lcssa29, %32 ]
  %.lcssa1628.lcssa = phi i32 [ %.lcssa1628, %32 ]
  %.lcssa26 = phi i32 [ %33, %32 ]
  %60 = add nsw i32 %30, 1
  br label %29, !llvm.loop !13

61:                                               ; preds = %29
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %29 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %29 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44.lcssa = phi i32 [ %.lcssa411.lcssa20.lcssa31.lcssa44, %29 ]
  %.lcssa918.lcssa29.lcssa43.lcssa = phi i32 [ %.lcssa918.lcssa29.lcssa43, %29 ]
  %.lcssa1628.lcssa41.lcssa = phi i32 [ %.lcssa1628.lcssa41, %29 ]
  %.lcssa2639.lcssa = phi i32 [ %.lcssa2639, %29 ]
  %.lcssa37 = phi i32 [ %30, %29 ]
  store i32 %.lcssa37, ptr %7, align 4
  store i32 %.lcssa2639.lcssa, ptr %8, align 4
  store i32 %.lcssa1628.lcssa41.lcssa, ptr %9, align 4
  store i32 %.lcssa918.lcssa29.lcssa43.lcssa, ptr %10, align 4
  store i32 %.lcssa411.lcssa20.lcssa31.lcssa44.lcssa, ptr %11, align 4
  store i32 %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46.lcssa, ptr %12, align 4
  store i32 %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48.lcssa, ptr %13, align 4
  %62 = load i32, ptr %13, align 4
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %62)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c", directory: "E:/Phase Ordering/v3")
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
