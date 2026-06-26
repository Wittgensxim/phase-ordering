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

14:                                               ; preds = %17, %9
  %15 = phi i32 [ %18, %17 ], [ 0, %9 ]
  %16 = icmp slt i32 %15, %10
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = add nsw i32 %15, 1
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds i32, ptr %12, i64 %19
  store i32 %18, ptr %20, align 4
  br label %14, !llvm.loop !7

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %42, %21
  %23 = phi ptr [ %31, %42 ], [ %12, %21 ]
  %24 = phi ptr [ %32, %42 ], [ %13, %21 ]
  %25 = phi i32 [ %43, %42 ], [ 0, %21 ]
  %26 = icmp slt i32 %25, 1000
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = sub nsw i32 %10, 1
  br label %29

29:                                               ; preds = %34, %27
  %30 = phi i32 [ %41, %34 ], [ %28, %27 ]
  %31 = phi ptr [ %12, %34 ], [ %23, %27 ]
  %32 = phi ptr [ %13, %34 ], [ %24, %27 ]
  %33 = icmp sge i32 %30, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = sext i32 %30 to i64
  %36 = getelementptr inbounds i32, ptr %12, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds i32, ptr %13, i64 %35
  %39 = load i32, ptr %38, align 4
  %40 = add nsw i32 %39, %37
  store i32 %40, ptr %38, align 4
  %41 = add nsw i32 %30, -1
  br label %29, !llvm.loop !9

42:                                               ; preds = %29
  %43 = add nsw i32 %25, 1
  br label %22, !llvm.loop !10

44:                                               ; preds = %22
  %45 = load i32, ptr %24, align 4
  %46 = sub nsw i32 %10, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %24, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %45, i32 noundef %49)
  call void @free(ptr noundef %23)
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
