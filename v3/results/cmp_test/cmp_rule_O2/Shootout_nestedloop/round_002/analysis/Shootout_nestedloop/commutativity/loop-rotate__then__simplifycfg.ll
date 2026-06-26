; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_001\output.ll'
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

16:                                               ; preds = %2, %12
  %17 = phi i32 [ %15, %12 ], [ 46, %2 ]
  store i32 %17, ptr %3, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %4, align 4
  %18 = load i32, ptr %3, align 4
  %19 = icmp slt i32 0, %18
  br i1 %19, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %16, %._crit_edge12
  store i32 0, ptr %5, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp slt i32 0, %20
  br i1 %21, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %.lr.ph14, %._crit_edge9
  store i32 0, ptr %6, align 4
  %22 = load i32, ptr %3, align 4
  %23 = icmp slt i32 0, %22
  br i1 %23, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %.lr.ph11, %._crit_edge6
  store i32 0, ptr %7, align 4
  %24 = load i32, ptr %3, align 4
  %25 = icmp slt i32 0, %24
  br i1 %25, label %.lr.ph5, label %._crit_edge6

.lr.ph5:                                          ; preds = %.lr.ph8, %._crit_edge3
  store i32 0, ptr %8, align 4
  %26 = load i32, ptr %3, align 4
  %27 = icmp slt i32 0, %26
  br i1 %27, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %.lr.ph5, %._crit_edge
  store i32 0, ptr %9, align 4
  %28 = load i32, ptr %3, align 4
  %29 = icmp slt i32 0, %28
  br i1 %29, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph2, %.lr.ph
  %30 = load i32, ptr %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %10, align 4
  %32 = load i32, ptr %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %9, align 4
  %34 = load i32, ptr %3, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph2, %.lr.ph
  %36 = load i32, ptr %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %8, align 4
  %38 = load i32, ptr %3, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %.lr.ph2, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %.lr.ph5, %._crit_edge
  %40 = load i32, ptr %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %7, align 4
  %42 = load i32, ptr %3, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %.lr.ph5, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %.lr.ph8, %._crit_edge3
  %44 = load i32, ptr %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %6, align 4
  %46 = load i32, ptr %3, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %.lr.ph8, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %.lr.ph11, %._crit_edge6
  %48 = load i32, ptr %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %5, align 4
  %50 = load i32, ptr %3, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %.lr.ph11, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %.lr.ph14, %._crit_edge9
  %52 = load i32, ptr %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %4, align 4
  %54 = load i32, ptr %3, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %.lr.ph14, label %._crit_edge15, !llvm.loop !13

._crit_edge15:                                    ; preds = %._crit_edge12, %16
  %56 = load i32, ptr %10, align 4
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
