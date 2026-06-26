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
  br label %11

11:                                               ; preds = %51, %9
  %12 = phi i32 [ %18, %51 ], [ 0, %9 ]
  %13 = phi i32 [ %52, %51 ], [ 0, %9 ]
  %14 = icmp slt i32 %13, %10
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %49, %15
  %17 = phi i32 [ %50, %49 ], [ 0, %15 ]
  %18 = phi i32 [ %23, %49 ], [ %12, %15 ]
  %19 = icmp slt i32 %17, %10
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %47, %20
  %22 = phi i32 [ %48, %47 ], [ 0, %20 ]
  %23 = phi i32 [ %28, %47 ], [ %18, %20 ]
  %24 = icmp slt i32 %22, %10
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %45, %25
  %27 = phi i32 [ %46, %45 ], [ 0, %25 ]
  %28 = phi i32 [ %33, %45 ], [ %23, %25 ]
  %29 = icmp slt i32 %27, %10
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %43, %30
  %32 = phi i32 [ %44, %43 ], [ 0, %30 ]
  %33 = phi i32 [ %38, %43 ], [ %28, %30 ]
  %34 = icmp slt i32 %32, %10
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %40, %35
  %37 = phi i32 [ %42, %40 ], [ 0, %35 ]
  %38 = phi i32 [ %41, %40 ], [ %33, %35 ]
  %39 = icmp slt i32 %37, %10
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = add nsw i32 %38, 1
  %42 = add nuw nsw i32 %37, 1
  br label %36, !llvm.loop !7

43:                                               ; preds = %36
  %44 = add nuw nsw i32 %32, 1
  br label %31, !llvm.loop !9

45:                                               ; preds = %31
  %46 = add nuw nsw i32 %27, 1
  br label %26, !llvm.loop !10

47:                                               ; preds = %26
  %48 = add nuw nsw i32 %22, 1
  br label %21, !llvm.loop !11

49:                                               ; preds = %21
  %50 = add nuw nsw i32 %17, 1
  br label %16, !llvm.loop !12

51:                                               ; preds = %16
  %52 = add nuw nsw i32 %13, 1
  br label %11, !llvm.loop !13

53:                                               ; preds = %11
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %12) #2
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
