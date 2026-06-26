; ModuleID = 'results\test_baseline_all\Shootout_nestedloop\round_001\output.ll'
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
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %.preheader4.lr.ph, label %42

.preheader4.lr.ph:                                ; preds = %8
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.lr.ph, %39
  %11 = phi i32 [ 0, %.preheader4.lr.ph ], [ %40, %39 ]
  %12 = phi i32 [ 0, %.preheader4.lr.ph ], [ %.lcssa8, %39 ]
  br i1 true, label %.preheader3.lr.ph, label %39

.preheader3.lr.ph:                                ; preds = %.preheader4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %36
  %13 = phi i32 [ %12, %.preheader3.lr.ph ], [ %.lcssa7, %36 ]
  %14 = phi i32 [ 0, %.preheader3.lr.ph ], [ %37, %36 ]
  br i1 true, label %.preheader2.lr.ph, label %36

.preheader2.lr.ph:                                ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %33
  %15 = phi i32 [ %13, %.preheader2.lr.ph ], [ %.lcssa6, %33 ]
  %16 = phi i32 [ 0, %.preheader2.lr.ph ], [ %34, %33 ]
  br i1 true, label %.preheader1.lr.ph, label %33

.preheader1.lr.ph:                                ; preds = %.preheader2
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %30
  %17 = phi i32 [ %15, %.preheader1.lr.ph ], [ %.lcssa5, %30 ]
  %18 = phi i32 [ 0, %.preheader1.lr.ph ], [ %31, %30 ]
  br i1 true, label %.preheader.lr.ph, label %30

.preheader.lr.ph:                                 ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %27
  %19 = phi i32 [ %17, %.preheader.lr.ph ], [ %.lcssa, %27 ]
  %20 = phi i32 [ 0, %.preheader.lr.ph ], [ %28, %27 ]
  br i1 true, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %.preheader
  br label %21

21:                                               ; preds = %.lr.ph, %21
  %22 = phi i32 [ %19, %.lr.ph ], [ %24, %21 ]
  %23 = phi i32 [ 0, %.lr.ph ], [ %25, %21 ]
  %24 = add nsw i32 %22, 1
  %25 = add nuw nsw i32 %23, 1
  %26 = icmp slt i32 %25, %9
  br i1 %26, label %21, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %21
  br label %27

27:                                               ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i32 [ %24, %._crit_edge ], [ poison, %.preheader ]
  %28 = add nuw nsw i32 %20, 1
  %29 = icmp slt i32 %28, %9
  br i1 %29, label %.preheader, label %._crit_edge10, !llvm.loop !9

._crit_edge10:                                    ; preds = %27
  br label %30

30:                                               ; preds = %._crit_edge10, %.preheader1
  %.lcssa5 = phi i32 [ %.lcssa, %._crit_edge10 ], [ poison, %.preheader1 ]
  %31 = add nuw nsw i32 %18, 1
  %32 = icmp slt i32 %31, %9
  br i1 %32, label %.preheader1, label %._crit_edge12, !llvm.loop !10

._crit_edge12:                                    ; preds = %30
  br label %33

33:                                               ; preds = %._crit_edge12, %.preheader2
  %.lcssa6 = phi i32 [ %.lcssa5, %._crit_edge12 ], [ poison, %.preheader2 ]
  %34 = add nuw nsw i32 %16, 1
  %35 = icmp slt i32 %34, %9
  br i1 %35, label %.preheader2, label %._crit_edge14, !llvm.loop !11

._crit_edge14:                                    ; preds = %33
  br label %36

36:                                               ; preds = %._crit_edge14, %.preheader3
  %.lcssa7 = phi i32 [ %.lcssa6, %._crit_edge14 ], [ poison, %.preheader3 ]
  %37 = add nuw nsw i32 %14, 1
  %38 = icmp slt i32 %37, %9
  br i1 %38, label %.preheader3, label %._crit_edge16, !llvm.loop !12

._crit_edge16:                                    ; preds = %36
  br label %39

39:                                               ; preds = %._crit_edge16, %.preheader4
  %.lcssa8 = phi i32 [ %.lcssa7, %._crit_edge16 ], [ poison, %.preheader4 ]
  %40 = add nuw nsw i32 %11, 1
  %41 = icmp slt i32 %40, %9
  br i1 %41, label %.preheader4, label %._crit_edge18, !llvm.loop !13

._crit_edge18:                                    ; preds = %39
  br label %42

42:                                               ; preds = %._crit_edge18, %8
  %.lcssa9 = phi i32 [ %.lcssa8, %._crit_edge18 ], [ 0, %8 ]
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa9) #2
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
