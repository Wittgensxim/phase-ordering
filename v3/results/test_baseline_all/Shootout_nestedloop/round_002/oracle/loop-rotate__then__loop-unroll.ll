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
  %7 = call i32 @atoi(ptr noundef %6) #3
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ 46, %2 ]
  %10 = icmp slt i32 0, %9
  br i1 %10, label %.preheader4.lr.ph, label %54

.preheader4.lr.ph:                                ; preds = %8
  %11 = add i32 %9, -1
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.lr.ph, %51
  %12 = phi i32 [ 0, %.preheader4.lr.ph ], [ %52, %51 ]
  %13 = phi i32 [ 0, %.preheader4.lr.ph ], [ %.lcssa8, %51 ]
  %14 = icmp slt i32 0, %9
  br i1 %14, label %.preheader3.lr.ph, label %51

.preheader3.lr.ph:                                ; preds = %.preheader4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %48
  %15 = phi i32 [ %13, %.preheader3.lr.ph ], [ %.lcssa7, %48 ]
  %16 = phi i32 [ 0, %.preheader3.lr.ph ], [ %49, %48 ]
  %17 = icmp slt i32 0, %9
  br i1 %17, label %.preheader2.lr.ph, label %48

.preheader2.lr.ph:                                ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %45
  %18 = phi i32 [ %15, %.preheader2.lr.ph ], [ %.lcssa6, %45 ]
  %19 = phi i32 [ 0, %.preheader2.lr.ph ], [ %46, %45 ]
  %20 = icmp slt i32 0, %9
  br i1 %20, label %.preheader1.lr.ph, label %45

.preheader1.lr.ph:                                ; preds = %.preheader2
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %42
  %21 = phi i32 [ %18, %.preheader1.lr.ph ], [ %.lcssa5, %42 ]
  %22 = phi i32 [ 0, %.preheader1.lr.ph ], [ %43, %42 ]
  %23 = icmp slt i32 0, %9
  br i1 %23, label %.preheader.lr.ph, label %42

.preheader.lr.ph:                                 ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %39
  %24 = phi i32 [ %21, %.preheader.lr.ph ], [ %.lcssa, %39 ]
  %25 = phi i32 [ 0, %.preheader.lr.ph ], [ %40, %39 ]
  %26 = icmp slt i32 0, %9
  br i1 %26, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %.preheader
  %xtraiter = and i32 %9, 7
  %27 = icmp ult i32 %11, 7
  br i1 %27, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %9, %xtraiter
  br label %28

28:                                               ; preds = %28, %.lr.ph.new
  %29 = phi i32 [ %24, %.lr.ph.new ], [ %31, %28 ]
  %30 = phi i32 [ 0, %.lr.ph.new ], [ %32, %28 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.7, %28 ]
  %31 = add nsw i32 %29, 8
  %32 = add nuw nsw i32 %30, 8
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp ne i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %28, label %._crit_edge.unr-lcssa, !llvm.loop !7

._crit_edge.unr-lcssa:                            ; preds = %28
  %split.ph = phi i32 [ %31, %28 ]
  %.unr = phi i32 [ %31, %28 ]
  %.unr20 = phi i32 [ %32, %28 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %24, %.lr.ph ], [ %.unr, %._crit_edge.unr-lcssa ]
  %.epil.init21 = phi i32 [ 0, %.lr.ph ], [ %.unr20, %._crit_edge.unr-lcssa ]
  %lcmp.mod23 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod23)
  br label %33

33:                                               ; preds = %33, %.epil.preheader
  %34 = phi i32 [ %.epil.init, %.epil.preheader ], [ %36, %33 ]
  %35 = phi i32 [ %.epil.init21, %.epil.preheader ], [ %37, %33 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %33 ]
  %36 = add nsw i32 %34, 1
  %37 = add nuw nsw i32 %35, 1
  %38 = icmp slt i32 %37, %9
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %33, label %._crit_edge.epilog-lcssa, !llvm.loop !9

._crit_edge.epilog-lcssa:                         ; preds = %33
  %split.ph22 = phi i32 [ %36, %33 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %split = phi i32 [ %split.ph, %._crit_edge.unr-lcssa ], [ %split.ph22, %._crit_edge.epilog-lcssa ]
  br label %39

39:                                               ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %24, %.preheader ]
  %40 = add nuw nsw i32 %25, 1
  %41 = icmp slt i32 %40, %9
  br i1 %41, label %.preheader, label %._crit_edge10, !llvm.loop !11

._crit_edge10:                                    ; preds = %39
  %split11 = phi i32 [ %.lcssa, %39 ]
  br label %42

42:                                               ; preds = %._crit_edge10, %.preheader1
  %.lcssa5 = phi i32 [ %split11, %._crit_edge10 ], [ %21, %.preheader1 ]
  %43 = add nuw nsw i32 %22, 1
  %44 = icmp slt i32 %43, %9
  br i1 %44, label %.preheader1, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %42
  %split13 = phi i32 [ %.lcssa5, %42 ]
  br label %45

45:                                               ; preds = %._crit_edge12, %.preheader2
  %.lcssa6 = phi i32 [ %split13, %._crit_edge12 ], [ %18, %.preheader2 ]
  %46 = add nuw nsw i32 %19, 1
  %47 = icmp slt i32 %46, %9
  br i1 %47, label %.preheader2, label %._crit_edge14, !llvm.loop !13

._crit_edge14:                                    ; preds = %45
  %split15 = phi i32 [ %.lcssa6, %45 ]
  br label %48

48:                                               ; preds = %._crit_edge14, %.preheader3
  %.lcssa7 = phi i32 [ %split15, %._crit_edge14 ], [ %15, %.preheader3 ]
  %49 = add nuw nsw i32 %16, 1
  %50 = icmp slt i32 %49, %9
  br i1 %50, label %.preheader3, label %._crit_edge16, !llvm.loop !14

._crit_edge16:                                    ; preds = %48
  %split17 = phi i32 [ %.lcssa7, %48 ]
  br label %51

51:                                               ; preds = %._crit_edge16, %.preheader4
  %.lcssa8 = phi i32 [ %split17, %._crit_edge16 ], [ %13, %.preheader4 ]
  %52 = add nuw nsw i32 %12, 1
  %53 = icmp slt i32 %52, %9
  br i1 %53, label %.preheader4, label %._crit_edge18, !llvm.loop !15

._crit_edge18:                                    ; preds = %51
  %split19 = phi i32 [ %.lcssa8, %51 ]
  br label %54

54:                                               ; preds = %._crit_edge18, %8
  %.lcssa9 = phi i32 [ %split19, %._crit_edge18 ], [ 0, %8 ]
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa9) #3
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
