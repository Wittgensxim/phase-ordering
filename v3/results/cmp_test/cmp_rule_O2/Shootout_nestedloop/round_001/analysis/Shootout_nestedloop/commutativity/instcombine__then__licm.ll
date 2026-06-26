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
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  %12 = icmp eq i32 %0, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @atoi(ptr noundef %16) #2
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %17, %13 ], [ 46, %18 ]
  store i32 %20, ptr %4, align 4
  store i32 0, ptr %11, align 4
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr %4, align 4
  %23 = load i32, ptr %4, align 4
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %4, align 4
  %.promoted35 = load i32, ptr %11, align 4
  %.promoted37 = load i32, ptr %10, align 1
  %.promoted39 = load i32, ptr %9, align 1
  %.promoted41 = load i32, ptr %8, align 1
  %.promoted43 = load i32, ptr %7, align 1
  %.promoted = load i32, ptr %6, align 1
  br label %27

27:                                               ; preds = %62, %19
  %storemerge1.lcssa45 = phi i32 [ %.promoted, %19 ], [ %storemerge1.lcssa, %62 ]
  %storemerge2.lcssa33.lcssa44 = phi i32 [ %.promoted43, %19 ], [ %storemerge2.lcssa33.lcssa, %62 ]
  %storemerge3.lcssa23.lcssa32.lcssa42 = phi i32 [ %.promoted41, %19 ], [ %storemerge3.lcssa23.lcssa32.lcssa, %62 ]
  %storemerge4.lcssa15.lcssa22.lcssa30.lcssa40 = phi i32 [ %.promoted39, %19 ], [ %storemerge4.lcssa15.lcssa22.lcssa30.lcssa, %62 ]
  %storemerge5.lcssa9.lcssa14.lcssa20.lcssa28.lcssa38 = phi i32 [ %.promoted37, %19 ], [ %storemerge5.lcssa9.lcssa14.lcssa20.lcssa28.lcssa, %62 ]
  %.lcssa8.lcssa12.lcssa18.lcssa26.lcssa36 = phi i32 [ %.promoted35, %19 ], [ %.lcssa8.lcssa12.lcssa18.lcssa26.lcssa, %62 ]
  %storemerge = phi i32 [ 0, %19 ], [ %63, %62 ]
  %28 = icmp slt i32 %storemerge, %21
  br i1 %28, label %29, label %64

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %59, %29
  %storemerge2.lcssa33 = phi i32 [ %storemerge2.lcssa33.lcssa44, %29 ], [ %storemerge2.lcssa, %59 ]
  %storemerge3.lcssa23.lcssa32 = phi i32 [ %storemerge3.lcssa23.lcssa32.lcssa42, %29 ], [ %storemerge3.lcssa23.lcssa, %59 ]
  %storemerge4.lcssa15.lcssa22.lcssa30 = phi i32 [ %storemerge4.lcssa15.lcssa22.lcssa30.lcssa40, %29 ], [ %storemerge4.lcssa15.lcssa22.lcssa, %59 ]
  %storemerge5.lcssa9.lcssa14.lcssa20.lcssa28 = phi i32 [ %storemerge5.lcssa9.lcssa14.lcssa20.lcssa28.lcssa38, %29 ], [ %storemerge5.lcssa9.lcssa14.lcssa20.lcssa, %59 ]
  %.lcssa8.lcssa12.lcssa18.lcssa26 = phi i32 [ %.lcssa8.lcssa12.lcssa18.lcssa26.lcssa36, %29 ], [ %.lcssa8.lcssa12.lcssa18.lcssa, %59 ]
  %storemerge1 = phi i32 [ 0, %29 ], [ %60, %59 ]
  %31 = icmp slt i32 %storemerge1, %22
  br i1 %31, label %32, label %61

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %56, %32
  %storemerge3.lcssa23 = phi i32 [ %storemerge3.lcssa23.lcssa32, %32 ], [ %storemerge3.lcssa, %56 ]
  %storemerge4.lcssa15.lcssa22 = phi i32 [ %storemerge4.lcssa15.lcssa22.lcssa30, %32 ], [ %storemerge4.lcssa15.lcssa, %56 ]
  %storemerge5.lcssa9.lcssa14.lcssa20 = phi i32 [ %storemerge5.lcssa9.lcssa14.lcssa20.lcssa28, %32 ], [ %storemerge5.lcssa9.lcssa14.lcssa, %56 ]
  %.lcssa8.lcssa12.lcssa18 = phi i32 [ %.lcssa8.lcssa12.lcssa18.lcssa26, %32 ], [ %.lcssa8.lcssa12.lcssa, %56 ]
  %storemerge2 = phi i32 [ 0, %32 ], [ %57, %56 ]
  %34 = icmp slt i32 %storemerge2, %23
  br i1 %34, label %35, label %58

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %53, %35
  %storemerge4.lcssa15 = phi i32 [ %storemerge4.lcssa15.lcssa22, %35 ], [ %storemerge4.lcssa, %53 ]
  %storemerge5.lcssa9.lcssa14 = phi i32 [ %storemerge5.lcssa9.lcssa14.lcssa20, %35 ], [ %storemerge5.lcssa9.lcssa, %53 ]
  %.lcssa8.lcssa12 = phi i32 [ %.lcssa8.lcssa12.lcssa18, %35 ], [ %.lcssa8.lcssa, %53 ]
  %storemerge3 = phi i32 [ 0, %35 ], [ %54, %53 ]
  %37 = icmp slt i32 %storemerge3, %24
  br i1 %37, label %38, label %55

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %50, %38
  %storemerge5.lcssa9 = phi i32 [ %storemerge5.lcssa9.lcssa14, %38 ], [ %storemerge5.lcssa, %50 ]
  %.lcssa8 = phi i32 [ %.lcssa8.lcssa12, %38 ], [ %.lcssa, %50 ]
  %storemerge4 = phi i32 [ 0, %38 ], [ %51, %50 ]
  %40 = icmp slt i32 %storemerge4, %25
  br i1 %40, label %41, label %52

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %47, %41
  %43 = phi i32 [ %.lcssa8, %41 ], [ %46, %47 ]
  %storemerge5 = phi i32 [ 0, %41 ], [ %48, %47 ]
  %44 = icmp slt i32 %storemerge5, %26
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = add nsw i32 %43, 1
  br label %47

