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
  store i32 0, ptr %4, align 4
  %18 = load i32, ptr %3, align 4
  %19 = icmp slt i32 0, %18
  br i1 %19, label %.preheader4.lr.ph, label %62

.preheader4.lr.ph:                                ; preds = %16
  %20 = load i32, ptr %3, align 4
  %21 = icmp slt i32 0, %20
  %22 = load i32, ptr %3, align 4
  %23 = icmp slt i32 0, %22
  %24 = load i32, ptr %3, align 4
  %25 = icmp slt i32 0, %24
  %26 = load i32, ptr %3, align 4
  %27 = icmp slt i32 0, %26
  %28 = load i32, ptr %3, align 4
  %29 = icmp slt i32 0, %28
  %30 = load i32, ptr %3, align 4
  %31 = load i32, ptr %3, align 4
  %32 = load i32, ptr %3, align 4
  %33 = load i32, ptr %3, align 4
  %34 = load i32, ptr %3, align 4
  %35 = load i32, ptr %3, align 4
  %.promoted = load i32, ptr %4, align 4
  %.promoted53 = load i32, ptr %10, align 4
  %.promoted56 = load i32, ptr %9, align 1
  %.promoted59 = load i32, ptr %8, align 1
  %.promoted62 = load i32, ptr %7, align 1
  %.promoted65 = load i32, ptr %6, align 1
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.lr.ph, %59
  %.lcssa2536.lcssa66 = phi i32 [ %.promoted65, %.preheader4.lr.ph ], [ %.lcssa2536.lcssa67, %59 ]
  %.lcssa1624.lcssa49.lcssa64 = phi i32 [ %.promoted62, %.preheader4.lr.ph ], [ %.lcssa1624.lcssa49.lcssa63, %59 ]
  %.lcssa1115.lcssa34.lcssa45.lcssa61 = phi i32 [ %.promoted59, %.preheader4.lr.ph ], [ %.lcssa1115.lcssa34.lcssa45.lcssa60, %59 ]
  %.lcssa79.lcssa22.lcssa30.lcssa42.lcssa58 = phi i32 [ %.promoted56, %.preheader4.lr.ph ], [ %.lcssa79.lcssa22.lcssa30.lcssa42.lcssa57, %59 ]
  %.lcssa13.lcssa18.lcssa27.lcssa39.lcssa55 = phi i32 [ %.promoted53, %.preheader4.lr.ph ], [ %.lcssa13.lcssa18.lcssa27.lcssa39.lcssa54, %59 ]
  %36 = phi i32 [ %.promoted, %.preheader4.lr.ph ], [ %60, %59 ]
  br i1 %21, label %.preheader3.lr.ph, label %59

.preheader3.lr.ph:                                ; preds = %.preheader4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %56
  %.lcssa1624.lcssa48 = phi i32 [ %.lcssa1624.lcssa49.lcssa64, %.preheader3.lr.ph ], [ %.lcssa1624.lcssa49, %56 ]
  %.lcssa1115.lcssa34.lcssa46 = phi i32 [ %.lcssa1115.lcssa34.lcssa45.lcssa61, %.preheader3.lr.ph ], [ %.lcssa1115.lcssa34.lcssa45, %56 ]
  %.lcssa79.lcssa22.lcssa30.lcssa43 = phi i32 [ %.lcssa79.lcssa22.lcssa30.lcssa42.lcssa58, %.preheader3.lr.ph ], [ %.lcssa79.lcssa22.lcssa30.lcssa42, %56 ]
  %.lcssa13.lcssa18.lcssa27.lcssa40 = phi i32 [ %.lcssa13.lcssa18.lcssa27.lcssa39.lcssa55, %.preheader3.lr.ph ], [ %.lcssa13.lcssa18.lcssa27.lcssa39, %56 ]
  %37 = phi i32 [ 0, %.preheader3.lr.ph ], [ %57, %56 ]
  br i1 %23, label %.preheader2.lr.ph, label %56

