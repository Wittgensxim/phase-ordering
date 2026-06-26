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
  store i32 0, ptr %5, align 4
  %22 = load i32, ptr %4, align 4
  %23 = icmp slt i32 0, %22
  br i1 %23, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %16
  br label %24

24:                                               ; preds = %.lr.ph, %30
  %25 = load i32, ptr %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = load ptr, ptr %7, align 8
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds [4 x i8], ptr %27, i64 %28
  store i32 %26, ptr %29, align 4
  br label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %5, align 4
  %33 = load i32, ptr %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %24, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %30
  br label %35

35:                                               ; preds = %._crit_edge, %16
  store i32 0, ptr %6, align 4
  br label %36

36:                                               ; preds = %35, %54
  %37 = load i32, ptr %4, align 4
  %storemerge23 = add nsw i32 %37, -1
  store i32 %storemerge23, ptr %5, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %.lr.ph5, label %53

.lr.ph5:                                          ; preds = %36
  br label %39

39:                                               ; preds = %.lr.ph5, %50
  %40 = load ptr, ptr %7, align 8
  %41 = load i32, ptr %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %40, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %8, align 8
  %46 = sext i32 %41 to i64
  %47 = getelementptr inbounds [4 x i8], ptr %45, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = add nsw i32 %48, %44
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i32, ptr %5, align 4
  %storemerge2 = add nsw i32 %51, -1
  store i32 %storemerge2, ptr %5, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %39, label %._crit_edge6, !llvm.loop !9

._crit_edge6:                                     ; preds = %50
  br label %53

53:                                               ; preds = %._crit_edge6, %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, ptr %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %6, align 4
  %57 = icmp slt i32 %56, 1000
  br i1 %57, label %36, label %58, !llvm.loop !10

58:                                               ; preds = %54
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
