; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_002\input.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6) #2
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 46, %8 ]
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph43, label %47

.lr.ph43:                                         ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph43, %44
  %storemerge41 = phi i32 [ 0, %.lr.ph43 ], [ %45, %44 ]
  %.040 = phi i32 [ 0, %.lr.ph43 ], [ %.1.lcssa, %44 ]
  %13 = icmp slt i32 0, %10
  br i1 %13, label %.lr.ph37, label %43

.lr.ph37:                                         ; preds = %12
  br label %14

14:                                               ; preds = %.lr.ph37, %40
  %storemerge135 = phi i32 [ 0, %.lr.ph37 ], [ %41, %40 ]
  %.134 = phi i32 [ %.040, %.lr.ph37 ], [ %.2.lcssa, %40 ]
  %15 = icmp slt i32 0, %10
  br i1 %15, label %.lr.ph31, label %39

.lr.ph31:                                         ; preds = %14
  br label %16

16:                                               ; preds = %.lr.ph31, %36
  %storemerge229 = phi i32 [ 0, %.lr.ph31 ], [ %37, %36 ]
  %.228 = phi i32 [ %.134, %.lr.ph31 ], [ %.3.lcssa, %36 ]
  %17 = icmp slt i32 0, %10
  br i1 %17, label %.lr.ph25, label %35

.lr.ph25:                                         ; preds = %16
  br label %18

18:                                               ; preds = %.lr.ph25, %32
  %storemerge323 = phi i32 [ 0, %.lr.ph25 ], [ %33, %32 ]
  %.322 = phi i32 [ %.228, %.lr.ph25 ], [ %.4.lcssa, %32 ]
  %19 = icmp slt i32 0, %10
  br i1 %19, label %.lr.ph19, label %31

.lr.ph19:                                         ; preds = %18
  br label %20

20:                                               ; preds = %.lr.ph19, %28
  %storemerge417 = phi i32 [ 0, %.lr.ph19 ], [ %29, %28 ]
  %.416 = phi i32 [ %.322, %.lr.ph19 ], [ %.5.lcssa, %28 ]
  %21 = icmp slt i32 0, %10
  br i1 %21, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %20
  br label %22

22:                                               ; preds = %.lr.ph, %24
  %storemerge515 = phi i32 [ 0, %.lr.ph ], [ %25, %24 ]
  %.514 = phi i32 [ %.416, %.lr.ph ], [ %23, %24 ]
  %23 = add nsw i32 %.514, 1
  br label %24

24:                                               ; preds = %22
  %25 = add nsw i32 %storemerge515, 1
  %26 = icmp slt i32 %25, %10
  br i1 %26, label %22, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %24
  %split = phi i32 [ %23, %24 ]
  br label %27

27:                                               ; preds = %._crit_edge, %20
  %.5.lcssa = phi i32 [ %split, %._crit_edge ], [ %.416, %20 ]
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %storemerge417, 1
  %30 = icmp slt i32 %29, %10
  br i1 %30, label %20, label %._crit_edge20, !llvm.loop !9

._crit_edge20:                                    ; preds = %28
  %split21 = phi i32 [ %.5.lcssa, %28 ]
  br label %31

31:                                               ; preds = %._crit_edge20, %18
  %.4.lcssa = phi i32 [ %split21, %._crit_edge20 ], [ %.322, %18 ]
  br label %32

32:                                               ; preds = %31
  %33 = add nsw i32 %storemerge323, 1
  %34 = icmp slt i32 %33, %10
  br i1 %34, label %18, label %._crit_edge26, !llvm.loop !10

._crit_edge26:                                    ; preds = %32
  %split27 = phi i32 [ %.4.lcssa, %32 ]
  br label %35

35:                                               ; preds = %._crit_edge26, %16
  %.3.lcssa = phi i32 [ %split27, %._crit_edge26 ], [ %.228, %16 ]
  br label %36

36:                                               ; preds = %35
  %37 = add nsw i32 %storemerge229, 1
  %38 = icmp slt i32 %37, %10
  br i1 %38, label %16, label %._crit_edge32, !llvm.loop !11

._crit_edge32:                                    ; preds = %36
  %split33 = phi i32 [ %.3.lcssa, %36 ]
  br label %39

39:                                               ; preds = %._crit_edge32, %14
  %.2.lcssa = phi i32 [ %split33, %._crit_edge32 ], [ %.134, %14 ]
  br label %40

40:                                               ; preds = %39
  %41 = add nsw i32 %storemerge135, 1
  %42 = icmp slt i32 %41, %10
  br i1 %42, label %14, label %._crit_edge38, !llvm.loop !12

._crit_edge38:                                    ; preds = %40
  %split39 = phi i32 [ %.2.lcssa, %40 ]
  br label %43

43:                                               ; preds = %._crit_edge38, %12
  %.1.lcssa = phi i32 [ %split39, %._crit_edge38 ], [ %.040, %12 ]
  br label %44

44:                                               ; preds = %43
  %45 = add nsw i32 %storemerge41, 1
  %46 = icmp slt i32 %45, %10
  br i1 %46, label %12, label %._crit_edge44, !llvm.loop !13

._crit_edge44:                                    ; preds = %44
  %split45 = phi i32 [ %.1.lcssa, %44 ]
  br label %47

47:                                               ; preds = %._crit_edge44, %9
  %.0.lcssa = phi i32 [ %split45, %._crit_edge44 ], [ 0, %9 ]
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.0.lcssa) #2
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
