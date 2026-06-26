; ModuleID = 'results\test_baseline_all\Shootout_nestedloop\round_002\output.ll'
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
  br i1 %10, label %.preheader4.preheader, label %._crit_edge

.preheader4.preheader:                            ; preds = %8, %.preheader4._crit_edge
  %11 = phi i32 [ %39, %.preheader4._crit_edge ], [ 0, %8 ]
  %12 = phi i32 [ %.lcssa4, %.preheader4._crit_edge ], [ 0, %8 ]
  %13 = icmp slt i32 0, %9
  br i1 %13, label %.preheader3.preheader, label %.preheader4._crit_edge

.preheader3.preheader:                            ; preds = %.preheader4.preheader, %.preheader4
  %14 = phi i32 [ %.lcssa3, %.preheader4 ], [ %12, %.preheader4.preheader ]
  %15 = phi i32 [ %37, %.preheader4 ], [ 0, %.preheader4.preheader ]
  %16 = icmp slt i32 0, %9
  br i1 %16, label %.preheader2.preheader, label %.preheader4

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %17 = phi i32 [ %.lcssa2, %.preheader3 ], [ %14, %.preheader3.preheader ]
  %18 = phi i32 [ %35, %.preheader3 ], [ 0, %.preheader3.preheader ]
  %19 = icmp slt i32 0, %9
  br i1 %19, label %.preheader1.preheader, label %.preheader3

.preheader1.preheader:                            ; preds = %.preheader2.preheader, %.preheader2
  %20 = phi i32 [ %.lcssa1, %.preheader2 ], [ %17, %.preheader2.preheader ]
  %21 = phi i32 [ %33, %.preheader2 ], [ 0, %.preheader2.preheader ]
  %22 = icmp slt i32 0, %9
  br i1 %22, label %.preheader.preheader, label %.preheader2

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %23 = phi i32 [ %.lcssa, %.preheader1 ], [ %20, %.preheader1.preheader ]
  %24 = phi i32 [ %31, %.preheader1 ], [ 0, %.preheader1.preheader ]
  %25 = icmp slt i32 0, %9
  br i1 %25, label %.preheader, label %.preheader1

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %26 = phi i32 [ %28, %.preheader ], [ %23, %.preheader.preheader ]
  %27 = phi i32 [ %29, %.preheader ], [ 0, %.preheader.preheader ]
  %28 = add nsw i32 %26, 1
  %29 = add nuw nsw i32 %27, 1
  %30 = icmp slt i32 %29, %9
  br i1 %30, label %.preheader, label %.preheader1, !llvm.loop !7

.preheader1:                                      ; preds = %.preheader, %.preheader.preheader
  %.lcssa = phi i32 [ %23, %.preheader.preheader ], [ %28, %.preheader ]
  %31 = add nuw nsw i32 %24, 1
  %32 = icmp slt i32 %31, %9
  br i1 %32, label %.preheader.preheader, label %.preheader2, !llvm.loop !9

.preheader2:                                      ; preds = %.preheader1, %.preheader1.preheader
  %.lcssa1 = phi i32 [ %20, %.preheader1.preheader ], [ %.lcssa, %.preheader1 ]
  %33 = add nuw nsw i32 %21, 1
  %34 = icmp slt i32 %33, %9
  br i1 %34, label %.preheader1.preheader, label %.preheader3, !llvm.loop !10

.preheader3:                                      ; preds = %.preheader2, %.preheader2.preheader
  %.lcssa2 = phi i32 [ %17, %.preheader2.preheader ], [ %.lcssa1, %.preheader2 ]
  %35 = add nuw nsw i32 %18, 1
  %36 = icmp slt i32 %35, %9
  br i1 %36, label %.preheader2.preheader, label %.preheader4, !llvm.loop !11

.preheader4:                                      ; preds = %.preheader3, %.preheader3.preheader
  %.lcssa3 = phi i32 [ %14, %.preheader3.preheader ], [ %.lcssa2, %.preheader3 ]
  %37 = add nuw nsw i32 %15, 1
  %38 = icmp slt i32 %37, %9
  br i1 %38, label %.preheader3.preheader, label %.preheader4._crit_edge, !llvm.loop !12

.preheader4._crit_edge:                           ; preds = %.preheader4, %.preheader4.preheader
  %.lcssa4 = phi i32 [ %12, %.preheader4.preheader ], [ %.lcssa3, %.preheader4 ]
  %39 = add nuw nsw i32 %11, 1
  %40 = icmp slt i32 %39, %9
  br i1 %40, label %.preheader4.preheader, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %.preheader4._crit_edge, %8
  %.lcssa5 = phi i32 [ 0, %8 ], [ %.lcssa4, %.preheader4._crit_edge ]
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa5) #2
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
