; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %49

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %45, %5
  %7 = phi i32 [ 0, %5 ], [ %47, %45 ]
  %exitcond1.not = icmp eq i32 %7, 3
  br i1 %exitcond1.not, label %48, label %8

8:                                                ; preds = %6
  %9 = lshr exact i32 40960000, %7
  %10 = lshr exact i32 5120000, %7
  %11 = or disjoint i32 %10, 4
  %12 = zext nneg i32 %11 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %12, i1 false)
  %umax = add nuw nsw i32 %9, 1
  br label %13

13:                                               ; preds = %42, %8
  %14 = phi i32 [ %43, %42 ], [ 0, %8 ]
  %15 = phi i32 [ %44, %42 ], [ 2, %8 ]
  %exitcond = icmp eq i32 %15, %umax
  br i1 %exitcond, label %45, label %16

16:                                               ; preds = %13
  %17 = lshr i32 %15, 5
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %15, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %20, %22
  %.not2 = icmp eq i32 %23, 0
  br i1 %.not2, label %42, label %24

24:                                               ; preds = %16
  %25 = shl nuw i32 %15, 1
  br label %26

26:                                               ; preds = %38, %24
  %27 = phi i32 [ %39, %38 ], [ %25, %24 ]
  %.not3 = icmp ugt i32 %27, %9
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
  %39 = add i32 %27, %15
  br label %26, !llvm.loop !7

40:                                               ; preds = %26
  %41 = add i32 %14, 1
  br label %42

42:                                               ; preds = %40, %16
  %43 = phi i32 [ %41, %40 ], [ %14, %16 ]
  %44 = add nuw nsw i32 %15, 1
  br label %13, !llvm.loop !9

45:                                               ; preds = %13
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9, i32 noundef %14) #6
  %47 = add nuw nsw i32 %7, 1
  br label %6, !llvm.loop !10

48:                                               ; preds = %6
  call void @free(ptr noundef nonnull %3) #6
  br label %49

49:                                               ; preds = %48, %4
  %50 = phi i32 [ 0, %48 ], [ 1, %4 ]
  ret i32 %50
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare dso_local i32 @printf(ptr noundef, ...) #3

declare dso_local void @free(ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

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
