; ModuleID = 'results\test_baseline_all\Shootout_nestedloop\round_006\output.ll'
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
  %7 = call i32 @atoi(ptr noundef %6) #3
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ 46, %2 ]
  %10 = icmp slt i32 0, %9
  br i1 %10, label %.preheader4.preheader.lr.ph, label %48

.preheader4.preheader.lr.ph:                      ; preds = %8
  %11 = add i32 %9, -1
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader4.preheader.lr.ph, %45
  %12 = phi i32 [ 0, %.preheader4.preheader.lr.ph ], [ %46, %45 ]
  %13 = phi i32 [ 0, %.preheader4.preheader.lr.ph ], [ %.lcssa4, %45 ]
  %14 = icmp slt i32 0, %9
  br i1 %14, label %.preheader3.preheader.lr.ph, label %45

.preheader3.preheader.lr.ph:                      ; preds = %.preheader4.preheader
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %.preheader3.preheader.lr.ph, %.preheader4
  %15 = phi i32 [ %13, %.preheader3.preheader.lr.ph ], [ %.lcssa3, %.preheader4 ]
  %16 = phi i32 [ 0, %.preheader3.preheader.lr.ph ], [ %43, %.preheader4 ]
  %17 = icmp slt i32 0, %9
  br i1 %17, label %.preheader2.preheader.lr.ph, label %.preheader4

.preheader2.preheader.lr.ph:                      ; preds = %.preheader3.preheader
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader2.preheader.lr.ph, %.preheader3
  %18 = phi i32 [ %15, %.preheader2.preheader.lr.ph ], [ %.lcssa2, %.preheader3 ]
  %19 = phi i32 [ 0, %.preheader2.preheader.lr.ph ], [ %41, %.preheader3 ]
  %20 = icmp slt i32 0, %9
  br i1 %20, label %.preheader1.preheader.lr.ph, label %.preheader3

.preheader1.preheader.lr.ph:                      ; preds = %.preheader2.preheader
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %.preheader1.preheader.lr.ph, %.preheader2
  %21 = phi i32 [ %18, %.preheader1.preheader.lr.ph ], [ %.lcssa1, %.preheader2 ]
  %22 = phi i32 [ 0, %.preheader1.preheader.lr.ph ], [ %39, %.preheader2 ]
  %23 = icmp slt i32 0, %9
  br i1 %23, label %.preheader.preheader.lr.ph, label %.preheader2

.preheader.preheader.lr.ph:                       ; preds = %.preheader1.preheader
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.lr.ph, %.preheader1
  %24 = phi i32 [ %21, %.preheader.preheader.lr.ph ], [ %.lcssa, %.preheader1 ]
  %25 = phi i32 [ 0, %.preheader.preheader.lr.ph ], [ %37, %.preheader1 ]
  %26 = icmp slt i32 0, %9
  br i1 %26, label %.lr.ph, label %.preheader1

.lr.ph:                                           ; preds = %.preheader.preheader
  %xtraiter = and i32 %9, 7
  %27 = icmp ult i32 %11, 7
  br i1 %27, label %.preheader.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %9, %xtraiter
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.lr.ph.new
  %28 = phi i32 [ %24, %.lr.ph.new ], [ %30, %.preheader ]
  %29 = phi i32 [ 0, %.lr.ph.new ], [ %31, %.preheader ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.7, %.preheader ]
  %30 = add nsw i32 %28, 8
  %31 = add nuw nsw i32 %29, 8
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp ne i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader, label %.preheader._crit_edge.unr-lcssa, !llvm.loop !7

