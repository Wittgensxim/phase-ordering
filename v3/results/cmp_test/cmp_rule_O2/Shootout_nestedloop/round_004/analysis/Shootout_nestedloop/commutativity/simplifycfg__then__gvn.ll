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
  br label %18

18:                                               ; preds = %62, %16
  %19 = phi i32 [ %17, %16 ], [ %26, %62 ]
  %20 = phi i32 [ %17, %16 ], [ %27, %62 ]
  %21 = phi i32 [ %17, %16 ], [ %28, %62 ]
  %22 = phi i32 [ %17, %16 ], [ %29, %62 ]
  %23 = phi i32 [ 0, %16 ], [ %30, %62 ]
  %24 = phi i32 [ 0, %16 ], [ %63, %62 ]
  store i32 %24, ptr %4, align 4
  %25 = icmp slt i32 %24, %22
  br i1 %25, label %.preheader4, label %64

.preheader4:                                      ; preds = %18, %60
  %26 = phi i32 [ %33, %60 ], [ %19, %18 ]
  %27 = phi i32 [ %34, %60 ], [ %20, %18 ]
  %28 = phi i32 [ %35, %60 ], [ %21, %18 ]
  %29 = phi i32 [ %35, %60 ], [ %22, %18 ]
  %30 = phi i32 [ %36, %60 ], [ %23, %18 ]
  %31 = phi i32 [ %61, %60 ], [ 0, %18 ]
  store i32 %31, ptr %5, align 4
  %32 = icmp slt i32 %31, %29
  br i1 %32, label %.preheader3, label %62

.preheader3:                                      ; preds = %.preheader4, %58
  %33 = phi i32 [ %39, %58 ], [ %26, %.preheader4 ]
  %34 = phi i32 [ %40, %58 ], [ %27, %.preheader4 ]
  %35 = phi i32 [ %40, %58 ], [ %28, %.preheader4 ]
  %36 = phi i32 [ %41, %58 ], [ %30, %.preheader4 ]
  %37 = phi i32 [ %59, %58 ], [ 0, %.preheader4 ]
  store i32 %37, ptr %6, align 4
  %38 = icmp slt i32 %37, %35
  br i1 %38, label %.preheader2, label %60

.preheader2:                                      ; preds = %.preheader3, %56
  %39 = phi i32 [ %44, %56 ], [ %33, %.preheader3 ]
  %40 = phi i32 [ %44, %56 ], [ %34, %.preheader3 ]
  %41 = phi i32 [ %45, %56 ], [ %36, %.preheader3 ]
  %42 = phi i32 [ %57, %56 ], [ 0, %.preheader3 ]
  store i32 %42, ptr %7, align 4
  %43 = icmp slt i32 %42, %40
  br i1 %43, label %.preheader1, label %58

.preheader1:                                      ; preds = %.preheader2, %54
  %44 = phi i32 [ %17, %54 ], [ %39, %.preheader2 ]
  %45 = phi i32 [ %48, %54 ], [ %41, %.preheader2 ]
  %46 = phi i32 [ %55, %54 ], [ 0, %.preheader2 ]
  store i32 %46, ptr %8, align 4
  %47 = icmp slt i32 %46, %44
  br i1 %47, label %.preheader, label %56

.preheader:                                       ; preds = %.preheader1, %51
  %48 = phi i32 [ %52, %51 ], [ %45, %.preheader1 ]
  %49 = phi i32 [ %53, %51 ], [ 0, %.preheader1 ]
  store i32 %49, ptr %9, align 4
  %50 = icmp slt i32 %49, %17
  br i1 %50, label %51, label %54

51:                                               ; preds = %.preheader
  %52 = add nsw i32 %48, 1
  store i32 %52, ptr %10, align 4
  %53 = add nsw i32 %49, 1
  br label %.preheader, !llvm.loop !7

54:                                               ; preds = %.preheader
  %55 = add nsw i32 %46, 1
  br label %.preheader1, !llvm.loop !9

56:                                               ; preds = %.preheader1
  %57 = add nsw i32 %42, 1
  br label %.preheader2, !llvm.loop !10

58:                                               ; preds = %.preheader2
  %59 = add nsw i32 %37, 1
  br label %.preheader3, !llvm.loop !11

60:                                               ; preds = %.preheader3
  %61 = add nsw i32 %31, 1
  br label %.preheader4, !llvm.loop !12

62:                                               ; preds = %.preheader4
  %63 = add nsw i32 %24, 1
  br label %18, !llvm.loop !13

64:                                               ; preds = %18
  %65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %23) #2
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
