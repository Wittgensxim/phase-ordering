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
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ 46, %2 ]
  br label %10

10:                                               ; preds = %45, %8
  %11 = phi i32 [ %16, %45 ], [ 0, %8 ]
  %12 = phi i32 [ %46, %45 ], [ 0, %8 ]
  %13 = icmp slt i32 %12, %9
  br i1 %13, label %14, label %47

14:                                               ; preds = %10, %43
  %15 = phi i32 [ %44, %43 ], [ 0, %10 ]
  %16 = phi i32 [ %20, %43 ], [ %11, %10 ]
  %17 = icmp slt i32 %15, %9
  br i1 %17, label %18, label %45

18:                                               ; preds = %14, %41
  %19 = phi i32 [ %42, %41 ], [ 0, %14 ]
  %20 = phi i32 [ %24, %41 ], [ %16, %14 ]
  %21 = icmp slt i32 %19, %9
  br i1 %21, label %22, label %43

22:                                               ; preds = %18, %39
  %23 = phi i32 [ %40, %39 ], [ 0, %18 ]
  %24 = phi i32 [ %28, %39 ], [ %20, %18 ]
  %25 = icmp slt i32 %23, %9
  br i1 %25, label %26, label %41

26:                                               ; preds = %22, %37
  %27 = phi i32 [ %38, %37 ], [ 0, %22 ]
  %28 = phi i32 [ %32, %37 ], [ %24, %22 ]
  %29 = icmp slt i32 %27, %9
  br i1 %29, label %30, label %39

30:                                               ; preds = %26, %34
  %31 = phi i32 [ %36, %34 ], [ 0, %26 ]
  %32 = phi i32 [ %35, %34 ], [ %28, %26 ]
  %33 = icmp slt i32 %31, %9
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = add nsw i32 %32, 1
  %36 = add nuw nsw i32 %31, 1
  br label %30, !llvm.loop !7

37:                                               ; preds = %30
  %38 = add nuw nsw i32 %27, 1
  br label %26, !llvm.loop !9

39:                                               ; preds = %26
  %40 = add nuw nsw i32 %23, 1
  br label %22, !llvm.loop !10

41:                                               ; preds = %22
  %42 = add nuw nsw i32 %19, 1
  br label %18, !llvm.loop !11

43:                                               ; preds = %18
  %44 = add nuw nsw i32 %15, 1
  br label %14, !llvm.loop !12

45:                                               ; preds = %14
  %46 = add nuw nsw i32 %12, 1
  br label %10, !llvm.loop !13

47:                                               ; preds = %10
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %11) #2
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
