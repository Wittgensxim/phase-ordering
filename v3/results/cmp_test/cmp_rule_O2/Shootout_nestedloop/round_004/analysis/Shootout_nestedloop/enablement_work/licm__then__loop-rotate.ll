; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_003\output.ll'
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
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ 46, %2 ]
  store i32 %17, ptr %3, align 4
  store i32 0, ptr %10, align 4
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr %3, align 4
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %3, align 4
  %23 = load i32, ptr %3, align 4
  %.promoted30 = load i32, ptr %10, align 4
  %.promoted32 = load i32, ptr %9, align 1
  %.promoted34 = load i32, ptr %8, align 1
  %.promoted36 = load i32, ptr %7, align 1
  %.promoted38 = load i32, ptr %6, align 1
  %.promoted = load i32, ptr %5, align 1
  %24 = icmp slt i32 0, %18
  br i1 %24, label %.preheader4.lr.ph, label %50

.preheader4.lr.ph:                                ; preds = %16
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.lr.ph, %47
  %storemerge84 = phi i32 [ 0, %.preheader4.lr.ph ], [ %48, %47 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa3183 = phi i32 [ %.promoted30, %.preheader4.lr.ph ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa, %47 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa3382 = phi i32 [ %.promoted32, %.preheader4.lr.ph ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa, %47 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa3581 = phi i32 [ %.promoted34, %.preheader4.lr.ph ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa, %47 ]
  %storemerge3.lcssa18.lcssa27.lcssa3780 = phi i32 [ %.promoted36, %.preheader4.lr.ph ], [ %storemerge3.lcssa18.lcssa27.lcssa, %47 ]
  %storemerge2.lcssa28.lcssa3979 = phi i32 [ %.promoted38, %.preheader4.lr.ph ], [ %storemerge2.lcssa28.lcssa, %47 ]
  %25 = icmp slt i32 0, %19
  br i1 %25, label %.preheader3.lr.ph, label %47

.preheader3.lr.ph:                                ; preds = %.preheader4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %44
  %storemerge171 = phi i32 [ 0, %.preheader3.lr.ph ], [ %45, %44 ]
  %.lcssa3.lcssa7.lcssa13.lcssa2170 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa3183, %.preheader3.lr.ph ], [ %.lcssa3.lcssa7.lcssa13.lcssa, %44 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa2369 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa3382, %.preheader3.lr.ph ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa, %44 ]
  %storemerge4.lcssa10.lcssa17.lcssa2568 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa3581, %.preheader3.lr.ph ], [ %storemerge4.lcssa10.lcssa17.lcssa, %44 ]
  %storemerge3.lcssa18.lcssa2767 = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa3780, %.preheader3.lr.ph ], [ %storemerge3.lcssa18.lcssa, %44 ]
  %26 = icmp slt i32 0, %20
  br i1 %26, label %.preheader2.lr.ph, label %44

.preheader2.lr.ph:                                ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %41
  %storemerge260 = phi i32 [ 0, %.preheader2.lr.ph ], [ %42, %41 ]
  %.lcssa3.lcssa7.lcssa1359 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa2170, %.preheader2.lr.ph ], [ %.lcssa3.lcssa7.lcssa, %41 ]
  %storemerge5.lcssa4.lcssa9.lcssa1558 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa2369, %.preheader2.lr.ph ], [ %storemerge5.lcssa4.lcssa9.lcssa, %41 ]
  %storemerge4.lcssa10.lcssa1757 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa2568, %.preheader2.lr.ph ], [ %storemerge4.lcssa10.lcssa, %41 ]
  %27 = icmp slt i32 0, %21
  br i1 %27, label %.preheader1.lr.ph, label %41

.preheader1.lr.ph:                                ; preds = %.preheader2
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %38
  %storemerge351 = phi i32 [ 0, %.preheader1.lr.ph ], [ %39, %38 ]
  %.lcssa3.lcssa750 = phi i32 [ %.lcssa3.lcssa7.lcssa1359, %.preheader1.lr.ph ], [ %.lcssa3.lcssa, %38 ]
  %storemerge5.lcssa4.lcssa949 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa1558, %.preheader1.lr.ph ], [ %storemerge5.lcssa4.lcssa, %38 ]
  %28 = icmp slt i32 0, %22
  br i1 %28, label %.preheader.lr.ph, label %38