.preheader._crit_edge.unr-lcssa:                  ; preds = %.preheader
  %split.ph = phi i32 [ %30, %.preheader ]
  %.unr = phi i32 [ %30, %.preheader ]
  %.unr11 = phi i32 [ %31, %.preheader ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.preheader.epil.preheader, label %.preheader._crit_edge

.preheader.epil.preheader:                        ; preds = %.preheader._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %24, %.lr.ph ], [ %.unr, %.preheader._crit_edge.unr-lcssa ]
  %.epil.init12 = phi i32 [ 0, %.lr.ph ], [ %.unr11, %.preheader._crit_edge.unr-lcssa ]
  %lcmp.mod14 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod14)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %32 = phi i32 [ %.epil.init, %.preheader.epil.preheader ], [ %34, %.preheader.epil ]
  %33 = phi i32 [ %.epil.init12, %.preheader.epil.preheader ], [ %35, %.preheader.epil ]
  %epil.iter = phi i32 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %34 = add nsw i32 %32, 1
  %35 = add nuw nsw i32 %33, 1
  %36 = icmp slt i32 %35, %9
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %.preheader.epil, label %.preheader._crit_edge.epilog-lcssa, !llvm.loop !9

.preheader._crit_edge.epilog-lcssa:               ; preds = %.preheader.epil
  %split.ph13 = phi i32 [ %34, %.preheader.epil ]
  br label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader._crit_edge.unr-lcssa, %.preheader._crit_edge.epilog-lcssa
  %split = phi i32 [ %split.ph, %.preheader._crit_edge.unr-lcssa ], [ %split.ph13, %.preheader._crit_edge.epilog-lcssa ]
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader._crit_edge, %.preheader.preheader
  %.lcssa = phi i32 [ %split, %.preheader._crit_edge ], [ %24, %.preheader.preheader ]
  %37 = add nuw nsw i32 %25, 1
  %38 = icmp slt i32 %37, %9
  br i1 %38, label %.preheader.preheader, label %.preheader1._crit_edge, !llvm.loop !11

.preheader1._crit_edge:                           ; preds = %.preheader1
  %split6 = phi i32 [ %.lcssa, %.preheader1 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader1._crit_edge, %.preheader1.preheader
  %.lcssa1 = phi i32 [ %split6, %.preheader1._crit_edge ], [ %21, %.preheader1.preheader ]
  %39 = add nuw nsw i32 %22, 1
  %40 = icmp slt i32 %39, %9
  br i1 %40, label %.preheader1.preheader, label %.preheader2._crit_edge, !llvm.loop !12

.preheader2._crit_edge:                           ; preds = %.preheader2
  %split7 = phi i32 [ %.lcssa1, %.preheader2 ]
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader2._crit_edge, %.preheader2.preheader
  %.lcssa2 = phi i32 [ %split7, %.preheader2._crit_edge ], [ %18, %.preheader2.preheader ]
  %41 = add nuw nsw i32 %19, 1
  %42 = icmp slt i32 %41, %9
  br i1 %42, label %.preheader2.preheader, label %.preheader3._crit_edge, !llvm.loop !13

.preheader3._crit_edge:                           ; preds = %.preheader3
  %split8 = phi i32 [ %.lcssa2, %.preheader3 ]
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader3._crit_edge, %.preheader3.preheader
  %.lcssa3 = phi i32 [ %split8, %.preheader3._crit_edge ], [ %15, %.preheader3.preheader ]
  %43 = add nuw nsw i32 %16, 1
  %44 = icmp slt i32 %43, %9
  br i1 %44, label %.preheader3.preheader, label %.preheader4._crit_edge, !llvm.loop !14

.preheader4._crit_edge:                           ; preds = %.preheader4
  %split9 = phi i32 [ %.lcssa3, %.preheader4 ]
  br label %45

45:                                               ; preds = %.preheader4._crit_edge, %.preheader4.preheader
  %.lcssa4 = phi i32 [ %split9, %.preheader4._crit_edge ], [ %13, %.preheader4.preheader ]
  %46 = add nuw nsw i32 %12, 1
  %47 = icmp slt i32 %46, %9
  br i1 %47, label %.preheader4.preheader, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %45
  %split10 = phi i32 [ %.lcssa4, %45 ]
  br label %48

48:                                               ; preds = %._crit_edge, %8
  %.lcssa5 = phi i32 [ %split10, %._crit_edge ], [ 0, %8 ]
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa5) #3
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
