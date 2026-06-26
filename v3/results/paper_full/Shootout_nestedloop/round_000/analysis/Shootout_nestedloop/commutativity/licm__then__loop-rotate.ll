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
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
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
  %30 = icmp slt i32 %.promoted36, %24
  br i1 %30, label %.lr.ph96, label %73

.lr.ph96:                                         ; preds = %22
  br label %31

31:                                               ; preds = %.lr.ph96, %70
  %32 = phi i32 [ %.promoted36, %.lr.ph96 ], [ %71, %70 ]
  %.lcssa1628.lcssa4194 = phi i32 [ %.promoted40, %.lr.ph96 ], [ %.lcssa1628.lcssa, %70 ]
  %.lcssa918.lcssa29.lcssa4393 = phi i32 [ %.promoted42, %.lr.ph96 ], [ %.lcssa918.lcssa29.lcssa, %70 ]
  %.lcssa411.lcssa20.lcssa31.lcssa4492 = phi i32 [ %.promoted, %.lr.ph96 ], [ %.lcssa411.lcssa20.lcssa31.lcssa, %70 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa4691 = phi i32 [ %.promoted45, %.lr.ph96 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa, %70 ]
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa4890 = phi i32 [ %.promoted47, %.lr.ph96 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa, %70 ]
  %33 = icmp slt i32 0, %25
  br i1 %33, label %.lr.ph82, label %69

.lr.ph82:                                         ; preds = %31
  br label %34

34:                                               ; preds = %.lr.ph82, %66
  %35 = phi i32 [ 0, %.lr.ph82 ], [ %67, %66 ]
  %.lcssa918.lcssa2980 = phi i32 [ %.lcssa918.lcssa29.lcssa4393, %.lr.ph82 ], [ %.lcssa918.lcssa, %66 ]
  %.lcssa411.lcssa20.lcssa3179 = phi i32 [ %.lcssa411.lcssa20.lcssa31.lcssa4492, %.lr.ph82 ], [ %.lcssa411.lcssa20.lcssa, %66 ]
  %.lcssa6.lcssa13.lcssa22.lcssa3378 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa4691, %.lr.ph82 ], [ %.lcssa6.lcssa13.lcssa22.lcssa, %66 ]
  %.lcssa27.lcssa15.lcssa24.lcssa3577 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa4890, %.lr.ph82 ], [ %.lcssa27.lcssa15.lcssa24.lcssa, %66 ]
  %36 = icmp slt i32 0, %26
  br i1 %36, label %.lr.ph70, label %65

.lr.ph70:                                         ; preds = %34
  br label %37

37:                                               ; preds = %.lr.ph70, %62
  %38 = phi i32 [ 0, %.lr.ph70 ], [ %63, %62 ]
  %.lcssa411.lcssa2068 = phi i32 [ %.lcssa411.lcssa20.lcssa3179, %.lr.ph70 ], [ %.lcssa411.lcssa, %62 ]
  %.lcssa6.lcssa13.lcssa2267 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa3378, %.lr.ph70 ], [ %.lcssa6.lcssa13.lcssa, %62 ]
  %.lcssa27.lcssa15.lcssa2466 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa3577, %.lr.ph70 ], [ %.lcssa27.lcssa15.lcssa, %62 ]
  %39 = icmp slt i32 0, %27
  br i1 %39, label %.lr.ph60, label %61

.lr.ph60:                                         ; preds = %37
  br label %40

40:                                               ; preds = %.lr.ph60, %58
  %41 = phi i32 [ 0, %.lr.ph60 ], [ %59, %58 ]
  %.lcssa6.lcssa1358 = phi i32 [ %.lcssa6.lcssa13.lcssa2267, %.lr.ph60 ], [ %.lcssa6.lcssa, %58 ]
  %.lcssa27.lcssa1557 = phi i32 [ %.lcssa27.lcssa15.lcssa2466, %.lr.ph60 ], [ %.lcssa27.lcssa, %58 ]
  %42 = icmp slt i32 0, %28
  br i1 %42, label %.lr.ph52, label %57

.lr.ph52:                                         ; preds = %40
  br label %43

