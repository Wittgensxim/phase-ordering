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
  %7 = call i32 @atoi(ptr noundef %6) #3
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 46, %8 ]
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph23, label %44

.lr.ph23:                                         ; preds = %9
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %12 = mul i32 %10, %smax
  br label %13

13:                                               ; preds = %.lr.ph23, %42
  %14 = phi i32 [ 0, %.lr.ph23 ], [ %43, %42 ]
  %15 = phi i32 [ 0, %.lr.ph23 ], [ %.lcssa4, %42 ]
  %16 = icmp slt i32 0, %10
  br i1 %16, label %.lr.ph19, label %42

.lr.ph19:                                         ; preds = %13
  br label %17

17:                                               ; preds = %.lr.ph19, %40
  %18 = phi i32 [ %15, %.lr.ph19 ], [ %.lcssa3, %40 ]
  %19 = phi i32 [ 0, %.lr.ph19 ], [ %41, %40 ]
  %20 = icmp slt i32 0, %10
  br i1 %20, label %.lr.ph15, label %40

.lr.ph15:                                         ; preds = %17
  br label %21

21:                                               ; preds = %.lr.ph15, %38
  %22 = phi i32 [ %18, %.lr.ph15 ], [ %.lcssa2, %38 ]
  %23 = phi i32 [ 0, %.lr.ph15 ], [ %39, %38 ]
  %24 = icmp slt i32 0, %10
  br i1 %24, label %.lr.ph11, label %38

.lr.ph11:                                         ; preds = %21
  br label %25

25:                                               ; preds = %.lr.ph11, %36
  %26 = phi i32 [ %22, %.lr.ph11 ], [ %.lcssa1, %36 ]
  %27 = phi i32 [ 0, %.lr.ph11 ], [ %37, %36 ]
  %28 = icmp slt i32 0, %10
  br i1 %28, label %.lr.ph7, label %36

.lr.ph7:                                          ; preds = %25
  br label %29

29:                                               ; preds = %.lr.ph7, %34
  %30 = phi i32 [ %26, %.lr.ph7 ], [ %.lcssa, %34 ]
  %31 = icmp slt i32 0, %10
  br i1 %31, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %29
  br label %32

32:                                               ; preds = %.lr.ph, %32
  br i1 false, label %32, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %32
  %33 = add i32 %10, %30
  br label %34

34:                                               ; preds = %._crit_edge, %29
  %.lcssa = phi i32 [ %33, %._crit_edge ], [ %30, %29 ]
  br i1 false, label %29, label %._crit_edge8, !llvm.loop !9

._crit_edge8:                                     ; preds = %34
  %35 = add i32 %12, %26
  br label %36

36:                                               ; preds = %._crit_edge8, %25
  %.lcssa1 = phi i32 [ %35, %._crit_edge8 ], [ %26, %25 ]
  %37 = add nuw nsw i32 %27, 1
  %exitcond = icmp ne i32 %37, %10
  br i1 %exitcond, label %25, label %._crit_edge12, !llvm.loop !10

._crit_edge12:                                    ; preds = %36
  %split13 = phi i32 [ %.lcssa1, %36 ]
  br label %38

38:                                               ; preds = %._crit_edge12, %21
  %.lcssa2 = phi i32 [ %split13, %._crit_edge12 ], [ %22, %21 ]
  %39 = add nuw nsw i32 %23, 1
  %exitcond26 = icmp ne i32 %39, %10
  br i1 %exitcond26, label %21, label %._crit_edge16, !llvm.loop !11

._crit_edge16:                                    ; preds = %38
  %split17 = phi i32 [ %.lcssa2, %38 ]
  br label %40

40:                                               ; preds = %._crit_edge16, %17
  %.lcssa3 = phi i32 [ %split17, %._crit_edge16 ], [ %18, %17 ]
  %41 = add nuw nsw i32 %19, 1
  %exitcond27 = icmp ne i32 %41, %10
  br i1 %exitcond27, label %17, label %._crit_edge20, !llvm.loop !12

._crit_edge20:                                    ; preds = %40
  %split21 = phi i32 [ %.lcssa3, %40 ]
  br label %42

42:                                               ; preds = %._crit_edge20, %13
  %.lcssa4 = phi i32 [ %split21, %._crit_edge20 ], [ %15, %13 ]
  %43 = add nuw nsw i32 %14, 1
  %exitcond28 = icmp ne i32 %43, %10
  br i1 %exitcond28, label %13, label %._crit_edge24, !llvm.loop !13

._crit_edge24:                                    ; preds = %42
  %split25 = phi i32 [ %.lcssa4, %42 ]
  br label %44

44:                                               ; preds = %._crit_edge24, %9
  %.lcssa5 = phi i32 [ %split25, %._crit_edge24 ], [ 0, %9 ]
  %45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa5) #3
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
