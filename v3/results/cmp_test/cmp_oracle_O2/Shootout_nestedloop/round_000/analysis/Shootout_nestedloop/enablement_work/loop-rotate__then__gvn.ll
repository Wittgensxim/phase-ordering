; ModuleID = 'results\cmp_test\cmp_oracle_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %14 = icmp eq i32 %0, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds ptr, ptr %1, i64 1
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @atoi(ptr noundef %17)
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 46, %19 ]
  store i32 %21, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %22 = icmp slt i32 0, %21
  br i1 %22, label %.lr.ph14, label %64

.lr.ph14:                                         ; preds = %20
  br label %23

23:                                               ; preds = %.lr.ph14, %60
  %24 = phi i32 [ 0, %.lr.ph14 ], [ %62, %60 ]
  %25 = phi i32 [ 0, %.lr.ph14 ], [ %61, %60 ]
  store i32 0, ptr %8, align 4
  br i1 true, label %.lr.ph11, label %._crit_edge16

._crit_edge16:                                    ; preds = %23
  br label %60

.lr.ph11:                                         ; preds = %23
  br label %26

26:                                               ; preds = %.lr.ph11, %56
  %27 = phi i32 [ 0, %.lr.ph11 ], [ %58, %56 ]
  %28 = phi i32 [ %25, %.lr.ph11 ], [ %57, %56 ]
  store i32 0, ptr %9, align 4
  br i1 true, label %.lr.ph8, label %._crit_edge17

._crit_edge17:                                    ; preds = %26
  br label %56

.lr.ph8:                                          ; preds = %26
  br label %29

29:                                               ; preds = %.lr.ph8, %52
  %30 = phi i32 [ 0, %.lr.ph8 ], [ %54, %52 ]
  %31 = phi i32 [ %28, %.lr.ph8 ], [ %53, %52 ]
  store i32 0, ptr %10, align 4
  br i1 true, label %.lr.ph5, label %._crit_edge18

._crit_edge18:                                    ; preds = %29
  br label %52

.lr.ph5:                                          ; preds = %29
  br label %32

32:                                               ; preds = %.lr.ph5, %48
  %33 = phi i32 [ 0, %.lr.ph5 ], [ %50, %48 ]
  %34 = phi i32 [ %31, %.lr.ph5 ], [ %49, %48 ]
  store i32 0, ptr %11, align 4
  br i1 true, label %.lr.ph2, label %._crit_edge19

._crit_edge19:                                    ; preds = %32
  br label %48

.lr.ph2:                                          ; preds = %32
  br label %35

35:                                               ; preds = %.lr.ph2, %44
  %36 = phi i32 [ 0, %.lr.ph2 ], [ %46, %44 ]
  %37 = phi i32 [ %34, %.lr.ph2 ], [ %45, %44 ]
  store i32 0, ptr %12, align 4
  br i1 true, label %.lr.ph, label %._crit_edge20

._crit_edge20:                                    ; preds = %35
  br label %44

.lr.ph:                                           ; preds = %35
  br label %38

38:                                               ; preds = %.lr.ph, %38
  %39 = phi i32 [ 0, %.lr.ph ], [ %42, %38 ]
  %40 = phi i32 [ %37, %.lr.ph ], [ %41, %38 ]
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %13, align 4
  %42 = add nsw i32 %39, 1
  store i32 %42, ptr %12, align 4
  %43 = icmp slt i32 %42, %21
  br i1 %43, label %38, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %38
  br label %44

44:                                               ; preds = %._crit_edge20, %._crit_edge
  %45 = phi i32 [ %41, %._crit_edge ], [ poison, %._crit_edge20 ]
  %46 = add nsw i32 %36, 1
  store i32 %46, ptr %11, align 4
  %47 = icmp slt i32 %46, %21
  br i1 %47, label %35, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %44
  br label %48

48:                                               ; preds = %._crit_edge19, %._crit_edge3
  %49 = phi i32 [ %45, %._crit_edge3 ], [ poison, %._crit_edge19 ]
  %50 = add nsw i32 %33, 1
  store i32 %50, ptr %10, align 4
  %51 = icmp slt i32 %50, %21
  br i1 %51, label %32, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %48
  br label %52

52:                                               ; preds = %._crit_edge18, %._crit_edge6
  %53 = phi i32 [ %49, %._crit_edge6 ], [ poison, %._crit_edge18 ]
  %54 = add nsw i32 %30, 1
  store i32 %54, ptr %9, align 4
  %55 = icmp slt i32 %54, %21
  br i1 %55, label %29, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %52
  br label %56

56:                                               ; preds = %._crit_edge17, %._crit_edge9
  %57 = phi i32 [ %53, %._crit_edge9 ], [ poison, %._crit_edge17 ]
  %58 = add nsw i32 %27, 1
  store i32 %58, ptr %8, align 4
  %59 = icmp slt i32 %58, %21
  br i1 %59, label %26, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %56
  br label %60

60:                                               ; preds = %._crit_edge16, %._crit_edge12
  %61 = phi i32 [ %57, %._crit_edge12 ], [ poison, %._crit_edge16 ]
  %62 = add nsw i32 %24, 1
  store i32 %62, ptr %7, align 4
  %63 = icmp slt i32 %62, %21
  br i1 %63, label %23, label %._crit_edge15, !llvm.loop !13

._crit_edge15:                                    ; preds = %60
  br label %64

64:                                               ; preds = %._crit_edge15, %20
  %65 = phi i32 [ %61, %._crit_edge15 ], [ 0, %20 ]
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %65)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
