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
  br i1 %19, label %.preheader4.preheader.lr.ph, label %57

.preheader4.preheader.lr.ph:                      ; preds = %16
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader4.preheader.lr.ph, %52
  store i32 0, ptr %5, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp slt i32 0, %20
  br i1 %21, label %.preheader3.preheader.lr.ph, label %52

.preheader3.preheader.lr.ph:                      ; preds = %.preheader4.preheader
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %.preheader3.preheader.lr.ph, %.preheader4
  store i32 0, ptr %6, align 4
  %22 = load i32, ptr %3, align 4
  %23 = icmp slt i32 0, %22
  br i1 %23, label %.preheader2.preheader.lr.ph, label %.preheader4

.preheader2.preheader.lr.ph:                      ; preds = %.preheader3.preheader
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader2.preheader.lr.ph, %.preheader3
  store i32 0, ptr %7, align 4
  %24 = load i32, ptr %3, align 4
  %25 = icmp slt i32 0, %24
  br i1 %25, label %.preheader1.preheader.lr.ph, label %.preheader3

.preheader1.preheader.lr.ph:                      ; preds = %.preheader2.preheader
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %.preheader1.preheader.lr.ph, %.preheader2
  store i32 0, ptr %8, align 4
  %26 = load i32, ptr %3, align 4
  %27 = icmp slt i32 0, %26
  br i1 %27, label %.preheader.preheader.lr.ph, label %.preheader2

.preheader.preheader.lr.ph:                       ; preds = %.preheader1.preheader
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.lr.ph, %.preheader1
  store i32 0, ptr %9, align 4
  %28 = load i32, ptr %3, align 4
  %29 = icmp slt i32 0, %28
  br i1 %29, label %.lr.ph, label %.preheader1

.lr.ph:                                           ; preds = %.preheader.preheader
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %30 = load i32, ptr %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %10, align 4
  %32 = load i32, ptr %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %9, align 4
  %34 = load i32, ptr %3, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %.preheader, label %.preheader._crit_edge, !llvm.loop !7

.preheader._crit_edge:                            ; preds = %.preheader
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader._crit_edge, %.preheader.preheader
  %36 = load i32, ptr %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %8, align 4
  %38 = load i32, ptr %3, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %.preheader.preheader, label %.preheader1._crit_edge, !llvm.loop !9

.preheader1._crit_edge:                           ; preds = %.preheader1
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader1._crit_edge, %.preheader1.preheader
  %40 = load i32, ptr %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %7, align 4
  %42 = load i32, ptr %3, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %.preheader1.preheader, label %.preheader2._crit_edge, !llvm.loop !10

.preheader2._crit_edge:                           ; preds = %.preheader2
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader2._crit_edge, %.preheader2.preheader
  %44 = load i32, ptr %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %6, align 4
  %46 = load i32, ptr %3, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %.preheader2.preheader, label %.preheader3._crit_edge, !llvm.loop !11

.preheader3._crit_edge:                           ; preds = %.preheader3
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader3._crit_edge, %.preheader3.preheader
  %48 = load i32, ptr %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %5, align 4
  %50 = load i32, ptr %3, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %.preheader3.preheader, label %.preheader4._crit_edge, !llvm.loop !12

.preheader4._crit_edge:                           ; preds = %.preheader4
  br label %52

52:                                               ; preds = %.preheader4._crit_edge, %.preheader4.preheader
  %53 = load i32, ptr %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %4, align 4
  %55 = load i32, ptr %3, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %.preheader4.preheader, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %52
  br label %57

57:                                               ; preds = %._crit_edge, %16
  %58 = load i32, ptr %10, align 4
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %58) #2
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
