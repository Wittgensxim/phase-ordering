; ModuleID = 'results\paper_full\Shootout_ary3\Shootout_ary3.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %11 = icmp eq i32 %0, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @atoi(ptr noundef %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 1500000, %16 ]
  store i32 %18, ptr %6, align 4
  %19 = sext i32 %18 to i64
  %20 = call ptr @calloc(i64 noundef %19, i64 noundef 4) #3
  store ptr %20, ptr %9, align 8
  %21 = call ptr @calloc(i64 noundef %19, i64 noundef 4) #3
  store ptr %21, ptr %10, align 8
  store i32 0, ptr %7, align 4
  %.promoted = load i32, ptr %7, align 1
  br label %22

22:                                               ; preds = %26, %17
  %23 = phi i32 [ %27, %26 ], [ %.promoted, %17 ]
  %24 = phi i32 [ %27, %26 ], [ 0, %17 ]
  %25 = icmp slt i32 %24, %18
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = add nsw i32 %24, 1
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds i32, ptr %20, i64 %28
  store i32 %27, ptr %29, align 4
  br label %22, !llvm.loop !7

30:                                               ; preds = %22
  %.lcssa4 = phi i32 [ %23, %22 ]
  store i32 %.lcssa4, ptr %7, align 1
  store i32 0, ptr %8, align 4
  %31 = sub nsw i32 %18, 1
  %.promoted7 = load i32, ptr %7, align 4
  br label %32

32:                                               ; preds = %53, %30
  %33 = phi i32 [ %54, %53 ], [ poison, %30 ]
  %.lcssa68 = phi i32 [ %.lcssa6, %53 ], [ %.promoted7, %30 ]
  %34 = phi ptr [ %.lcssa1, %53 ], [ %20, %30 ]
  %35 = phi ptr [ %.lcssa, %53 ], [ %21, %30 ]
  %36 = phi i32 [ %54, %53 ], [ 0, %30 ]
  %37 = icmp slt i32 %36, 1000
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %45, %38
  %40 = phi i32 [ %52, %45 ], [ %31, %38 ]
  %41 = phi i32 [ %52, %45 ], [ %31, %38 ]
  %42 = phi ptr [ %20, %45 ], [ %34, %38 ]
  %43 = phi ptr [ %21, %45 ], [ %35, %38 ]
  %44 = icmp sge i32 %41, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = sext i32 %41 to i64
  %47 = getelementptr inbounds i32, ptr %20, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds i32, ptr %21, i64 %46
  %50 = load i32, ptr %49, align 4
  %51 = add nsw i32 %50, %48
  store i32 %51, ptr %49, align 4
  %52 = add nsw i32 %41, -1
  br label %39, !llvm.loop !9

53:                                               ; preds = %39
  %.lcssa6 = phi i32 [ %40, %39 ]
  %.lcssa1 = phi ptr [ %42, %39 ]
  %.lcssa = phi ptr [ %43, %39 ]
  %54 = add nsw i32 %36, 1
  br label %32, !llvm.loop !10

55:                                               ; preds = %32
  %.lcssa9 = phi i32 [ %33, %32 ]
  %.lcssa68.lcssa = phi i32 [ %.lcssa68, %32 ]
  %.lcssa3 = phi ptr [ %34, %32 ]
  %.lcssa2 = phi ptr [ %35, %32 ]
  store i32 %.lcssa68.lcssa, ptr %7, align 4
  store i32 %.lcssa9, ptr %8, align 4
  %56 = load i32, ptr %.lcssa2, align 4
  %57 = sub nsw i32 %18, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %.lcssa2, i64 %58
  %60 = load i32, ptr %59, align 4
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %56, i32 noundef %60)
  call void @free(ptr noundef %.lcssa3)
  %62 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %62)
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