43:                                               ; preds = %.lr.ph52, %54
  %44 = phi i32 [ 0, %.lr.ph52 ], [ %55, %54 ]
  %.lcssa2750 = phi i32 [ %.lcssa27.lcssa1557, %.lr.ph52 ], [ %.lcssa2, %54 ]
  %45 = icmp slt i32 0, %29
  br i1 %45, label %.lr.ph, label %53

.lr.ph:                                           ; preds = %43
  br label %46

46:                                               ; preds = %.lr.ph, %50
  %47 = phi i32 [ 0, %.lr.ph ], [ %51, %50 ]
  %48 = phi i32 [ %.lcssa2750, %.lr.ph ], [ %49, %50 ]
  %49 = add nsw i32 %48, 1
  br label %50

50:                                               ; preds = %46
  %51 = add nsw i32 %47, 1
  %52 = icmp slt i32 %51, %29
  br i1 %52, label %46, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %50
  %split = phi i32 [ %49, %50 ]
  %split49 = phi i32 [ %51, %50 ]
  br label %53

53:                                               ; preds = %._crit_edge, %43
  %.lcssa2 = phi i32 [ %split, %._crit_edge ], [ %.lcssa2750, %43 ]
  %.lcssa = phi i32 [ %split49, %._crit_edge ], [ 0, %43 ]
  br label %54

54:                                               ; preds = %53
  %55 = add nsw i32 %44, 1
  %56 = icmp slt i32 %55, %28
  br i1 %56, label %43, label %._crit_edge53, !llvm.loop !9

._crit_edge53:                                    ; preds = %54
  %split54 = phi i32 [ %.lcssa2, %54 ]
  %split55 = phi i32 [ %.lcssa, %54 ]
  %split56 = phi i32 [ %55, %54 ]
  br label %57

57:                                               ; preds = %._crit_edge53, %40
  %.lcssa27.lcssa = phi i32 [ %split54, %._crit_edge53 ], [ %.lcssa27.lcssa1557, %40 ]
  %.lcssa6.lcssa = phi i32 [ %split55, %._crit_edge53 ], [ %.lcssa6.lcssa1358, %40 ]
  %.lcssa4 = phi i32 [ %split56, %._crit_edge53 ], [ 0, %40 ]
  br label %58

58:                                               ; preds = %57
  %59 = add nsw i32 %41, 1
  %60 = icmp slt i32 %59, %27
  br i1 %60, label %40, label %._crit_edge61, !llvm.loop !10

._crit_edge61:                                    ; preds = %58
  %split62 = phi i32 [ %.lcssa27.lcssa, %58 ]
  %split63 = phi i32 [ %.lcssa6.lcssa, %58 ]
  %split64 = phi i32 [ %.lcssa4, %58 ]
  %split65 = phi i32 [ %59, %58 ]
  br label %61

61:                                               ; preds = %._crit_edge61, %37
  %.lcssa27.lcssa15.lcssa = phi i32 [ %split62, %._crit_edge61 ], [ %.lcssa27.lcssa15.lcssa2466, %37 ]
  %.lcssa6.lcssa13.lcssa = phi i32 [ %split63, %._crit_edge61 ], [ %.lcssa6.lcssa13.lcssa2267, %37 ]
  %.lcssa411.lcssa = phi i32 [ %split64, %._crit_edge61 ], [ %.lcssa411.lcssa2068, %37 ]
  %.lcssa9 = phi i32 [ %split65, %._crit_edge61 ], [ 0, %37 ]
  br label %62

62:                                               ; preds = %61
  %63 = add nsw i32 %38, 1
  %64 = icmp slt i32 %63, %26
  br i1 %64, label %37, label %._crit_edge71, !llvm.loop !11

._crit_edge71:                                    ; preds = %62
  %split72 = phi i32 [ %.lcssa27.lcssa15.lcssa, %62 ]
  %split73 = phi i32 [ %.lcssa6.lcssa13.lcssa, %62 ]
  %split74 = phi i32 [ %.lcssa411.lcssa, %62 ]
  %split75 = phi i32 [ %.lcssa9, %62 ]
  %split76 = phi i32 [ %63, %62 ]
  br label %65

