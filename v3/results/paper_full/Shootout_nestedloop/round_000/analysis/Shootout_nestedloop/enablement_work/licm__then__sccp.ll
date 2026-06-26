; ModuleID = 'results\paper_full\Shootout_nestedloop\Shootout_nestedloop.ll'
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
  %18 = getelementptr inbounds nuw ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @atoi(ptr noundef %19)
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i32 [ %20, %16 ], [ 46, %21 ]
  store i32 %23, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %24 = load i32, ptr %6, align 4
  %25 = load i32, ptr %6, align 4
  %26 = load i32, ptr %6, align 4
  %27 = load i32, ptr %6, align 4
  %28 = load i32, ptr %6, align 4
  %29 = load i32, ptr %6, align 4
  %.promoted36 = load i32, ptr %7, align 4
  %.promoted38 = load i32, ptr %8, align 4
  %.promoted40 = load i32, ptr %9, align 4
  %.promoted42 = load i32, ptr %10, align 4
  %.promoted = load i32, ptr %11, align 4
  %.promoted45 = load i32, ptr %12, align 4
  %.promoted47 = load i32, ptr %13, align 4
  br label %30

30:                                               ; preds = %71, %22
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa, %71 ], [ %.promoted47, %22 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa, %71 ], [ %.promoted45, %22 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44 = phi i32 [ %.lcssa411.lcssa20.lcssa31.lcssa, %71 ], [ %.promoted, %22 ]
  %.lcssa918.lcssa29.lcssa43 = phi i32 [ %.lcssa918.lcssa29.lcssa, %71 ], [ %.promoted42, %22 ]
  %.lcssa1628.lcssa41 = phi i32 [ %.lcssa1628.lcssa, %71 ], [ %.promoted40, %22 ]
  %.lcssa2639 = phi i32 [ %.lcssa26, %71 ], [ %.promoted38, %22 ]
  %31 = phi i32 [ %72, %71 ], [ %.promoted36, %22 ]
  %32 = icmp slt i32 %31, %24
  br i1 %32, label %33, label %73

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %68, %33
  %.lcssa27.lcssa15.lcssa24.lcssa35 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa, %68 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %33 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa, %68 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %33 ]
  %.lcssa411.lcssa20.lcssa31 = phi i32 [ %.lcssa411.lcssa20.lcssa, %68 ], [ %.lcssa411.lcssa20.lcssa31.lcssa44, %33 ]
  %.lcssa918.lcssa29 = phi i32 [ %.lcssa918.lcssa, %68 ], [ %.lcssa918.lcssa29.lcssa43, %33 ]
  %.lcssa1628 = phi i32 [ %.lcssa16, %68 ], [ %.lcssa1628.lcssa41, %33 ]
  %35 = phi i32 [ %69, %68 ], [ 0, %33 ]
  %36 = icmp slt i32 %35, %25
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %65, %37
  %.lcssa27.lcssa15.lcssa24 = phi i32 [ %.lcssa27.lcssa15.lcssa, %65 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35, %37 ]
  %.lcssa6.lcssa13.lcssa22 = phi i32 [ %.lcssa6.lcssa13.lcssa, %65 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33, %37 ]
  %.lcssa411.lcssa20 = phi i32 [ %.lcssa411.lcssa, %65 ], [ %.lcssa411.lcssa20.lcssa31, %37 ]
  %.lcssa918 = phi i32 [ %.lcssa9, %65 ], [ %.lcssa918.lcssa29, %37 ]
  %39 = phi i32 [ %66, %65 ], [ 0, %37 ]
  %40 = icmp slt i32 %39, %26
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %62, %41
  %.lcssa27.lcssa15 = phi i32 [ %.lcssa27.lcssa, %62 ], [ %.lcssa27.lcssa15.lcssa24, %41 ]
  %.lcssa6.lcssa13 = phi i32 [ %.lcssa6.lcssa, %62 ], [ %.lcssa6.lcssa13.lcssa22, %41 ]
  %.lcssa411 = phi i32 [ %.lcssa4, %62 ], [ %.lcssa411.lcssa20, %41 ]
  %43 = phi i32 [ %63, %62 ], [ 0, %41 ]
  %44 = icmp slt i32 %43, %27
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %59, %45
  %.lcssa27 = phi i32 [ %.lcssa2, %59 ], [ %.lcssa27.lcssa15, %45 ]
  %.lcssa6 = phi i32 [ %.lcssa, %59 ], [ %.lcssa6.lcssa13, %45 ]
  %47 = phi i32 [ %60, %59 ], [ 0, %45 ]
  %48 = icmp slt i32 %47, %28
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %56, %49
  %51 = phi i32 [ %55, %56 ], [ %.lcssa27, %49 ]
  %52 = phi i32 [ %57, %56 ], [ 0, %49 ]
  %53 = icmp slt i32 %52, %29
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = add nsw i32 %51, 1
  br label %56

