; ModuleID = 'results\cmp_test\cmp_oracle_O2\Shootout_nestedloop\round_000\output.ll'
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
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 46, %8 ]
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph23, label %60

.lr.ph23:                                         ; preds = %9
  %12 = add i32 %10, -1
  br label %13

13:                                               ; preds = %.lr.ph23, %57
  %14 = phi i32 [ 0, %.lr.ph23 ], [ %58, %57 ]
  %15 = phi i32 [ 0, %.lr.ph23 ], [ %.lcssa4, %57 ]
  %16 = icmp slt i32 0, %10
  br i1 %16, label %.lr.ph19, label %57

.lr.ph19:                                         ; preds = %13
  br label %17

17:                                               ; preds = %.lr.ph19, %54
  %18 = phi i32 [ %15, %.lr.ph19 ], [ %.lcssa3, %54 ]
  %19 = phi i32 [ 0, %.lr.ph19 ], [ %55, %54 ]
  %20 = icmp slt i32 0, %10
  br i1 %20, label %.lr.ph15, label %54

.lr.ph15:                                         ; preds = %17
  br label %21

21:                                               ; preds = %.lr.ph15, %51
  %22 = phi i32 [ %18, %.lr.ph15 ], [ %.lcssa2, %51 ]
  %23 = phi i32 [ 0, %.lr.ph15 ], [ %52, %51 ]
  %24 = icmp slt i32 0, %10
  br i1 %24, label %.lr.ph11, label %51

.lr.ph11:                                         ; preds = %21
  br label %25

25:                                               ; preds = %.lr.ph11, %48
  %26 = phi i32 [ %22, %.lr.ph11 ], [ %.lcssa1, %48 ]
  %27 = phi i32 [ 0, %.lr.ph11 ], [ %49, %48 ]
  %28 = icmp slt i32 0, %10
  br i1 %28, label %.lr.ph7, label %48

.lr.ph7:                                          ; preds = %25
  br label %29

29:                                               ; preds = %.lr.ph7, %45
  %30 = phi i32 [ %26, %.lr.ph7 ], [ %.lcssa, %45 ]
  %31 = phi i32 [ 0, %.lr.ph7 ], [ %46, %45 ]
  %32 = icmp slt i32 0, %10
  br i1 %32, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %29
  %xtraiter = and i32 %10, 7
  %33 = icmp ult i32 %12, 7
  br i1 %33, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %10, %xtraiter
  br label %34

34:                                               ; preds = %34, %.lr.ph.new
  %35 = phi i32 [ %30, %.lr.ph.new ], [ %37, %34 ]
  %36 = phi i32 [ 0, %.lr.ph.new ], [ %38, %34 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.7, %34 ]
  %37 = add nsw i32 %35, 8
  %38 = add nuw nsw i32 %36, 8
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp ne i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %34, label %._crit_edge.unr-lcssa, !llvm.loop !7

._crit_edge.unr-lcssa:                            ; preds = %34
  %split.ph = phi i32 [ %37, %34 ]
  %.unr = phi i32 [ %37, %34 ]
  %.unr26 = phi i32 [ %38, %34 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %30, %.lr.ph ], [ %.unr, %._crit_edge.unr-lcssa ]
  %.epil.init27 = phi i32 [ 0, %.lr.ph ], [ %.unr26, %._crit_edge.unr-lcssa ]
  %lcmp.mod29 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod29)
  br label %39

39:                                               ; preds = %39, %.epil.preheader
  %40 = phi i32 [ %.epil.init, %.epil.preheader ], [ %42, %39 ]
  %41 = phi i32 [ %.epil.init27, %.epil.preheader ], [ %43, %39 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %39 ]
  %42 = add nsw i32 %40, 1
  %43 = add nuw nsw i32 %41, 1
  %44 = icmp slt i32 %43, %10
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %39, label %._crit_edge.epilog-lcssa, !llvm.loop !9

._crit_edge.epilog-lcssa:                         ; preds = %39
  %split.ph28 = phi i32 [ %42, %39 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %split = phi i32 [ %split.ph, %._crit_edge.unr-lcssa ], [ %split.ph28, %._crit_edge.epilog-lcssa ]
  br label %45

45:                                               ; preds = %._crit_edge, %29
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %30, %29 ]
  %46 = add nuw nsw i32 %31, 1
  %47 = icmp slt i32 %46, %10
  br i1 %47, label %29, label %._crit_edge8, !llvm.loop !11

._crit_edge8:                                     ; preds = %45
  %split9 = phi i32 [ %.lcssa, %45 ]
  br label %48

48:                                               ; preds = %._crit_edge8, %25
  %.lcssa1 = phi i32 [ %split9, %._crit_edge8 ], [ %26, %25 ]
  %49 = add nuw nsw i32 %27, 1
  %50 = icmp slt i32 %49, %10
  br i1 %50, label %25, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %48
  %split13 = phi i32 [ %.lcssa1, %48 ]
  br label %51

51:                                               ; preds = %._crit_edge12, %21
  %.lcssa2 = phi i32 [ %split13, %._crit_edge12 ], [ %22, %21 ]
  %52 = add nuw nsw i32 %23, 1
  %53 = icmp slt i32 %52, %10
  br i1 %53, label %21, label %._crit_edge16, !llvm.loop !13

._crit_edge16:                                    ; preds = %51
  %split17 = phi i32 [ %.lcssa2, %51 ]
  br label %54

54:                                               ; preds = %._crit_edge16, %17
  %.lcssa3 = phi i32 [ %split17, %._crit_edge16 ], [ %18, %17 ]
  %55 = add nuw nsw i32 %19, 1
  %56 = icmp slt i32 %55, %10
  br i1 %56, label %17, label %._crit_edge20, !llvm.loop !14

._crit_edge20:                                    ; preds = %54
  %split21 = phi i32 [ %.lcssa3, %54 ]
  br label %57

57:                                               ; preds = %._crit_edge20, %13
  %.lcssa4 = phi i32 [ %split21, %._crit_edge20 ], [ %15, %13 ]
  %58 = add nuw nsw i32 %14, 1
  %59 = icmp slt i32 %58, %10
  br i1 %59, label %13, label %._crit_edge24, !llvm.loop !15

._crit_edge24:                                    ; preds = %57
  %split25 = phi i32 [ %.lcssa4, %57 ]
  br label %60

60:                                               ; preds = %._crit_edge24, %9
  %.lcssa5 = phi i32 [ %split25, %._crit_edge24 ], [ 0, %9 ]
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa5) #3
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
