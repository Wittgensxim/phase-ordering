; ModuleID = 'results\cmp_test\cmp_oracle_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
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
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 46, %8 ]
  br label %11

11:                                               ; preds = %45, %9
  %.026 = phi i32 [ 0, %9 ], [ %46, %45 ]
  %.0 = phi i32 [ 0, %9 ], [ %.1, %45 ]
  %12 = icmp slt i32 %.026, %10
  br i1 %12, label %13, label %47

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %42, %13
  %.025 = phi i32 [ 0, %13 ], [ %43, %42 ]
  %.1 = phi i32 [ %.0, %13 ], [ %.2, %42 ]
  %15 = icmp slt i32 %.025, %10
  br i1 %15, label %16, label %44

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %39, %16
  %.024 = phi i32 [ 0, %16 ], [ %40, %39 ]
  %.2 = phi i32 [ %.1, %16 ], [ %.3, %39 ]
  %18 = icmp slt i32 %.024, %10
  br i1 %18, label %19, label %41

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %36, %19
  %.023 = phi i32 [ 0, %19 ], [ %37, %36 ]
  %.3 = phi i32 [ %.2, %19 ], [ %.4, %36 ]
  %21 = icmp slt i32 %.023, %10
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %33, %22
  %.022 = phi i32 [ 0, %22 ], [ %34, %33 ]
  %.4 = phi i32 [ %.3, %22 ], [ %.5, %33 ]
  %24 = icmp slt i32 %.022, %10
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %30, %25
  %.021 = phi i32 [ 0, %25 ], [ %31, %30 ]
  %.5 = phi i32 [ %.4, %25 ], [ %29, %30 ]
  %27 = icmp slt i32 %.021, %10
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = add nsw i32 %.5, 1
  br label %30

30:                                               ; preds = %28
  %31 = add nsw i32 %.021, 1
  br label %26, !llvm.loop !7

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  %34 = add nsw i32 %.022, 1
  br label %23, !llvm.loop !9

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = add nsw i32 %.023, 1
  br label %20, !llvm.loop !10

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38
  %40 = add nsw i32 %.024, 1
  br label %17, !llvm.loop !11

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41
  %43 = add nsw i32 %.025, 1
  br label %14, !llvm.loop !12

44:                                               ; preds = %14
  br label %45

45:                                               ; preds = %44
  %46 = add nsw i32 %.026, 1
  br label %11, !llvm.loop !13

47:                                               ; preds = %11
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %.0)
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
