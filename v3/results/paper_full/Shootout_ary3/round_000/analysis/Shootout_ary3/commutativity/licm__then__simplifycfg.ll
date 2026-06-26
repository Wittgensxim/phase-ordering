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
  %11 = load i32, ptr %4, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @atoi(ptr noundef %16)
  br label %18

18:                                               ; preds = %2, %13
  %19 = phi i32 [ %17, %13 ], [ 1500000, %2 ]
  store i32 %19, ptr %6, align 4
  %20 = load i32, ptr %6, align 4
  %21 = sext i32 %20 to i64
  %22 = call ptr @calloc(i64 noundef %21, i64 noundef 4) #3
  store ptr %22, ptr %9, align 8
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = call ptr @calloc(i64 noundef %24, i64 noundef 4) #3
  store ptr %25, ptr %10, align 8
  store i32 0, ptr %7, align 4
  %26 = load i32, ptr %6, align 4
  %27 = load ptr, ptr %9, align 8
  %.promoted = load i32, ptr %7, align 4
  br label %28

28:                                               ; preds = %31, %18
  %29 = phi i32 [ %35, %31 ], [ %.promoted, %18 ]
  %30 = icmp slt i32 %29, %26
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = add nsw i32 %29, 1
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds i32, ptr %27, i64 %33
  store i32 %32, ptr %34, align 4
  %35 = add nsw i32 %29, 1
  br label %28, !llvm.loop !7

36:                                               ; preds = %28
  %.lcssa = phi i32 [ %29, %28 ]
  store i32 %.lcssa, ptr %7, align 4
  store i32 0, ptr %8, align 4
  %37 = load i32, ptr %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load ptr, ptr %9, align 8
  %40 = load ptr, ptr %10, align 8
  %.promoted3 = load i32, ptr %8, align 4
  %.promoted5 = load i32, ptr %7, align 4
  br label %41

41:                                               ; preds = %56, %36
  %.lcssa26 = phi i32 [ %.lcssa2, %56 ], [ %.promoted5, %36 ]
  %42 = phi i32 [ %57, %56 ], [ %.promoted3, %36 ]
  %43 = icmp slt i32 %42, 1000
  br i1 %43, label %44, label %58

44:                                               ; preds = %41, %47
  %45 = phi i32 [ %55, %47 ], [ %38, %41 ]
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds i32, ptr %39, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = sext i32 %45 to i64
  %52 = getelementptr inbounds i32, ptr %40, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, ptr %52, align 4
  %55 = add nsw i32 %45, -1
  br label %44, !llvm.loop !9

56:                                               ; preds = %44
  %.lcssa2 = phi i32 [ %45, %44 ]
  %57 = add nsw i32 %42, 1
  br label %41, !llvm.loop !10

58:                                               ; preds = %41
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %41 ]
  %.lcssa4 = phi i32 [ %42, %41 ]
  store i32 %.lcssa4, ptr %8, align 4
  store i32 %.lcssa26.lcssa, ptr %7, align 4
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i32, ptr %59, i64 0
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %10, align 8
  %63 = load i32, ptr %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %62, i64 %65
  %67 = load i32, ptr %66, align 4
  %68 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %61, i32 noundef %67)
  %69 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %69)
  %70 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %70)
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
