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
  %18 = icmp slt i32 0, %17
  br i1 %18, label %.preheader4.lr.ph, label %55

.preheader4.lr.ph:                                ; preds = %16
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.lr.ph, %51
  %19 = phi i32 [ 0, %.preheader4.lr.ph ], [ %53, %51 ]
  %20 = phi i32 [ 0, %.preheader4.lr.ph ], [ %52, %51 ]
  store i32 0, ptr %5, align 4
  br i1 true, label %.preheader3.lr.ph, label %.preheader4._crit_edge

.preheader4._crit_edge:                           ; preds = %.preheader4
  br label %51

.preheader3.lr.ph:                                ; preds = %.preheader4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %47
  %21 = phi i32 [ 0, %.preheader3.lr.ph ], [ %49, %47 ]
  %22 = phi i32 [ %20, %.preheader3.lr.ph ], [ %48, %47 ]
  store i32 0, ptr %6, align 4
  br i1 true, label %.preheader2.lr.ph, label %.preheader3._crit_edge

.preheader3._crit_edge:                           ; preds = %.preheader3
  br label %47

.preheader2.lr.ph:                                ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %43
  %23 = phi i32 [ 0, %.preheader2.lr.ph ], [ %45, %43 ]
  %24 = phi i32 [ %22, %.preheader2.lr.ph ], [ %44, %43 ]
  store i32 0, ptr %7, align 4
  br i1 true, label %.preheader1.lr.ph, label %.preheader2._crit_edge

.preheader2._crit_edge:                           ; preds = %.preheader2
  br label %43

.preheader1.lr.ph:                                ; preds = %.preheader2
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %39
  %25 = phi i32 [ 0, %.preheader1.lr.ph ], [ %41, %39 ]
  %26 = phi i32 [ %24, %.preheader1.lr.ph ], [ %40, %39 ]
  store i32 0, ptr %8, align 4
  br i1 true, label %.preheader.lr.ph, label %.preheader1._crit_edge

.preheader1._crit_edge:                           ; preds = %.preheader1
  br label %39

.preheader.lr.ph:                                 ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %35
  %27 = phi i32 [ 0, %.preheader.lr.ph ], [ %37, %35 ]
  %28 = phi i32 [ %26, %.preheader.lr.ph ], [ %36, %35 ]
  store i32 0, ptr %9, align 4
  br i1 true, label %.lr.ph, label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader
  br label %35

.lr.ph:                                           ; preds = %.preheader
  br label %29

29:                                               ; preds = %.lr.ph, %29
  %30 = phi i32 [ 0, %.lr.ph ], [ %33, %29 ]
  %31 = phi i32 [ %28, %.lr.ph ], [ %32, %29 ]
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %10, align 4
  %33 = add nsw i32 %30, 1
  store i32 %33, ptr %9, align 4
  %34 = icmp slt i32 %33, %17
  br i1 %34, label %29, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %29
  br label %35

35:                                               ; preds = %.preheader._crit_edge, %._crit_edge
  %36 = phi i32 [ %32, %._crit_edge ], [ poison, %.preheader._crit_edge ]
  %37 = add nsw i32 %27, 1
  store i32 %37, ptr %8, align 4
  %38 = icmp slt i32 %37, %17
  br i1 %38, label %.preheader, label %._crit_edge1, !llvm.loop !9

._crit_edge1:                                     ; preds = %35
  br label %39

39:                                               ; preds = %.preheader1._crit_edge, %._crit_edge1
  %40 = phi i32 [ %36, %._crit_edge1 ], [ poison, %.preheader1._crit_edge ]
  %41 = add nsw i32 %25, 1
  store i32 %41, ptr %7, align 4
  %42 = icmp slt i32 %41, %17
  br i1 %42, label %.preheader1, label %._crit_edge2, !llvm.loop !10

._crit_edge2:                                     ; preds = %39
  br label %43

43:                                               ; preds = %.preheader2._crit_edge, %._crit_edge2
  %44 = phi i32 [ %40, %._crit_edge2 ], [ poison, %.preheader2._crit_edge ]
  %45 = add nsw i32 %23, 1
  store i32 %45, ptr %6, align 4
  %46 = icmp slt i32 %45, %17
  br i1 %46, label %.preheader2, label %._crit_edge3, !llvm.loop !11

._crit_edge3:                                     ; preds = %43
  br label %47

47:                                               ; preds = %.preheader3._crit_edge, %._crit_edge3
  %48 = phi i32 [ %44, %._crit_edge3 ], [ poison, %.preheader3._crit_edge ]
  %49 = add nsw i32 %21, 1
  store i32 %49, ptr %5, align 4
  %50 = icmp slt i32 %49, %17
  br i1 %50, label %.preheader3, label %._crit_edge4, !llvm.loop !12

._crit_edge4:                                     ; preds = %47
  br label %51

51:                                               ; preds = %.preheader4._crit_edge, %._crit_edge4
  %52 = phi i32 [ %48, %._crit_edge4 ], [ poison, %.preheader4._crit_edge ]
  %53 = add nsw i32 %19, 1
  store i32 %53, ptr %4, align 4
  %54 = icmp slt i32 %53, %17
  br i1 %54, label %.preheader4, label %._crit_edge5, !llvm.loop !13

._crit_edge5:                                     ; preds = %51
  br label %55

55:                                               ; preds = %._crit_edge5, %16
  %56 = phi i32 [ %52, %._crit_edge5 ], [ 0, %16 ]
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %56) #2
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
