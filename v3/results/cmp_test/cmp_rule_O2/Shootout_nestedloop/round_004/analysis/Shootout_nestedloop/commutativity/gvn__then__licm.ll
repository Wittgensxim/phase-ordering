; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_003\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = icmp eq i32 %0, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @atoi(ptr noundef %14) #2
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ 46, %2 ]
  store i32 %17, ptr %3, align 4
  store i32 0, ptr %10, align 4
  %.promoted47 = load i32, ptr %10, align 1
  %.promoted49 = load i32, ptr %9, align 1
  %.promoted51 = load i32, ptr %8, align 1
  %.promoted53 = load i32, ptr %7, align 1
  %.promoted55 = load i32, ptr %6, align 1
  %.promoted = load i32, ptr %5, align 1
  br label %18

18:                                               ; preds = %68, %16
  %.lcssa3657 = phi i32 [ %.promoted, %16 ], [ %.lcssa36, %68 ]
  %.lcssa2845.lcssa56 = phi i32 [ %.promoted55, %16 ], [ %.lcssa2845.lcssa, %68 ]
  %.lcssa2235.lcssa44.lcssa54 = phi i32 [ %.promoted53, %16 ], [ %.lcssa2235.lcssa44.lcssa, %68 ]
  %.lcssa1827.lcssa34.lcssa42.lcssa52 = phi i32 [ %.promoted51, %16 ], [ %.lcssa1827.lcssa34.lcssa42.lcssa, %68 ]
  %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa50 = phi i32 [ %.promoted49, %16 ], [ %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa, %68 ]
  %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa48 = phi i32 [ %.promoted47, %16 ], [ %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa, %68 ]
  %19 = phi i32 [ %17, %16 ], [ %.lcssa14, %68 ]
  %20 = phi i32 [ %17, %16 ], [ %.lcssa13, %68 ]
  %21 = phi i32 [ %17, %16 ], [ %.lcssa12, %68 ]
  %22 = phi i32 [ %17, %16 ], [ %.lcssa11, %68 ]
  %23 = phi i32 [ 0, %16 ], [ %.lcssa10, %68 ]
  %24 = phi i32 [ 0, %16 ], [ %69, %68 ]
  %25 = icmp slt i32 %24, %22
  br i1 %25, label %.preheader4, label %70

.preheader4:                                      ; preds = %18
  br label %26

26:                                               ; preds = %66, %.preheader4
  %.lcssa2845 = phi i32 [ %.lcssa28, %66 ], [ %.lcssa2845.lcssa56, %.preheader4 ]
  %.lcssa2235.lcssa44 = phi i32 [ %.lcssa2235.lcssa, %66 ], [ %.lcssa2235.lcssa44.lcssa54, %.preheader4 ]
  %.lcssa1827.lcssa34.lcssa42 = phi i32 [ %.lcssa1827.lcssa34.lcssa, %66 ], [ %.lcssa1827.lcssa34.lcssa42.lcssa52, %.preheader4 ]
  %.lcssa1621.lcssa26.lcssa32.lcssa40 = phi i32 [ %.lcssa1621.lcssa26.lcssa32.lcssa, %66 ], [ %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa50, %.preheader4 ]
  %.lcssa1720.lcssa24.lcssa30.lcssa38 = phi i32 [ %.lcssa1720.lcssa24.lcssa30.lcssa, %66 ], [ %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa48, %.preheader4 ]
  %27 = phi i32 [ %.lcssa9, %66 ], [ %19, %.preheader4 ]
  %28 = phi i32 [ %.lcssa8, %66 ], [ %20, %.preheader4 ]
  %29 = phi i32 [ %.lcssa7, %66 ], [ %21, %.preheader4 ]
  %30 = phi i32 [ %.lcssa7, %66 ], [ %22, %.preheader4 ]
  %31 = phi i32 [ %.lcssa6, %66 ], [ %23, %.preheader4 ]
  %32 = phi i32 [ %67, %66 ], [ 0, %.preheader4 ]
  %33 = icmp slt i32 %32, %30
  br i1 %33, label %.preheader3, label %68

.preheader3:                                      ; preds = %26
  br label %34

