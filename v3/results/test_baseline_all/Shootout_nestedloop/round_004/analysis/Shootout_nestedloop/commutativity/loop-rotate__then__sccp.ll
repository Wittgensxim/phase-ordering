; ModuleID = 'results\test_baseline_all\Shootout_nestedloop\round_003\output.ll'
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
  br i1 %10, label %.preheader4.preheader.lr.ph, label %37

.preheader4.preheader.lr.ph:                      ; preds = %8
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader4.preheader.lr.ph, %34
  %11 = phi i32 [ 0, %.preheader4.preheader.lr.ph ], [ %35, %34 ]
  %12 = phi i32 [ 0, %.preheader4.preheader.lr.ph ], [ %split9, %34 ]
  br label %.preheader3.preheader.lr.ph

.preheader3.preheader.lr.ph:                      ; preds = %.preheader4.preheader
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %.preheader3.preheader.lr.ph, %.preheader4
  %13 = phi i32 [ %12, %.preheader3.preheader.lr.ph ], [ %split8, %.preheader4 ]
  %14 = phi i32 [ 0, %.preheader3.preheader.lr.ph ], [ %32, %.preheader4 ]
  br label %.preheader2.preheader.lr.ph

.preheader2.preheader.lr.ph:                      ; preds = %.preheader3.preheader
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader2.preheader.lr.ph, %.preheader3
  %15 = phi i32 [ %13, %.preheader2.preheader.lr.ph ], [ %split7, %.preheader3 ]
  %16 = phi i32 [ 0, %.preheader2.preheader.lr.ph ], [ %30, %.preheader3 ]
  br label %.preheader1.preheader.lr.ph

.preheader1.preheader.lr.ph:                      ; preds = %.preheader2.preheader
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %.preheader1.preheader.lr.ph, %.preheader2
  %17 = phi i32 [ %15, %.preheader1.preheader.lr.ph ], [ %split6, %.preheader2 ]
  %18 = phi i32 [ 0, %.preheader1.preheader.lr.ph ], [ %28, %.preheader2 ]
  br label %.preheader.preheader.lr.ph

.preheader.preheader.lr.ph:                       ; preds = %.preheader1.preheader
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.lr.ph, %.preheader1
  %19 = phi i32 [ %17, %.preheader.preheader.lr.ph ], [ %split, %.preheader1 ]
  %20 = phi i32 [ 0, %.preheader.preheader.lr.ph ], [ %26, %.preheader1 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %21 = phi i32 [ %19, %.lr.ph ], [ %23, %.preheader ]
  %22 = phi i32 [ 0, %.lr.ph ], [ %24, %.preheader ]
  %23 = add nsw i32 %21, 1
  %24 = add nuw nsw i32 %22, 1
  %25 = icmp slt i32 %24, %9
  br i1 %25, label %.preheader, label %.preheader._crit_edge, !llvm.loop !7

.preheader._crit_edge:                            ; preds = %.preheader
  %split = phi i32 [ %23, %.preheader ]
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader._crit_edge
  %26 = add nuw nsw i32 %20, 1
  %27 = icmp slt i32 %26, %9
  br i1 %27, label %.preheader.preheader, label %.preheader1._crit_edge, !llvm.loop !9

.preheader1._crit_edge:                           ; preds = %.preheader1
  %split6 = phi i32 [ %split, %.preheader1 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader1._crit_edge
  %28 = add nuw nsw i32 %18, 1
  %29 = icmp slt i32 %28, %9
  br i1 %29, label %.preheader1.preheader, label %.preheader2._crit_edge, !llvm.loop !10

.preheader2._crit_edge:                           ; preds = %.preheader2
  %split7 = phi i32 [ %split6, %.preheader2 ]
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader2._crit_edge
  %30 = add nuw nsw i32 %16, 1
  %31 = icmp slt i32 %30, %9
  br i1 %31, label %.preheader2.preheader, label %.preheader3._crit_edge, !llvm.loop !11

.preheader3._crit_edge:                           ; preds = %.preheader3
  %split8 = phi i32 [ %split7, %.preheader3 ]
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader3._crit_edge
  %32 = add nuw nsw i32 %14, 1
  %33 = icmp slt i32 %32, %9
  br i1 %33, label %.preheader3.preheader, label %.preheader4._crit_edge, !llvm.loop !12

.preheader4._crit_edge:                           ; preds = %.preheader4
  %split9 = phi i32 [ %split8, %.preheader4 ]
  br label %34

34:                                               ; preds = %.preheader4._crit_edge
  %35 = add nuw nsw i32 %11, 1
  %36 = icmp slt i32 %35, %9
  br i1 %36, label %.preheader4.preheader, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %34
  %split10 = phi i32 [ %split9, %34 ]
  br label %37

37:                                               ; preds = %._crit_edge, %8
  %.lcssa5 = phi i32 [ %split10, %._crit_edge ], [ 0, %8 ]
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa5) #2
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
