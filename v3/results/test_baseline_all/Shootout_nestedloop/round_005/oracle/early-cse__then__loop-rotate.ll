; ModuleID = 'results\test_baseline_all\Shootout_nestedloop\round_004\output.ll'
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
  br i1 %10, label %.preheader4.preheader.lr.ph, label %42

.preheader4.preheader.lr.ph:                      ; preds = %8
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader4.preheader.lr.ph, %39
  %11 = phi i32 [ 0, %.preheader4.preheader.lr.ph ], [ %40, %39 ]
  %12 = phi i32 [ 0, %.preheader4.preheader.lr.ph ], [ %.lcssa4, %39 ]
  %13 = icmp slt i32 0, %9
  br i1 %13, label %.preheader3.preheader.lr.ph, label %39

.preheader3.preheader.lr.ph:                      ; preds = %.preheader4.preheader
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %.preheader3.preheader.lr.ph, %.preheader4
  %14 = phi i32 [ %12, %.preheader3.preheader.lr.ph ], [ %.lcssa3, %.preheader4 ]
  %15 = phi i32 [ 0, %.preheader3.preheader.lr.ph ], [ %37, %.preheader4 ]
  %16 = icmp slt i32 0, %9
  br i1 %16, label %.preheader2.preheader.lr.ph, label %.preheader4

.preheader2.preheader.lr.ph:                      ; preds = %.preheader3.preheader
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader2.preheader.lr.ph, %.preheader3
  %17 = phi i32 [ %14, %.preheader2.preheader.lr.ph ], [ %.lcssa2, %.preheader3 ]
  %18 = phi i32 [ 0, %.preheader2.preheader.lr.ph ], [ %35, %.preheader3 ]
  %19 = icmp slt i32 0, %9
  br i1 %19, label %.preheader1.preheader.lr.ph, label %.preheader3

.preheader1.preheader.lr.ph:                      ; preds = %.preheader2.preheader
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %.preheader1.preheader.lr.ph, %.preheader2
  %20 = phi i32 [ %17, %.preheader1.preheader.lr.ph ], [ %.lcssa1, %.preheader2 ]
  %21 = phi i32 [ 0, %.preheader1.preheader.lr.ph ], [ %33, %.preheader2 ]
  %22 = icmp slt i32 0, %9
  br i1 %22, label %.preheader.preheader.lr.ph, label %.preheader2

.preheader.preheader.lr.ph:                       ; preds = %.preheader1.preheader
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.lr.ph, %.preheader1
  %23 = phi i32 [ %20, %.preheader.preheader.lr.ph ], [ %.lcssa, %.preheader1 ]
  %24 = phi i32 [ 0, %.preheader.preheader.lr.ph ], [ %31, %.preheader1 ]
  %25 = icmp slt i32 0, %9
  br i1 %25, label %.lr.ph, label %.preheader1

.lr.ph:                                           ; preds = %.preheader.preheader
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %26 = phi i32 [ %23, %.lr.ph ], [ %28, %.preheader ]
  %27 = phi i32 [ 0, %.lr.ph ], [ %29, %.preheader ]
  %28 = add nsw i32 %26, 1
  %29 = add nuw nsw i32 %27, 1
  %30 = icmp slt i32 %29, %9
  br i1 %30, label %.preheader, label %.preheader._crit_edge, !llvm.loop !7

.preheader._crit_edge:                            ; preds = %.preheader
  %split = phi i32 [ %28, %.preheader ]
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader._crit_edge, %.preheader.preheader
  %.lcssa = phi i32 [ %split, %.preheader._crit_edge ], [ %23, %.preheader.preheader ]
  %31 = add nuw nsw i32 %24, 1
  %32 = icmp slt i32 %31, %9
  br i1 %32, label %.preheader.preheader, label %.preheader1._crit_edge, !llvm.loop !9

.preheader1._crit_edge:                           ; preds = %.preheader1
  %split6 = phi i32 [ %.lcssa, %.preheader1 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader1._crit_edge, %.preheader1.preheader
  %.lcssa1 = phi i32 [ %split6, %.preheader1._crit_edge ], [ %20, %.preheader1.preheader ]
  %33 = add nuw nsw i32 %21, 1
  %34 = icmp slt i32 %33, %9
  br i1 %34, label %.preheader1.preheader, label %.preheader2._crit_edge, !llvm.loop !10

.preheader2._crit_edge:                           ; preds = %.preheader2
  %split7 = phi i32 [ %.lcssa1, %.preheader2 ]
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader2._crit_edge, %.preheader2.preheader
  %.lcssa2 = phi i32 [ %split7, %.preheader2._crit_edge ], [ %17, %.preheader2.preheader ]
  %35 = add nuw nsw i32 %18, 1
  %36 = icmp slt i32 %35, %9
  br i1 %36, label %.preheader2.preheader, label %.preheader3._crit_edge, !llvm.loop !11

.preheader3._crit_edge:                           ; preds = %.preheader3
  %split8 = phi i32 [ %.lcssa2, %.preheader3 ]
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader3._crit_edge, %.preheader3.preheader
  %.lcssa3 = phi i32 [ %split8, %.preheader3._crit_edge ], [ %14, %.preheader3.preheader ]
  %37 = add nuw nsw i32 %15, 1
  %38 = icmp slt i32 %37, %9
  br i1 %38, label %.preheader3.preheader, label %.preheader4._crit_edge, !llvm.loop !12

.preheader4._crit_edge:                           ; preds = %.preheader4
  %split9 = phi i32 [ %.lcssa3, %.preheader4 ]
  br label %39

39:                                               ; preds = %.preheader4._crit_edge, %.preheader4.preheader
  %.lcssa4 = phi i32 [ %split9, %.preheader4._crit_edge ], [ %12, %.preheader4.preheader ]
  %40 = add nuw nsw i32 %11, 1
  %41 = icmp slt i32 %40, %9
  br i1 %41, label %.preheader4.preheader, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %39
  %split10 = phi i32 [ %.lcssa4, %39 ]
  br label %42

42:                                               ; preds = %._crit_edge, %8
  %.lcssa5 = phi i32 [ %split10, %._crit_edge ], [ 0, %8 ]
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa5) #2
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
