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
  %12 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #4
  %13 = sext i32 %10 to i64
  %14 = call ptr @calloc(i64 noundef %13, i64 noundef 4) #4
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %15

15:                                               ; preds = %19, %9
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 0, %9 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %16, label %20

16:                                               ; preds = %15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = getelementptr inbounds i32, ptr %12, i64 %indvars.iv
  %18 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %18, ptr %17, align 4
  br label %19

19:                                               ; preds = %16
  br label %15, !llvm.loop !7

20:                                               ; preds = %15
  %21 = add i32 %10, -1
  %22 = sext i32 %21 to i64
  br label %23

23:                                               ; preds = %35, %20
  %.0 = phi i32 [ 0, %20 ], [ %36, %35 ]
  %exitcond6 = icmp ne i32 %.0, 1000
  br i1 %exitcond6, label %24, label %37

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %33, %24
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %33 ], [ %22, %24 ]
  %26 = icmp sge i64 %indvars.iv3, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = getelementptr inbounds i32, ptr %12, i64 %indvars.iv3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds i32, ptr %14, i64 %indvars.iv3
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, %29
  store i32 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %27
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, -1
  br label %25, !llvm.loop !9

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = add nuw nsw i32 %.0, 1
  br label %23, !llvm.loop !10

37:                                               ; preds = %23
  %38 = getelementptr inbounds i32, ptr %14, i64 0
  %39 = load i32, ptr %38, align 4
  %40 = sub nsw i32 %10, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %14, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %39, i32 noundef %43)
  call void @free(ptr noundef %12)
  call void @free(ptr noundef %14)
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
