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
  %23 = icmp sgt i32 %22, 0
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
  br i1 true, label %.lr.ph5, label %60

.lr.ph5:                                          ; preds = %35
  br label %36

36:                                               ; preds = %.lr.ph5, %56
  %37 = load i32, ptr %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %5, align 4
  %39 = icmp sgt i32 %37, 0
  br i1 %39, label %.lr.ph2, label %55

.lr.ph2:                                          ; preds = %36
  br label %40

40:                                               ; preds = %.lr.ph2, %51
  %41 = load ptr, ptr %7, align 8
  %42 = load i32, ptr %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8], ptr %41, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %8, align 8
  %47 = sext i32 %42 to i64
  %48 = getelementptr inbounds [4 x i8], ptr %46, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = add nsw i32 %49, %45
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %40
  %52 = load i32, ptr %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr %5, align 4
  %54 = icmp sgt i32 %52, 0
  br i1 %54, label %40, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %51
  br label %55

55:                                               ; preds = %._crit_edge3, %36
  br label %56

56:                                               ; preds = %55
  %57 = load i32, ptr %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %6, align 4
  %59 = icmp slt i32 %57, 999
  br i1 %59, label %36, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %56
  br label %60

60:                                               ; preds = %._crit_edge6, %35
  %61 = load ptr, ptr %8, align 8
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr [4 x i8], ptr %61, i64 %64
  %66 = getelementptr i8, ptr %65, i64 -4
  %67 = load i32, ptr %66, align 4
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %62, i32 noundef %67) #3
  %69 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %69) #3
  %70 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %70) #3
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
