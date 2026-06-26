; ModuleID = 'results\paper_full\Shootout_ary3\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6) #4
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 1500000, %8 ]
  %11 = sext i32 %10 to i64
  %12 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #5
  %13 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #5
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %14

14:                                               ; preds = %15, %9
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %9 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %15, label %18

15:                                               ; preds = %14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv
  %17 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %17, ptr %16, align 4
  br label %14, !llvm.loop !7

18:                                               ; preds = %14
  %19 = sext i32 %10 to i64
  br label %20

20:                                               ; preds = %35, %18
  %21 = phi i32 [ 0, %18 ], [ %36, %35 ]
  %exitcond5 = icmp ne i32 %21, 1000
  br i1 %exitcond5, label %22, label %43

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %25, %22
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %25 ], [ %19, %22 ]
  %24 = icmp sgt i64 %indvars.iv2, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, -1
  %26 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds [4 x i8], ptr %13, i64 %indvars.iv.next3
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, %27
  store i32 %30, ptr %28, align 4
  br label %23, !llvm.loop !9

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %37, %32
  %indvars.iv2.1 = phi i64 [ %indvars.iv.next3.1, %37 ], [ %19, %32 ]
  %34 = icmp sgt i64 %indvars.iv2.1, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = add nuw nsw i32 %21, 2
  br label %20, !llvm.loop !10

37:                                               ; preds = %33
  %indvars.iv.next3.1 = add nsw i64 %indvars.iv2.1, -1
  %38 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds [4 x i8], ptr %13, i64 %indvars.iv.next3.1
  %41 = load i32, ptr %40, align 4
  %42 = add nsw i32 %41, %39
  store i32 %42, ptr %40, align 4
  br label %33, !llvm.loop !9

43:                                               ; preds = %20
  %44 = load i32, ptr %13, align 4
  %45 = getelementptr [4 x i8], ptr %13, i64 %11
  %46 = getelementptr i8, ptr %45, i64 -4
  %47 = load i32, ptr %46, align 4
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %44, i32 noundef %47) #4
  call void @free(ptr noundef %12) #4
  call void @free(ptr noundef nonnull %13) #4
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
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0,1) }

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
