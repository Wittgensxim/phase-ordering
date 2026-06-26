; ModuleID = 'results\cmp_test\cmp_random_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
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

11:                                               ; preds = %52, %9
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa, %52 ], [ 0, %9 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa, %52 ], [ undef, %9 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44 = phi i32 [ %.lcssa411.lcssa20.lcssa31.lcssa, %52 ], [ undef, %9 ]
  %.lcssa918.lcssa29.lcssa43 = phi i32 [ %.lcssa918.lcssa29.lcssa, %52 ], [ undef, %9 ]
  %.lcssa1628.lcssa41 = phi i32 [ %.lcssa1628.lcssa, %52 ], [ undef, %9 ]
  %.lcssa2639 = phi i32 [ %.lcssa26, %52 ], [ undef, %9 ]
  %12 = phi i32 [ %53, %52 ], [ 0, %9 ]
  %13 = icmp slt i32 %12, %10
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %49, %14
  %.lcssa27.lcssa15.lcssa24.lcssa35 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa, %49 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %14 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa, %49 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %14 ]
  %.lcssa411.lcssa20.lcssa31 = phi i32 [ %.lcssa411.lcssa20.lcssa, %49 ], [ %.lcssa411.lcssa20.lcssa31.lcssa44, %14 ]
  %.lcssa918.lcssa29 = phi i32 [ %.lcssa918.lcssa, %49 ], [ %.lcssa918.lcssa29.lcssa43, %14 ]
  %.lcssa1628 = phi i32 [ %.lcssa16, %49 ], [ %.lcssa1628.lcssa41, %14 ]
  %16 = phi i32 [ %50, %49 ], [ 0, %14 ]
  %17 = icmp slt i32 %16, %10
  br i1 %17, label %18, label %51

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %46, %18
  %.lcssa27.lcssa15.lcssa24 = phi i32 [ %.lcssa27.lcssa15.lcssa, %46 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35, %18 ]
  %.lcssa6.lcssa13.lcssa22 = phi i32 [ %.lcssa6.lcssa13.lcssa, %46 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33, %18 ]
  %.lcssa411.lcssa20 = phi i32 [ %.lcssa411.lcssa, %46 ], [ %.lcssa411.lcssa20.lcssa31, %18 ]
  %.lcssa918 = phi i32 [ %.lcssa9, %46 ], [ %.lcssa918.lcssa29, %18 ]
  %20 = phi i32 [ %47, %46 ], [ 0, %18 ]
  %21 = icmp slt i32 %20, %10
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %43, %22
  %.lcssa27.lcssa15 = phi i32 [ %.lcssa27.lcssa, %43 ], [ %.lcssa27.lcssa15.lcssa24, %22 ]
  %.lcssa6.lcssa13 = phi i32 [ %.lcssa6.lcssa, %43 ], [ %.lcssa6.lcssa13.lcssa22, %22 ]
  %.lcssa411 = phi i32 [ %.lcssa4, %43 ], [ %.lcssa411.lcssa20, %22 ]
  %24 = phi i32 [ %44, %43 ], [ 0, %22 ]
  %25 = icmp slt i32 %24, %10
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %40, %26
  %.lcssa27 = phi i32 [ %.lcssa2, %40 ], [ %.lcssa27.lcssa15, %26 ]
  %.lcssa6 = phi i32 [ %.lcssa, %40 ], [ %.lcssa6.lcssa13, %26 ]
  %28 = phi i32 [ %41, %40 ], [ 0, %26 ]
  %29 = icmp slt i32 %28, %10
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %37, %30
  %32 = phi i32 [ %36, %37 ], [ %.lcssa27, %30 ]
  %33 = phi i32 [ %38, %37 ], [ 0, %30 ]
  %34 = icmp slt i32 %33, %10
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = add nsw i32 %32, 1
  br label %37

37:                                               ; preds = %35
  %38 = add nsw i32 %33, 1
  br label %31, !llvm.loop !7

39:                                               ; preds = %31
  %.lcssa2 = phi i32 [ %32, %31 ]
  %.lcssa = phi i32 [ %33, %31 ]
  br label %40

40:                                               ; preds = %39
  %41 = add nsw i32 %28, 1
  br label %27, !llvm.loop !9

42:                                               ; preds = %27
  %.lcssa27.lcssa = phi i32 [ %.lcssa27, %27 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %27 ]
  %.lcssa4 = phi i32 [ %28, %27 ]
  br label %43

43:                                               ; preds = %42
  %44 = add nsw i32 %24, 1
  br label %23, !llvm.loop !10

45:                                               ; preds = %23
  %.lcssa27.lcssa15.lcssa = phi i32 [ %.lcssa27.lcssa15, %23 ]
  %.lcssa6.lcssa13.lcssa = phi i32 [ %.lcssa6.lcssa13, %23 ]
  %.lcssa411.lcssa = phi i32 [ %.lcssa411, %23 ]
  %.lcssa9 = phi i32 [ %24, %23 ]
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %20, 1
  br label %19, !llvm.loop !11

48:                                               ; preds = %19
  %.lcssa27.lcssa15.lcssa24.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24, %19 ]
  %.lcssa6.lcssa13.lcssa22.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22, %19 ]
  %.lcssa411.lcssa20.lcssa = phi i32 [ %.lcssa411.lcssa20, %19 ]
  %.lcssa918.lcssa = phi i32 [ %.lcssa918, %19 ]
  %.lcssa16 = phi i32 [ %20, %19 ]
  br label %49

49:                                               ; preds = %48
  %50 = add nsw i32 %16, 1
  br label %15, !llvm.loop !12

51:                                               ; preds = %15
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35, %15 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33, %15 ]
  %.lcssa411.lcssa20.lcssa31.lcssa = phi i32 [ %.lcssa411.lcssa20.lcssa31, %15 ]
  %.lcssa918.lcssa29.lcssa = phi i32 [ %.lcssa918.lcssa29, %15 ]
  %.lcssa1628.lcssa = phi i32 [ %.lcssa1628, %15 ]
  %.lcssa26 = phi i32 [ %16, %15 ]
  br label %52

52:                                               ; preds = %51
  %53 = add nsw i32 %12, 1
  br label %11, !llvm.loop !13

54:                                               ; preds = %11
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %11 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %11 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44.lcssa = phi i32 [ %.lcssa411.lcssa20.lcssa31.lcssa44, %11 ]
  %.lcssa918.lcssa29.lcssa43.lcssa = phi i32 [ %.lcssa918.lcssa29.lcssa43, %11 ]
  %.lcssa1628.lcssa41.lcssa = phi i32 [ %.lcssa1628.lcssa41, %11 ]
  %.lcssa2639.lcssa = phi i32 [ %.lcssa2639, %11 ]
  %.lcssa37 = phi i32 [ %12, %11 ]
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48.lcssa)
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
