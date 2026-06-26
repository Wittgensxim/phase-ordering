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
  %14 = icmp eq i32 %0, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds ptr, ptr %1, i64 1
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @atoi(ptr noundef %17)
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 46, %19 ]
  store i32 %21, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %22 = icmp slt i32 0, %21
  br i1 %22, label %.lr.ph43, label %74

.lr.ph43:                                         ; preds = %20
  br label %23

23:                                               ; preds = %.lr.ph43, %71
  %24 = phi i32 [ 0, %.lr.ph43 ], [ %72, %71 ]
  %25 = phi i32 [ 0, %.lr.ph43 ], [ %.lcssa10, %71 ]
  %26 = phi i32 [ %21, %.lr.ph43 ], [ %.lcssa11, %71 ]
  %27 = phi i32 [ %21, %.lr.ph43 ], [ %.lcssa12, %71 ]
  %28 = phi i32 [ %21, %.lr.ph43 ], [ %.lcssa13, %71 ]
  %29 = phi i32 [ %21, %.lr.ph43 ], [ %.lcssa14, %71 ]
  store i32 0, ptr %8, align 4
  %30 = icmp slt i32 0, %26
  br i1 %30, label %.lr.ph35, label %71

.lr.ph35:                                         ; preds = %23
  br label %31

31:                                               ; preds = %.lr.ph35, %68
  %32 = phi i32 [ %25, %.lr.ph35 ], [ %.lcssa6, %68 ]
  %33 = phi i32 [ 0, %.lr.ph35 ], [ %69, %68 ]
  %34 = phi i32 [ %27, %.lr.ph35 ], [ %.lcssa7, %68 ]
  %35 = phi i32 [ %28, %.lr.ph35 ], [ %.lcssa8, %68 ]
  %36 = phi i32 [ %29, %.lr.ph35 ], [ %.lcssa9, %68 ]
  store i32 0, ptr %9, align 4
  %37 = icmp slt i32 0, %34
  br i1 %37, label %.lr.ph28, label %68

.lr.ph28:                                         ; preds = %31
  br label %38

38:                                               ; preds = %.lr.ph28, %65
  %39 = phi i32 [ %32, %.lr.ph28 ], [ %.lcssa3, %65 ]
  %40 = phi i32 [ 0, %.lr.ph28 ], [ %66, %65 ]
  %41 = phi i32 [ %35, %.lr.ph28 ], [ %.lcssa4, %65 ]
  %42 = phi i32 [ %36, %.lr.ph28 ], [ %.lcssa5, %65 ]
  store i32 0, ptr %10, align 4
  %43 = icmp slt i32 0, %41
  br i1 %43, label %.lr.ph22, label %65

.lr.ph22:                                         ; preds = %38
  br label %44

44:                                               ; preds = %.lr.ph22, %62
  %45 = phi i32 [ %39, %.lr.ph22 ], [ %.lcssa1, %62 ]
  %46 = phi i32 [ 0, %.lr.ph22 ], [ %63, %62 ]
  %47 = phi i32 [ %42, %.lr.ph22 ], [ %.lcssa2, %62 ]
  store i32 0, ptr %11, align 4
  %48 = icmp slt i32 0, %47
  br i1 %48, label %.lr.ph17, label %62

.lr.ph17:                                         ; preds = %44
  br label %49

49:                                               ; preds = %.lr.ph17, %59
  %50 = phi i32 [ %45, %.lr.ph17 ], [ %.lcssa, %59 ]
  %51 = phi i32 [ 0, %.lr.ph17 ], [ %60, %59 ]
  store i32 0, ptr %12, align 4
  %52 = icmp slt i32 0, %21
  br i1 %52, label %.lr.ph, label %59

.lr.ph:                                           ; preds = %49
  br label %53

53:                                               ; preds = %.lr.ph, %53
  %54 = phi i32 [ %50, %.lr.ph ], [ %56, %53 ]
  %55 = phi i32 [ 0, %.lr.ph ], [ %57, %53 ]
  %56 = add nsw i32 %54, 1
  store i32 %56, ptr %13, align 4
  %57 = add nsw i32 %55, 1
  store i32 %57, ptr %12, align 4
  %58 = icmp slt i32 %57, %21
  br i1 %58, label %53, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %53
  %split = phi i32 [ %56, %53 ]
  br label %59

