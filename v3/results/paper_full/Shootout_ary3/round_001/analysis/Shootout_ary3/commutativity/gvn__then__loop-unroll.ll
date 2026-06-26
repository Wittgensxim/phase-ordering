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
  %8 = call i32 @atoi(ptr noundef %7) #3
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ %8, %5 ], [ 1500000, %9 ]
  %12 = sext i32 %11 to i64
  %13 = call ptr @calloc(i64 noundef %12, i64 noundef 4) #4
  %14 = call ptr @calloc(i64 noundef %12, i64 noundef 4) #4
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %18, %10
  %16 = phi i32 [ %19, %18 ], [ 0, %10 ]
  %17 = icmp slt i32 %16, %11
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = add nuw nsw i32 %16, 1
  %20 = zext nneg i32 %16 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %20
  store i32 %19, ptr %21, align 4
  br label %15, !llvm.loop !7

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %41, %22
  %24 = phi i32 [ 0, %22 ], [ %42, %41 ]
  %25 = icmp samesign ult i32 %24, 1000
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %29, %26
  %.in = phi i32 [ %30, %29 ], [ %11, %26 ]
  %28 = icmp sgt i32 %.in, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %27
  %30 = add nsw i32 %.in, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr %13, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds [4 x i8], ptr %14, i64 %31
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %35, %33
  store i32 %36, ptr %34, align 4
  br label %27, !llvm.loop !9

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %43, %38
  %.in.1 = phi i32 [ %44, %43 ], [ %11, %38 ]
  %40 = icmp sgt i32 %.in.1, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = add nuw nsw i32 %24, 2
  br label %23, !llvm.loop !10

43:                                               ; preds = %39
  %44 = add nsw i32 %.in.1, -1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i8], ptr %13, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds [4 x i8], ptr %14, i64 %45
  %49 = load i32, ptr %48, align 4
  %50 = add nsw i32 %49, %47
  store i32 %50, ptr %48, align 4
  br label %39, !llvm.loop !9

51:                                               ; preds = %23
  %52 = load i32, ptr %14, align 4
  %53 = getelementptr [4 x i8], ptr %14, i64 %12
  %54 = getelementptr i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 4
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %52, i32 noundef %55) #3
  call void @free(ptr noundef %13) #3
  call void @free(ptr noundef %14) #3
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
