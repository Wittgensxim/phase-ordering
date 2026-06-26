; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds ptr, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @atoi(ptr noundef %18)
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 46, %20 ]
  store i32 %22, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %23 = load i32, ptr %6, align 4
  %.promoted38 = load i32, ptr %8, align 4
  %.promoted40 = load i32, ptr %9, align 4
  %.promoted42 = load i32, ptr %10, align 4
  %.promoted = load i32, ptr %11, align 4
  %.promoted45 = load i32, ptr %12, align 4
  %.promoted47 = load i32, ptr %13, align 4
  br label %24

24:                                               ; preds = %65, %21
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35, %65 ], [ %.promoted47, %21 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33, %65 ], [ %.promoted45, %21 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44 = phi i32 [ %.lcssa411.lcssa20.lcssa31, %65 ], [ %.promoted, %21 ]
  %.lcssa918.lcssa29.lcssa43 = phi i32 [ %.lcssa918.lcssa29, %65 ], [ %.promoted42, %21 ]
  %.lcssa1628.lcssa41 = phi i32 [ %.lcssa1628, %65 ], [ %.promoted40, %21 ]
  %.lcssa2639 = phi i32 [ %29, %65 ], [ %.promoted38, %21 ]
  %25 = phi i32 [ %66, %65 ], [ 0, %21 ]
  %26 = icmp slt i32 %25, %23
  br i1 %26, label %27, label %67

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %62, %27
  %.lcssa27.lcssa15.lcssa24.lcssa35 = phi i32 [ %.lcssa27.lcssa15.lcssa24, %62 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %27 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33 = phi i32 [ %.lcssa6.lcssa13.lcssa22, %62 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %27 ]
  %.lcssa411.lcssa20.lcssa31 = phi i32 [ %.lcssa411.lcssa20, %62 ], [ %.lcssa411.lcssa20.lcssa31.lcssa44, %27 ]
  %.lcssa918.lcssa29 = phi i32 [ %.lcssa918, %62 ], [ %.lcssa918.lcssa29.lcssa43, %27 ]
  %.lcssa1628 = phi i32 [ %33, %62 ], [ %.lcssa1628.lcssa41, %27 ]
  %29 = phi i32 [ %63, %62 ], [ 0, %27 ]
  %30 = icmp slt i32 %29, %23
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %59, %31
  %.lcssa27.lcssa15.lcssa24 = phi i32 [ %.lcssa27.lcssa15, %59 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35, %31 ]
  %.lcssa6.lcssa13.lcssa22 = phi i32 [ %.lcssa6.lcssa13, %59 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33, %31 ]
  %.lcssa411.lcssa20 = phi i32 [ %.lcssa411, %59 ], [ %.lcssa411.lcssa20.lcssa31, %31 ]
  %.lcssa918 = phi i32 [ %37, %59 ], [ %.lcssa918.lcssa29, %31 ]
  %33 = phi i32 [ %60, %59 ], [ 0, %31 ]
  %34 = icmp slt i32 %33, %23
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %56, %35
  %.lcssa27.lcssa15 = phi i32 [ %.lcssa27, %56 ], [ %.lcssa27.lcssa15.lcssa24, %35 ]
  %.lcssa6.lcssa13 = phi i32 [ %.lcssa6, %56 ], [ %.lcssa6.lcssa13.lcssa22, %35 ]
  %.lcssa411 = phi i32 [ %41, %56 ], [ %.lcssa411.lcssa20, %35 ]
  %37 = phi i32 [ %57, %56 ], [ 0, %35 ]
  %38 = icmp slt i32 %37, %23
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %53, %39
  %.lcssa27 = phi i32 [ %45, %53 ], [ %.lcssa27.lcssa15, %39 ]
  %.lcssa6 = phi i32 [ %46, %53 ], [ %.lcssa6.lcssa13, %39 ]
  %41 = phi i32 [ %54, %53 ], [ 0, %39 ]
  %42 = icmp slt i32 %41, %23
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %50, %43
  %45 = phi i32 [ %49, %50 ], [ %.lcssa27, %43 ]
  %46 = phi i32 [ %51, %50 ], [ 0, %43 ]
  %47 = icmp slt i32 %46, %23
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = add nsw i32 %45, 1
  br label %50

50:                                               ; preds = %48
  %51 = add nsw i32 %46, 1
  br label %44, !llvm.loop !7

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = add nsw i32 %41, 1
  br label %40, !llvm.loop !9

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %37, 1
  br label %36, !llvm.loop !10

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %33, 1
  br label %32, !llvm.loop !11

61:                                               ; preds = %32
  br label %62

62:                                               ; preds = %61
  %63 = add nsw i32 %29, 1
  br label %28, !llvm.loop !12

64:                                               ; preds = %28
  br label %65

65:                                               ; preds = %64
  %66 = add nsw i32 %25, 1
  br label %24, !llvm.loop !13

67:                                               ; preds = %24
  store i32 %25, ptr %7, align 4
  store i32 %.lcssa2639, ptr %8, align 4
  store i32 %.lcssa1628.lcssa41, ptr %9, align 4
  store i32 %.lcssa918.lcssa29.lcssa43, ptr %10, align 4
  store i32 %.lcssa411.lcssa20.lcssa31.lcssa44, ptr %11, align 4
  store i32 %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, ptr %12, align 4
  store i32 %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, ptr %13, align 4
  %68 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48)
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