34:                                               ; preds = %64, %.preheader3
  %.lcssa2235 = phi i32 [ %.lcssa22, %64 ], [ %.lcssa2235.lcssa44, %.preheader3 ]
  %.lcssa1827.lcssa34 = phi i32 [ %.lcssa1827.lcssa, %64 ], [ %.lcssa1827.lcssa34.lcssa42, %.preheader3 ]
  %.lcssa1621.lcssa26.lcssa32 = phi i32 [ %.lcssa1621.lcssa26.lcssa, %64 ], [ %.lcssa1621.lcssa26.lcssa32.lcssa40, %.preheader3 ]
  %.lcssa1720.lcssa24.lcssa30 = phi i32 [ %.lcssa1720.lcssa24.lcssa, %64 ], [ %.lcssa1720.lcssa24.lcssa30.lcssa38, %.preheader3 ]
  %35 = phi i32 [ %.lcssa5, %64 ], [ %27, %.preheader3 ]
  %36 = phi i32 [ %.lcssa4, %64 ], [ %28, %.preheader3 ]
  %37 = phi i32 [ %.lcssa4, %64 ], [ %29, %.preheader3 ]
  %38 = phi i32 [ %.lcssa3, %64 ], [ %31, %.preheader3 ]
  %39 = phi i32 [ %65, %64 ], [ 0, %.preheader3 ]
  %40 = icmp slt i32 %39, %37
  br i1 %40, label %.preheader2, label %66

.preheader2:                                      ; preds = %34
  br label %41

41:                                               ; preds = %62, %.preheader2
  %.lcssa1827 = phi i32 [ %.lcssa18, %62 ], [ %.lcssa1827.lcssa34, %.preheader2 ]
  %.lcssa1621.lcssa26 = phi i32 [ %.lcssa1621.lcssa, %62 ], [ %.lcssa1621.lcssa26.lcssa32, %.preheader2 ]
  %.lcssa1720.lcssa24 = phi i32 [ %.lcssa1720.lcssa, %62 ], [ %.lcssa1720.lcssa24.lcssa30, %.preheader2 ]
  %42 = phi i32 [ %.lcssa2, %62 ], [ %35, %.preheader2 ]
  %43 = phi i32 [ %.lcssa2, %62 ], [ %36, %.preheader2 ]
  %44 = phi i32 [ %.lcssa1, %62 ], [ %38, %.preheader2 ]
  %45 = phi i32 [ %63, %62 ], [ 0, %.preheader2 ]
  %46 = icmp slt i32 %45, %43
  br i1 %46, label %.preheader1, label %64

.preheader1:                                      ; preds = %41
  br label %47

47:                                               ; preds = %60, %.preheader1
  %.lcssa1621 = phi i32 [ %.lcssa16, %60 ], [ %.lcssa1621.lcssa26, %.preheader1 ]
  %.lcssa1720 = phi i32 [ %.lcssa17, %60 ], [ %.lcssa1720.lcssa24, %.preheader1 ]
  %48 = phi i32 [ %17, %60 ], [ %42, %.preheader1 ]
  %49 = phi i32 [ %.lcssa, %60 ], [ %44, %.preheader1 ]
  %50 = phi i32 [ %61, %60 ], [ 0, %.preheader1 ]
  %51 = icmp slt i32 %50, %48
  br i1 %51, label %.preheader, label %62

.preheader:                                       ; preds = %47
  br label %52

52:                                               ; preds = %57, %.preheader
  %53 = phi i32 [ %58, %57 ], [ %.lcssa1720, %.preheader ]
  %54 = phi i32 [ %58, %57 ], [ %49, %.preheader ]
  %55 = phi i32 [ %59, %57 ], [ 0, %.preheader ]
  %56 = icmp slt i32 %55, %17
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = add nsw i32 %54, 1
  %59 = add nsw i32 %55, 1
  br label %52, !llvm.loop !7

60:                                               ; preds = %52
  %.lcssa17 = phi i32 [ %53, %52 ]
  %.lcssa16 = phi i32 [ %55, %52 ]
  %.lcssa = phi i32 [ %54, %52 ]
  %61 = add nsw i32 %50, 1
  br label %47, !llvm.loop !9

62:                                               ; preds = %47
  %.lcssa1621.lcssa = phi i32 [ %.lcssa1621, %47 ]
  %.lcssa1720.lcssa = phi i32 [ %.lcssa1720, %47 ]
  %.lcssa18 = phi i32 [ %50, %47 ]
  %.lcssa2 = phi i32 [ %48, %47 ]
  %.lcssa1 = phi i32 [ %49, %47 ]
  %63 = add nsw i32 %45, 1
  br label %41, !llvm.loop !10

