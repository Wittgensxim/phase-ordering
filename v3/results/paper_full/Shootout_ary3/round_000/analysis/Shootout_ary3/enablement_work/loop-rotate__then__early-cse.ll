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
  %26 = icmp slt i32 0, %25
  br i1 %26, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %18
  br label %27

27:                                               ; preds = %.lr.ph, %33
  %28 = load i32, ptr %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = load ptr, ptr %9, align 8
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds i32, ptr %30, i64 %31
  store i32 %29, ptr %32, align 4
  br label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %7, align 4
  %36 = load i32, ptr %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %27, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %33
  br label %38

38:                                               ; preds = %._crit_edge, %18
  store i32 0, ptr %8, align 4
  br i1 true, label %.lr.ph5, label %62

.lr.ph5:                                          ; preds = %38
  br label %39

39:                                               ; preds = %.lr.ph5, %58
  %40 = load i32, ptr %6, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, ptr %7, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %.lr.ph2, label %57

.lr.ph2:                                          ; preds = %39
  br label %43

43:                                               ; preds = %.lr.ph2, %53
  %44 = load ptr, ptr %9, align 8
  %45 = load i32, ptr %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %44, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %10, align 8
  %50 = getelementptr inbounds i32, ptr %49, i64 %46
  %51 = load i32, ptr %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i32, ptr %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, ptr %7, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %43, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %53
  br label %57

57:                                               ; preds = %._crit_edge3, %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %8, align 4
  %61 = icmp slt i32 %60, 1000
  br i1 %61, label %39, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %58
  br label %62

62:                                               ; preds = %._crit_edge6, %38
  %63 = load ptr, ptr %10, align 8
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %6, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %63, i64 %67
  %69 = load i32, ptr %68, align 4
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %64, i32 noundef %69)
  %71 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %71)
  %72 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %72)
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
