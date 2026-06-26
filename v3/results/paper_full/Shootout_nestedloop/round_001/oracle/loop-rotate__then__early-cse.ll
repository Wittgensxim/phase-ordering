; ModuleID = 'results\paper_full\Shootout_nestedloop\round_000\output.ll'
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
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 46, %8 ]
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph23, label %48

.lr.ph23:                                         ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph23, %45
  %13 = phi i32 [ 0, %.lr.ph23 ], [ %46, %45 ]
  %14 = phi i32 [ 0, %.lr.ph23 ], [ %.lcssa4, %45 ]
  br i1 true, label %.lr.ph19, label %45

.lr.ph19:                                         ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph19, %42
  %16 = phi i32 [ %14, %.lr.ph19 ], [ %.lcssa3, %42 ]
  %17 = phi i32 [ 0, %.lr.ph19 ], [ %43, %42 ]
  br i1 true, label %.lr.ph15, label %42

.lr.ph15:                                         ; preds = %15
  br label %18

18:                                               ; preds = %.lr.ph15, %39
  %19 = phi i32 [ %16, %.lr.ph15 ], [ %.lcssa2, %39 ]
  %20 = phi i32 [ 0, %.lr.ph15 ], [ %40, %39 ]
  br i1 true, label %.lr.ph11, label %39

.lr.ph11:                                         ; preds = %18
  br label %21

21:                                               ; preds = %.lr.ph11, %36
  %22 = phi i32 [ %19, %.lr.ph11 ], [ %.lcssa1, %36 ]
  %23 = phi i32 [ 0, %.lr.ph11 ], [ %37, %36 ]
  br i1 true, label %.lr.ph7, label %36

.lr.ph7:                                          ; preds = %21
  br label %24

24:                                               ; preds = %.lr.ph7, %33
  %25 = phi i32 [ %22, %.lr.ph7 ], [ %.lcssa, %33 ]
  %26 = phi i32 [ 0, %.lr.ph7 ], [ %34, %33 ]
  br i1 true, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %24
  br label %27

27:                                               ; preds = %.lr.ph, %27
  %28 = phi i32 [ %25, %.lr.ph ], [ %30, %27 ]
  %29 = phi i32 [ 0, %.lr.ph ], [ %31, %27 ]
  %30 = add nsw i32 %28, 1
  %31 = add nuw nsw i32 %29, 1
  %32 = icmp slt i32 %31, %10
  br i1 %32, label %27, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %27
  br label %33

33:                                               ; preds = %._crit_edge, %24
  %.lcssa = phi i32 [ %30, %._crit_edge ], [ %25, %24 ]
  %34 = add nuw nsw i32 %26, 1
  %35 = icmp slt i32 %34, %10
  br i1 %35, label %24, label %._crit_edge8, !llvm.loop !9

._crit_edge8:                                     ; preds = %33
  br label %36

36:                                               ; preds = %._crit_edge8, %21
  %.lcssa1 = phi i32 [ %.lcssa, %._crit_edge8 ], [ %22, %21 ]
  %37 = add nuw nsw i32 %23, 1
  %38 = icmp slt i32 %37, %10
  br i1 %38, label %21, label %._crit_edge12, !llvm.loop !10

._crit_edge12:                                    ; preds = %36
  br label %39

39:                                               ; preds = %._crit_edge12, %18
  %.lcssa2 = phi i32 [ %.lcssa1, %._crit_edge12 ], [ %19, %18 ]
  %40 = add nuw nsw i32 %20, 1
  %41 = icmp slt i32 %40, %10
  br i1 %41, label %18, label %._crit_edge16, !llvm.loop !11

._crit_edge16:                                    ; preds = %39
  br label %42

42:                                               ; preds = %._crit_edge16, %15
  %.lcssa3 = phi i32 [ %.lcssa2, %._crit_edge16 ], [ %16, %15 ]
  %43 = add nuw nsw i32 %17, 1
  %44 = icmp slt i32 %43, %10
  br i1 %44, label %15, label %._crit_edge20, !llvm.loop !12

._crit_edge20:                                    ; preds = %42
  br label %45

45:                                               ; preds = %._crit_edge20, %12
  %.lcssa4 = phi i32 [ %.lcssa3, %._crit_edge20 ], [ %14, %12 ]
  %46 = add nuw nsw i32 %13, 1
  %47 = icmp slt i32 %46, %10
  br i1 %47, label %12, label %._crit_edge24, !llvm.loop !13

._crit_edge24:                                    ; preds = %45
  br label %48

48:                                               ; preds = %._crit_edge24, %9
  %.lcssa5 = phi i32 [ %.lcssa4, %._crit_edge24 ], [ 0, %9 ]
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa5) #2
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
