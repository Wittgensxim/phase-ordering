; ModuleID = 'results\cmp_test\cmp_oracle_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
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

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ 46, %2 ]
  %10 = icmp slt i32 0, %9
  br i1 %10, label %.preheader10.lr.ph, label %35

.preheader10.lr.ph:                               ; preds = %8
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.lr.ph, %32
  %.030 = phi i32 [ 0, %.preheader10.lr.ph ], [ %.1.lcssa, %32 ]
  %.0429 = phi i32 [ 0, %.preheader10.lr.ph ], [ %33, %32 ]
  %11 = icmp slt i32 0, %9
  br i1 %11, label %.preheader9.lr.ph, label %32

.preheader9.lr.ph:                                ; preds = %.preheader10
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader9.lr.ph, %29
  %.126 = phi i32 [ %.030, %.preheader9.lr.ph ], [ %.2.lcssa, %29 ]
  %.0525 = phi i32 [ 0, %.preheader9.lr.ph ], [ %30, %29 ]
  %12 = icmp slt i32 0, %9
  br i1 %12, label %.preheader8.lr.ph, label %29

.preheader8.lr.ph:                                ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.lr.ph, %26
  %.222 = phi i32 [ %.126, %.preheader8.lr.ph ], [ %.3.lcssa, %26 ]
  %.0621 = phi i32 [ 0, %.preheader8.lr.ph ], [ %27, %26 ]
  %13 = icmp slt i32 0, %9
  br i1 %13, label %.preheader7.lr.ph, label %26

.preheader7.lr.ph:                                ; preds = %.preheader8
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.lr.ph, %23
  %.318 = phi i32 [ %.222, %.preheader7.lr.ph ], [ %.4.lcssa, %23 ]
  %.0317 = phi i32 [ 0, %.preheader7.lr.ph ], [ %24, %23 ]
  %14 = icmp slt i32 0, %9
  br i1 %14, label %.preheader.lr.ph, label %23

.preheader.lr.ph:                                 ; preds = %.preheader7
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %20
  %.414 = phi i32 [ %.318, %.preheader.lr.ph ], [ %.5.lcssa, %20 ]
  %.0213 = phi i32 [ 0, %.preheader.lr.ph ], [ %21, %20 ]
  %15 = icmp slt i32 0, %9
  br i1 %15, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %.preheader
  br label %16

16:                                               ; preds = %.lr.ph, %16
  %.512 = phi i32 [ %.414, %.lr.ph ], [ %17, %16 ]
  %.0111 = phi i32 [ 0, %.lr.ph ], [ %18, %16 ]
  %17 = add nsw i32 %.512, 1
  %18 = add nuw nsw i32 %.0111, 1
  %19 = icmp slt i32 %18, %9
  br i1 %19, label %16, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  %split = phi i32 [ %17, %16 ]
  br label %20

20:                                               ; preds = %._crit_edge, %.preheader
  %.5.lcssa = phi i32 [ %split, %._crit_edge ], [ %.414, %.preheader ]
  %21 = add nuw nsw i32 %.0213, 1
  %22 = icmp slt i32 %21, %9
  br i1 %22, label %.preheader, label %._crit_edge15, !llvm.loop !9

._crit_edge15:                                    ; preds = %20
  %split16 = phi i32 [ %.5.lcssa, %20 ]
  br label %23

23:                                               ; preds = %._crit_edge15, %.preheader7
  %.4.lcssa = phi i32 [ %split16, %._crit_edge15 ], [ %.318, %.preheader7 ]
  %24 = add nuw nsw i32 %.0317, 1
  %25 = icmp slt i32 %24, %9
  br i1 %25, label %.preheader7, label %._crit_edge19, !llvm.loop !10

._crit_edge19:                                    ; preds = %23
  %split20 = phi i32 [ %.4.lcssa, %23 ]
  br label %26

26:                                               ; preds = %._crit_edge19, %.preheader8
  %.3.lcssa = phi i32 [ %split20, %._crit_edge19 ], [ %.222, %.preheader8 ]
  %27 = add nuw nsw i32 %.0621, 1
  %28 = icmp slt i32 %27, %9
  br i1 %28, label %.preheader8, label %._crit_edge23, !llvm.loop !11

._crit_edge23:                                    ; preds = %26
  %split24 = phi i32 [ %.3.lcssa, %26 ]
  br label %29

29:                                               ; preds = %._crit_edge23, %.preheader9
  %.2.lcssa = phi i32 [ %split24, %._crit_edge23 ], [ %.126, %.preheader9 ]
  %30 = add nuw nsw i32 %.0525, 1
  %31 = icmp slt i32 %30, %9
  br i1 %31, label %.preheader9, label %._crit_edge27, !llvm.loop !12

._crit_edge27:                                    ; preds = %29
  %split28 = phi i32 [ %.2.lcssa, %29 ]
  br label %32

32:                                               ; preds = %._crit_edge27, %.preheader10
  %.1.lcssa = phi i32 [ %split28, %._crit_edge27 ], [ %.030, %.preheader10 ]
  %33 = add nuw nsw i32 %.0429, 1
  %34 = icmp slt i32 %33, %9
  br i1 %34, label %.preheader10, label %._crit_edge31, !llvm.loop !13

._crit_edge31:                                    ; preds = %32
  %split32 = phi i32 [ %.1.lcssa, %32 ]
  br label %35

35:                                               ; preds = %._crit_edge31, %8
  %.0.lcssa = phi i32 [ %split32, %._crit_edge31 ], [ 0, %8 ]
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
