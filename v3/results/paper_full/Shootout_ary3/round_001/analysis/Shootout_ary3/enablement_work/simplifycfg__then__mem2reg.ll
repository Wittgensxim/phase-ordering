; ModuleID = 'results\paper_full\Shootout_ary3\round_000\output.ll'
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
  %7 = call i32 @atoi(ptr noundef %6) #3
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ 1500000, %2 ]
  %10 = sext i32 %9 to i64
  %11 = call ptr @calloc(i64 noundef %10, i64 noundef 4) #4
  %12 = call ptr @calloc(i64 noundef %10, i64 noundef 4) #4
  br label %13

13:                                               ; preds = %16, %8
  %14 = phi i32 [ %17, %16 ], [ 0, %8 ]
  %15 = icmp slt i32 %14, %9
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = add nuw nsw i32 %14, 1
  %18 = zext nneg i32 %14 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %18
  store i32 %17, ptr %19, align 4
  br label %13, !llvm.loop !7

20:                                               ; preds = %13, %33
  %21 = phi i32 [ %34, %33 ], [ 0, %13 ]
  %22 = icmp samesign ult i32 %21, 1000
  br i1 %22, label %23, label %35

23:                                               ; preds = %20, %25
  %.in = phi i32 [ %26, %25 ], [ %9, %20 ]
  %24 = icmp sgt i32 %.in, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = add nsw i32 %.in, -1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %11, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds [4 x i8], ptr %12, i64 %27
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, %29
  store i32 %32, ptr %30, align 4
  br label %23, !llvm.loop !9

33:                                               ; preds = %23
  %34 = add nuw nsw i32 %21, 1
  br label %20, !llvm.loop !10

35:                                               ; preds = %20
  %36 = load i32, ptr %12, align 4
  %37 = sext i32 %9 to i64
  %38 = getelementptr [4 x i8], ptr %12, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -4
  %40 = load i32, ptr %39, align 4
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %36, i32 noundef %40) #3
  call void @free(ptr noundef %11) #3
  call void @free(ptr noundef %12) #3
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
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(0,1) }

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