47:                                               ; preds = %45
  %48 = add nsw i32 %storemerge5, 1
  br label %42, !llvm.loop !7

49:                                               ; preds = %42
  %.lcssa = phi i32 [ %43, %42 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %42 ]
  br label %50

50:                                               ; preds = %49
  %51 = add nsw i32 %storemerge4, 1
  br label %39, !llvm.loop !9

52:                                               ; preds = %39
  %storemerge5.lcssa9.lcssa = phi i32 [ %storemerge5.lcssa9, %39 ]
  %.lcssa8.lcssa = phi i32 [ %.lcssa8, %39 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %39 ]
  br label %53

53:                                               ; preds = %52
  %54 = add nsw i32 %storemerge3, 1
  br label %36, !llvm.loop !10

55:                                               ; preds = %36
  %storemerge4.lcssa15.lcssa = phi i32 [ %storemerge4.lcssa15, %36 ]
  %storemerge5.lcssa9.lcssa14.lcssa = phi i32 [ %storemerge5.lcssa9.lcssa14, %36 ]
  %.lcssa8.lcssa12.lcssa = phi i32 [ %.lcssa8.lcssa12, %36 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %36 ]
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %storemerge2, 1
  br label %33, !llvm.loop !11

58:                                               ; preds = %33
  %storemerge3.lcssa23.lcssa = phi i32 [ %storemerge3.lcssa23, %33 ]
  %storemerge4.lcssa15.lcssa22.lcssa = phi i32 [ %storemerge4.lcssa15.lcssa22, %33 ]
  %storemerge5.lcssa9.lcssa14.lcssa20.lcssa = phi i32 [ %storemerge5.lcssa9.lcssa14.lcssa20, %33 ]
  %.lcssa8.lcssa12.lcssa18.lcssa = phi i32 [ %.lcssa8.lcssa12.lcssa18, %33 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %33 ]
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %storemerge1, 1
  br label %30, !llvm.loop !12

61:                                               ; preds = %30
  %storemerge2.lcssa33.lcssa = phi i32 [ %storemerge2.lcssa33, %30 ]
  %storemerge3.lcssa23.lcssa32.lcssa = phi i32 [ %storemerge3.lcssa23.lcssa32, %30 ]
  %storemerge4.lcssa15.lcssa22.lcssa30.lcssa = phi i32 [ %storemerge4.lcssa15.lcssa22.lcssa30, %30 ]
  %storemerge5.lcssa9.lcssa14.lcssa20.lcssa28.lcssa = phi i32 [ %storemerge5.lcssa9.lcssa14.lcssa20.lcssa28, %30 ]
  %.lcssa8.lcssa12.lcssa18.lcssa26.lcssa = phi i32 [ %.lcssa8.lcssa12.lcssa18.lcssa26, %30 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %30 ]
  br label %62

62:                                               ; preds = %61
  %63 = add nsw i32 %storemerge, 1
  br label %27, !llvm.loop !13

64:                                               ; preds = %27
  %storemerge1.lcssa45.lcssa = phi i32 [ %storemerge1.lcssa45, %27 ]
  %storemerge2.lcssa33.lcssa44.lcssa = phi i32 [ %storemerge2.lcssa33.lcssa44, %27 ]
  %storemerge3.lcssa23.lcssa32.lcssa42.lcssa = phi i32 [ %storemerge3.lcssa23.lcssa32.lcssa42, %27 ]
  %storemerge4.lcssa15.lcssa22.lcssa30.lcssa40.lcssa = phi i32 [ %storemerge4.lcssa15.lcssa22.lcssa30.lcssa40, %27 ]
  %storemerge5.lcssa9.lcssa14.lcssa20.lcssa28.lcssa38.lcssa = phi i32 [ %storemerge5.lcssa9.lcssa14.lcssa20.lcssa28.lcssa38, %27 ]
  %.lcssa8.lcssa12.lcssa18.lcssa26.lcssa36.lcssa = phi i32 [ %.lcssa8.lcssa12.lcssa18.lcssa26.lcssa36, %27 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %27 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  store i32 %.lcssa8.lcssa12.lcssa18.lcssa26.lcssa36.lcssa, ptr %11, align 4
  store i32 %storemerge5.lcssa9.lcssa14.lcssa20.lcssa28.lcssa38.lcssa, ptr %10, align 1
  store i32 %storemerge4.lcssa15.lcssa22.lcssa30.lcssa40.lcssa, ptr %9, align 1
  store i32 %storemerge3.lcssa23.lcssa32.lcssa42.lcssa, ptr %8, align 1
  store i32 %storemerge2.lcssa33.lcssa44.lcssa, ptr %7, align 1
  store i32 %storemerge1.lcssa45.lcssa, ptr %6, align 1
  %65 = load i32, ptr %11, align 4
  %66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %65) #2
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
