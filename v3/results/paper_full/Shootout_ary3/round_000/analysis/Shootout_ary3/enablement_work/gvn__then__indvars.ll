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
  %20 = call ptr @calloc(i64 noundef %19, i64 noundef 4) #4
  store ptr %20, ptr %9, align 8
  %21 = call ptr @calloc(i64 noundef %19, i64 noundef 4) #4
  store ptr %21, ptr %10, align 8
  store i32 0, ptr %7, align 4
  %smax = call i32 @llvm.smax.i32(i32 %18, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %22

22:                                               ; preds = %23, %17
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ 0, %17 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %23, label %27

23:                                               ; preds = %22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %24 = getelementptr inbounds i32, ptr %20, i64 %indvars.iv
  %25 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %25, ptr %24, align 4
  %26 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %26, ptr %7, align 4
  br label %22, !llvm.loop !7

27:                                               ; preds = %22
  store i32 0, ptr %8, align 4
  %28 = add i32 %18, -1
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %47, %27
  %31 = phi ptr [ %.lcssa1, %47 ], [ %20, %27 ]
  %32 = phi ptr [ %.lcssa, %47 ], [ %21, %27 ]
  %33 = phi i32 [ %48, %47 ], [ 0, %27 ]
  %exitcond8 = icmp ne i32 %33, 1000
  br i1 %exitcond8, label %34, label %49

34:                                               ; preds = %30
  %35 = sub nsw i32 %18, 1
  store i32 %35, ptr %7, align 4
  br label %36

36:                                               ; preds = %40, %34
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %40 ], [ %29, %34 ]
  %37 = phi ptr [ %20, %40 ], [ %31, %34 ]
  %38 = phi ptr [ %21, %40 ], [ %32, %34 ]
  %39 = icmp sge i64 %indvars.iv5, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = getelementptr inbounds i32, ptr %20, i64 %indvars.iv5
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds i32, ptr %21, i64 %indvars.iv5
  %44 = load i32, ptr %43, align 4
  %45 = add nsw i32 %44, %42
  store i32 %45, ptr %43, align 4
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, -1
  %46 = trunc nsw i64 %indvars.iv.next6 to i32
  store i32 %46, ptr %7, align 4
  br label %36, !llvm.loop !9

47:                                               ; preds = %36
  %.lcssa1 = phi ptr [ %37, %36 ]
  %.lcssa = phi ptr [ %38, %36 ]
  %48 = add nuw nsw i32 %33, 1
  store i32 %48, ptr %8, align 4
  br label %30, !llvm.loop !10

49:                                               ; preds = %30
  %.lcssa3 = phi ptr [ %31, %30 ]
  %.lcssa2 = phi ptr [ %32, %30 ]
  %50 = load i32, ptr %.lcssa2, align 4
  %51 = sub nsw i32 %18, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %.lcssa2, i64 %52
  %54 = load i32, ptr %53, align 4
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %50, i32 noundef %54)
  call void @free(ptr noundef %.lcssa3)
  %56 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %56)
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
