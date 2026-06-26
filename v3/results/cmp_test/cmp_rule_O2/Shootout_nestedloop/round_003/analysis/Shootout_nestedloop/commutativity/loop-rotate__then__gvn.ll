; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_002\input.ll'
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
  store i32 0, ptr %4, align 4
  %19 = icmp slt i32 0, %18
  br i1 %19, label %.lr.ph14, label %61

.lr.ph14:                                         ; preds = %17
  br label %20

20:                                               ; preds = %.lr.ph14, %57
  %21 = phi i32 [ 0, %.lr.ph14 ], [ %59, %57 ]
  %22 = phi i32 [ 0, %.lr.ph14 ], [ %58, %57 ]
  store i32 0, ptr %5, align 4
  br i1 true, label %.lr.ph11, label %._crit_edge16

._crit_edge16:                                    ; preds = %20
  br label %57

.lr.ph11:                                         ; preds = %20
  br label %23

23:                                               ; preds = %.lr.ph11, %53
  %24 = phi i32 [ 0, %.lr.ph11 ], [ %55, %53 ]
  %25 = phi i32 [ %22, %.lr.ph11 ], [ %54, %53 ]
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph8, label %._crit_edge17

._crit_edge17:                                    ; preds = %23
  br label %53

.lr.ph8:                                          ; preds = %23
  br label %26

26:                                               ; preds = %.lr.ph8, %49
  %27 = phi i32 [ 0, %.lr.ph8 ], [ %51, %49 ]
  %28 = phi i32 [ %25, %.lr.ph8 ], [ %50, %49 ]
  store i32 0, ptr %7, align 4
  br i1 true, label %.lr.ph5, label %._crit_edge18

._crit_edge18:                                    ; preds = %26
  br label %49

.lr.ph5:                                          ; preds = %26
  br label %29

29:                                               ; preds = %.lr.ph5, %45
  %30 = phi i32 [ 0, %.lr.ph5 ], [ %47, %45 ]
  %31 = phi i32 [ %28, %.lr.ph5 ], [ %46, %45 ]
  store i32 0, ptr %8, align 4
  br i1 true, label %.lr.ph2, label %._crit_edge19

._crit_edge19:                                    ; preds = %29
  br label %45

.lr.ph2:                                          ; preds = %29
  br label %32

32:                                               ; preds = %.lr.ph2, %41
  %33 = phi i32 [ 0, %.lr.ph2 ], [ %43, %41 ]
  %34 = phi i32 [ %31, %.lr.ph2 ], [ %42, %41 ]
  store i32 0, ptr %9, align 4
  br i1 true, label %.lr.ph, label %._crit_edge20

._crit_edge20:                                    ; preds = %32
  br label %41

.lr.ph:                                           ; preds = %32
  br label %35

35:                                               ; preds = %.lr.ph, %35
  %36 = phi i32 [ 0, %.lr.ph ], [ %39, %35 ]
  %37 = phi i32 [ %34, %.lr.ph ], [ %38, %35 ]
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %10, align 4
  %39 = add nsw i32 %36, 1
  store i32 %39, ptr %9, align 4
  %40 = icmp slt i32 %39, %18
  br i1 %40, label %35, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %35
  br label %41

41:                                               ; preds = %._crit_edge20, %._crit_edge
  %42 = phi i32 [ %38, %._crit_edge ], [ poison, %._crit_edge20 ]
  %43 = add nsw i32 %33, 1
  store i32 %43, ptr %8, align 4
  %44 = icmp slt i32 %43, %18
  br i1 %44, label %32, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %41
  br label %45

45:                                               ; preds = %._crit_edge19, %._crit_edge3
  %46 = phi i32 [ %42, %._crit_edge3 ], [ poison, %._crit_edge19 ]
  %47 = add nsw i32 %30, 1
  store i32 %47, ptr %7, align 4
  %48 = icmp slt i32 %47, %18
  br i1 %48, label %29, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %45
  br label %49

49:                                               ; preds = %._crit_edge18, %._crit_edge6
  %50 = phi i32 [ %46, %._crit_edge6 ], [ poison, %._crit_edge18 ]
  %51 = add nsw i32 %27, 1
  store i32 %51, ptr %6, align 4
  %52 = icmp slt i32 %51, %18
  br i1 %52, label %26, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %49
  br label %53

53:                                               ; preds = %._crit_edge17, %._crit_edge9
  %54 = phi i32 [ %50, %._crit_edge9 ], [ poison, %._crit_edge17 ]
  %55 = add nsw i32 %24, 1
  store i32 %55, ptr %5, align 4
  %56 = icmp slt i32 %55, %18
  br i1 %56, label %23, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %53
  br label %57

57:                                               ; preds = %._crit_edge16, %._crit_edge12
  %58 = phi i32 [ %54, %._crit_edge12 ], [ poison, %._crit_edge16 ]
  %59 = add nsw i32 %21, 1
  store i32 %59, ptr %4, align 4
  %60 = icmp slt i32 %59, %18
  br i1 %60, label %20, label %._crit_edge15, !llvm.loop !13

._crit_edge15:                                    ; preds = %57
  br label %61

61:                                               ; preds = %._crit_edge15, %17
  %62 = phi i32 [ %58, %._crit_edge15 ], [ 0, %17 ]
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %62) #2
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