.preheader2.lr.ph:                                ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %53
  %.lcssa1115.lcssa33 = phi i32 [ %.lcssa1115.lcssa34.lcssa46, %.preheader2.lr.ph ], [ %.lcssa1115.lcssa34, %53 ]
  %.lcssa79.lcssa22.lcssa31 = phi i32 [ %.lcssa79.lcssa22.lcssa30.lcssa43, %.preheader2.lr.ph ], [ %.lcssa79.lcssa22.lcssa30, %53 ]
  %.lcssa13.lcssa18.lcssa28 = phi i32 [ %.lcssa13.lcssa18.lcssa27.lcssa40, %.preheader2.lr.ph ], [ %.lcssa13.lcssa18.lcssa27, %53 ]
  %38 = phi i32 [ 0, %.preheader2.lr.ph ], [ %54, %53 ]
  br i1 %25, label %.preheader1.lr.ph, label %53

.preheader1.lr.ph:                                ; preds = %.preheader2
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %50
  %.lcssa79.lcssa21 = phi i32 [ %.lcssa79.lcssa22.lcssa31, %.preheader1.lr.ph ], [ %.lcssa79.lcssa22, %50 ]
  %.lcssa13.lcssa19 = phi i32 [ %.lcssa13.lcssa18.lcssa28, %.preheader1.lr.ph ], [ %.lcssa13.lcssa18, %50 ]
  %39 = phi i32 [ 0, %.preheader1.lr.ph ], [ %51, %50 ]
  br i1 %27, label %.preheader.lr.ph, label %50

.preheader.lr.ph:                                 ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %47
  %.lcssa14 = phi i32 [ %.lcssa13.lcssa19, %.preheader.lr.ph ], [ %.lcssa13, %47 ]
  %40 = phi i32 [ 0, %.preheader.lr.ph ], [ %48, %47 ]
  br i1 %29, label %.lr.ph, label %47

.lr.ph:                                           ; preds = %.preheader
  br label %41

41:                                               ; preds = %.lr.ph, %41
  %42 = phi i32 [ 0, %.lr.ph ], [ %45, %41 ]
  %43 = phi i32 [ %.lcssa14, %.lr.ph ], [ %44, %41 ]
  %44 = add nsw i32 %43, 1
  %45 = add nsw i32 %42, 1
  %46 = icmp slt i32 %45, %30
  br i1 %46, label %41, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %41
  %.lcssa7 = phi i32 [ %45, %41 ]
  %.lcssa = phi i32 [ %44, %41 ]
  br label %47

47:                                               ; preds = %._crit_edge, %.preheader
  %.lcssa13 = phi i32 [ %.lcssa, %._crit_edge ], [ %.lcssa14, %.preheader ]
  %.lcssa79 = phi i32 [ %.lcssa7, %._crit_edge ], [ 0, %.preheader ]
  %48 = add nsw i32 %40, 1
  %49 = icmp slt i32 %48, %31
  br i1 %49, label %.preheader, label %._crit_edge1, !llvm.loop !9

._crit_edge1:                                     ; preds = %47
  %.lcssa13.lcssa = phi i32 [ %.lcssa13, %47 ]
  %.lcssa11 = phi i32 [ %48, %47 ]
  %.lcssa79.lcssa = phi i32 [ %.lcssa79, %47 ]
  br label %50

50:                                               ; preds = %._crit_edge1, %.preheader1
  %.lcssa79.lcssa22 = phi i32 [ %.lcssa79.lcssa, %._crit_edge1 ], [ %.lcssa79.lcssa21, %.preheader1 ]
  %.lcssa13.lcssa18 = phi i32 [ %.lcssa13.lcssa, %._crit_edge1 ], [ %.lcssa13.lcssa19, %.preheader1 ]
  %.lcssa1115 = phi i32 [ %.lcssa11, %._crit_edge1 ], [ 0, %.preheader1 ]
  %51 = add nsw i32 %39, 1
  %52 = icmp slt i32 %51, %32
  br i1 %52, label %.preheader1, label %._crit_edge2, !llvm.loop !10

