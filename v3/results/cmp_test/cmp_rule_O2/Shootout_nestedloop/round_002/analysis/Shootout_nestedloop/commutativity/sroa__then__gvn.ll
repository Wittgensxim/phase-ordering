; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_001\output.ll'
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
  br label %11

11:                                               ; preds = %39, %9
  %.0 = phi i32 [ 0, %9 ], [ %.1, %39 ]
  %storemerge = phi i32 [ 0, %9 ], [ %40, %39 ]
  %12 = icmp slt i32 %storemerge, %10
  br i1 %12, label %13, label %41

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %37, %13
  %.1 = phi i32 [ %.0, %13 ], [ %.2, %37 ]
  %storemerge1 = phi i32 [ 0, %13 ], [ %38, %37 ]
  %15 = icmp slt i32 %storemerge1, %10
  br i1 %15, label %16, label %39

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %35, %16
  %.2 = phi i32 [ %.1, %16 ], [ %.3, %35 ]
  %storemerge2 = phi i32 [ 0, %16 ], [ %36, %35 ]
  %18 = icmp slt i32 %storemerge2, %10
  br i1 %18, label %19, label %37

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %33, %19
  %.3 = phi i32 [ %.2, %19 ], [ %.4, %33 ]
  %storemerge3 = phi i32 [ 0, %19 ], [ %34, %33 ]
  %21 = icmp slt i32 %storemerge3, %10
  br i1 %21, label %22, label %35

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %31, %22
  %.4 = phi i32 [ %.3, %22 ], [ %.5, %31 ]
  %storemerge4 = phi i32 [ 0, %22 ], [ %32, %31 ]
  %24 = icmp slt i32 %storemerge4, %10
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %28, %25
  %.5 = phi i32 [ %.4, %25 ], [ %29, %28 ]
  %storemerge5 = phi i32 [ 0, %25 ], [ %30, %28 ]
  %27 = icmp slt i32 %storemerge5, %10
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = add nsw i32 %.5, 1
  %30 = add nsw i32 %storemerge5, 1
  br label %26, !llvm.loop !7

31:                                               ; preds = %26
  %32 = add nsw i32 %storemerge4, 1
  br label %23, !llvm.loop !9

33:                                               ; preds = %23
  %34 = add nsw i32 %storemerge3, 1
  br label %20, !llvm.loop !10

35:                                               ; preds = %20
  %36 = add nsw i32 %storemerge2, 1
  br label %17, !llvm.loop !11

37:                                               ; preds = %17
  %38 = add nsw i32 %storemerge1, 1
  br label %14, !llvm.loop !12

39:                                               ; preds = %14
  %40 = add nsw i32 %storemerge, 1
  br label %11, !llvm.loop !13

41:                                               ; preds = %11
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.0) #2
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
