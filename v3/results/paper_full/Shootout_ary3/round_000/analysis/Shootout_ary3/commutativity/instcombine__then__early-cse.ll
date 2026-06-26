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
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @atoi(ptr noundef %12) #3
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ %13, %10 ], [ 1500000, %14 ]
  store i32 %16, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = call ptr @calloc(i64 noundef %17, i64 noundef 4) #4
  store ptr %18, ptr %7, align 8
  %19 = call ptr @calloc(i64 noundef %17, i64 noundef 4) #4
  store ptr %19, ptr %8, align 8
  br label %20

20:                                               ; preds = %28, %15
  %storemerge = phi i32 [ 0, %15 ], [ %30, %28 ]
  store i32 %storemerge, ptr %5, align 4
  %21 = load i32, ptr %4, align 4
  %22 = icmp slt i32 %storemerge, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = add nsw i32 %storemerge, 1
  %25 = load ptr, ptr %7, align 8
  %26 = sext i32 %storemerge to i64
  %27 = getelementptr inbounds [4 x i8], ptr %25, i64 %26
  store i32 %24, ptr %27, align 4
  br label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %5, align 4
  %30 = add nsw i32 %29, 1
  br label %20, !llvm.loop !7

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %50, %31
  %storemerge1 = phi i32 [ 0, %31 ], [ %52, %50 ]
  store i32 %storemerge1, ptr %6, align 4
  %33 = icmp slt i32 %storemerge1, 1000
  br i1 %33, label %34, label %53

34:                                               ; preds = %32
  %35 = load i32, ptr %4, align 4
  br label %36

36:                                               ; preds = %47, %34
  %storemerge2.in = phi i32 [ %35, %34 ], [ %48, %47 ]
  %storemerge2 = add nsw i32 %storemerge2.in, -1
  store i32 %storemerge2, ptr %5, align 4
  %37 = icmp sgt i32 %storemerge2.in, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %36
  %39 = load ptr, ptr %7, align 8
  %40 = sext i32 %storemerge2 to i64
  %41 = getelementptr inbounds [4 x i8], ptr %39, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds [4 x i8], ptr %43, i64 %40
  %45 = load i32, ptr %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %38
  %48 = load i32, ptr %5, align 4
  br label %36, !llvm.loop !9

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %6, align 4
  %52 = add nsw i32 %51, 1
  br label %32, !llvm.loop !10

53:                                               ; preds = %32
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
