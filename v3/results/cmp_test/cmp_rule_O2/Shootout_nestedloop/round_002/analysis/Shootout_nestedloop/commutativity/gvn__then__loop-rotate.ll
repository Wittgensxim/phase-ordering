; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_001\output.ll'
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
  store i32 0, ptr %4, align 4
  %19 = icmp slt i32 0, %18
  br i1 %19, label %.lr.ph43, label %71

.lr.ph43:                                         ; preds = %17
  br label %20

20:                                               ; preds = %.lr.ph43, %68
  %21 = phi i32 [ 0, %.lr.ph43 ], [ %69, %68 ]
  %22 = phi i32 [ 0, %.lr.ph43 ], [ %.lcssa10, %68 ]
  %23 = phi i32 [ %18, %.lr.ph43 ], [ %.lcssa11, %68 ]
  %24 = phi i32 [ %18, %.lr.ph43 ], [ %.lcssa12, %68 ]
  %25 = phi i32 [ %18, %.lr.ph43 ], [ %.lcssa13, %68 ]
  %26 = phi i32 [ %18, %.lr.ph43 ], [ %.lcssa14, %68 ]
  store i32 0, ptr %5, align 4
  %27 = icmp slt i32 0, %23
  br i1 %27, label %.lr.ph35, label %68

.lr.ph35:                                         ; preds = %20
  br label %28

28:                                               ; preds = %.lr.ph35, %65
  %29 = phi i32 [ 0, %.lr.ph35 ], [ %66, %65 ]
  %30 = phi i32 [ %22, %.lr.ph35 ], [ %.lcssa6, %65 ]
  %31 = phi i32 [ %24, %.lr.ph35 ], [ %.lcssa7, %65 ]
  %32 = phi i32 [ %25, %.lr.ph35 ], [ %.lcssa8, %65 ]
  %33 = phi i32 [ %26, %.lr.ph35 ], [ %.lcssa9, %65 ]
  store i32 0, ptr %6, align 4
  %34 = icmp slt i32 0, %31
  br i1 %34, label %.lr.ph28, label %65

.lr.ph28:                                         ; preds = %28
  br label %35

35:                                               ; preds = %.lr.ph28, %62
  %36 = phi i32 [ 0, %.lr.ph28 ], [ %63, %62 ]
  %37 = phi i32 [ %30, %.lr.ph28 ], [ %.lcssa3, %62 ]
  %38 = phi i32 [ %32, %.lr.ph28 ], [ %.lcssa4, %62 ]
  %39 = phi i32 [ %33, %.lr.ph28 ], [ %.lcssa5, %62 ]
  store i32 0, ptr %7, align 4
  %40 = icmp slt i32 0, %38
  br i1 %40, label %.lr.ph22, label %62

.lr.ph22:                                         ; preds = %35
  br label %41

41:                                               ; preds = %.lr.ph22, %59
  %42 = phi i32 [ 0, %.lr.ph22 ], [ %60, %59 ]
  %43 = phi i32 [ %37, %.lr.ph22 ], [ %.lcssa1, %59 ]
  %44 = phi i32 [ %39, %.lr.ph22 ], [ %.lcssa2, %59 ]
  store i32 0, ptr %8, align 4
  %45 = icmp slt i32 0, %44
  br i1 %45, label %.lr.ph17, label %59

.lr.ph17:                                         ; preds = %41
  br label %46

46:                                               ; preds = %.lr.ph17, %56
  %47 = phi i32 [ 0, %.lr.ph17 ], [ %57, %56 ]
  %48 = phi i32 [ %43, %.lr.ph17 ], [ %.lcssa, %56 ]
  store i32 0, ptr %9, align 4
  %49 = icmp slt i32 0, %18
  br i1 %49, label %.lr.ph, label %56

.lr.ph:                                           ; preds = %46
  br label %50

50:                                               ; preds = %.lr.ph, %50
  %51 = phi i32 [ 0, %.lr.ph ], [ %54, %50 ]
  %52 = phi i32 [ %48, %.lr.ph ], [ %53, %50 ]
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %10, align 4
  %54 = add nsw i32 %51, 1
  store i32 %54, ptr %9, align 4
  %55 = icmp slt i32 %54, %18
  br i1 %55, label %50, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %50
  %split = phi i32 [ %53, %50 ]
  br label %56

