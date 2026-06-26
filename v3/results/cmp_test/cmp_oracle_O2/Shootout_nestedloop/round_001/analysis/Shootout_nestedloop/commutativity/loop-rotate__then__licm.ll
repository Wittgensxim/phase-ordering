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
  br i1 %11, label %.lr.ph23, label %53

.lr.ph23:                                         ; preds = %9
  %12 = icmp slt i32 0, %10
  %13 = icmp slt i32 0, %10
  %14 = icmp slt i32 0, %10
  %15 = icmp slt i32 0, %10
  %16 = icmp slt i32 0, %10
  br label %17

17:                                               ; preds = %.lr.ph23, %50
  %18 = phi i32 [ 0, %.lr.ph23 ], [ %51, %50 ]
  %19 = phi i32 [ 0, %.lr.ph23 ], [ %.lcssa4, %50 ]
  br i1 %12, label %.lr.ph19, label %50

.lr.ph19:                                         ; preds = %17
  br label %20

20:                                               ; preds = %.lr.ph19, %47
  %21 = phi i32 [ %19, %.lr.ph19 ], [ %.lcssa3, %47 ]
  %22 = phi i32 [ 0, %.lr.ph19 ], [ %48, %47 ]
  br i1 %13, label %.lr.ph15, label %47

.lr.ph15:                                         ; preds = %20
  br label %23

23:                                               ; preds = %.lr.ph15, %44
  %24 = phi i32 [ %21, %.lr.ph15 ], [ %.lcssa2, %44 ]
  %25 = phi i32 [ 0, %.lr.ph15 ], [ %45, %44 ]
  br i1 %14, label %.lr.ph11, label %44

.lr.ph11:                                         ; preds = %23
  br label %26

26:                                               ; preds = %.lr.ph11, %41
  %27 = phi i32 [ %24, %.lr.ph11 ], [ %.lcssa1, %41 ]
  %28 = phi i32 [ 0, %.lr.ph11 ], [ %42, %41 ]
  br i1 %15, label %.lr.ph7, label %41

.lr.ph7:                                          ; preds = %26
  br label %29

29:                                               ; preds = %.lr.ph7, %38
  %30 = phi i32 [ %27, %.lr.ph7 ], [ %.lcssa, %38 ]
  %31 = phi i32 [ 0, %.lr.ph7 ], [ %39, %38 ]
  br i1 %16, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %29
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %33 = phi i32 [ %30, %.lr.ph ], [ %35, %32 ]
  %34 = phi i32 [ 0, %.lr.ph ], [ %36, %32 ]
  %35 = add nsw i32 %33, 1
  %36 = add nuw nsw i32 %34, 1
  %37 = icmp slt i32 %36, %10
  br i1 %37, label %32, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %32
  %split = phi i32 [ %35, %32 ]
  br label %38

38:                                               ; preds = %._crit_edge, %29
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %30, %29 ]
  %39 = add nuw nsw i32 %31, 1
  %40 = icmp slt i32 %39, %10
  br i1 %40, label %29, label %._crit_edge8, !llvm.loop !9

._crit_edge8:                                     ; preds = %38
  %split9 = phi i32 [ %.lcssa, %38 ]
  br label %41

41:                                               ; preds = %._crit_edge8, %26
  %.lcssa1 = phi i32 [ %split9, %._crit_edge8 ], [ %27, %26 ]
  %42 = add nuw nsw i32 %28, 1
  %43 = icmp slt i32 %42, %10
  br i1 %43, label %26, label %._crit_edge12, !llvm.loop !10

._crit_edge12:                                    ; preds = %41
  %split13 = phi i32 [ %.lcssa1, %41 ]
  br label %44

44:                                               ; preds = %._crit_edge12, %23
  %.lcssa2 = phi i32 [ %split13, %._crit_edge12 ], [ %24, %23 ]
  %45 = add nuw nsw i32 %25, 1
  %46 = icmp slt i32 %45, %10
  br i1 %46, label %23, label %._crit_edge16, !llvm.loop !11

._crit_edge16:                                    ; preds = %44
  %split17 = phi i32 [ %.lcssa2, %44 ]
  br label %47

47:                                               ; preds = %._crit_edge16, %20
  %.lcssa3 = phi i32 [ %split17, %._crit_edge16 ], [ %21, %20 ]
  %48 = add nuw nsw i32 %22, 1
  %49 = icmp slt i32 %48, %10
  br i1 %49, label %20, label %._crit_edge20, !llvm.loop !12

._crit_edge20:                                    ; preds = %47
  %split21 = phi i32 [ %.lcssa3, %47 ]
  br label %50

50:                                               ; preds = %._crit_edge20, %17
  %.lcssa4 = phi i32 [ %split21, %._crit_edge20 ], [ %19, %17 ]
  %51 = add nuw nsw i32 %18, 1
  %52 = icmp slt i32 %51, %10
  br i1 %52, label %17, label %._crit_edge24, !llvm.loop !13

._crit_edge24:                                    ; preds = %50
  %split25 = phi i32 [ %.lcssa4, %50 ]
  br label %53

53:                                               ; preds = %._crit_edge24, %9
  %.lcssa5 = phi i32 [ %split25, %._crit_edge24 ], [ 0, %9 ]
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa5) #2
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