.preheader.lr.ph:                                 ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %35
  %storemerge444 = phi i32 [ 0, %.preheader.lr.ph ], [ %36, %35 ]
  %.lcssa343 = phi i32 [ %.lcssa3.lcssa750, %.preheader.lr.ph ], [ %.lcssa, %35 ]
  %29 = icmp slt i32 0, %23
  br i1 %29, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %.preheader
  br label %30

30:                                               ; preds = %.lr.ph, %30
  %storemerge541 = phi i32 [ 0, %.lr.ph ], [ %33, %30 ]
  %31 = phi i32 [ %.lcssa343, %.lr.ph ], [ %32, %30 ]
  %32 = add nsw i32 %31, 1
  %33 = add nsw i32 %storemerge541, 1
  %34 = icmp slt i32 %33, %23
  br i1 %34, label %30, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %30
  %split = phi i32 [ %32, %30 ]
  %split42 = phi i32 [ %33, %30 ]
  br label %35

35:                                               ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.lcssa343, %.preheader ]
  %storemerge5.lcssa = phi i32 [ %split42, %._crit_edge ], [ 0, %.preheader ]
  %36 = add nsw i32 %storemerge444, 1
  %37 = icmp slt i32 %36, %22
  br i1 %37, label %.preheader, label %._crit_edge45, !llvm.loop !9

._crit_edge45:                                    ; preds = %35
  %split46 = phi i32 [ %storemerge5.lcssa, %35 ]
  %split47 = phi i32 [ %.lcssa, %35 ]
  %split48 = phi i32 [ %36, %35 ]
  br label %38

38:                                               ; preds = %._crit_edge45, %.preheader1
  %storemerge5.lcssa4.lcssa = phi i32 [ %split46, %._crit_edge45 ], [ %storemerge5.lcssa4.lcssa949, %.preheader1 ]
  %.lcssa3.lcssa = phi i32 [ %split47, %._crit_edge45 ], [ %.lcssa3.lcssa750, %.preheader1 ]
  %storemerge4.lcssa = phi i32 [ %split48, %._crit_edge45 ], [ 0, %.preheader1 ]
  %39 = add nsw i32 %storemerge351, 1
  %40 = icmp slt i32 %39, %21
  br i1 %40, label %.preheader1, label %._crit_edge52, !llvm.loop !10

._crit_edge52:                                    ; preds = %38
  %split53 = phi i32 [ %storemerge4.lcssa, %38 ]
  %split54 = phi i32 [ %storemerge5.lcssa4.lcssa, %38 ]
  %split55 = phi i32 [ %.lcssa3.lcssa, %38 ]
  %split56 = phi i32 [ %39, %38 ]
  br label %41

41:                                               ; preds = %._crit_edge52, %.preheader2
  %storemerge4.lcssa10.lcssa = phi i32 [ %split53, %._crit_edge52 ], [ %storemerge4.lcssa10.lcssa1757, %.preheader2 ]
  %storemerge5.lcssa4.lcssa9.lcssa = phi i32 [ %split54, %._crit_edge52 ], [ %storemerge5.lcssa4.lcssa9.lcssa1558, %.preheader2 ]
  %.lcssa3.lcssa7.lcssa = phi i32 [ %split55, %._crit_edge52 ], [ %.lcssa3.lcssa7.lcssa1359, %.preheader2 ]
  %storemerge3.lcssa = phi i32 [ %split56, %._crit_edge52 ], [ 0, %.preheader2 ]
  %42 = add nsw i32 %storemerge260, 1
  %43 = icmp slt i32 %42, %20
  br i1 %43, label %.preheader2, label %._crit_edge61, !llvm.loop !11

._crit_edge61:                                    ; preds = %41
  %split62 = phi i32 [ %storemerge3.lcssa, %41 ]
  %split63 = phi i32 [ %storemerge4.lcssa10.lcssa, %41 ]
  %split64 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa, %41 ]
  %split65 = phi i32 [ %.lcssa3.lcssa7.lcssa, %41 ]
  %split66 = phi i32 [ %42, %41 ]
  br label %44