64:                                               ; preds = %41
  %.lcssa1827.lcssa = phi i32 [ %.lcssa1827, %41 ]
  %.lcssa1621.lcssa26.lcssa = phi i32 [ %.lcssa1621.lcssa26, %41 ]
  %.lcssa1720.lcssa24.lcssa = phi i32 [ %.lcssa1720.lcssa24, %41 ]
  %.lcssa22 = phi i32 [ %45, %41 ]
  %.lcssa5 = phi i32 [ %42, %41 ]
  %.lcssa4 = phi i32 [ %43, %41 ]
  %.lcssa3 = phi i32 [ %44, %41 ]
  %65 = add nsw i32 %39, 1
  br label %34, !llvm.loop !11

66:                                               ; preds = %34
  %.lcssa2235.lcssa = phi i32 [ %.lcssa2235, %34 ]
  %.lcssa1827.lcssa34.lcssa = phi i32 [ %.lcssa1827.lcssa34, %34 ]
  %.lcssa1621.lcssa26.lcssa32.lcssa = phi i32 [ %.lcssa1621.lcssa26.lcssa32, %34 ]
  %.lcssa1720.lcssa24.lcssa30.lcssa = phi i32 [ %.lcssa1720.lcssa24.lcssa30, %34 ]
  %.lcssa28 = phi i32 [ %39, %34 ]
  %.lcssa9 = phi i32 [ %35, %34 ]
  %.lcssa8 = phi i32 [ %36, %34 ]
  %.lcssa7 = phi i32 [ %37, %34 ]
  %.lcssa6 = phi i32 [ %38, %34 ]
  %67 = add nsw i32 %32, 1
  br label %26, !llvm.loop !12

68:                                               ; preds = %26
  %.lcssa2845.lcssa = phi i32 [ %.lcssa2845, %26 ]
  %.lcssa2235.lcssa44.lcssa = phi i32 [ %.lcssa2235.lcssa44, %26 ]
  %.lcssa1827.lcssa34.lcssa42.lcssa = phi i32 [ %.lcssa1827.lcssa34.lcssa42, %26 ]
  %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa = phi i32 [ %.lcssa1621.lcssa26.lcssa32.lcssa40, %26 ]
  %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa = phi i32 [ %.lcssa1720.lcssa24.lcssa30.lcssa38, %26 ]
  %.lcssa36 = phi i32 [ %32, %26 ]
  %.lcssa14 = phi i32 [ %27, %26 ]
  %.lcssa13 = phi i32 [ %28, %26 ]
  %.lcssa12 = phi i32 [ %29, %26 ]
  %.lcssa11 = phi i32 [ %30, %26 ]
  %.lcssa10 = phi i32 [ %31, %26 ]
  %69 = add nsw i32 %24, 1
  br label %18, !llvm.loop !13

70:                                               ; preds = %18
  %.lcssa3657.lcssa = phi i32 [ %.lcssa3657, %18 ]
  %.lcssa2845.lcssa56.lcssa = phi i32 [ %.lcssa2845.lcssa56, %18 ]
  %.lcssa2235.lcssa44.lcssa54.lcssa = phi i32 [ %.lcssa2235.lcssa44.lcssa54, %18 ]
  %.lcssa1827.lcssa34.lcssa42.lcssa52.lcssa = phi i32 [ %.lcssa1827.lcssa34.lcssa42.lcssa52, %18 ]
  %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa50.lcssa = phi i32 [ %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa50, %18 ]
  %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa48.lcssa = phi i32 [ %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa48, %18 ]
  %.lcssa46 = phi i32 [ %24, %18 ]
  %.lcssa15 = phi i32 [ %23, %18 ]
  store i32 %.lcssa46, ptr %4, align 4
  store i32 %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa48.lcssa, ptr %10, align 1
  store i32 %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa50.lcssa, ptr %9, align 1
  store i32 %.lcssa1827.lcssa34.lcssa42.lcssa52.lcssa, ptr %8, align 1
  store i32 %.lcssa2235.lcssa44.lcssa54.lcssa, ptr %7, align 1
  store i32 %.lcssa2845.lcssa56.lcssa, ptr %6, align 1
  store i32 %.lcssa3657.lcssa, ptr %5, align 1
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa15) #2
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
