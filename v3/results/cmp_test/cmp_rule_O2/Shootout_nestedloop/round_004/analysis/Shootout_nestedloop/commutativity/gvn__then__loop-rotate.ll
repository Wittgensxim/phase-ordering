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
  store i32 0, ptr %4, align 4
  %18 = icmp slt i32 0, %17
  br i1 %18, label %.preheader4.lr.ph, label %65

.preheader4.lr.ph:                                ; preds = %16
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.lr.ph, %62
  %19 = phi i32 [ 0, %.preheader4.lr.ph ], [ %63, %62 ]
  %20 = phi i32 [ 0, %.preheader4.lr.ph ], [ %.lcssa10, %62 ]
  %21 = phi i32 [ %17, %.preheader4.lr.ph ], [ %.lcssa11, %62 ]
  %22 = phi i32 [ %17, %.preheader4.lr.ph ], [ %.lcssa12, %62 ]
  %23 = phi i32 [ %17, %.preheader4.lr.ph ], [ %.lcssa13, %62 ]
  %24 = phi i32 [ %17, %.preheader4.lr.ph ], [ %.lcssa14, %62 ]
  store i32 0, ptr %5, align 4
  %25 = icmp slt i32 0, %21
  br i1 %25, label %.preheader3.lr.ph, label %62

.preheader3.lr.ph:                                ; preds = %.preheader4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %59
  %26 = phi i32 [ 0, %.preheader3.lr.ph ], [ %60, %59 ]
  %27 = phi i32 [ %20, %.preheader3.lr.ph ], [ %.lcssa6, %59 ]
  %28 = phi i32 [ %22, %.preheader3.lr.ph ], [ %.lcssa7, %59 ]
  %29 = phi i32 [ %23, %.preheader3.lr.ph ], [ %.lcssa8, %59 ]
  %30 = phi i32 [ %24, %.preheader3.lr.ph ], [ %.lcssa9, %59 ]
  store i32 0, ptr %6, align 4
  %31 = icmp slt i32 0, %28
  br i1 %31, label %.preheader2.lr.ph, label %59

.preheader2.lr.ph:                                ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %56
  %32 = phi i32 [ 0, %.preheader2.lr.ph ], [ %57, %56 ]
  %33 = phi i32 [ %27, %.preheader2.lr.ph ], [ %.lcssa3, %56 ]
  %34 = phi i32 [ %29, %.preheader2.lr.ph ], [ %.lcssa4, %56 ]
  %35 = phi i32 [ %30, %.preheader2.lr.ph ], [ %.lcssa5, %56 ]
  store i32 0, ptr %7, align 4
  %36 = icmp slt i32 0, %34
  br i1 %36, label %.preheader1.lr.ph, label %56

.preheader1.lr.ph:                                ; preds = %.preheader2
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %53
  %37 = phi i32 [ 0, %.preheader1.lr.ph ], [ %54, %53 ]
  %38 = phi i32 [ %33, %.preheader1.lr.ph ], [ %.lcssa1, %53 ]
  %39 = phi i32 [ %35, %.preheader1.lr.ph ], [ %.lcssa2, %53 ]
  store i32 0, ptr %8, align 4
  %40 = icmp slt i32 0, %39
  br i1 %40, label %.preheader.lr.ph, label %53

.preheader.lr.ph:                                 ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %50
  %41 = phi i32 [ 0, %.preheader.lr.ph ], [ %51, %50 ]
  %42 = phi i32 [ %38, %.preheader.lr.ph ], [ %.lcssa, %50 ]
  store i32 0, ptr %9, align 4
  %43 = icmp slt i32 0, %17
  br i1 %43, label %.lr.ph, label %50

.lr.ph:                                           ; preds = %.preheader
  br label %44

44:                                               ; preds = %.lr.ph, %44
  %45 = phi i32 [ 0, %.lr.ph ], [ %48, %44 ]
  %46 = phi i32 [ %42, %.lr.ph ], [ %47, %44 ]
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %10, align 4
  %48 = add nsw i32 %45, 1
  store i32 %48, ptr %9, align 4
  %49 = icmp slt i32 %48, %17
  br i1 %49, label %44, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %44
  %split = phi i32 [ %47, %44 ]
  br label %50

50:                                               ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %42, %.preheader ]
  %51 = add nsw i32 %41, 1
  store i32 %51, ptr %8, align 4
  %52 = icmp slt i32 %51, %17
  br i1 %52, label %.preheader, label %._crit_edge16, !llvm.loop !9

