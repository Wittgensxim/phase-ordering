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
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @atoi(ptr noundef %15)
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 1500000, %17 ]
  store i32 %19, ptr %6, align 4
  %20 = sext i32 %19 to i64
  %21 = call ptr @calloc(i64 noundef %20, i64 noundef 4) #3
  store ptr %21, ptr %9, align 8
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = call ptr @calloc(i64 noundef %23, i64 noundef 4) #3
  store ptr %24, ptr %10, align 8
  store i32 0, ptr %7, align 4
  %25 = load i32, ptr %6, align 4
  %26 = load ptr, ptr %9, align 8
  br label %27

27:                                               ; preds = %34, %18
  %28 = phi i32 [ %31, %34 ], [ 0, %18 ]
  %29 = icmp slt i32 %28, %25
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = add nsw i32 %28, 1
  %32 = sext i32 %28 to i64
  %33 = getelementptr inbounds i32, ptr %26, i64 %32
  store i32 %31, ptr %33, align 4
  br label %34

34:                                               ; preds = %30
  br label %27, !llvm.loop !7

35:                                               ; preds = %27
  store i32 %28, ptr %7, align 4
  store i32 0, ptr %8, align 4
  %36 = load i32, ptr %6, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load ptr, ptr %9, align 8
  %39 = load ptr, ptr %10, align 8
  %.promoted5 = load i32, ptr %7, align 4
  br label %40

40:                                               ; preds = %57, %35
  %.lcssa26 = phi i32 [ %45, %57 ], [ %.promoted5, %35 ]
  %41 = phi i32 [ %58, %57 ], [ 0, %35 ]
  %42 = icmp slt i32 %41, 1000
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %54, %43
  %45 = phi i32 [ %55, %54 ], [ %37, %43 ]
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds i32, ptr %38, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds i32, ptr %39, i64 %48
  %52 = load i32, ptr %51, align 4
  %53 = add nsw i32 %52, %50
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %47
  %55 = add nsw i32 %45, -1
  br label %44, !llvm.loop !9

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %41, 1
  br label %40, !llvm.loop !10

59:                                               ; preds = %40
  store i32 %41, ptr %8, align 4
  store i32 %.lcssa26, ptr %7, align 4
  %60 = load ptr, ptr %10, align 8
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %6, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %60, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %61, i32 noundef %66)
  %68 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %68)
  %69 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %69)
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
