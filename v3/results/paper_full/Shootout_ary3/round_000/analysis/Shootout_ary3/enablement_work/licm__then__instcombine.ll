; ModuleID = 'results\paper_full\Shootout_ary3\Shootout_ary3.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @atoi(ptr noundef %11) #3
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i32 [ %12, %8 ], [ 1500000, %13 ]
  store i32 %15, ptr %4, align 4
  %16 = sext i32 %15 to i64
  %17 = call ptr @calloc(i64 noundef %16, i64 noundef 4) #4
  store ptr %17, ptr %5, align 8
  %18 = sext i32 %15 to i64
  %19 = call ptr @calloc(i64 noundef %18, i64 noundef 4) #4
  store ptr %19, ptr %6, align 8
  %20 = load i32, ptr %4, align 4
  br label %21

21:                                               ; preds = %28, %14
  %22 = phi i32 [ %29, %28 ], [ 0, %14 ]
  %23 = icmp slt i32 %22, %20
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = add nuw nsw i32 %22, 1
  %26 = zext nneg i32 %22 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %26
  store i32 %25, ptr %27, align 4
  br label %28

28:                                               ; preds = %24
  %29 = add nuw nsw i32 %22, 1
  br label %21, !llvm.loop !7

30:                                               ; preds = %21
  %31 = load i32, ptr %4, align 4
  %32 = load ptr, ptr %5, align 8
  %33 = load ptr, ptr %6, align 8
  br label %34

34:                                               ; preds = %51, %30
  %35 = phi i32 [ %52, %51 ], [ 0, %30 ]
  %36 = icmp samesign ult i32 %35, 1000
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %49, %37
  %.in = phi i32 [ %39, %49 ], [ %31, %37 ]
  %39 = add nsw i32 %.in, -1
  %40 = icmp sgt i32 %.in, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %32, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = sext i32 %39 to i64
  %46 = getelementptr inbounds [4 x i8], ptr %33, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %41
  br label %38, !llvm.loop !9

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %35, 1
  br label %34, !llvm.loop !10

53:                                               ; preds = %34
  %54 = load ptr, ptr %6, align 8
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr [4 x i8], ptr %54, i64 %57
  %59 = getelementptr i8, ptr %58, i64 -4
  %60 = load i32, ptr %59, align 4
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %55, i32 noundef %60) #3
  %62 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %62) #3
  %63 = load ptr, ptr %6, align 8
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
