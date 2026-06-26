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
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %.preheader4.lr.ph, label %61

.preheader4.lr.ph:                                ; preds = %16
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.lr.ph, %56
  store i32 0, ptr %5, align 4
  %19 = load i32, ptr %3, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %.preheader3.lr.ph, label %56

.preheader3.lr.ph:                                ; preds = %.preheader4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %51
  store i32 0, ptr %6, align 4
  %21 = load i32, ptr %3, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %.preheader2.lr.ph, label %51

.preheader2.lr.ph:                                ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %46
  store i32 0, ptr %7, align 4
  %23 = load i32, ptr %3, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %.preheader1.lr.ph, label %46

.preheader1.lr.ph:                                ; preds = %.preheader2
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %41
  store i32 0, ptr %8, align 4
  %25 = load i32, ptr %3, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %.preheader.lr.ph, label %41

.preheader.lr.ph:                                 ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %36
  store i32 0, ptr %9, align 4
  %27 = load i32, ptr %3, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %.preheader
  br label %29

29:                                               ; preds = %.lr.ph, %29
  %30 = load i32, ptr %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %10, align 4
  %32 = load i32, ptr %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %9, align 4
  %34 = load i32, ptr %3, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %29, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %29
  br label %36

36:                                               ; preds = %._crit_edge, %.preheader
  %37 = load i32, ptr %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %8, align 4
  %39 = load i32, ptr %3, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %.preheader, label %._crit_edge1, !llvm.loop !9

._crit_edge1:                                     ; preds = %36
  br label %41

41:                                               ; preds = %._crit_edge1, %.preheader1
  %42 = load i32, ptr %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %7, align 4
  %44 = load i32, ptr %3, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %.preheader1, label %._crit_edge2, !llvm.loop !10

._crit_edge2:                                     ; preds = %41
  br label %46

46:                                               ; preds = %._crit_edge2, %.preheader2
  %47 = load i32, ptr %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %6, align 4
  %49 = load i32, ptr %3, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %.preheader2, label %._crit_edge3, !llvm.loop !11

._crit_edge3:                                     ; preds = %46
  br label %51

51:                                               ; preds = %._crit_edge3, %.preheader3
  %52 = load i32, ptr %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %5, align 4
  %54 = load i32, ptr %3, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %.preheader3, label %._crit_edge4, !llvm.loop !12

._crit_edge4:                                     ; preds = %51
  br label %56

56:                                               ; preds = %._crit_edge4, %.preheader4
  %57 = load i32, ptr %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %4, align 4
  %59 = load i32, ptr %3, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %.preheader4, label %._crit_edge5, !llvm.loop !13

._crit_edge5:                                     ; preds = %56
  br label %61

61:                                               ; preds = %._crit_edge5, %16
  %62 = load i32, ptr %10, align 4
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
