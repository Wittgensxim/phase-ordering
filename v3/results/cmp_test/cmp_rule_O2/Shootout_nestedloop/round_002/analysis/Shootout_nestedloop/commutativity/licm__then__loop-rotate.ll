; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = icmp eq i32 %0, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @atoi(ptr noundef %14) #2
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 46, %16 ]
  store i32 %18, ptr %3, align 4
  store i32 0, ptr %10, align 4
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr %3, align 4
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %3, align 4
  %23 = load i32, ptr %3, align 4
  %24 = load i32, ptr %3, align 4
  %.promoted30 = load i32, ptr %10, align 4
  %.promoted32 = load i32, ptr %9, align 1
  %.promoted34 = load i32, ptr %8, align 1
  %.promoted36 = load i32, ptr %7, align 1
  %.promoted38 = load i32, ptr %6, align 1
  %.promoted = load i32, ptr %5, align 1
  %25 = icmp slt i32 0, %19
  br i1 %25, label %.lr.ph94, label %62

.lr.ph94:                                         ; preds = %17
  br label %26

26:                                               ; preds = %.lr.ph94, %59
  %storemerge92 = phi i32 [ 0, %.lr.ph94 ], [ %60, %59 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa3191 = phi i32 [ %.promoted30, %.lr.ph94 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa, %59 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa3390 = phi i32 [ %.promoted32, %.lr.ph94 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa, %59 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa3589 = phi i32 [ %.promoted34, %.lr.ph94 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa, %59 ]
  %storemerge3.lcssa18.lcssa27.lcssa3788 = phi i32 [ %.promoted36, %.lr.ph94 ], [ %storemerge3.lcssa18.lcssa27.lcssa, %59 ]
  %storemerge2.lcssa28.lcssa3987 = phi i32 [ %.promoted38, %.lr.ph94 ], [ %storemerge2.lcssa28.lcssa, %59 ]
  %27 = icmp slt i32 0, %20
  br i1 %27, label %.lr.ph79, label %58

.lr.ph79:                                         ; preds = %26
  br label %28

28:                                               ; preds = %.lr.ph79, %55
  %storemerge177 = phi i32 [ 0, %.lr.ph79 ], [ %56, %55 ]
  %.lcssa3.lcssa7.lcssa13.lcssa2176 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa3191, %.lr.ph79 ], [ %.lcssa3.lcssa7.lcssa13.lcssa, %55 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa2375 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa3390, %.lr.ph79 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa, %55 ]
  %storemerge4.lcssa10.lcssa17.lcssa2574 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa3589, %.lr.ph79 ], [ %storemerge4.lcssa10.lcssa17.lcssa, %55 ]
  %storemerge3.lcssa18.lcssa2773 = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa3788, %.lr.ph79 ], [ %storemerge3.lcssa18.lcssa, %55 ]
  %29 = icmp slt i32 0, %21
  br i1 %29, label %.lr.ph66, label %54

.lr.ph66:                                         ; preds = %28
  br label %30

30:                                               ; preds = %.lr.ph66, %51
  %storemerge264 = phi i32 [ 0, %.lr.ph66 ], [ %52, %51 ]
  %.lcssa3.lcssa7.lcssa1363 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa2176, %.lr.ph66 ], [ %.lcssa3.lcssa7.lcssa, %51 ]
  %storemerge5.lcssa4.lcssa9.lcssa1562 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa2375, %.lr.ph66 ], [ %storemerge5.lcssa4.lcssa9.lcssa, %51 ]
  %storemerge4.lcssa10.lcssa1761 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa2574, %.lr.ph66 ], [ %storemerge4.lcssa10.lcssa, %51 ]
  %31 = icmp slt i32 0, %22
  br i1 %31, label %.lr.ph55, label %50

.lr.ph55:                                         ; preds = %30
  br label %32

32:                                               ; preds = %.lr.ph55, %47
  %storemerge353 = phi i32 [ 0, %.lr.ph55 ], [ %48, %47 ]
  %.lcssa3.lcssa752 = phi i32 [ %.lcssa3.lcssa7.lcssa1363, %.lr.ph55 ], [ %.lcssa3.lcssa, %47 ]
  %storemerge5.lcssa4.lcssa951 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa1562, %.lr.ph55 ], [ %storemerge5.lcssa4.lcssa, %47 ]
  %33 = icmp slt i32 0, %23
  br i1 %33, label %.lr.ph46, label %46

