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
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ 1500000, %2 ]
  %10 = sext i32 %9 to i64
  %11 = call ptr @calloc(i64 noundef %10, i64 noundef 4) #3
  %12 = sext i32 %9 to i64
  %13 = call ptr @calloc(i64 noundef %12, i64 noundef 4) #3
  br label %14

14:                                               ; preds = %16, %8
  %.0 = phi i32 [ 0, %8 ], [ %20, %16 ]
  %15 = icmp slt i32 %.0, %9
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = add nsw i32 %.0, 1
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds i32, ptr %11, i64 %18
  store i32 %17, ptr %19, align 4
  %20 = add nsw i32 %.0, 1
  br label %14, !llvm.loop !7

21:                                               ; preds = %14, %36
  %.023 = phi i32 [ %37, %36 ], [ 0, %14 ]
  %22 = icmp slt i32 %.023, 1000
  br i1 %22, label %23, label %38

23:                                               ; preds = %21
  %24 = sub nsw i32 %9, 1
  br label %25

25:                                               ; preds = %27, %23
  %.1 = phi i32 [ %24, %23 ], [ %35, %27 ]
  %26 = icmp sge i32 %.1, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %25
  %28 = sext i32 %.1 to i64
  %29 = getelementptr inbounds i32, ptr %11, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %.1 to i64
  %32 = getelementptr inbounds i32, ptr %13, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, ptr %32, align 4
  %35 = add nsw i32 %.1, -1
  br label %25, !llvm.loop !9

36:                                               ; preds = %25
  %37 = add nsw i32 %.023, 1
  br label %21, !llvm.loop !10

38:                                               ; preds = %21
  %39 = getelementptr inbounds i32, ptr %13, i64 0
  %40 = load i32, ptr %39, align 4
  %41 = sub nsw i32 %9, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %13, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %40, i32 noundef %44)
  call void @free(ptr noundef %11)
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
