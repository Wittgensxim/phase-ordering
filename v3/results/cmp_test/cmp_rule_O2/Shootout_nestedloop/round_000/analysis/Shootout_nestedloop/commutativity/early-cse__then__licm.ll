; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
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
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds ptr, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @atoi(ptr noundef %18)
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 46, %20 ]
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

29:                                               ; preds = %70, %21
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa, %70 ], [ %.promoted47, %21 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa, %70 ], [ %.promoted45, %21 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44 = phi i32 [ %.lcssa411.lcssa20.lcssa31.lcssa, %70 ], [ %.promoted, %21 ]
  %.lcssa918.lcssa29.lcssa43 = phi i32 [ %.lcssa918.lcssa29.lcssa, %70 ], [ %.promoted42, %21 ]
  %.lcssa1628.lcssa41 = phi i32 [ %.lcssa1628.lcssa, %70 ], [ %.promoted40, %21 ]
  %.lcssa2639 = phi i32 [ %.lcssa26, %70 ], [ %.promoted38, %21 ]
  %30 = phi i32 [ %71, %70 ], [ %.promoted36, %21 ]
  %31 = icmp slt i32 %30, %23
  br i1 %31, label %32, label %72

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %67, %32
  %.lcssa27.lcssa15.lcssa24.lcssa35 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa, %67 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %32 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa, %67 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %32 ]
  %.lcssa411.lcssa20.lcssa31 = phi i32 [ %.lcssa411.lcssa20.lcssa, %67 ], [ %.lcssa411.lcssa20.lcssa31.lcssa44, %32 ]
  %.lcssa918.lcssa29 = phi i32 [ %.lcssa918.lcssa, %67 ], [ %.lcssa918.lcssa29.lcssa43, %32 ]
  %.lcssa1628 = phi i32 [ %.lcssa16, %67 ], [ %.lcssa1628.lcssa41, %32 ]
  %34 = phi i32 [ %68, %67 ], [ 0, %32 ]
  %35 = icmp slt i32 %34, %24
  br i1 %35, label %36, label %69

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %64, %36
  %.lcssa27.lcssa15.lcssa24 = phi i32 [ %.lcssa27.lcssa15.lcssa, %64 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35, %36 ]
  %.lcssa6.lcssa13.lcssa22 = phi i32 [ %.lcssa6.lcssa13.lcssa, %64 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33, %36 ]
  %.lcssa411.lcssa20 = phi i32 [ %.lcssa411.lcssa, %64 ], [ %.lcssa411.lcssa20.lcssa31, %36 ]
  %.lcssa918 = phi i32 [ %.lcssa9, %64 ], [ %.lcssa918.lcssa29, %36 ]
  %38 = phi i32 [ %65, %64 ], [ 0, %36 ]
  %39 = icmp slt i32 %38, %25
  br i1 %39, label %40, label %66

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %61, %40
  %.lcssa27.lcssa15 = phi i32 [ %.lcssa27.lcssa, %61 ], [ %.lcssa27.lcssa15.lcssa24, %40 ]
  %.lcssa6.lcssa13 = phi i32 [ %.lcssa6.lcssa, %61 ], [ %.lcssa6.lcssa13.lcssa22, %40 ]
  %.lcssa411 = phi i32 [ %.lcssa4, %61 ], [ %.lcssa411.lcssa20, %40 ]
  %42 = phi i32 [ %62, %61 ], [ 0, %40 ]
  %43 = icmp slt i32 %42, %26
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %58, %44
  %.lcssa27 = phi i32 [ %.lcssa2, %58 ], [ %.lcssa27.lcssa15, %44 ]
  %.lcssa6 = phi i32 [ %.lcssa, %58 ], [ %.lcssa6.lcssa13, %44 ]
  %46 = phi i32 [ %59, %58 ], [ 0, %44 ]
  %47 = icmp slt i32 %46, %27
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %55, %48
  %50 = phi i32 [ %54, %55 ], [ %.lcssa27, %48 ]
  %51 = phi i32 [ %56, %55 ], [ 0, %48 ]
  %52 = icmp slt i32 %51, %28
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = add nsw i32 %50, 1
  br label %55

55:                                               ; preds = %53
  %56 = add nsw i32 %51, 1
  br label %49, !llvm.loop !7

57:                                               ; preds = %49
  %.lcssa2 = phi i32 [ %50, %49 ]
  %.lcssa = phi i32 [ %51, %49 ]
  br label %58

58:                                               ; preds = %57
  %59 = add nsw i32 %46, 1
  br label %45, !llvm.loop !9

60:                                               ; preds = %45
  %.lcssa27.lcssa = phi i32 [ %.lcssa27, %45 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %45 ]
  %.lcssa4 = phi i32 [ %46, %45 ]
  br label %61

61:                                               ; preds = %60
  %62 = add nsw i32 %42, 1
  br label %41, !llvm.loop !10

63:                                               ; preds = %41
  %.lcssa27.lcssa15.lcssa = phi i32 [ %.lcssa27.lcssa15, %41 ]
  %.lcssa6.lcssa13.lcssa = phi i32 [ %.lcssa6.lcssa13, %41 ]
  %.lcssa411.lcssa = phi i32 [ %.lcssa411, %41 ]
  %.lcssa9 = phi i32 [ %42, %41 ]
  br label %64

64:                                               ; preds = %63
  %65 = add nsw i32 %38, 1
  br label %37, !llvm.loop !11

66:                                               ; preds = %37
  %.lcssa27.lcssa15.lcssa24.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24, %37 ]
  %.lcssa6.lcssa13.lcssa22.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22, %37 ]
  %.lcssa411.lcssa20.lcssa = phi i32 [ %.lcssa411.lcssa20, %37 ]
  %.lcssa918.lcssa = phi i32 [ %.lcssa918, %37 ]
  %.lcssa16 = phi i32 [ %38, %37 ]
  br label %67

67:                                               ; preds = %66
  %68 = add nsw i32 %34, 1
  br label %33, !llvm.loop !12

69:                                               ; preds = %33
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35, %33 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33, %33 ]
  %.lcssa411.lcssa20.lcssa31.lcssa = phi i32 [ %.lcssa411.lcssa20.lcssa31, %33 ]
  %.lcssa918.lcssa29.lcssa = phi i32 [ %.lcssa918.lcssa29, %33 ]
  %.lcssa1628.lcssa = phi i32 [ %.lcssa1628, %33 ]
  %.lcssa26 = phi i32 [ %34, %33 ]
  br label %70

70:                                               ; preds = %69
  %71 = add nsw i32 %30, 1
  br label %29, !llvm.loop !13

72:                                               ; preds = %29
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
  %73 = load i32, ptr %13, align 4
  %74 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %73)
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
