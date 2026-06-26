; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_002\input.ll'
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
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 46, %16 ]
  store i32 %18, ptr %3, align 4
  store i32 0, ptr %10, align 4
  %.promoted47 = load i32, ptr %10, align 1
  %.promoted49 = load i32, ptr %9, align 1
  %.promoted51 = load i32, ptr %8, align 1
  %.promoted53 = load i32, ptr %7, align 1
  %.promoted55 = load i32, ptr %6, align 1
  %.promoted = load i32, ptr %5, align 1
  br label %19

19:                                               ; preds = %74, %17
  %.lcssa3657 = phi i32 [ %.promoted, %17 ], [ %.lcssa36, %74 ]
  %.lcssa2845.lcssa56 = phi i32 [ %.promoted55, %17 ], [ %.lcssa2845.lcssa, %74 ]
  %.lcssa2235.lcssa44.lcssa54 = phi i32 [ %.promoted53, %17 ], [ %.lcssa2235.lcssa44.lcssa, %74 ]
  %.lcssa1827.lcssa34.lcssa42.lcssa52 = phi i32 [ %.promoted51, %17 ], [ %.lcssa1827.lcssa34.lcssa42.lcssa, %74 ]
  %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa50 = phi i32 [ %.promoted49, %17 ], [ %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa, %74 ]
  %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa48 = phi i32 [ %.promoted47, %17 ], [ %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa, %74 ]
  %20 = phi i32 [ %18, %17 ], [ %.lcssa14, %74 ]
  %21 = phi i32 [ %18, %17 ], [ %.lcssa13, %74 ]
  %22 = phi i32 [ %18, %17 ], [ %.lcssa12, %74 ]
  %23 = phi i32 [ %18, %17 ], [ %.lcssa11, %74 ]
  %24 = phi i32 [ 0, %17 ], [ %.lcssa10, %74 ]
  %25 = phi i32 [ 0, %17 ], [ %75, %74 ]
  %26 = icmp slt i32 %25, %23
  br i1 %26, label %27, label %76

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %72, %27
  %.lcssa2845 = phi i32 [ %.lcssa2845.lcssa56, %27 ], [ %.lcssa28, %72 ]
  %.lcssa2235.lcssa44 = phi i32 [ %.lcssa2235.lcssa44.lcssa54, %27 ], [ %.lcssa2235.lcssa, %72 ]
  %.lcssa1827.lcssa34.lcssa42 = phi i32 [ %.lcssa1827.lcssa34.lcssa42.lcssa52, %27 ], [ %.lcssa1827.lcssa34.lcssa, %72 ]
  %.lcssa1621.lcssa26.lcssa32.lcssa40 = phi i32 [ %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa50, %27 ], [ %.lcssa1621.lcssa26.lcssa32.lcssa, %72 ]
  %.lcssa1720.lcssa24.lcssa30.lcssa38 = phi i32 [ %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa48, %27 ], [ %.lcssa1720.lcssa24.lcssa30.lcssa, %72 ]
  %29 = phi i32 [ %20, %27 ], [ %.lcssa9, %72 ]
  %30 = phi i32 [ %21, %27 ], [ %.lcssa8, %72 ]
  %31 = phi i32 [ %22, %27 ], [ %.lcssa7, %72 ]
  %32 = phi i32 [ %23, %27 ], [ %.lcssa7, %72 ]
  %33 = phi i32 [ %24, %27 ], [ %.lcssa6, %72 ]
  %34 = phi i32 [ 0, %27 ], [ %73, %72 ]
  %35 = icmp slt i32 %34, %32
  br i1 %35, label %36, label %74

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %70, %36
  %.lcssa2235 = phi i32 [ %.lcssa2235.lcssa44, %36 ], [ %.lcssa22, %70 ]
  %.lcssa1827.lcssa34 = phi i32 [ %.lcssa1827.lcssa34.lcssa42, %36 ], [ %.lcssa1827.lcssa, %70 ]
  %.lcssa1621.lcssa26.lcssa32 = phi i32 [ %.lcssa1621.lcssa26.lcssa32.lcssa40, %36 ], [ %.lcssa1621.lcssa26.lcssa, %70 ]
  %.lcssa1720.lcssa24.lcssa30 = phi i32 [ %.lcssa1720.lcssa24.lcssa30.lcssa38, %36 ], [ %.lcssa1720.lcssa24.lcssa, %70 ]
  %38 = phi i32 [ %29, %36 ], [ %.lcssa5, %70 ]
  %39 = phi i32 [ %30, %36 ], [ %.lcssa4, %70 ]
  %40 = phi i32 [ %31, %36 ], [ %.lcssa4, %70 ]
  %41 = phi i32 [ %33, %36 ], [ %.lcssa3, %70 ]
  %42 = phi i32 [ 0, %36 ], [ %71, %70 ]
  %43 = icmp slt i32 %42, %40
  br i1 %43, label %44, label %72

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %68, %44
  %.lcssa1827 = phi i32 [ %.lcssa1827.lcssa34, %44 ], [ %.lcssa18, %68 ]
  %.lcssa1621.lcssa26 = phi i32 [ %.lcssa1621.lcssa26.lcssa32, %44 ], [ %.lcssa1621.lcssa, %68 ]
  %.lcssa1720.lcssa24 = phi i32 [ %.lcssa1720.lcssa24.lcssa30, %44 ], [ %.lcssa1720.lcssa, %68 ]
  %46 = phi i32 [ %38, %44 ], [ %.lcssa2, %68 ]
  %47 = phi i32 [ %39, %44 ], [ %.lcssa2, %68 ]
  %48 = phi i32 [ %41, %44 ], [ %.lcssa1, %68 ]
  %49 = phi i32 [ 0, %44 ], [ %69, %68 ]
  %50 = icmp slt i32 %49, %47
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %66, %51
  %.lcssa1621 = phi i32 [ %.lcssa1621.lcssa26, %51 ], [ %.lcssa16, %66 ]
  %.lcssa1720 = phi i32 [ %.lcssa1720.lcssa24, %51 ], [ %.lcssa17, %66 ]
  %53 = phi i32 [ %46, %51 ], [ %18, %66 ]
  %54 = phi i32 [ %48, %51 ], [ %.lcssa, %66 ]
  %55 = phi i32 [ 0, %51 ], [ %67, %66 ]
  %56 = icmp slt i32 %55, %53
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %63, %57
  %59 = phi i32 [ %.lcssa1720, %57 ], [ %64, %63 ]
  %60 = phi i32 [ %54, %57 ], [ %64, %63 ]
  %61 = phi i32 [ 0, %57 ], [ %65, %63 ]
  %62 = icmp slt i32 %61, %18
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = add nsw i32 %60, 1
  %65 = add nsw i32 %61, 1
  br label %58, !llvm.loop !7

