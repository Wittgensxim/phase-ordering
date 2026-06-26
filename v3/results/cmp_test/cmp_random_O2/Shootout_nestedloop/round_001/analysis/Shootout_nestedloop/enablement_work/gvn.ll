; ModuleID = 'results\cmp_test\cmp_random_O2\Shootout_nestedloop\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6)
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 46, %8 ]
  %11 = mul i32 %10, %10
  %12 = mul i32 %11, %11
  %13 = mul i32 %10, %12
  br label %14

14:                                               ; preds = %30, %9
  br i1 false, label %15, label %31

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %29, %15
  br i1 false, label %17, label %30

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %28, %17
  br i1 false, label %19, label %29

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %27, %19
  br i1 false, label %21, label %28

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %26, %21
  br i1 false, label %23, label %27

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %25, %23
  br i1 false, label %25, label %26

25:                                               ; preds = %24
  br label %24, !llvm.loop !7

26:                                               ; preds = %24
  br label %22, !llvm.loop !9

27:                                               ; preds = %22
  br label %20, !llvm.loop !10

28:                                               ; preds = %20
  br label %18, !llvm.loop !11

29:                                               ; preds = %18
  br label %16, !llvm.loop !12

30:                                               ; preds = %16
  br label %14, !llvm.loop !13

31:                                               ; preds = %14
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %32 = mul i32 %13, %smax
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %32)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
