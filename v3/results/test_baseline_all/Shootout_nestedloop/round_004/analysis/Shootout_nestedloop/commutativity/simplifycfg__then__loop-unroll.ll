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
  br label %10

10:                                               ; preds = %40, %8
  %11 = phi i32 [ %.lcssa4, %40 ], [ 0, %8 ]
  %12 = phi i32 [ %41, %40 ], [ 0, %8 ]
  %13 = icmp slt i32 %12, %9
  br i1 %13, label %.preheader4.preheader, label %42

.preheader4.preheader:                            ; preds = %10
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %38
  %14 = phi i32 [ %39, %38 ], [ 0, %.preheader4.preheader ]
  %15 = phi i32 [ %.lcssa3, %38 ], [ %11, %.preheader4.preheader ]
  %16 = icmp slt i32 %14, %9
  br i1 %16, label %.preheader3.preheader, label %40

.preheader3.preheader:                            ; preds = %.preheader4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader, %36
  %17 = phi i32 [ %37, %36 ], [ 0, %.preheader3.preheader ]
  %18 = phi i32 [ %.lcssa2, %36 ], [ %15, %.preheader3.preheader ]
  %19 = icmp slt i32 %17, %9
  br i1 %19, label %.preheader2.preheader, label %38

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %34
  %20 = phi i32 [ %35, %34 ], [ 0, %.preheader2.preheader ]
  %21 = phi i32 [ %.lcssa1, %34 ], [ %18, %.preheader2.preheader ]
  %22 = icmp slt i32 %20, %9
  br i1 %22, label %.preheader1.preheader, label %36

.preheader1.preheader:                            ; preds = %.preheader2
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %32
  %23 = phi i32 [ %33, %32 ], [ 0, %.preheader1.preheader ]
  %24 = phi i32 [ %.lcssa, %32 ], [ %21, %.preheader1.preheader ]
  %25 = icmp slt i32 %23, %9
  br i1 %25, label %.preheader.preheader, label %34

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %29
  %26 = phi i32 [ %31, %29 ], [ 0, %.preheader.preheader ]
  %27 = phi i32 [ %30, %29 ], [ %24, %.preheader.preheader ]
  %28 = icmp slt i32 %26, %9
  br i1 %28, label %29, label %32

29:                                               ; preds = %.preheader
  %30 = add nsw i32 %27, 1
  %31 = add nuw nsw i32 %26, 1
  br label %.preheader, !llvm.loop !7

32:                                               ; preds = %.preheader
  %.lcssa = phi i32 [ %27, %.preheader ]
  %33 = add nuw nsw i32 %23, 1
  br label %.preheader1, !llvm.loop !9

34:                                               ; preds = %.preheader1
  %.lcssa1 = phi i32 [ %24, %.preheader1 ]
  %35 = add nuw nsw i32 %20, 1
  br label %.preheader2, !llvm.loop !10

36:                                               ; preds = %.preheader2
  %.lcssa2 = phi i32 [ %21, %.preheader2 ]
  %37 = add nuw nsw i32 %17, 1
  br label %.preheader3, !llvm.loop !11

38:                                               ; preds = %.preheader3
  %.lcssa3 = phi i32 [ %18, %.preheader3 ]
  %39 = add nuw nsw i32 %14, 1
  br label %.preheader4, !llvm.loop !12

40:                                               ; preds = %.preheader4
  %.lcssa4 = phi i32 [ %15, %.preheader4 ]
  %41 = add nuw nsw i32 %12, 1
  br label %10, !llvm.loop !13

42:                                               ; preds = %10
  %.lcssa5 = phi i32 [ %11, %10 ]
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa5) #2
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
