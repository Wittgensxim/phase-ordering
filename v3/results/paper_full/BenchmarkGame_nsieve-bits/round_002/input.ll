; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %50

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %46, %5
  %7 = phi i32 [ 0, %5 ], [ %48, %46 ]
  %8 = icmp samesign ult i32 %7, 3
  br i1 %8, label %9, label %49

9:                                                ; preds = %6
  %10 = lshr exact i32 40960000, %7
  %11 = lshr exact i32 5120000, %7
  %12 = or disjoint i32 %11, 4
  %13 = zext nneg i32 %12 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %13, i1 false)
  br label %14

14:                                               ; preds = %43, %9
  %15 = phi i32 [ %44, %43 ], [ 0, %9 ]
  %16 = phi i32 [ %45, %43 ], [ 2, %9 ]
  %.not1 = icmp ugt i32 %16, %10
  br i1 %.not1, label %46, label %17

17:                                               ; preds = %14
  %18 = lshr i32 %16, 5
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %16, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %43, label %25

25:                                               ; preds = %17
  %26 = add i32 %15, 1
  %27 = shl i32 %16, 1
  br label %28

28:                                               ; preds = %40, %25
  %29 = phi i32 [ %41, %40 ], [ %27, %25 ]
  %.not3 = icmp ugt i32 %29, %10
  br i1 %.not3, label %42, label %30

30:                                               ; preds = %28
  %31 = lshr i32 %29, 5
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %29, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %34, %36
  %.not4 = icmp eq i32 %37, 0
  br i1 %.not4, label %40, label %38

38:                                               ; preds = %30
  %39 = xor i32 %34, %36
  store i32 %39, ptr %33, align 4
  br label %40

40:                                               ; preds = %38, %30
  %41 = add i32 %29, %16
  br label %28, !llvm.loop !7

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %17
  %44 = phi i32 [ %26, %42 ], [ %15, %17 ]
  %45 = add i32 %16, 1
  br label %14, !llvm.loop !9

46:                                               ; preds = %14
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %10, i32 noundef %15) #5
  %48 = add nuw nsw i32 %7, 1
  br label %6, !llvm.loop !10

49:                                               ; preds = %6
  call void @free(ptr noundef nonnull %3) #5
  br label %50

50:                                               ; preds = %49, %4
  %51 = phi i32 [ 0, %49 ], [ 1, %4 ]
  ret i32 %51
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
