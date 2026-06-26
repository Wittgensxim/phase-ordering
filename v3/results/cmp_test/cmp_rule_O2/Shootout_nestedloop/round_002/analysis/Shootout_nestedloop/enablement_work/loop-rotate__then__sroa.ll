; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_001\output.ll'
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
  br i1 %11, label %.lr.ph14, label %47

.lr.ph14:                                         ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph14, %44
  %.040 = phi i32 [ 0, %.lr.ph14 ], [ %45, %44 ]
  %.0 = phi i32 [ 0, %.lr.ph14 ], [ %.3, %44 ]
  %13 = icmp slt i32 0, %10
  br i1 %13, label %.lr.ph11, label %43

.lr.ph11:                                         ; preds = %12
  br label %14

14:                                               ; preds = %.lr.ph11, %40
  %.039 = phi i32 [ 0, %.lr.ph11 ], [ %41, %40 ]
  %.2 = phi i32 [ %.0, %.lr.ph11 ], [ %.5, %40 ]
  %15 = icmp slt i32 0, %10
  br i1 %15, label %.lr.ph8, label %39

.lr.ph8:                                          ; preds = %14
  br label %16

16:                                               ; preds = %.lr.ph8, %36
  %.038 = phi i32 [ 0, %.lr.ph8 ], [ %37, %36 ]
  %.4 = phi i32 [ %.2, %.lr.ph8 ], [ %.7, %36 ]
  %17 = icmp slt i32 0, %10
  br i1 %17, label %.lr.ph5, label %35

.lr.ph5:                                          ; preds = %16
  br label %18

18:                                               ; preds = %.lr.ph5, %32
  %.037 = phi i32 [ 0, %.lr.ph5 ], [ %33, %32 ]
  %.6 = phi i32 [ %.4, %.lr.ph5 ], [ %.9, %32 ]
  %19 = icmp slt i32 0, %10
  br i1 %19, label %.lr.ph2, label %31

.lr.ph2:                                          ; preds = %18
  br label %20

20:                                               ; preds = %.lr.ph2, %28
  %.036 = phi i32 [ 0, %.lr.ph2 ], [ %29, %28 ]
  %.8 = phi i32 [ %.6, %.lr.ph2 ], [ %.11, %28 ]
  %21 = icmp slt i32 0, %10
  br i1 %21, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %20
  br label %22

22:                                               ; preds = %.lr.ph, %24
  %.035 = phi i32 [ 0, %.lr.ph ], [ %25, %24 ]
  %.10 = phi i32 [ %.8, %.lr.ph ], [ %23, %24 ]
  %23 = add nsw i32 %.10, 1
  br label %24

24:                                               ; preds = %22
  %25 = add nsw i32 %.035, 1
  %26 = icmp slt i32 %25, %10
  br i1 %26, label %22, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %24
  br label %27

27:                                               ; preds = %._crit_edge, %20
  %.11 = phi i32 [ %23, %._crit_edge ], [ %.8, %20 ]
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %.036, 1
  %30 = icmp slt i32 %29, %10
  br i1 %30, label %20, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge3, %18
  %.9 = phi i32 [ %.11, %._crit_edge3 ], [ %.6, %18 ]
  br label %32

32:                                               ; preds = %31
  %33 = add nsw i32 %.037, 1
  %34 = icmp slt i32 %33, %10
  br i1 %34, label %18, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %32
  br label %35

35:                                               ; preds = %._crit_edge6, %16
  %.7 = phi i32 [ %.9, %._crit_edge6 ], [ %.4, %16 ]
  br label %36

36:                                               ; preds = %35
  %37 = add nsw i32 %.038, 1
  %38 = icmp slt i32 %37, %10
  br i1 %38, label %16, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %36
  br label %39

39:                                               ; preds = %._crit_edge9, %14
  %.5 = phi i32 [ %.7, %._crit_edge9 ], [ %.2, %14 ]
  br label %40

40:                                               ; preds = %39
  %41 = add nsw i32 %.039, 1
  %42 = icmp slt i32 %41, %10
  br i1 %42, label %14, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %40
  br label %43

43:                                               ; preds = %._crit_edge12, %12
  %.3 = phi i32 [ %.5, %._crit_edge12 ], [ %.0, %12 ]
  br label %44

44:                                               ; preds = %43
  %45 = add nsw i32 %.040, 1
  %46 = icmp slt i32 %45, %10
  br i1 %46, label %12, label %._crit_edge15, !llvm.loop !13

._crit_edge15:                                    ; preds = %44
  br label %47

47:                                               ; preds = %._crit_edge15, %9
  %.1 = phi i32 [ %.3, %._crit_edge15 ], [ 0, %9 ]
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.1) #2
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
