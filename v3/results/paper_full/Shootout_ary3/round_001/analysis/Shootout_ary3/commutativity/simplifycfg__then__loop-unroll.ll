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
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i32 [ %8, %5 ], [ 1500000, %2 ]
  %11 = sext i32 %10 to i64
  %12 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #4
  %13 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #4
  store ptr %13, ptr %3, align 8
  br label %14

14:                                               ; preds = %17, %9
  %15 = phi i32 [ %18, %17 ], [ 0, %9 ]
  %16 = icmp slt i32 %15, %10
  br i1 %16, label %17, label %.preheader1

.preheader1:                                      ; preds = %14
  br label %21

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %15, 1
  %19 = zext nneg i32 %15 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %19
  store i32 %18, ptr %20, align 4
  br label %14, !llvm.loop !7

21:                                               ; preds = %37, %.preheader1
  %22 = phi i32 [ 0, %.preheader1 ], [ %38, %37 ]
  %23 = icmp samesign ult i32 %22, 1000
  br i1 %23, label %.preheader, label %47

.preheader:                                       ; preds = %21
  br label %24

24:                                               ; preds = %.preheader, %26
  %.in = phi i32 [ %27, %26 ], [ %10, %.preheader ]
  %25 = icmp sgt i32 %.in, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %24
  %27 = add nsw i32 %.in, -1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8], ptr %12, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds [4 x i8], ptr %13, i64 %28
  %32 = load i32, ptr %31, align 4
  %33 = add nsw i32 %32, %30
  store i32 %33, ptr %31, align 4
  br label %24, !llvm.loop !9

34:                                               ; preds = %24
  br label %.preheader.1

.preheader.1:                                     ; preds = %34
  br label %35

35:                                               ; preds = %39, %.preheader.1
  %.in.1 = phi i32 [ %40, %39 ], [ %10, %.preheader.1 ]
  %36 = icmp sgt i32 %.in.1, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  %38 = add nuw nsw i32 %22, 2
  br label %21, !llvm.loop !10

39:                                               ; preds = %35
  %40 = add nsw i32 %.in.1, -1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i8], ptr %12, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds [4 x i8], ptr %13, i64 %41
  %45 = load i32, ptr %44, align 4
  %46 = add nsw i32 %45, %43
  store i32 %46, ptr %44, align 4
  br label %35, !llvm.loop !9

47:                                               ; preds = %21
  %48 = load i32, ptr %13, align 4
  %49 = sext i32 %10 to i64
  %50 = getelementptr [4 x i8], ptr %13, i64 %49
  %51 = getelementptr i8, ptr %50, i64 -4
  %52 = load i32, ptr %51, align 4
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %48, i32 noundef %52) #3
  call void @free(ptr noundef %12) #3
  %54 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %54) #3
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