.lr.ph46:                                         ; preds = %32
  br label %34

34:                                               ; preds = %.lr.ph46, %43
  %storemerge444 = phi i32 [ 0, %.lr.ph46 ], [ %44, %43 ]
  %.lcssa343 = phi i32 [ %.lcssa3.lcssa752, %.lr.ph46 ], [ %.lcssa, %43 ]
  %35 = icmp slt i32 0, %24
  br i1 %35, label %.lr.ph, label %42

.lr.ph:                                           ; preds = %34
  br label %36

36:                                               ; preds = %.lr.ph, %39
  %storemerge541 = phi i32 [ 0, %.lr.ph ], [ %40, %39 ]
  %37 = phi i32 [ %.lcssa343, %.lr.ph ], [ %38, %39 ]
  %38 = add nsw i32 %37, 1
  br label %39

39:                                               ; preds = %36
  %40 = add nsw i32 %storemerge541, 1
  %41 = icmp slt i32 %40, %24
  br i1 %41, label %36, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %39
  %split = phi i32 [ %38, %39 ]
  %split42 = phi i32 [ %40, %39 ]
  br label %42

42:                                               ; preds = %._crit_edge, %34
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.lcssa343, %34 ]
  %storemerge5.lcssa = phi i32 [ %split42, %._crit_edge ], [ 0, %34 ]
  br label %43

43:                                               ; preds = %42
  %44 = add nsw i32 %storemerge444, 1
  %45 = icmp slt i32 %44, %23
  br i1 %45, label %34, label %._crit_edge47, !llvm.loop !9

._crit_edge47:                                    ; preds = %43
  %split48 = phi i32 [ %storemerge5.lcssa, %43 ]
  %split49 = phi i32 [ %.lcssa, %43 ]
  %split50 = phi i32 [ %44, %43 ]
  br label %46

46:                                               ; preds = %._crit_edge47, %32
  %storemerge5.lcssa4.lcssa = phi i32 [ %split48, %._crit_edge47 ], [ %storemerge5.lcssa4.lcssa951, %32 ]
  %.lcssa3.lcssa = phi i32 [ %split49, %._crit_edge47 ], [ %.lcssa3.lcssa752, %32 ]
  %storemerge4.lcssa = phi i32 [ %split50, %._crit_edge47 ], [ 0, %32 ]
  br label %47

47:                                               ; preds = %46
  %48 = add nsw i32 %storemerge353, 1
  %49 = icmp slt i32 %48, %22
  br i1 %49, label %32, label %._crit_edge56, !llvm.loop !10

._crit_edge56:                                    ; preds = %47
  %split57 = phi i32 [ %storemerge4.lcssa, %47 ]
  %split58 = phi i32 [ %storemerge5.lcssa4.lcssa, %47 ]
  %split59 = phi i32 [ %.lcssa3.lcssa, %47 ]
  %split60 = phi i32 [ %48, %47 ]
  br label %50

50:                                               ; preds = %._crit_edge56, %30
  %storemerge4.lcssa10.lcssa = phi i32 [ %split57, %._crit_edge56 ], [ %storemerge4.lcssa10.lcssa1761, %30 ]
  %storemerge5.lcssa4.lcssa9.lcssa = phi i32 [ %split58, %._crit_edge56 ], [ %storemerge5.lcssa4.lcssa9.lcssa1562, %30 ]
  %.lcssa3.lcssa7.lcssa = phi i32 [ %split59, %._crit_edge56 ], [ %.lcssa3.lcssa7.lcssa1363, %30 ]
  %storemerge3.lcssa = phi i32 [ %split60, %._crit_edge56 ], [ 0, %30 ]
  br label %51

51:                                               ; preds = %50
  %52 = add nsw i32 %storemerge264, 1
  %53 = icmp slt i32 %52, %21
  br i1 %53, label %30, label %._crit_edge67, !llvm.loop !11

._crit_edge67:                                    ; preds = %51
  %split68 = phi i32 [ %storemerge3.lcssa, %51 ]
  %split69 = phi i32 [ %storemerge4.lcssa10.lcssa, %51 ]
  %split70 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa, %51 ]
  %split71 = phi i32 [ %.lcssa3.lcssa7.lcssa, %51 ]
  %split72 = phi i32 [ %52, %51 ]
  br label %54