44:                                               ; preds = %._crit_edge61, %.preheader3
  %storemerge3.lcssa18.lcssa = phi i32 [ %split62, %._crit_edge61 ], [ %storemerge3.lcssa18.lcssa2767, %.preheader3 ]
  %storemerge4.lcssa10.lcssa17.lcssa = phi i32 [ %split63, %._crit_edge61 ], [ %storemerge4.lcssa10.lcssa17.lcssa2568, %.preheader3 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa = phi i32 [ %split64, %._crit_edge61 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa2369, %.preheader3 ]
  %.lcssa3.lcssa7.lcssa13.lcssa = phi i32 [ %split65, %._crit_edge61 ], [ %.lcssa3.lcssa7.lcssa13.lcssa2170, %.preheader3 ]
  %storemerge2.lcssa = phi i32 [ %split66, %._crit_edge61 ], [ 0, %.preheader3 ]
  %45 = add nsw i32 %storemerge171, 1
  %46 = icmp slt i32 %45, %19
  br i1 %46, label %.preheader3, label %._crit_edge72, !llvm.loop !12

._crit_edge72:                                    ; preds = %44
  %split73 = phi i32 [ %storemerge2.lcssa, %44 ]
  %split74 = phi i32 [ %storemerge3.lcssa18.lcssa, %44 ]
  %split75 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa, %44 ]
  %split76 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa, %44 ]
  %split77 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa, %44 ]
  %split78 = phi i32 [ %45, %44 ]
  br label %47

47:                                               ; preds = %._crit_edge72, %.preheader4
  %storemerge2.lcssa28.lcssa = phi i32 [ %split73, %._crit_edge72 ], [ %storemerge2.lcssa28.lcssa3979, %.preheader4 ]
  %storemerge3.lcssa18.lcssa27.lcssa = phi i32 [ %split74, %._crit_edge72 ], [ %storemerge3.lcssa18.lcssa27.lcssa3780, %.preheader4 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa = phi i32 [ %split75, %._crit_edge72 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa3581, %.preheader4 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa = phi i32 [ %split76, %._crit_edge72 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa3382, %.preheader4 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa = phi i32 [ %split77, %._crit_edge72 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa3183, %.preheader4 ]
  %storemerge1.lcssa = phi i32 [ %split78, %._crit_edge72 ], [ 0, %.preheader4 ]
  %48 = add nsw i32 %storemerge84, 1
  %49 = icmp slt i32 %48, %18
  br i1 %49, label %.preheader4, label %._crit_edge85, !llvm.loop !13

._crit_edge85:                                    ; preds = %47
  %split86 = phi i32 [ %storemerge1.lcssa, %47 ]
  %split87 = phi i32 [ %storemerge2.lcssa28.lcssa, %47 ]
  %split88 = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa, %47 ]
  %split89 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa, %47 ]
  %split90 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa, %47 ]
  %split91 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa, %47 ]
  %split92 = phi i32 [ %48, %47 ]
  br label %50

50:                                               ; preds = %._crit_edge85, %16
  %storemerge1.lcssa40.lcssa = phi i32 [ %split86, %._crit_edge85 ], [ %.promoted, %16 ]
  %storemerge2.lcssa28.lcssa39.lcssa = phi i32 [ %split87, %._crit_edge85 ], [ %.promoted38, %16 ]
  %storemerge3.lcssa18.lcssa27.lcssa37.lcssa = phi i32 [ %split88, %._crit_edge85 ], [ %.promoted36, %16 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa = phi i32 [ %split89, %._crit_edge85 ], [ %.promoted34, %16 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa = phi i32 [ %split90, %._crit_edge85 ], [ %.promoted32, %16 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa = phi i32 [ %split91, %._crit_edge85 ], [ %.promoted30, %16 ]
  %storemerge.lcssa = phi i32 [ %split92, %._crit_edge85 ], [ 0, %16 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  store i32 %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa, ptr %10, align 4
  store i32 %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa, ptr %9, align 1
  store i32 %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa, ptr %8, align 1
  store i32 %storemerge3.lcssa18.lcssa27.lcssa37.lcssa, ptr %7, align 1
  store i32 %storemerge2.lcssa28.lcssa39.lcssa, ptr %6, align 1
  store i32 %storemerge1.lcssa40.lcssa, ptr %5, align 1
  %51 = load i32, ptr %10, align 4
  %52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %51) #2
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
