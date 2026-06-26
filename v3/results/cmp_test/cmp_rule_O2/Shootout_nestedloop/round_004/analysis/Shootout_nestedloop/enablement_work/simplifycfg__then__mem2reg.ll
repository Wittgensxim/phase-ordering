; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_003\output.ll'
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

10:                                               ; preds = %28, %8
  %.0 = phi i32 [ 0, %8 ], [ %.1, %28 ]
  %storemerge = phi i32 [ 0, %8 ], [ %29, %28 ]
  %11 = icmp slt i32 %storemerge, %9
  br i1 %11, label %.preheader4, label %30

.preheader4:                                      ; preds = %10, %26
  %.1 = phi i32 [ %.0, %10 ], [ %.2, %26 ]
  %storemerge1 = phi i32 [ %27, %26 ], [ 0, %10 ]
  %12 = icmp slt i32 %storemerge1, %9
  br i1 %12, label %.preheader3, label %28

.preheader3:                                      ; preds = %.preheader4, %24
  %.2 = phi i32 [ %.1, %.preheader4 ], [ %.3, %24 ]
  %storemerge2 = phi i32 [ %25, %24 ], [ 0, %.preheader4 ]
  %13 = icmp slt i32 %storemerge2, %9
  br i1 %13, label %.preheader2, label %26

.preheader2:                                      ; preds = %.preheader3, %22
  %.3 = phi i32 [ %.2, %.preheader3 ], [ %.4, %22 ]
  %storemerge3 = phi i32 [ %23, %22 ], [ 0, %.preheader3 ]
  %14 = icmp slt i32 %storemerge3, %9
  br i1 %14, label %.preheader1, label %24

.preheader1:                                      ; preds = %.preheader2, %20
  %.4 = phi i32 [ %.3, %.preheader2 ], [ %.5, %20 ]
  %storemerge4 = phi i32 [ %21, %20 ], [ 0, %.preheader2 ]
  %15 = icmp slt i32 %storemerge4, %9
  br i1 %15, label %.preheader, label %22

.preheader:                                       ; preds = %.preheader1, %17
  %.5 = phi i32 [ %.4, %.preheader1 ], [ %18, %17 ]
  %storemerge5 = phi i32 [ %19, %17 ], [ 0, %.preheader1 ]
  %16 = icmp slt i32 %storemerge5, %9
  br i1 %16, label %17, label %20

17:                                               ; preds = %.preheader
  %18 = add nsw i32 %.5, 1
  %19 = add nsw i32 %storemerge5, 1
  br label %.preheader, !llvm.loop !7

20:                                               ; preds = %.preheader
  %21 = add nsw i32 %storemerge4, 1
  br label %.preheader1, !llvm.loop !9

22:                                               ; preds = %.preheader1
  %23 = add nsw i32 %storemerge3, 1
  br label %.preheader2, !llvm.loop !10

24:                                               ; preds = %.preheader2
  %25 = add nsw i32 %storemerge2, 1
  br label %.preheader3, !llvm.loop !11

26:                                               ; preds = %.preheader3
  %27 = add nsw i32 %storemerge1, 1
  br label %.preheader4, !llvm.loop !12

28:                                               ; preds = %.preheader4
  %29 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !13

30:                                               ; preds = %10
  %31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.0) #2
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