._crit_edge2:                                     ; preds = %50
  %.lcssa79.lcssa22.lcssa = phi i32 [ %.lcssa79.lcssa22, %50 ]
  %.lcssa13.lcssa18.lcssa = phi i32 [ %.lcssa13.lcssa18, %50 ]
  %.lcssa16 = phi i32 [ %51, %50 ]
  %.lcssa1115.lcssa = phi i32 [ %.lcssa1115, %50 ]
  br label %53

53:                                               ; preds = %._crit_edge2, %.preheader2
  %.lcssa1115.lcssa34 = phi i32 [ %.lcssa1115.lcssa, %._crit_edge2 ], [ %.lcssa1115.lcssa33, %.preheader2 ]
  %.lcssa79.lcssa22.lcssa30 = phi i32 [ %.lcssa79.lcssa22.lcssa, %._crit_edge2 ], [ %.lcssa79.lcssa22.lcssa31, %.preheader2 ]
  %.lcssa13.lcssa18.lcssa27 = phi i32 [ %.lcssa13.lcssa18.lcssa, %._crit_edge2 ], [ %.lcssa13.lcssa18.lcssa28, %.preheader2 ]
  %.lcssa1624 = phi i32 [ %.lcssa16, %._crit_edge2 ], [ 0, %.preheader2 ]
  %54 = add nsw i32 %38, 1
  %55 = icmp slt i32 %54, %33
  br i1 %55, label %.preheader2, label %._crit_edge3, !llvm.loop !11

._crit_edge3:                                     ; preds = %53
  %.lcssa1115.lcssa34.lcssa = phi i32 [ %.lcssa1115.lcssa34, %53 ]
  %.lcssa79.lcssa22.lcssa30.lcssa = phi i32 [ %.lcssa79.lcssa22.lcssa30, %53 ]
  %.lcssa13.lcssa18.lcssa27.lcssa = phi i32 [ %.lcssa13.lcssa18.lcssa27, %53 ]
  %.lcssa25 = phi i32 [ %54, %53 ]
  %.lcssa1624.lcssa = phi i32 [ %.lcssa1624, %53 ]
  br label %56

56:                                               ; preds = %._crit_edge3, %.preheader3
  %.lcssa1624.lcssa49 = phi i32 [ %.lcssa1624.lcssa, %._crit_edge3 ], [ %.lcssa1624.lcssa48, %.preheader3 ]
  %.lcssa1115.lcssa34.lcssa45 = phi i32 [ %.lcssa1115.lcssa34.lcssa, %._crit_edge3 ], [ %.lcssa1115.lcssa34.lcssa46, %.preheader3 ]
  %.lcssa79.lcssa22.lcssa30.lcssa42 = phi i32 [ %.lcssa79.lcssa22.lcssa30.lcssa, %._crit_edge3 ], [ %.lcssa79.lcssa22.lcssa30.lcssa43, %.preheader3 ]
  %.lcssa13.lcssa18.lcssa27.lcssa39 = phi i32 [ %.lcssa13.lcssa18.lcssa27.lcssa, %._crit_edge3 ], [ %.lcssa13.lcssa18.lcssa27.lcssa40, %.preheader3 ]
  %.lcssa2536 = phi i32 [ %.lcssa25, %._crit_edge3 ], [ 0, %.preheader3 ]
  %57 = add nsw i32 %37, 1
  %58 = icmp slt i32 %57, %34
  br i1 %58, label %.preheader3, label %._crit_edge4, !llvm.loop !12

._crit_edge4:                                     ; preds = %56
  %.lcssa1624.lcssa49.lcssa = phi i32 [ %.lcssa1624.lcssa49, %56 ]
  %.lcssa1115.lcssa34.lcssa45.lcssa = phi i32 [ %.lcssa1115.lcssa34.lcssa45, %56 ]
  %.lcssa79.lcssa22.lcssa30.lcssa42.lcssa = phi i32 [ %.lcssa79.lcssa22.lcssa30.lcssa42, %56 ]
  %.lcssa13.lcssa18.lcssa27.lcssa39.lcssa = phi i32 [ %.lcssa13.lcssa18.lcssa27.lcssa39, %56 ]
  %.lcssa37 = phi i32 [ %57, %56 ]
  %.lcssa2536.lcssa = phi i32 [ %.lcssa2536, %56 ]
  br label %59