59:                                               ; preds = %._crit_edge, %49
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %50, %49 ]
  %60 = add nsw i32 %51, 1
  store i32 %60, ptr %11, align 4
  %61 = icmp slt i32 %60, %21
  br i1 %61, label %49, label %._crit_edge18, !llvm.loop !9

._crit_edge18:                                    ; preds = %59
  %split19 = phi i32 [ %21, %59 ]
  %split20 = phi i32 [ %.lcssa, %59 ]
  br label %62

62:                                               ; preds = %._crit_edge18, %44
  %.lcssa2 = phi i32 [ %split19, %._crit_edge18 ], [ %47, %44 ]
  %.lcssa1 = phi i32 [ %split20, %._crit_edge18 ], [ %45, %44 ]
  %63 = add nsw i32 %46, 1
  store i32 %63, ptr %10, align 4
  %64 = icmp slt i32 %63, %.lcssa2
  br i1 %64, label %44, label %._crit_edge23, !llvm.loop !10

._crit_edge23:                                    ; preds = %62
  %split24 = phi i32 [ %.lcssa2, %62 ]
  %split25 = phi i32 [ %.lcssa2, %62 ]
  %split26 = phi i32 [ %.lcssa1, %62 ]
  br label %65

65:                                               ; preds = %._crit_edge23, %38
  %.lcssa5 = phi i32 [ %split24, %._crit_edge23 ], [ %42, %38 ]
  %.lcssa4 = phi i32 [ %split25, %._crit_edge23 ], [ %41, %38 ]
  %.lcssa3 = phi i32 [ %split26, %._crit_edge23 ], [ %39, %38 ]
  %66 = add nsw i32 %40, 1
  store i32 %66, ptr %9, align 4
  %67 = icmp slt i32 %66, %.lcssa4
  br i1 %67, label %38, label %._crit_edge29, !llvm.loop !11

._crit_edge29:                                    ; preds = %65
  %split30 = phi i32 [ %.lcssa5, %65 ]
  %split31 = phi i32 [ %.lcssa4, %65 ]
  %split32 = phi i32 [ %.lcssa4, %65 ]
  %split33 = phi i32 [ %.lcssa3, %65 ]
  br label %68

68:                                               ; preds = %._crit_edge29, %31
  %.lcssa9 = phi i32 [ %split30, %._crit_edge29 ], [ %36, %31 ]
  %.lcssa8 = phi i32 [ %split31, %._crit_edge29 ], [ %35, %31 ]
  %.lcssa7 = phi i32 [ %split32, %._crit_edge29 ], [ %34, %31 ]
  %.lcssa6 = phi i32 [ %split33, %._crit_edge29 ], [ %32, %31 ]
  %69 = add nsw i32 %33, 1
  store i32 %69, ptr %8, align 4
  %70 = icmp slt i32 %69, %.lcssa7
  br i1 %70, label %31, label %._crit_edge36, !llvm.loop !12

._crit_edge36:                                    ; preds = %68
  %split37 = phi i32 [ %.lcssa9, %68 ]
  %split38 = phi i32 [ %.lcssa8, %68 ]
  %split39 = phi i32 [ %.lcssa7, %68 ]
  %split40 = phi i32 [ %.lcssa7, %68 ]
  %split41 = phi i32 [ %.lcssa6, %68 ]
  br label %71

71:                                               ; preds = %._crit_edge36, %23
  %.lcssa14 = phi i32 [ %split37, %._crit_edge36 ], [ %29, %23 ]
  %.lcssa13 = phi i32 [ %split38, %._crit_edge36 ], [ %28, %23 ]
  %.lcssa12 = phi i32 [ %split39, %._crit_edge36 ], [ %27, %23 ]
  %.lcssa11 = phi i32 [ %split40, %._crit_edge36 ], [ %26, %23 ]
  %.lcssa10 = phi i32 [ %split41, %._crit_edge36 ], [ %25, %23 ]
  %72 = add nsw i32 %24, 1
  store i32 %72, ptr %7, align 4
  %73 = icmp slt i32 %72, %.lcssa11
  br i1 %73, label %23, label %._crit_edge44, !llvm.loop !13

._crit_edge44:                                    ; preds = %71
  %split45 = phi i32 [ %.lcssa10, %71 ]
  br label %74

74:                                               ; preds = %._crit_edge44, %20
  %.lcssa15 = phi i32 [ %split45, %._crit_edge44 ], [ 0, %20 ]
  %75 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %.lcssa15)
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
