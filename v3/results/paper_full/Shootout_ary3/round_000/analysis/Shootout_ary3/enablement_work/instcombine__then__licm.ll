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
  %22 = load i32, ptr %4, align 4
  %23 = load ptr, ptr %7, align 8
  br label %24

24:                                               ; preds = %30, %16
  %storemerge = phi i32 [ 0, %16 ], [ %31, %30 ]
  %25 = icmp slt i32 %storemerge, %22
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = add nsw i32 %storemerge, 1
  %28 = sext i32 %storemerge to i64
  %29 = getelementptr inbounds [4 x i8], ptr %23, i64 %28
  store i32 %27, ptr %29, align 4
  br label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %storemerge, 1
  br label %24, !llvm.loop !7

32:                                               ; preds = %24
  %storemerge.lcssa = phi i32 [ %storemerge, %24 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %33 = load i32, ptr %4, align 4
  %34 = load ptr, ptr %7, align 8
  %35 = load ptr, ptr %8, align 8
  br label %36

36:                                               ; preds = %51, %32
  %storemerge2.lcssa3 = phi i32 [ poison, %32 ], [ %storemerge2.lcssa, %51 ]
  %storemerge1 = phi i32 [ 0, %32 ], [ %52, %51 ]
  %37 = icmp slt i32 %storemerge1, 1000
  br i1 %37, label %38, label %53

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %49, %38
  %storemerge2.in = phi i32 [ %33, %38 ], [ %storemerge2, %49 ]
  %storemerge2 = add nsw i32 %storemerge2.in, -1
  %40 = icmp sgt i32 %storemerge2.in, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = sext i32 %storemerge2 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %34, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = sext i32 %storemerge2 to i64
  %46 = getelementptr inbounds [4 x i8], ptr %35, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %41
  br label %39, !llvm.loop !9

50:                                               ; preds = %39
  %storemerge2.lcssa = phi i32 [ %storemerge2, %39 ]
  br label %51

51:                                               ; preds = %50
  %52 = add nsw i32 %storemerge1, 1
  br label %36, !llvm.loop !10

53:                                               ; preds = %36
  %storemerge2.lcssa3.lcssa = phi i32 [ %storemerge2.lcssa3, %36 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %36 ]
  store i32 %storemerge1.lcssa, ptr %6, align 4
  store i32 %storemerge2.lcssa3.lcssa, ptr %5, align 4
  %54 = load ptr, ptr %8, align 8
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr [4 x i8], ptr %54, i64 %57
  %59 = getelementptr i8, ptr %58, i64 -4
  %60 = load i32, ptr %59, align 4
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %55, i32 noundef %60) #3
  %62 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %62) #3
  %63 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %63) #3
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
