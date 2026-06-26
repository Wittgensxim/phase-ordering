; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ 46, %2 ]
  br label %10

10:                                               ; preds = %38, %8
  %.04 = phi i32 [ 0, %8 ], [ %39, %38 ]
  %.0 = phi i32 [ 0, %8 ], [ %.1, %38 ]
  %11 = icmp slt i32 %.04, %9
  br i1 %11, label %12, label %40

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %36, %12
  %.05 = phi i32 [ 0, %12 ], [ %37, %36 ]
  %.1 = phi i32 [ %.0, %12 ], [ %.2, %36 ]
  %14 = icmp slt i32 %.05, %9
  br i1 %14, label %15, label %38

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %34, %15
  %.06 = phi i32 [ 0, %15 ], [ %35, %34 ]
  %.2 = phi i32 [ %.1, %15 ], [ %.3, %34 ]
  %17 = icmp slt i32 %.06, %9
  br i1 %17, label %18, label %36

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %32, %18
  %.03 = phi i32 [ 0, %18 ], [ %33, %32 ]
  %.3 = phi i32 [ %.2, %18 ], [ %.4, %32 ]
  %20 = icmp slt i32 %.03, %9
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %30, %21
  %.02 = phi i32 [ 0, %21 ], [ %31, %30 ]
  %.4 = phi i32 [ %.3, %21 ], [ %.5, %30 ]
  %23 = icmp slt i32 %.02, %9
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %27, %24
  %.01 = phi i32 [ 0, %24 ], [ %29, %27 ]
  %.5 = phi i32 [ %.4, %24 ], [ %28, %27 ]
  %26 = icmp slt i32 %.01, %9
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = add nsw i32 %.5, 1
  %29 = add nsw i32 %.01, 1
  br label %25, !llvm.loop !7

30:                                               ; preds = %25
  %31 = add nsw i32 %.02, 1
  br label %22, !llvm.loop !9

32:                                               ; preds = %22
  %33 = add nsw i32 %.03, 1
  br label %19, !llvm.loop !10

34:                                               ; preds = %19
  %35 = add nsw i32 %.06, 1
  br label %16, !llvm.loop !11

36:                                               ; preds = %16
  %37 = add nsw i32 %.05, 1
  br label %13, !llvm.loop !12

38:                                               ; preds = %13
  %39 = add nsw i32 %.04, 1
  br label %10, !llvm.loop !13

40:                                               ; preds = %10
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %.0)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
