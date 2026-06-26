; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_000\input.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  %9 = icmp eq i32 %0, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @atoi(ptr noundef %13) #2
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %10
  %17 = phi i32 [ %14, %10 ], [ 46, %15 ]
  %.promoted38 = load i32, ptr %4, align 4
  %.promoted40 = load i32, ptr %5, align 4
  %.promoted42 = load i32, ptr %6, align 4
  %.promoted = load i32, ptr %7, align 4
  %.promoted45 = load i32, ptr %8, align 4
  br label %18

18:                                               ; preds = %59, %16
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35, %59 ], [ 0, %16 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33, %59 ], [ %.promoted45, %16 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44 = phi i32 [ %.lcssa411.lcssa20.lcssa31, %59 ], [ %.promoted, %16 ]
  %.lcssa918.lcssa29.lcssa43 = phi i32 [ %.lcssa918.lcssa29, %59 ], [ %.promoted42, %16 ]
  %.lcssa1628.lcssa41 = phi i32 [ %.lcssa1628, %59 ], [ %.promoted40, %16 ]
  %.lcssa2639 = phi i32 [ %23, %59 ], [ %.promoted38, %16 ]
  %19 = phi i32 [ %60, %59 ], [ 0, %16 ]
  %20 = icmp slt i32 %19, %17
  br i1 %20, label %21, label %61

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %56, %21
  %.lcssa27.lcssa15.lcssa24.lcssa35 = phi i32 [ %.lcssa27.lcssa15.lcssa24, %56 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %21 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33 = phi i32 [ %.lcssa6.lcssa13.lcssa22, %56 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %21 ]
  %.lcssa411.lcssa20.lcssa31 = phi i32 [ %.lcssa411.lcssa20, %56 ], [ %.lcssa411.lcssa20.lcssa31.lcssa44, %21 ]
  %.lcssa918.lcssa29 = phi i32 [ %.lcssa918, %56 ], [ %.lcssa918.lcssa29.lcssa43, %21 ]
  %.lcssa1628 = phi i32 [ %27, %56 ], [ %.lcssa1628.lcssa41, %21 ]
  %23 = phi i32 [ %57, %56 ], [ 0, %21 ]
  %24 = icmp slt i32 %23, %17
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %53, %25
  %.lcssa27.lcssa15.lcssa24 = phi i32 [ %.lcssa27.lcssa15, %53 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35, %25 ]
  %.lcssa6.lcssa13.lcssa22 = phi i32 [ %.lcssa6.lcssa13, %53 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33, %25 ]
  %.lcssa411.lcssa20 = phi i32 [ %.lcssa411, %53 ], [ %.lcssa411.lcssa20.lcssa31, %25 ]
  %.lcssa918 = phi i32 [ %31, %53 ], [ %.lcssa918.lcssa29, %25 ]
  %27 = phi i32 [ %54, %53 ], [ 0, %25 ]
  %28 = icmp slt i32 %27, %17
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %50, %29
  %.lcssa27.lcssa15 = phi i32 [ %.lcssa27, %50 ], [ %.lcssa27.lcssa15.lcssa24, %29 ]
  %.lcssa6.lcssa13 = phi i32 [ %.lcssa6, %50 ], [ %.lcssa6.lcssa13.lcssa22, %29 ]
  %.lcssa411 = phi i32 [ %35, %50 ], [ %.lcssa411.lcssa20, %29 ]
  %31 = phi i32 [ %51, %50 ], [ 0, %29 ]
  %32 = icmp slt i32 %31, %17
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %47, %33
  %.lcssa27 = phi i32 [ %39, %47 ], [ %.lcssa27.lcssa15, %33 ]
  %.lcssa6 = phi i32 [ %40, %47 ], [ %.lcssa6.lcssa13, %33 ]
  %35 = phi i32 [ %48, %47 ], [ 0, %33 ]
  %36 = icmp slt i32 %35, %17
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %43, %37
  %39 = phi i32 [ %44, %43 ], [ %.lcssa27, %37 ]
  %40 = phi i32 [ %45, %43 ], [ 0, %37 ]
  %41 = icmp slt i32 %40, %17
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42
  %44 = add nsw i32 %39, 1
  %45 = add nuw nsw i32 %40, 1
  br label %38, !llvm.loop !7

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = add nuw nsw i32 %35, 1
  br label %34, !llvm.loop !9

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49
  %51 = add nuw nsw i32 %31, 1
  br label %30, !llvm.loop !10

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = add nuw nsw i32 %27, 1
  br label %26, !llvm.loop !11

55:                                               ; preds = %26
  br label %56

56:                                               ; preds = %55
  %57 = add nuw nsw i32 %23, 1
  br label %22, !llvm.loop !12

58:                                               ; preds = %22
  br label %59

59:                                               ; preds = %58
  %60 = add nuw nsw i32 %19, 1
  br label %18, !llvm.loop !13

61:                                               ; preds = %18
  store i32 %.lcssa2639, ptr %4, align 4
  store i32 %.lcssa1628.lcssa41, ptr %5, align 4
  store i32 %.lcssa918.lcssa29.lcssa43, ptr %6, align 4
  store i32 %.lcssa411.lcssa20.lcssa31.lcssa44, ptr %7, align 4
  store i32 %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, ptr %8, align 4
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48) #2
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