59:                                               ; preds = %._crit_edge4, %.preheader4
  %.lcssa2536.lcssa67 = phi i32 [ %.lcssa2536.lcssa, %._crit_edge4 ], [ %.lcssa2536.lcssa66, %.preheader4 ]
  %.lcssa1624.lcssa49.lcssa63 = phi i32 [ %.lcssa1624.lcssa49.lcssa, %._crit_edge4 ], [ %.lcssa1624.lcssa49.lcssa64, %.preheader4 ]
  %.lcssa1115.lcssa34.lcssa45.lcssa60 = phi i32 [ %.lcssa1115.lcssa34.lcssa45.lcssa, %._crit_edge4 ], [ %.lcssa1115.lcssa34.lcssa45.lcssa61, %.preheader4 ]
  %.lcssa79.lcssa22.lcssa30.lcssa42.lcssa57 = phi i32 [ %.lcssa79.lcssa22.lcssa30.lcssa42.lcssa, %._crit_edge4 ], [ %.lcssa79.lcssa22.lcssa30.lcssa42.lcssa58, %.preheader4 ]
  %.lcssa13.lcssa18.lcssa27.lcssa39.lcssa54 = phi i32 [ %.lcssa13.lcssa18.lcssa27.lcssa39.lcssa, %._crit_edge4 ], [ %.lcssa13.lcssa18.lcssa27.lcssa39.lcssa55, %.preheader4 ]
  %.lcssa3751 = phi i32 [ %.lcssa37, %._crit_edge4 ], [ 0, %.preheader4 ]
  %60 = add nsw i32 %36, 1
  %61 = icmp slt i32 %60, %35
  br i1 %61, label %.preheader4, label %._crit_edge5, !llvm.loop !13

._crit_edge5:                                     ; preds = %59
  %.lcssa2536.lcssa67.lcssa = phi i32 [ %.lcssa2536.lcssa67, %59 ]
  %.lcssa1624.lcssa49.lcssa63.lcssa = phi i32 [ %.lcssa1624.lcssa49.lcssa63, %59 ]
  %.lcssa1115.lcssa34.lcssa45.lcssa60.lcssa = phi i32 [ %.lcssa1115.lcssa34.lcssa45.lcssa60, %59 ]
  %.lcssa79.lcssa22.lcssa30.lcssa42.lcssa57.lcssa = phi i32 [ %.lcssa79.lcssa22.lcssa30.lcssa42.lcssa57, %59 ]
  %.lcssa13.lcssa18.lcssa27.lcssa39.lcssa54.lcssa = phi i32 [ %.lcssa13.lcssa18.lcssa27.lcssa39.lcssa54, %59 ]
  %.lcssa52 = phi i32 [ %60, %59 ]
  %.lcssa3751.lcssa = phi i32 [ %.lcssa3751, %59 ]
  store i32 %.lcssa3751.lcssa, ptr %5, align 4
  store i32 %.lcssa52, ptr %4, align 4
  store i32 %.lcssa13.lcssa18.lcssa27.lcssa39.lcssa54.lcssa, ptr %10, align 4
  store i32 %.lcssa79.lcssa22.lcssa30.lcssa42.lcssa57.lcssa, ptr %9, align 1
  store i32 %.lcssa1115.lcssa34.lcssa45.lcssa60.lcssa, ptr %8, align 1
  store i32 %.lcssa1624.lcssa49.lcssa63.lcssa, ptr %7, align 1
  store i32 %.lcssa2536.lcssa67.lcssa, ptr %6, align 1
  br label %62

62:                                               ; preds = %._crit_edge5, %16
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