56:                                               ; preds = %54
  %57 = add nsw i32 %52, 1
  br label %50, !llvm.loop !7

58:                                               ; preds = %50
  %.lcssa2 = phi i32 [ %51, %50 ]
  %.lcssa = phi i32 [ %52, %50 ]
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %47, 1
  br label %46, !llvm.loop !9

61:                                               ; preds = %46
  %.lcssa27.lcssa = phi i32 [ %.lcssa27, %46 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %46 ]
  %.lcssa4 = phi i32 [ %47, %46 ]
  br label %62

62:                                               ; preds = %61
  %63 = add nsw i32 %43, 1
  br label %42, !llvm.loop !10

64:                                               ; preds = %42
  %.lcssa27.lcssa15.lcssa = phi i32 [ %.lcssa27.lcssa15, %42 ]
  %.lcssa6.lcssa13.lcssa = phi i32 [ %.lcssa6.lcssa13, %42 ]
  %.lcssa411.lcssa = phi i32 [ %.lcssa411, %42 ]
  %.lcssa9 = phi i32 [ %43, %42 ]
  br label %65

65:                                               ; preds = %64
  %66 = add nsw i32 %39, 1
  br label %38, !llvm.loop !11

67:                                               ; preds = %38
  %.lcssa27.lcssa15.lcssa24.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24, %38 ]
  %.lcssa6.lcssa13.lcssa22.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22, %38 ]
  %.lcssa411.lcssa20.lcssa = phi i32 [ %.lcssa411.lcssa20, %38 ]
  %.lcssa918.lcssa = phi i32 [ %.lcssa918, %38 ]
  %.lcssa16 = phi i32 [ %39, %38 ]
  br label %68

68:                                               ; preds = %67
  %69 = add nsw i32 %35, 1
  br label %34, !llvm.loop !12

70:                                               ; preds = %34
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35, %34 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33, %34 ]
  %.lcssa411.lcssa20.lcssa31.lcssa = phi i32 [ %.lcssa411.lcssa20.lcssa31, %34 ]
  %.lcssa918.lcssa29.lcssa = phi i32 [ %.lcssa918.lcssa29, %34 ]
  %.lcssa1628.lcssa = phi i32 [ %.lcssa1628, %34 ]
  %.lcssa26 = phi i32 [ %35, %34 ]
  br label %71

71:                                               ; preds = %70
  %72 = add nsw i32 %31, 1
  br label %30, !llvm.loop !13

73:                                               ; preds = %30
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %30 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %30 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44.lcssa = phi i32 [ %.lcssa411.lcssa20.lcssa31.lcssa44, %30 ]
  %.lcssa918.lcssa29.lcssa43.lcssa = phi i32 [ %.lcssa918.lcssa29.lcssa43, %30 ]
  %.lcssa1628.lcssa41.lcssa = phi i32 [ %.lcssa1628.lcssa41, %30 ]
  %.lcssa2639.lcssa = phi i32 [ %.lcssa2639, %30 ]
  %.lcssa37 = phi i32 [ %31, %30 ]
  store i32 %.lcssa37, ptr %7, align 4
  store i32 %.lcssa2639.lcssa, ptr %8, align 4
  store i32 %.lcssa1628.lcssa41.lcssa, ptr %9, align 4
  store i32 %.lcssa918.lcssa29.lcssa43.lcssa, ptr %10, align 4
  store i32 %.lcssa411.lcssa20.lcssa31.lcssa44.lcssa, ptr %11, align 4
  store i32 %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46.lcssa, ptr %12, align 4
  store i32 %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48.lcssa, ptr %13, align 4
  %74 = load i32, ptr %13, align 4
  %75 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %74)
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
