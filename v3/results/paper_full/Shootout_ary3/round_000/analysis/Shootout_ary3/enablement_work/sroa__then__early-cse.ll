; ModuleID = 'results\paper_full\Shootout_ary3\Shootout_ary3.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

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
  %10 = phi i32 [ %7, %4 ], [ 1500000, %8 ]
  %11 = sext i32 %10 to i64
  %12 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #3
  %13 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #3
  br label %14

14:                                               ; preds = %20, %9
  %.0 = phi i32 [ 0, %9 ], [ %17, %20 ]
  %15 = icmp slt i32 %.0, %10
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = add nsw i32 %.0, 1
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds i32, ptr %12, i64 %18
  store i32 %17, ptr %19, align 4
  br label %20

20:                                               ; preds = %16
  br label %14, !llvm.loop !7

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %38, %21
  %.023 = phi i32 [ 0, %21 ], [ %39, %38 ]
  %23 = icmp slt i32 %.023, 1000
  br i1 %23, label %24, label %40

24:                                               ; preds = %22
  %25 = sub nsw i32 %10, 1
  br label %26

26:                                               ; preds = %35, %24
  %.1 = phi i32 [ %25, %24 ], [ %36, %35 ]
  %27 = icmp sge i32 %.1, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = sext i32 %.1 to i64
  %30 = getelementptr inbounds i32, ptr %12, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds i32, ptr %13, i64 %29
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, %31
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %28
  %36 = add nsw i32 %.1, -1
  br label %26, !llvm.loop !9

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = add nsw i32 %.023, 1
  br label %22, !llvm.loop !10

40:                                               ; preds = %22
  %41 = load i32, ptr %13, align 4
  %42 = sub nsw i32 %10, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %13, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %41, i32 noundef %45)
  call void @free(ptr noundef %12)
  call void @free(ptr noundef %13)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i64 noundef, i64 noundef) #2

declare dso_local i32 @printf(ptr noundef, ...) #1

declare dso_local void @free(ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