56:                                               ; preds = %._crit_edge, %46
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %48, %46 ]
  %57 = add nsw i32 %47, 1
  store i32 %57, ptr %8, align 4
  %58 = icmp slt i32 %57, %18
  br i1 %58, label %46, label %._crit_edge18, !llvm.loop !9

._crit_edge18:                                    ; preds = %56
  %split19 = phi i32 [ %18, %56 ]
  %split20 = phi i32 [ %.lcssa, %56 ]
  br label %59

59:                                               ; preds = %._crit_edge18, %41
  %.lcssa2 = phi i32 [ %split19, %._crit_edge18 ], [ %44, %41 ]
  %.lcssa1 = phi i32 [ %split20, %._crit_edge18 ], [ %43, %41 ]
  %60 = add nsw i32 %42, 1
  store i32 %60, ptr %7, align 4
  %61 = icmp slt i32 %60, %.lcssa2
  br i1 %61, label %41, label %._crit_edge23, !llvm.loop !10

._crit_edge23:                                    ; preds = %59
  %split24 = phi i32 [ %.lcssa2, %59 ]
  %split25 = phi i32 [ %.lcssa2, %59 ]
  %split26 = phi i32 [ %.lcssa1, %59 ]
  br label %62

62:                                               ; preds = %._crit_edge23, %35
  %.lcssa5 = phi i32 [ %split24, %._crit_edge23 ], [ %39, %35 ]
  %.lcssa4 = phi i32 [ %split25, %._crit_edge23 ], [ %38, %35 ]
  %.lcssa3 = phi i32 [ %split26, %._crit_edge23 ], [ %37, %35 ]
  %63 = add nsw i32 %36, 1
  store i32 %63, ptr %6, align 4
  %64 = icmp slt i32 %63, %.lcssa4
  br i1 %64, label %35, label %._crit_edge29, !llvm.loop !11

._crit_edge29:                                    ; preds = %62
  %split30 = phi i32 [ %.lcssa5, %62 ]
  %split31 = phi i32 [ %.lcssa4, %62 ]
  %split32 = phi i32 [ %.lcssa4, %62 ]
  %split33 = phi i32 [ %.lcssa3, %62 ]
  br label %65

65:                                               ; preds = %._crit_edge29, %28
  %.lcssa9 = phi i32 [ %split30, %._crit_edge29 ], [ %33, %28 ]
  %.lcssa8 = phi i32 [ %split31, %._crit_edge29 ], [ %32, %28 ]
  %.lcssa7 = phi i32 [ %split32, %._crit_edge29 ], [ %31, %28 ]
  %.lcssa6 = phi i32 [ %split33, %._crit_edge29 ], [ %30, %28 ]
  %66 = add nsw i32 %29, 1
  store i32 %66, ptr %5, align 4
  %67 = icmp slt i32 %66, %.lcssa7
  br i1 %67, label %28, label %._crit_edge36, !llvm.loop !12

._crit_edge36:                                    ; preds = %65
  %split37 = phi i32 [ %.lcssa9, %65 ]
  %split38 = phi i32 [ %.lcssa8, %65 ]
  %split39 = phi i32 [ %.lcssa7, %65 ]
  %split40 = phi i32 [ %.lcssa7, %65 ]
  %split41 = phi i32 [ %.lcssa6, %65 ]
  br label %68

68:                                               ; preds = %._crit_edge36, %20
  %.lcssa14 = phi i32 [ %split37, %._crit_edge36 ], [ %26, %20 ]
  %.lcssa13 = phi i32 [ %split38, %._crit_edge36 ], [ %25, %20 ]
  %.lcssa12 = phi i32 [ %split39, %._crit_edge36 ], [ %24, %20 ]
  %.lcssa11 = phi i32 [ %split40, %._crit_edge36 ], [ %23, %20 ]
  %.lcssa10 = phi i32 [ %split41, %._crit_edge36 ], [ %22, %20 ]
  %69 = add nsw i32 %21, 1
  store i32 %69, ptr %4, align 4
  %70 = icmp slt i32 %69, %.lcssa11
  br i1 %70, label %20, label %._crit_edge44, !llvm.loop !13

._crit_edge44:                                    ; preds = %68
  %split45 = phi i32 [ %.lcssa10, %68 ]
  br label %71

71:                                               ; preds = %._crit_edge44, %17
  %.lcssa15 = phi i32 [ %split45, %._crit_edge44 ], [ 0, %17 ]
  %72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa15) #2
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