66:                                               ; preds = %58
  %.lcssa17 = phi i32 [ %59, %58 ]
  %.lcssa16 = phi i32 [ %61, %58 ]
  %.lcssa = phi i32 [ %60, %58 ]
  %67 = add nsw i32 %55, 1
  br label %52, !llvm.loop !9

68:                                               ; preds = %52
  %.lcssa1621.lcssa = phi i32 [ %.lcssa1621, %52 ]
  %.lcssa1720.lcssa = phi i32 [ %.lcssa1720, %52 ]
  %.lcssa18 = phi i32 [ %55, %52 ]
  %.lcssa2 = phi i32 [ %53, %52 ]
  %.lcssa1 = phi i32 [ %54, %52 ]
  %69 = add nsw i32 %49, 1
  br label %45, !llvm.loop !10

70:                                               ; preds = %45
  %.lcssa1827.lcssa = phi i32 [ %.lcssa1827, %45 ]
  %.lcssa1621.lcssa26.lcssa = phi i32 [ %.lcssa1621.lcssa26, %45 ]
  %.lcssa1720.lcssa24.lcssa = phi i32 [ %.lcssa1720.lcssa24, %45 ]
  %.lcssa22 = phi i32 [ %49, %45 ]
  %.lcssa5 = phi i32 [ %46, %45 ]
  %.lcssa4 = phi i32 [ %47, %45 ]
  %.lcssa3 = phi i32 [ %48, %45 ]
  %71 = add nsw i32 %42, 1
  br label %37, !llvm.loop !11

