; ModuleID = 'results\paper_full\Shootout_ary3\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @atoi(ptr noundef %7) #4
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ %8, %5 ], [ 1500000, %9 ]
  %12 = sext i32 %11 to i64
  %13 = call ptr @calloc(i64 noundef %12, i64 noundef 4) #5
  %14 = call ptr @calloc(i64 noundef %12, i64 noundef 4) #5
  store ptr %14, ptr %3, align 8
  %smax = call i32 @llvm.smax.i32(i32 %11, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %15

15:                                               ; preds = %16, %10
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %10 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %16, label %19

16:                                               ; preds = %15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv
  %18 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %18, ptr %17, align 4
  br label %15, !llvm.loop !7

19:                                               ; preds = %15
  %20 = sext i32 %11 to i64
  br label %21

21:                                               ; preds = %37, %19
  %22 = phi i32 [ 0, %19 ], [ %38, %37 ]
  %23 = icmp samesign ult i32 %22, 1000
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %27, %24
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %27 ], [ %20, %24 ]
  %26 = icmp sgt i64 %indvars.iv2, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, -1
  %28 = getelementptr inbounds [4 x i8], ptr %13, i64 %indvars.iv.next3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds [4 x i8], ptr %14, i64 %indvars.iv.next3
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, %29
  store i32 %32, ptr %30, align 4
  br label %25, !llvm.loop !9

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %39, %34
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %39 ], [ %20, %34 ]
  %36 = icmp sgt i64 %indvars.iv5, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  %38 = add nuw nsw i32 %22, 2
  br label %21, !llvm.loop !10

39:                                               ; preds = %35
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, -1
  %40 = getelementptr inbounds [4 x i8], ptr %13, i64 %indvars.iv.next6
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds [4 x i8], ptr %14, i64 %indvars.iv.next6
  %43 = load i32, ptr %42, align 4
  %44 = add nsw i32 %43, %41
  store i32 %44, ptr %42, align 4
  br label %35, !llvm.loop !9

45:                                               ; preds = %21
  %46 = load i32, ptr %14, align 4
  %47 = sext i32 %11 to i64
  %48 = getelementptr [4 x i8], ptr %14, i64 %47
  %49 = getelementptr i8, ptr %48, i64 -4
  %50 = load i32, ptr %49, align 4
  %51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %46, i32 noundef %50) #4
  call void @free(ptr noundef %13) #4
  %52 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %52) #4
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
