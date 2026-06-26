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

10:                                               ; preds = %33, %8
  %.0 = phi i32 [ 0, %8 ], [ %.1.lcssa, %33 ]
  %storemerge = phi i32 [ 0, %8 ], [ %34, %33 ]
  %11 = icmp slt i32 %storemerge, %9
  br i1 %11, label %.preheader4, label %35

.preheader4:                                      ; preds = %10
  br label %12

12:                                               ; preds = %31, %.preheader4
  %.1 = phi i32 [ %.0, %.preheader4 ], [ %.2.lcssa, %31 ]
  %storemerge1 = phi i32 [ %32, %31 ], [ 0, %.preheader4 ]
  %13 = icmp slt i32 %storemerge1, %9
  br i1 %13, label %.preheader3, label %33

.preheader3:                                      ; preds = %12
  br label %14

14:                                               ; preds = %29, %.preheader3
  %.2 = phi i32 [ %.1, %.preheader3 ], [ %.3.lcssa, %29 ]
  %storemerge2 = phi i32 [ %30, %29 ], [ 0, %.preheader3 ]
  %15 = icmp slt i32 %storemerge2, %9
  br i1 %15, label %.preheader2, label %31

.preheader2:                                      ; preds = %14
  br label %16

16:                                               ; preds = %27, %.preheader2
  %.3 = phi i32 [ %.2, %.preheader2 ], [ %.4.lcssa, %27 ]
  %storemerge3 = phi i32 [ %28, %27 ], [ 0, %.preheader2 ]
  %17 = icmp slt i32 %storemerge3, %9
  br i1 %17, label %.preheader1, label %29

.preheader1:                                      ; preds = %16
  br label %18

18:                                               ; preds = %25, %.preheader1
  %.4 = phi i32 [ %.3, %.preheader1 ], [ %.5.lcssa, %25 ]
  %storemerge4 = phi i32 [ %26, %25 ], [ 0, %.preheader1 ]
  %19 = icmp slt i32 %storemerge4, %9
  br i1 %19, label %.preheader, label %27

.preheader:                                       ; preds = %18
  br label %20

20:                                               ; preds = %22, %.preheader
  %.5 = phi i32 [ %.4, %.preheader ], [ %23, %22 ]
  %storemerge5 = phi i32 [ %24, %22 ], [ 0, %.preheader ]
  %21 = icmp slt i32 %storemerge5, %9
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = add nsw i32 %.5, 1
  %24 = add nsw i32 %storemerge5, 1
  br label %20, !llvm.loop !7

25:                                               ; preds = %20
  %.5.lcssa = phi i32 [ %.5, %20 ]
  %26 = add nsw i32 %storemerge4, 1
  br label %18, !llvm.loop !9

27:                                               ; preds = %18
  %.4.lcssa = phi i32 [ %.4, %18 ]
  %28 = add nsw i32 %storemerge3, 1
  br label %16, !llvm.loop !10

29:                                               ; preds = %16
  %.3.lcssa = phi i32 [ %.3, %16 ]
  %30 = add nsw i32 %storemerge2, 1
  br label %14, !llvm.loop !11

31:                                               ; preds = %14
  %.2.lcssa = phi i32 [ %.2, %14 ]
  %32 = add nsw i32 %storemerge1, 1
  br label %12, !llvm.loop !12

33:                                               ; preds = %12
  %.1.lcssa = phi i32 [ %.1, %12 ]
  %34 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !13

35:                                               ; preds = %10
  %.0.lcssa = phi i32 [ %.0, %10 ]
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.0.lcssa) #2
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
