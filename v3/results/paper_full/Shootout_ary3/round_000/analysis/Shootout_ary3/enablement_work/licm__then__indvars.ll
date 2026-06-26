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
  %23 = call ptr @calloc(i64 noundef %22, i64 noundef 4) #4
  store ptr %23, ptr %9, align 8
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = call ptr @calloc(i64 noundef %25, i64 noundef 4) #4
  store ptr %26, ptr %10, align 8
  store i32 0, ptr %7, align 4
  %27 = load i32, ptr %6, align 4
  %28 = load ptr, ptr %9, align 8
  %.promoted = load i32, ptr %7, align 4
  %29 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %27)
  %wide.trip.count = sext i32 %smax to i64
  br label %30

30:                                               ; preds = %34, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %34 ], [ %29, %19 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %31, label %35

31:                                               ; preds = %30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %32 = getelementptr inbounds i32, ptr %28, i64 %indvars.iv
  %33 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %33, ptr %32, align 4
  br label %34

34:                                               ; preds = %31
  br label %30, !llvm.loop !7

35:                                               ; preds = %30
  %.lcssa.wide = phi i64 [ %indvars.iv, %30 ]
  %36 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %36, ptr %7, align 4
  store i32 0, ptr %8, align 4
  %37 = load i32, ptr %6, align 4
  %38 = sub i32 %37, 1
  %39 = load ptr, ptr %9, align 8
  %40 = load ptr, ptr %10, align 8
  %.promoted3 = load i32, ptr %8, align 4
  %.promoted5 = load i32, ptr %7, align 4
  %41 = sext i32 %38 to i64
  %smax11 = call i32 @llvm.smax.i32(i32 %.promoted3, i32 1000)
  br label %42

42:                                               ; preds = %56, %35
  %.lcssa26 = phi i32 [ %55, %56 ], [ %.promoted5, %35 ]
  %43 = phi i32 [ %57, %56 ], [ %.promoted3, %35 ]
  %exitcond12 = icmp ne i32 %43, %smax11
  br i1 %exitcond12, label %44, label %58

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %53, %44
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %53 ], [ %41, %44 ]
  %46 = icmp sge i64 %indvars.iv8, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds i32, ptr %39, i64 %indvars.iv8
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds i32, ptr %40, i64 %indvars.iv8
  %51 = load i32, ptr %50, align 4
  %52 = add nsw i32 %51, %49
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %47
  %indvars.iv.next9 = add nsw i64 %indvars.iv8, -1
  br label %45, !llvm.loop !9

54:                                               ; preds = %45
  %.lcssa2.wide = phi i64 [ %indvars.iv8, %45 ]
  %55 = trunc nsw i64 %.lcssa2.wide to i32
  br label %56

56:                                               ; preds = %54
  %57 = add i32 %43, 1
  br label %42, !llvm.loop !10

58:                                               ; preds = %42
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %42 ]
  store i32 %smax11, ptr %8, align 4
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { allocsize(0,1) }

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
