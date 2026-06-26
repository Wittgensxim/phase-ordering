; ModuleID = 'results\cmp_test\cmp_oracle_O2\Shootout_nestedloop\round_000\output.ll'
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
  br i1 %11, label %.lr.ph29, label %53

.lr.ph29:                                         ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph29, %50
  %13 = phi i32 [ 0, %.lr.ph29 ], [ %51, %50 ]
  %14 = phi i32 [ 0, %.lr.ph29 ], [ %.lcssa10, %50 ]
  %15 = icmp slt i32 0, %10
  br i1 %15, label %.lr.ph25, label %50

.lr.ph25:                                         ; preds = %12
  br label %16

16:                                               ; preds = %.lr.ph25, %47
  %17 = phi i32 [ %14, %.lr.ph25 ], [ %.lcssa9, %47 ]
  %18 = phi i32 [ 0, %.lr.ph25 ], [ %48, %47 ]
  %19 = icmp slt i32 0, %10
  br i1 %19, label %.lr.ph21, label %47

.lr.ph21:                                         ; preds = %16
  br label %20

20:                                               ; preds = %.lr.ph21, %44
  %21 = phi i32 [ %17, %.lr.ph21 ], [ %.lcssa8, %44 ]
  %22 = phi i32 [ 0, %.lr.ph21 ], [ %45, %44 ]
  %23 = icmp slt i32 0, %10
  br i1 %23, label %.lr.ph17, label %44

.lr.ph17:                                         ; preds = %20
  br label %24

24:                                               ; preds = %.lr.ph17, %41
  %25 = phi i32 [ %21, %.lr.ph17 ], [ %.lcssa7, %41 ]
  %26 = phi i32 [ 0, %.lr.ph17 ], [ %42, %41 ]
  %27 = icmp slt i32 0, %10
  br i1 %27, label %.lr.ph13, label %41

.lr.ph13:                                         ; preds = %24
  br label %28

28:                                               ; preds = %.lr.ph13, %38
  %29 = phi i32 [ %25, %.lr.ph13 ], [ %.lcssa, %38 ]
  %30 = phi i32 [ 0, %.lr.ph13 ], [ %39, %38 ]
  %31 = icmp slt i32 0, %10
  br i1 %31, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %28
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %33 = phi i32 [ %29, %.lr.ph ], [ %35, %32 ]
  %34 = phi i32 [ 0, %.lr.ph ], [ %36, %32 ]
  %35 = add nsw i32 %33, 1
  %36 = add nuw nsw i32 %34, 1
  %37 = icmp slt i32 %36, %10
  br i1 %37, label %32, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %32
  %split = phi i32 [ %35, %32 ]
  br label %38

38:                                               ; preds = %._crit_edge, %28
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %29, %28 ]
  %39 = add nuw nsw i32 %30, 1
  %40 = icmp slt i32 %39, %10
  br i1 %40, label %28, label %._crit_edge14, !llvm.loop !9

._crit_edge14:                                    ; preds = %38
  %split15 = phi i32 [ %.lcssa, %38 ]
  br label %41

41:                                               ; preds = %._crit_edge14, %24
  %.lcssa7 = phi i32 [ %split15, %._crit_edge14 ], [ %25, %24 ]
  %42 = add nuw nsw i32 %26, 1
  %43 = icmp slt i32 %42, %10
  br i1 %43, label %24, label %._crit_edge18, !llvm.loop !10

._crit_edge18:                                    ; preds = %41
  %split19 = phi i32 [ %.lcssa7, %41 ]
  br label %44

44:                                               ; preds = %._crit_edge18, %20
  %.lcssa8 = phi i32 [ %split19, %._crit_edge18 ], [ %21, %20 ]
  %45 = add nuw nsw i32 %22, 1
  %46 = icmp slt i32 %45, %10
  br i1 %46, label %20, label %._crit_edge22, !llvm.loop !11

._crit_edge22:                                    ; preds = %44
  %split23 = phi i32 [ %.lcssa8, %44 ]
  br label %47

47:                                               ; preds = %._crit_edge22, %16
  %.lcssa9 = phi i32 [ %split23, %._crit_edge22 ], [ %17, %16 ]
  %48 = add nuw nsw i32 %18, 1
  %49 = icmp slt i32 %48, %10
  br i1 %49, label %16, label %._crit_edge26, !llvm.loop !12

._crit_edge26:                                    ; preds = %47
  %split27 = phi i32 [ %.lcssa9, %47 ]
  br label %50

50:                                               ; preds = %._crit_edge26, %12
  %.lcssa10 = phi i32 [ %split27, %._crit_edge26 ], [ %14, %12 ]
  %51 = add nuw nsw i32 %13, 1
  %52 = icmp slt i32 %51, %10
  br i1 %52, label %12, label %._crit_edge30, !llvm.loop !13

._crit_edge30:                                    ; preds = %50
  %split31 = phi i32 [ %.lcssa10, %50 ]
  br label %53

53:                                               ; preds = %._crit_edge30, %9
  %.lcssa11 = phi i32 [ %split31, %._crit_edge30 ], [ 0, %9 ]
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa11) #2
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