65:                                               ; preds = %._crit_edge71, %34
  %.lcssa27.lcssa15.lcssa24.lcssa = phi i32 [ %split72, %._crit_edge71 ], [ %.lcssa27.lcssa15.lcssa24.lcssa3577, %34 ]
  %.lcssa6.lcssa13.lcssa22.lcssa = phi i32 [ %split73, %._crit_edge71 ], [ %.lcssa6.lcssa13.lcssa22.lcssa3378, %34 ]
  %.lcssa411.lcssa20.lcssa = phi i32 [ %split74, %._crit_edge71 ], [ %.lcssa411.lcssa20.lcssa3179, %34 ]
  %.lcssa918.lcssa = phi i32 [ %split75, %._crit_edge71 ], [ %.lcssa918.lcssa2980, %34 ]
  %.lcssa16 = phi i32 [ %split76, %._crit_edge71 ], [ 0, %34 ]
  br label %66

66:                                               ; preds = %65
  %67 = add nsw i32 %35, 1
  %68 = icmp slt i32 %67, %25
  br i1 %68, label %34, label %._crit_edge83, !llvm.loop !12

._crit_edge83:                                    ; preds = %66
  %split84 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa, %66 ]
  %split85 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa, %66 ]
  %split86 = phi i32 [ %.lcssa411.lcssa20.lcssa, %66 ]
  %split87 = phi i32 [ %.lcssa918.lcssa, %66 ]
  %split88 = phi i32 [ %.lcssa16, %66 ]
  %split89 = phi i32 [ %67, %66 ]
  br label %69

69:                                               ; preds = %._crit_edge83, %31
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa = phi i32 [ %split84, %._crit_edge83 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa4890, %31 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa = phi i32 [ %split85, %._crit_edge83 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa4691, %31 ]
  %.lcssa411.lcssa20.lcssa31.lcssa = phi i32 [ %split86, %._crit_edge83 ], [ %.lcssa411.lcssa20.lcssa31.lcssa4492, %31 ]
  %.lcssa918.lcssa29.lcssa = phi i32 [ %split87, %._crit_edge83 ], [ %.lcssa918.lcssa29.lcssa4393, %31 ]
  %.lcssa1628.lcssa = phi i32 [ %split88, %._crit_edge83 ], [ %.lcssa1628.lcssa4194, %31 ]
  %.lcssa26 = phi i32 [ %split89, %._crit_edge83 ], [ 0, %31 ]
  br label %70

70:                                               ; preds = %69
  %71 = add nsw i32 %32, 1
  %72 = icmp slt i32 %71, %24
  br i1 %72, label %31, label %._crit_edge97, !llvm.loop !13

._crit_edge97:                                    ; preds = %70
  %split98 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa, %70 ]
  %split99 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa, %70 ]
  %split100 = phi i32 [ %.lcssa411.lcssa20.lcssa31.lcssa, %70 ]
  %split101 = phi i32 [ %.lcssa918.lcssa29.lcssa, %70 ]
  %split102 = phi i32 [ %.lcssa1628.lcssa, %70 ]
  %split103 = phi i32 [ %.lcssa26, %70 ]
  %split104 = phi i32 [ %71, %70 ]
  br label %73

73:                                               ; preds = %._crit_edge97, %22
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48.lcssa = phi i32 [ %split98, %._crit_edge97 ], [ %.promoted47, %22 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46.lcssa = phi i32 [ %split99, %._crit_edge97 ], [ %.promoted45, %22 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44.lcssa = phi i32 [ %split100, %._crit_edge97 ], [ %.promoted, %22 ]
  %.lcssa918.lcssa29.lcssa43.lcssa = phi i32 [ %split101, %._crit_edge97 ], [ %.promoted42, %22 ]
  %.lcssa1628.lcssa41.lcssa = phi i32 [ %split102, %._crit_edge97 ], [ %.promoted40, %22 ]
  %.lcssa2639.lcssa = phi i32 [ %split103, %._crit_edge97 ], [ %.promoted38, %22 ]
  %.lcssa37 = phi i32 [ %split104, %._crit_edge97 ], [ %.promoted36, %22 ]
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
