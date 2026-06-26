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
  %7 = call i32 @atoi(ptr noundef %6) #2
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ 46, %2 ]
  %10 = icmp slt i32 0, %9
  br i1 %10, label %.lr.ph23, label %._crit_edge24

.lr.ph23:                                         ; preds = %8, %._crit_edge20
  %11 = phi i32 [ %39, %._crit_edge20 ], [ 0, %8 ]
  %12 = phi i32 [ %.lcssa4, %._crit_edge20 ], [ 0, %8 ]
  %13 = icmp slt i32 0, %9
  br i1 %13, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %.lr.ph23, %._crit_edge16
  %14 = phi i32 [ %.lcssa3, %._crit_edge16 ], [ %12, %.lr.ph23 ]
  %15 = phi i32 [ %37, %._crit_edge16 ], [ 0, %.lr.ph23 ]
  %16 = icmp slt i32 0, %9
  br i1 %16, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %.lr.ph19, %._crit_edge12
  %17 = phi i32 [ %.lcssa2, %._crit_edge12 ], [ %14, %.lr.ph19 ]
  %18 = phi i32 [ %35, %._crit_edge12 ], [ 0, %.lr.ph19 ]
  %19 = icmp slt i32 0, %9
  br i1 %19, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %.lr.ph15, %._crit_edge8
  %20 = phi i32 [ %.lcssa1, %._crit_edge8 ], [ %17, %.lr.ph15 ]
  %21 = phi i32 [ %33, %._crit_edge8 ], [ 0, %.lr.ph15 ]
  %22 = icmp slt i32 0, %9
  br i1 %22, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %.lr.ph11, %._crit_edge
  %23 = phi i32 [ %.lcssa, %._crit_edge ], [ %20, %.lr.ph11 ]
  %24 = phi i32 [ %31, %._crit_edge ], [ 0, %.lr.ph11 ]
  %25 = icmp slt i32 0, %9
  br i1 %25, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph7, %.lr.ph
  %26 = phi i32 [ %28, %.lr.ph ], [ %23, %.lr.ph7 ]
  %27 = phi i32 [ %29, %.lr.ph ], [ 0, %.lr.ph7 ]
  %28 = add nsw i32 %26, 1
  %29 = add nuw nsw i32 %27, 1
  %30 = icmp slt i32 %29, %9
  br i1 %30, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph7
  %.lcssa = phi i32 [ %23, %.lr.ph7 ], [ %28, %.lr.ph ]
  %31 = add nuw nsw i32 %24, 1
  %32 = icmp slt i32 %31, %9
  br i1 %32, label %.lr.ph7, label %._crit_edge8, !llvm.loop !9

._crit_edge8:                                     ; preds = %._crit_edge, %.lr.ph11
  %.lcssa1 = phi i32 [ %20, %.lr.ph11 ], [ %.lcssa, %._crit_edge ]
  %33 = add nuw nsw i32 %21, 1
  %34 = icmp slt i32 %33, %9
  br i1 %34, label %.lr.ph11, label %._crit_edge12, !llvm.loop !10

._crit_edge12:                                    ; preds = %._crit_edge8, %.lr.ph15
  %.lcssa2 = phi i32 [ %17, %.lr.ph15 ], [ %.lcssa1, %._crit_edge8 ]
  %35 = add nuw nsw i32 %18, 1
  %36 = icmp slt i32 %35, %9
  br i1 %36, label %.lr.ph15, label %._crit_edge16, !llvm.loop !11

._crit_edge16:                                    ; preds = %._crit_edge12, %.lr.ph19
  %.lcssa3 = phi i32 [ %14, %.lr.ph19 ], [ %.lcssa2, %._crit_edge12 ]
  %37 = add nuw nsw i32 %15, 1
  %38 = icmp slt i32 %37, %9
  br i1 %38, label %.lr.ph19, label %._crit_edge20, !llvm.loop !12

._crit_edge20:                                    ; preds = %._crit_edge16, %.lr.ph23
  %.lcssa4 = phi i32 [ %12, %.lr.ph23 ], [ %.lcssa3, %._crit_edge16 ]
  %39 = add nuw nsw i32 %11, 1
  %40 = icmp slt i32 %39, %9
  br i1 %40, label %.lr.ph23, label %._crit_edge24, !llvm.loop !13

._crit_edge24:                                    ; preds = %._crit_edge20, %8
  %.lcssa5 = phi i32 [ 0, %8 ], [ %.lcssa4, %._crit_edge20 ]
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