._crit_edge16:                                    ; preds = %50
  %split17 = phi i32 [ %17, %50 ]
  %split18 = phi i32 [ %.lcssa, %50 ]
  br label %53

53:                                               ; preds = %._crit_edge16, %.preheader1
  %.lcssa2 = phi i32 [ %split17, %._crit_edge16 ], [ %39, %.preheader1 ]
  %.lcssa1 = phi i32 [ %split18, %._crit_edge16 ], [ %38, %.preheader1 ]
  %54 = add nsw i32 %37, 1
  store i32 %54, ptr %7, align 4
  %55 = icmp slt i32 %54, %.lcssa2
  br i1 %55, label %.preheader1, label %._crit_edge19, !llvm.loop !10

._crit_edge19:                                    ; preds = %53
  %split20 = phi i32 [ %.lcssa2, %53 ]
  %split21 = phi i32 [ %.lcssa2, %53 ]
  %split22 = phi i32 [ %.lcssa1, %53 ]
  br label %56

56:                                               ; preds = %._crit_edge19, %.preheader2
  %.lcssa5 = phi i32 [ %split20, %._crit_edge19 ], [ %35, %.preheader2 ]
  %.lcssa4 = phi i32 [ %split21, %._crit_edge19 ], [ %34, %.preheader2 ]
  %.lcssa3 = phi i32 [ %split22, %._crit_edge19 ], [ %33, %.preheader2 ]
  %57 = add nsw i32 %32, 1
  store i32 %57, ptr %6, align 4
  %58 = icmp slt i32 %57, %.lcssa4
  br i1 %58, label %.preheader2, label %._crit_edge23, !llvm.loop !11

._crit_edge23:                                    ; preds = %56
  %split24 = phi i32 [ %.lcssa5, %56 ]
  %split25 = phi i32 [ %.lcssa4, %56 ]
  %split26 = phi i32 [ %.lcssa4, %56 ]
  %split27 = phi i32 [ %.lcssa3, %56 ]
  br label %59

59:                                               ; preds = %._crit_edge23, %.preheader3
  %.lcssa9 = phi i32 [ %split24, %._crit_edge23 ], [ %30, %.preheader3 ]
  %.lcssa8 = phi i32 [ %split25, %._crit_edge23 ], [ %29, %.preheader3 ]
  %.lcssa7 = phi i32 [ %split26, %._crit_edge23 ], [ %28, %.preheader3 ]
  %.lcssa6 = phi i32 [ %split27, %._crit_edge23 ], [ %27, %.preheader3 ]
  %60 = add nsw i32 %26, 1
  store i32 %60, ptr %5, align 4
  %61 = icmp slt i32 %60, %.lcssa7
  br i1 %61, label %.preheader3, label %._crit_edge28, !llvm.loop !12

._crit_edge28:                                    ; preds = %59
  %split29 = phi i32 [ %.lcssa9, %59 ]
  %split30 = phi i32 [ %.lcssa8, %59 ]
  %split31 = phi i32 [ %.lcssa7, %59 ]
  %split32 = phi i32 [ %.lcssa7, %59 ]
  %split33 = phi i32 [ %.lcssa6, %59 ]
  br label %62

62:                                               ; preds = %._crit_edge28, %.preheader4
  %.lcssa14 = phi i32 [ %split29, %._crit_edge28 ], [ %24, %.preheader4 ]
  %.lcssa13 = phi i32 [ %split30, %._crit_edge28 ], [ %23, %.preheader4 ]
  %.lcssa12 = phi i32 [ %split31, %._crit_edge28 ], [ %22, %.preheader4 ]
  %.lcssa11 = phi i32 [ %split32, %._crit_edge28 ], [ %21, %.preheader4 ]
  %.lcssa10 = phi i32 [ %split33, %._crit_edge28 ], [ %20, %.preheader4 ]
  %63 = add nsw i32 %19, 1
  store i32 %63, ptr %4, align 4
  %64 = icmp slt i32 %63, %.lcssa11
  br i1 %64, label %.preheader4, label %._crit_edge34, !llvm.loop !13

._crit_edge34:                                    ; preds = %62
  %split35 = phi i32 [ %.lcssa10, %62 ]
  br label %65

65:                                               ; preds = %._crit_edge34, %16
  %.lcssa15 = phi i32 [ %split35, %._crit_edge34 ], [ 0, %16 ]
  %66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa15) #2
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