72:                                               ; preds = %37
  %.lcssa2235.lcssa = phi i32 [ %.lcssa2235, %37 ]
  %.lcssa1827.lcssa34.lcssa = phi i32 [ %.lcssa1827.lcssa34, %37 ]
  %.lcssa1621.lcssa26.lcssa32.lcssa = phi i32 [ %.lcssa1621.lcssa26.lcssa32, %37 ]
  %.lcssa1720.lcssa24.lcssa30.lcssa = phi i32 [ %.lcssa1720.lcssa24.lcssa30, %37 ]
  %.lcssa28 = phi i32 [ %42, %37 ]
  %.lcssa9 = phi i32 [ %38, %37 ]
  %.lcssa8 = phi i32 [ %39, %37 ]
  %.lcssa7 = phi i32 [ %40, %37 ]
  %.lcssa6 = phi i32 [ %41, %37 ]
  %73 = add nsw i32 %34, 1
  br label %28, !llvm.loop !12

74:                                               ; preds = %28
  %.lcssa2845.lcssa = phi i32 [ %.lcssa2845, %28 ]
  %.lcssa2235.lcssa44.lcssa = phi i32 [ %.lcssa2235.lcssa44, %28 ]
  %.lcssa1827.lcssa34.lcssa42.lcssa = phi i32 [ %.lcssa1827.lcssa34.lcssa42, %28 ]
  %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa = phi i32 [ %.lcssa1621.lcssa26.lcssa32.lcssa40, %28 ]
  %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa = phi i32 [ %.lcssa1720.lcssa24.lcssa30.lcssa38, %28 ]
  %.lcssa36 = phi i32 [ %34, %28 ]
  %.lcssa14 = phi i32 [ %29, %28 ]
  %.lcssa13 = phi i32 [ %30, %28 ]
  %.lcssa12 = phi i32 [ %31, %28 ]
  %.lcssa11 = phi i32 [ %32, %28 ]
  %.lcssa10 = phi i32 [ %33, %28 ]
  %75 = add nsw i32 %25, 1
  br label %19, !llvm.loop !13

76:                                               ; preds = %19
  %.lcssa3657.lcssa = phi i32 [ %.lcssa3657, %19 ]
  %.lcssa2845.lcssa56.lcssa = phi i32 [ %.lcssa2845.lcssa56, %19 ]
  %.lcssa2235.lcssa44.lcssa54.lcssa = phi i32 [ %.lcssa2235.lcssa44.lcssa54, %19 ]
  %.lcssa1827.lcssa34.lcssa42.lcssa52.lcssa = phi i32 [ %.lcssa1827.lcssa34.lcssa42.lcssa52, %19 ]
  %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa50.lcssa = phi i32 [ %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa50, %19 ]
  %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa48.lcssa = phi i32 [ %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa48, %19 ]
  %.lcssa46 = phi i32 [ %25, %19 ]
  %.lcssa15 = phi i32 [ %24, %19 ]
  store i32 %.lcssa46, ptr %4, align 4
  store i32 %.lcssa1720.lcssa24.lcssa30.lcssa38.lcssa48.lcssa, ptr %10, align 1
  store i32 %.lcssa1621.lcssa26.lcssa32.lcssa40.lcssa50.lcssa, ptr %9, align 1
  store i32 %.lcssa1827.lcssa34.lcssa42.lcssa52.lcssa, ptr %8, align 1
  store i32 %.lcssa2235.lcssa44.lcssa54.lcssa, ptr %7, align 1
  store i32 %.lcssa2845.lcssa56.lcssa, ptr %6, align 1
  store i32 %.lcssa3657.lcssa, ptr %5, align 1
  %77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa15) #2
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
