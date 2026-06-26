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
  %13 = getelementptr inbounds nuw ptr, ptr %1, i64 1
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
  br label %22

22:                                               ; preds = %25, %17
  %23 = phi i32 [ %26, %25 ], [ 0, %17 ]
  %24 = icmp slt i32 %23, %18
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = add nsw i32 %23, 1
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds i32, ptr %20, i64 %27
  store i32 %26, ptr %28, align 4
  store i32 %26, ptr %7, align 4
  br label %22, !llvm.loop !7

29:                                               ; preds = %22
  store i32 0, ptr %8, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = phi ptr [ %39, %50 ], [ %20, %29 ]
  %32 = phi ptr [ %40, %50 ], [ %21, %29 ]
  %33 = phi i32 [ %51, %50 ], [ 0, %29 ]
  %34 = icmp slt i32 %33, 1000
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = sub nsw i32 %18, 1
  store i32 %36, ptr %7, align 4
  br label %37

37:                                               ; preds = %42, %35
  %38 = phi i32 [ %49, %42 ], [ %36, %35 ]
  %39 = phi ptr [ %20, %42 ], [ %31, %35 ]
  %40 = phi ptr [ %21, %42 ], [ %32, %35 ]
  %41 = icmp sge i32 %38, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = sext i32 %38 to i64
  %44 = getelementptr inbounds i32, ptr %20, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds i32, ptr %21, i64 %43
  %47 = load i32, ptr %46, align 4
  %48 = add nsw i32 %47, %45
  store i32 %48, ptr %46, align 4
  %49 = add nsw i32 %38, -1
  store i32 %49, ptr %7, align 4
  br label %37, !llvm.loop !9

50:                                               ; preds = %37
  %51 = add nsw i32 %33, 1
  store i32 %51, ptr %8, align 4
  br label %30, !llvm.loop !10

52:                                               ; preds = %30
  %53 = load i32, ptr %32, align 4
  %54 = sub nsw i32 %18, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %32, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %53, i32 noundef %57)
  call void @free(ptr noundef %31)
  %59 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %59)
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
