; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_003\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6) #2
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ 46, %2 ]
  %10 = icmp slt i32 0, %9
  br i1 %10, label %.preheader4.lr.ph, label %35

.preheader4.lr.ph:                                ; preds = %8
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.lr.ph, %32
  %storemerge33 = phi i32 [ 0, %.preheader4.lr.ph ], [ %33, %32 ]
  %.032 = phi i32 [ 0, %.preheader4.lr.ph ], [ %.1.lcssa, %32 ]
  %11 = icmp slt i32 0, %9
  br i1 %11, label %.preheader3.lr.ph, label %32

.preheader3.lr.ph:                                ; preds = %.preheader4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %29
  %storemerge129 = phi i32 [ 0, %.preheader3.lr.ph ], [ %30, %29 ]
  %.128 = phi i32 [ %.032, %.preheader3.lr.ph ], [ %.2.lcssa, %29 ]
  %12 = icmp slt i32 0, %9
  br i1 %12, label %.preheader2.lr.ph, label %29

.preheader2.lr.ph:                                ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %26
  %storemerge225 = phi i32 [ 0, %.preheader2.lr.ph ], [ %27, %26 ]
  %.224 = phi i32 [ %.128, %.preheader2.lr.ph ], [ %.3.lcssa, %26 ]
  %13 = icmp slt i32 0, %9
  br i1 %13, label %.preheader1.lr.ph, label %26

.preheader1.lr.ph:                                ; preds = %.preheader2
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %23
  %storemerge321 = phi i32 [ 0, %.preheader1.lr.ph ], [ %24, %23 ]
  %.320 = phi i32 [ %.224, %.preheader1.lr.ph ], [ %.4.lcssa, %23 ]
  %14 = icmp slt i32 0, %9
  br i1 %14, label %.preheader.lr.ph, label %23

.preheader.lr.ph:                                 ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %20
  %storemerge417 = phi i32 [ 0, %.preheader.lr.ph ], [ %21, %20 ]
  %.416 = phi i32 [ %.320, %.preheader.lr.ph ], [ %.5.lcssa, %20 ]
  %15 = icmp slt i32 0, %9
  br i1 %15, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %.preheader
  br label %16

16:                                               ; preds = %.lr.ph, %16
  %storemerge515 = phi i32 [ 0, %.lr.ph ], [ %18, %16 ]
  %.514 = phi i32 [ %.416, %.lr.ph ], [ %17, %16 ]
  %17 = add nsw i32 %.514, 1
  %18 = add nsw i32 %storemerge515, 1
  %19 = icmp slt i32 %18, %9
  br i1 %19, label %16, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  %split = phi i32 [ %17, %16 ]
  br label %20

20:                                               ; preds = %._crit_edge, %.preheader
  %.5.lcssa = phi i32 [ %split, %._crit_edge ], [ %.416, %.preheader ]
  %21 = add nsw i32 %storemerge417, 1
  %22 = icmp slt i32 %21, %9
  br i1 %22, label %.preheader, label %._crit_edge18, !llvm.loop !9

._crit_edge18:                                    ; preds = %20
  %split19 = phi i32 [ %.5.lcssa, %20 ]
  br label %23

23:                                               ; preds = %._crit_edge18, %.preheader1
  %.4.lcssa = phi i32 [ %split19, %._crit_edge18 ], [ %.320, %.preheader1 ]
  %24 = add nsw i32 %storemerge321, 1
  %25 = icmp slt i32 %24, %9
  br i1 %25, label %.preheader1, label %._crit_edge22, !llvm.loop !10

._crit_edge22:                                    ; preds = %23
  %split23 = phi i32 [ %.4.lcssa, %23 ]
  br label %26

26:                                               ; preds = %._crit_edge22, %.preheader2
  %.3.lcssa = phi i32 [ %split23, %._crit_edge22 ], [ %.224, %.preheader2 ]
  %27 = add nsw i32 %storemerge225, 1
  %28 = icmp slt i32 %27, %9
  br i1 %28, label %.preheader2, label %._crit_edge26, !llvm.loop !11

._crit_edge26:                                    ; preds = %26
  %split27 = phi i32 [ %.3.lcssa, %26 ]
  br label %29

29:                                               ; preds = %._crit_edge26, %.preheader3
  %.2.lcssa = phi i32 [ %split27, %._crit_edge26 ], [ %.128, %.preheader3 ]
  %30 = add nsw i32 %storemerge129, 1
  %31 = icmp slt i32 %30, %9
  br i1 %31, label %.preheader3, label %._crit_edge30, !llvm.loop !12

._crit_edge30:                                    ; preds = %29
  %split31 = phi i32 [ %.2.lcssa, %29 ]
  br label %32

32:                                               ; preds = %._crit_edge30, %.preheader4
  %.1.lcssa = phi i32 [ %split31, %._crit_edge30 ], [ %.032, %.preheader4 ]
  %33 = add nsw i32 %storemerge33, 1
  %34 = icmp slt i32 %33, %9
  br i1 %34, label %.preheader4, label %._crit_edge34, !llvm.loop !13

._crit_edge34:                                    ; preds = %32
  %split35 = phi i32 [ %.1.lcssa, %32 ]
  br label %35

35:                                               ; preds = %._crit_edge34, %8
  %.0.lcssa = phi i32 [ %split35, %._crit_edge34 ], [ 0, %8 ]
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.0.lcssa) #2
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
