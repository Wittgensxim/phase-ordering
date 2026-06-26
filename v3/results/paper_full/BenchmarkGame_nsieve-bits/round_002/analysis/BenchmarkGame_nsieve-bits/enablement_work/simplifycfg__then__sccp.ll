; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %47, label %4

4:                                                ; preds = %2, %43
  %5 = phi i32 [ %45, %43 ], [ 0, %2 ]
  %6 = icmp samesign ult i32 %5, 3
  br i1 %6, label %7, label %46

7:                                                ; preds = %4
  %8 = lshr exact i32 40960000, %5
  %9 = lshr exact i32 5120000, %5
  %10 = or disjoint i32 %9, 4
  %11 = zext nneg i32 %10 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %40, %7
  %13 = phi i32 [ %41, %40 ], [ 0, %7 ]
  %14 = phi i32 [ %42, %40 ], [ 2, %7 ]
  %.not1 = icmp ugt i32 %14, %8
  br i1 %.not1, label %43, label %15

15:                                               ; preds = %12
  %16 = lshr i32 %14, 5
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %14, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %40, label %23

23:                                               ; preds = %15
  %24 = add i32 %13, 1
  %25 = shl nuw nsw i32 %14, 1
  br label %26

26:                                               ; preds = %38, %23
  %27 = phi i32 [ %39, %38 ], [ %25, %23 ]
  %.not3 = icmp ugt i32 %27, %8
  br i1 %.not3, label %40, label %28

28:                                               ; preds = %26
  %29 = lshr i32 %27, 5
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %27, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %32, %34
  %.not4 = icmp eq i32 %35, 0
  br i1 %.not4, label %38, label %36

36:                                               ; preds = %28
  %37 = xor i32 %32, %34
  store i32 %37, ptr %31, align 4
  br label %38

38:                                               ; preds = %36, %28
  %39 = add nuw nsw i32 %27, %14
  br label %26, !llvm.loop !7

40:                                               ; preds = %26, %15
  %41 = phi i32 [ %13, %15 ], [ %24, %26 ]
  %42 = add nuw nsw i32 %14, 1
  br label %12, !llvm.loop !9

43:                                               ; preds = %12
  %44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8, i32 noundef %13) #5
  %45 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !10

46:                                               ; preds = %4
  call void @free(ptr noundef nonnull %3) #5
  br label %47

47:                                               ; preds = %2, %46
  %48 = phi i32 [ 0, %46 ], [ 1, %2 ]
  ret i32 %48
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare dso_local i32 @printf(ptr noundef, ...) #3

declare dso_local void @free(ptr noundef) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
