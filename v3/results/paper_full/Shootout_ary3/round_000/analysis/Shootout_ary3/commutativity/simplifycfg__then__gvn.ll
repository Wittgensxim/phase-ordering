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
  br label %16

16:                                               ; preds = %2, %12
  %17 = phi i32 [ %15, %12 ], [ 1500000, %2 ]
  store i32 %17, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = call ptr @calloc(i64 noundef %18, i64 noundef 4) #3
  store ptr %19, ptr %9, align 8
  %20 = call ptr @calloc(i64 noundef %18, i64 noundef 4) #3
  store ptr %20, ptr %10, align 8
  store i32 0, ptr %7, align 4
  br label %21

21:                                               ; preds = %24, %16
  %22 = phi i32 [ %25, %24 ], [ 0, %16 ]
  %23 = icmp slt i32 %22, %17
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = add nsw i32 %22, 1
  %26 = sext i32 %22 to i64
  %27 = getelementptr inbounds i32, ptr %19, i64 %26
  store i32 %25, ptr %27, align 4
  store i32 %25, ptr %7, align 4
  br label %21, !llvm.loop !7

28:                                               ; preds = %21
  store i32 0, ptr %8, align 4
  br label %29

29:                                               ; preds = %49, %28
  %30 = phi ptr [ %38, %49 ], [ %19, %28 ]
  %31 = phi ptr [ %39, %49 ], [ %20, %28 ]
  %32 = phi i32 [ %50, %49 ], [ 0, %28 ]
  %33 = icmp slt i32 %32, 1000
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = sub nsw i32 %17, 1
  store i32 %35, ptr %7, align 4
  br label %36

36:                                               ; preds = %41, %34
  %37 = phi i32 [ %48, %41 ], [ %35, %34 ]
  %38 = phi ptr [ %19, %41 ], [ %30, %34 ]
  %39 = phi ptr [ %20, %41 ], [ %31, %34 ]
  %40 = icmp sge i32 %37, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = sext i32 %37 to i64
  %43 = getelementptr inbounds i32, ptr %19, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds i32, ptr %20, i64 %42
  %46 = load i32, ptr %45, align 4
  %47 = add nsw i32 %46, %44
  store i32 %47, ptr %45, align 4
  %48 = add nsw i32 %37, -1
  store i32 %48, ptr %7, align 4
  br label %36, !llvm.loop !9

49:                                               ; preds = %36
  %50 = add nsw i32 %32, 1
  store i32 %50, ptr %8, align 4
  br label %29, !llvm.loop !10

51:                                               ; preds = %29
  %52 = load i32, ptr %31, align 4
  %53 = sub nsw i32 %17, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %31, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %52, i32 noundef %56)
  call void @free(ptr noundef %30)
  %58 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %58)
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
