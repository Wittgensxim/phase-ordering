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

20:                                               ; preds = %23, %15
  %21 = phi i32 [ 0, %15 ], [ %24, %23 ]
  store i32 %21, ptr %5, align 4
  %22 = icmp slt i32 %21, %16
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = add nsw i32 %21, 1
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds [4 x i8], ptr %18, i64 %25
  store i32 %24, ptr %26, align 4
  br label %20, !llvm.loop !7

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %45, %27
  %29 = phi ptr [ %18, %27 ], [ %35, %45 ]
  %30 = phi ptr [ %19, %27 ], [ %36, %45 ]
  %31 = phi i32 [ 0, %27 ], [ %46, %45 ]
  store i32 %31, ptr %6, align 4
  %32 = icmp slt i32 %31, 1000
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %38, %33
  %35 = phi ptr [ %29, %33 ], [ %18, %38 ]
  %36 = phi ptr [ %30, %33 ], [ %19, %38 ]
  %storemerge2.in = phi i32 [ %16, %33 ], [ %storemerge2, %38 ]
  %storemerge2 = add nsw i32 %storemerge2.in, -1
  store i32 %storemerge2, ptr %5, align 4
  %37 = icmp sgt i32 %storemerge2.in, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = sext i32 %storemerge2 to i64
  %40 = getelementptr inbounds [4 x i8], ptr %18, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds [4 x i8], ptr %19, i64 %39
  %43 = load i32, ptr %42, align 4
  %44 = add nsw i32 %43, %41
  store i32 %44, ptr %42, align 4
  br label %34, !llvm.loop !9

45:                                               ; preds = %34
  %46 = add nsw i32 %31, 1
  br label %28, !llvm.loop !10

47:                                               ; preds = %28
  %48 = load i32, ptr %30, align 4
  %49 = getelementptr [4 x i8], ptr %30, i64 %17
  %50 = getelementptr i8, ptr %49, i64 -4
  %51 = load i32, ptr %50, align 4
  %52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %48, i32 noundef %51) #3
  call void @free(ptr noundef %29) #3
  %53 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %53) #3
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
