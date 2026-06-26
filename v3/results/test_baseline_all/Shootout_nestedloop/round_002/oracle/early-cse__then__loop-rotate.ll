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
  %10 = icmp slt i32 0, %9
  br i1 %10, label %.preheader4.lr.ph, label %47

.preheader4.lr.ph:                                ; preds = %8
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.lr.ph, %44
  %11 = phi i32 [ 0, %.preheader4.lr.ph ], [ %45, %44 ]
  %12 = phi i32 [ 0, %.preheader4.lr.ph ], [ %.lcssa8, %44 ]
  %13 = icmp slt i32 0, %9
  br i1 %13, label %.preheader3.lr.ph, label %44

.preheader3.lr.ph:                                ; preds = %.preheader4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %41
  %14 = phi i32 [ %12, %.preheader3.lr.ph ], [ %.lcssa7, %41 ]
  %15 = phi i32 [ 0, %.preheader3.lr.ph ], [ %42, %41 ]
  %16 = icmp slt i32 0, %9
  br i1 %16, label %.preheader2.lr.ph, label %41

.preheader2.lr.ph:                                ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %38
  %17 = phi i32 [ %14, %.preheader2.lr.ph ], [ %.lcssa6, %38 ]
  %18 = phi i32 [ 0, %.preheader2.lr.ph ], [ %39, %38 ]
  %19 = icmp slt i32 0, %9
  br i1 %19, label %.preheader1.lr.ph, label %38

.preheader1.lr.ph:                                ; preds = %.preheader2
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %35
  %20 = phi i32 [ %17, %.preheader1.lr.ph ], [ %.lcssa5, %35 ]
  %21 = phi i32 [ 0, %.preheader1.lr.ph ], [ %36, %35 ]
  %22 = icmp slt i32 0, %9
  br i1 %22, label %.preheader.lr.ph, label %35

.preheader.lr.ph:                                 ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %32
  %23 = phi i32 [ %20, %.preheader.lr.ph ], [ %.lcssa, %32 ]
  %24 = phi i32 [ 0, %.preheader.lr.ph ], [ %33, %32 ]
  %25 = icmp slt i32 0, %9
  br i1 %25, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %.preheader
  br label %26

26:                                               ; preds = %.lr.ph, %26
  %27 = phi i32 [ %23, %.lr.ph ], [ %29, %26 ]
  %28 = phi i32 [ 0, %.lr.ph ], [ %30, %26 ]
  %29 = add nsw i32 %27, 1
  %30 = add nuw nsw i32 %28, 1
  %31 = icmp slt i32 %30, %9
  br i1 %31, label %26, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %26
  %split = phi i32 [ %29, %26 ]
  br label %32

32:                                               ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %23, %.preheader ]
  %33 = add nuw nsw i32 %24, 1
  %34 = icmp slt i32 %33, %9
  br i1 %34, label %.preheader, label %._crit_edge10, !llvm.loop !9

._crit_edge10:                                    ; preds = %32
  %split11 = phi i32 [ %.lcssa, %32 ]
  br label %35

35:                                               ; preds = %._crit_edge10, %.preheader1
  %.lcssa5 = phi i32 [ %split11, %._crit_edge10 ], [ %20, %.preheader1 ]
  %36 = add nuw nsw i32 %21, 1
  %37 = icmp slt i32 %36, %9
  br i1 %37, label %.preheader1, label %._crit_edge12, !llvm.loop !10

._crit_edge12:                                    ; preds = %35
  %split13 = phi i32 [ %.lcssa5, %35 ]
  br label %38

38:                                               ; preds = %._crit_edge12, %.preheader2
  %.lcssa6 = phi i32 [ %split13, %._crit_edge12 ], [ %17, %.preheader2 ]
  %39 = add nuw nsw i32 %18, 1
  %40 = icmp slt i32 %39, %9
  br i1 %40, label %.preheader2, label %._crit_edge14, !llvm.loop !11

._crit_edge14:                                    ; preds = %38
  %split15 = phi i32 [ %.lcssa6, %38 ]
  br label %41

41:                                               ; preds = %._crit_edge14, %.preheader3
  %.lcssa7 = phi i32 [ %split15, %._crit_edge14 ], [ %14, %.preheader3 ]
  %42 = add nuw nsw i32 %15, 1
  %43 = icmp slt i32 %42, %9
  br i1 %43, label %.preheader3, label %._crit_edge16, !llvm.loop !12

._crit_edge16:                                    ; preds = %41
  %split17 = phi i32 [ %.lcssa7, %41 ]
  br label %44

44:                                               ; preds = %._crit_edge16, %.preheader4
  %.lcssa8 = phi i32 [ %split17, %._crit_edge16 ], [ %12, %.preheader4 ]
  %45 = add nuw nsw i32 %11, 1
  %46 = icmp slt i32 %45, %9
  br i1 %46, label %.preheader4, label %._crit_edge18, !llvm.loop !13

._crit_edge18:                                    ; preds = %44
  %split19 = phi i32 [ %.lcssa8, %44 ]
  br label %47

47:                                               ; preds = %._crit_edge18, %8
  %.lcssa9 = phi i32 [ %split19, %._crit_edge18 ], [ 0, %8 ]
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa9) #2
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
