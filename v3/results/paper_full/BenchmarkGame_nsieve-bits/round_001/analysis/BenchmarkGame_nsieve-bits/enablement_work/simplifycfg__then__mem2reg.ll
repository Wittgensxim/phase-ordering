; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %46, label %4

4:                                                ; preds = %2, %42
  %storemerge = phi i32 [ %44, %42 ], [ 0, %2 ]
  %5 = icmp ult i32 %storemerge, 3
  br i1 %5, label %6, label %45

6:                                                ; preds = %4
  %7 = lshr exact i32 40960000, %storemerge
  %8 = lshr exact i32 5120000, %storemerge
  %9 = or disjoint i32 %8, 4
  %10 = zext nneg i32 %9 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %10, i1 false)
  br label %11

11:                                               ; preds = %40, %6
  %.0 = phi i32 [ 0, %6 ], [ %.1, %40 ]
  %12 = phi i32 [ %41, %40 ], [ 2, %6 ]
  %.not1 = icmp ugt i32 %12, %7
  br i1 %.not1, label %42, label %13

13:                                               ; preds = %11
  %14 = lshr i32 %12, 5
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %12, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %17, %19
  %.not2 = icmp eq i32 %20, 0
  br i1 %.not2, label %40, label %21

21:                                               ; preds = %13
  %22 = add i32 %.0, 1
  %23 = shl i32 %12, 1
  br label %24

24:                                               ; preds = %38, %21
  %25 = phi i32 [ %39, %38 ], [ %23, %21 ]
  %.not3 = icmp ugt i32 %25, %7
  br i1 %.not3, label %40, label %26

26:                                               ; preds = %24
  %27 = lshr i32 %25, 5
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %25, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %30, %32
  %.not4 = icmp eq i32 %33, 0
  br i1 %.not4, label %38, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %28
  %36 = load i32, ptr %35, align 4
  %37 = xor i32 %36, %32
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %26
  %39 = add i32 %25, %12
  br label %24, !llvm.loop !7

40:                                               ; preds = %24, %13
  %.1 = phi i32 [ %.0, %13 ], [ %22, %24 ]
  %41 = add i32 %12, 1
  br label %11, !llvm.loop !9

42:                                               ; preds = %11
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7, i32 noundef %.0) #5
  %44 = add i32 %storemerge, 1
  br label %4, !llvm.loop !10

45:                                               ; preds = %4
  call void @free(ptr noundef nonnull %3) #5
  br label %46

46:                                               ; preds = %2, %45
  %47 = phi i32 [ 0, %45 ], [ 1, %2 ]
  ret i32 %47
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
