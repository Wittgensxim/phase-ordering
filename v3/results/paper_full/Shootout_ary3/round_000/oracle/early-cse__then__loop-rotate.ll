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
  %25 = load i32, ptr %7, align 4
  %26 = load i32, ptr %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %18
  br label %28

28:                                               ; preds = %.lr.ph, %34
  %29 = phi i32 [ %25, %.lr.ph ], [ %37, %34 ]
  %30 = add nsw i32 %29, 1
  %31 = load ptr, ptr %9, align 8
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds i32, ptr %31, i64 %32
  store i32 %30, ptr %33, align 4
  br label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %7, align 4
  %37 = load i32, ptr %7, align 4
  %38 = load i32, ptr %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %28, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %34
  br label %40

40:                                               ; preds = %._crit_edge, %18
  store i32 0, ptr %8, align 4
  %41 = load i32, ptr %8, align 4
  %42 = icmp slt i32 %41, 1000
  br i1 %42, label %.lr.ph5, label %69

.lr.ph5:                                          ; preds = %40
  br label %43

43:                                               ; preds = %.lr.ph5, %64
  %44 = load i32, ptr %6, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, ptr %7, align 4
  %46 = load i32, ptr %7, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %.lr.ph2, label %63

.lr.ph2:                                          ; preds = %43
  br label %48

48:                                               ; preds = %.lr.ph2, %58
  %49 = phi i32 [ %46, %.lr.ph2 ], [ %61, %58 ]
  %50 = load ptr, ptr %9, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, ptr %50, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i32, ptr %54, i64 %51
  %56 = load i32, ptr %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %48
  %59 = load i32, ptr %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %7, align 4
  %61 = load i32, ptr %7, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %48, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %58
  br label %63

63:                                               ; preds = %._crit_edge3, %43
  br label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %8, align 4
  %67 = load i32, ptr %8, align 4
  %68 = icmp slt i32 %67, 1000
  br i1 %68, label %43, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %64
  br label %69

69:                                               ; preds = %._crit_edge6, %40
  %70 = load ptr, ptr %10, align 8
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %6, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %70, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %71, i32 noundef %76)
  %78 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %78)
  %79 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %79)
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
