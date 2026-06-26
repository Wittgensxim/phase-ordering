; ModuleID = 'results\paper_full\Shootout_ary3\Shootout_ary3.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  %9 = icmp eq i32 %0, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @atoi(ptr noundef %13) #3
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %10
  %17 = phi i32 [ %14, %10 ], [ 1500000, %15 ]
  store i32 %17, ptr %4, align 4
  %18 = sext i32 %17 to i64
  %19 = call ptr @calloc(i64 noundef %18, i64 noundef 4) #4
  store ptr %19, ptr %7, align 8
  %20 = sext i32 %17 to i64
  %21 = call ptr @calloc(i64 noundef %20, i64 noundef 4) #4
  store ptr %21, ptr %8, align 8
  br label %22

22:                                               ; preds = %31, %16
  %storemerge = phi i32 [ 0, %16 ], [ %33, %31 ]
  store i32 %storemerge, ptr %5, align 4
  %23 = load i32, ptr %4, align 4
  %24 = icmp slt i32 %storemerge, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  %28 = load ptr, ptr %7, align 8
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %28, i64 %29
  store i32 %27, ptr %30, align 4
  br label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %5, align 4
  %33 = add nsw i32 %32, 1
  br label %22, !llvm.loop !7

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %55, %34
  %storemerge1 = phi i32 [ 0, %34 ], [ %57, %55 ]
  store i32 %storemerge1, ptr %6, align 4
  %36 = icmp slt i32 %storemerge1, 1000
  br i1 %36, label %37, label %58

37:                                               ; preds = %35
  %38 = load i32, ptr %4, align 4
  br label %39

39:                                               ; preds = %52, %37
  %storemerge2.in = phi i32 [ %38, %37 ], [ %53, %52 ]
  %storemerge2 = add nsw i32 %storemerge2.in, -1
  store i32 %storemerge2, ptr %5, align 4
  %40 = icmp sgt i32 %storemerge2.in, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = load ptr, ptr %7, align 8
  %43 = load i32, ptr %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i8], ptr %42, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %8, align 8
  %48 = sext i32 %43 to i64
  %49 = getelementptr inbounds [4 x i8], ptr %47, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = add nsw i32 %50, %46
  store i32 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %41
  %53 = load i32, ptr %5, align 4
  br label %39, !llvm.loop !9

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %6, align 4
  %57 = add nsw i32 %56, 1
  br label %35, !llvm.loop !10

58:                                               ; preds = %35
  %59 = load ptr, ptr %8, align 8
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr [4 x i8], ptr %59, i64 %62
  %64 = getelementptr i8, ptr %63, i64 -4
  %65 = load i32, ptr %64, align 4
  %66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %60, i32 noundef %65) #3
  %67 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %67) #3
  %68 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %68) #3
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