54:                                               ; preds = %._crit_edge67, %28
  %storemerge3.lcssa18.lcssa = phi i32 [ %split68, %._crit_edge67 ], [ %storemerge3.lcssa18.lcssa2773, %28 ]
  %storemerge4.lcssa10.lcssa17.lcssa = phi i32 [ %split69, %._crit_edge67 ], [ %storemerge4.lcssa10.lcssa17.lcssa2574, %28 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa = phi i32 [ %split70, %._crit_edge67 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa2375, %28 ]
  %.lcssa3.lcssa7.lcssa13.lcssa = phi i32 [ %split71, %._crit_edge67 ], [ %.lcssa3.lcssa7.lcssa13.lcssa2176, %28 ]
  %storemerge2.lcssa = phi i32 [ %split72, %._crit_edge67 ], [ 0, %28 ]
  br label %55

55:                                               ; preds = %54
  %56 = add nsw i32 %storemerge177, 1
  %57 = icmp slt i32 %56, %20
  br i1 %57, label %28, label %._crit_edge80, !llvm.loop !12

._crit_edge80:                                    ; preds = %55
  %split81 = phi i32 [ %storemerge2.lcssa, %55 ]
  %split82 = phi i32 [ %storemerge3.lcssa18.lcssa, %55 ]
  %split83 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa, %55 ]
  %split84 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa, %55 ]
  %split85 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa, %55 ]
  %split86 = phi i32 [ %56, %55 ]
  br label %58

58:                                               ; preds = %._crit_edge80, %26
  %storemerge2.lcssa28.lcssa = phi i32 [ %split81, %._crit_edge80 ], [ %storemerge2.lcssa28.lcssa3987, %26 ]
  %storemerge3.lcssa18.lcssa27.lcssa = phi i32 [ %split82, %._crit_edge80 ], [ %storemerge3.lcssa18.lcssa27.lcssa3788, %26 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa = phi i32 [ %split83, %._crit_edge80 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa3589, %26 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa = phi i32 [ %split84, %._crit_edge80 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa3390, %26 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa = phi i32 [ %split85, %._crit_edge80 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa3191, %26 ]
  %storemerge1.lcssa = phi i32 [ %split86, %._crit_edge80 ], [ 0, %26 ]
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %storemerge92, 1
  %61 = icmp slt i32 %60, %19
  br i1 %61, label %26, label %._crit_edge95, !llvm.loop !13

._crit_edge95:                                    ; preds = %59
  %split96 = phi i32 [ %storemerge1.lcssa, %59 ]
  %split97 = phi i32 [ %storemerge2.lcssa28.lcssa, %59 ]
  %split98 = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa, %59 ]
  %split99 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa, %59 ]
  %split100 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa, %59 ]
  %split101 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa, %59 ]
  %split102 = phi i32 [ %60, %59 ]
  br label %62

62:                                               ; preds = %._crit_edge95, %17
  %storemerge1.lcssa40.lcssa = phi i32 [ %split96, %._crit_edge95 ], [ %.promoted, %17 ]
  %storemerge2.lcssa28.lcssa39.lcssa = phi i32 [ %split97, %._crit_edge95 ], [ %.promoted38, %17 ]
  %storemerge3.lcssa18.lcssa27.lcssa37.lcssa = phi i32 [ %split98, %._crit_edge95 ], [ %.promoted36, %17 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa = phi i32 [ %split99, %._crit_edge95 ], [ %.promoted34, %17 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa = phi i32 [ %split100, %._crit_edge95 ], [ %.promoted32, %17 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa = phi i32 [ %split101, %._crit_edge95 ], [ %.promoted30, %17 ]
  %storemerge.lcssa = phi i32 [ %split102, %._crit_edge95 ], [ 0, %17 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  store i32 %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa, ptr %10, align 4
  store i32 %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa, ptr %9, align 1
  store i32 %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa, ptr %8, align 1
  store i32 %storemerge3.lcssa18.lcssa27.lcssa37.lcssa, ptr %7, align 1
  store i32 %storemerge2.lcssa28.lcssa39.lcssa, ptr %6, align 1
  store i32 %storemerge1.lcssa40.lcssa, ptr %5, align 1
  %63 = load i32, ptr %10, align 4
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %63) #2
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
