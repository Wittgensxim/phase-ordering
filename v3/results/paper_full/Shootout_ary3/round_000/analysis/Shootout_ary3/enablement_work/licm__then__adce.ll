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
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %17, %13 ], [ 1500000, %18 ]
  store i32 %20, ptr %6, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = call ptr @calloc(i64 noundef %22, i64 noundef 4) #3
  store ptr %23, ptr %9, align 8
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = call ptr @calloc(i64 noundef %25, i64 noundef 4) #3
  store ptr %26, ptr %10, align 8
  store i32 0, ptr %7, align 4
  %27 = load i32, ptr %6, align 4
  %28 = load ptr, ptr %9, align 8
  %.promoted = load i32, ptr %7, align 4
  br label %29

29:                                               ; preds = %36, %19
  %30 = phi i32 [ %37, %36 ], [ %.promoted, %19 ]
  %31 = icmp slt i32 %30, %27
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = add nsw i32 %30, 1
  %34 = sext i32 %30 to i64
  %35 = getelementptr inbounds i32, ptr %28, i64 %34
  store i32 %33, ptr %35, align 4
  br label %36

36:                                               ; preds = %32
  %37 = add nsw i32 %30, 1
  br label %29, !llvm.loop !7

38:                                               ; preds = %29
  %.lcssa = phi i32 [ %30, %29 ]
  store i32 %.lcssa, ptr %7, align 4
  store i32 0, ptr %8, align 4
  %39 = load i32, ptr %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load ptr, ptr %9, align 8
  %42 = load ptr, ptr %10, align 8
  %.promoted3 = load i32, ptr %8, align 4
  %.promoted5 = load i32, ptr %7, align 4
  br label %43

43:                                               ; preds = %61, %38
  %.lcssa26 = phi i32 [ %.lcssa2, %61 ], [ %.promoted5, %38 ]
  %44 = phi i32 [ %62, %61 ], [ %.promoted3, %38 ]
  %45 = icmp slt i32 %44, 1000
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %58, %46
  %48 = phi i32 [ %59, %58 ], [ %40, %46 ]
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds i32, ptr %41, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = sext i32 %48 to i64
  %55 = getelementptr inbounds i32, ptr %42, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %50
  %59 = add nsw i32 %48, -1
  br label %47, !llvm.loop !9

60:                                               ; preds = %47
  %.lcssa2 = phi i32 [ %48, %47 ]
  br label %61

61:                                               ; preds = %60
  %62 = add nsw i32 %44, 1
  br label %43, !llvm.loop !10

63:                                               ; preds = %43
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %43 ]
  %.lcssa4 = phi i32 [ %44, %43 ]
  store i32 %.lcssa4, ptr %8, align 4
  store i32 %.lcssa26.lcssa, ptr %7, align 4
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i32, ptr %64, i64 0
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %10, align 8
  %68 = load i32, ptr %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %67, i64 %70
  %72 = load i32, ptr %71, align 4
  %73 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %66, i32 noundef %72)
  %74 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %74)
  %75 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %75)
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
