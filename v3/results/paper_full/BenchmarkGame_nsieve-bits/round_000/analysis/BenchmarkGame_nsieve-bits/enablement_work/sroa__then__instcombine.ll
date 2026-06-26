; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
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
  br label %54

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %51, %5
  %.033 = phi i32 [ 0, %5 ], [ %52, %51 ]
  %7 = icmp samesign ult i32 %.033, 3
  br i1 %7, label %8, label %53

8:                                                ; preds = %6
  %9 = lshr exact i32 40960000, %.033
  %10 = lshr exact i32 5120000, %.033
  %11 = or disjoint i32 %10, 4
  %12 = zext nneg i32 %11 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %12, i1 false)
  br label %13

13:                                               ; preds = %47, %8
  %.032 = phi i32 [ 2, %8 ], [ %48, %47 ]
  %.030 = phi i32 [ 0, %8 ], [ %.1, %47 ]
  %.not34 = icmp ugt i32 %.032, %9
  br i1 %.not34, label %49, label %14

14:                                               ; preds = %13
  %15 = lshr i32 %.032, 5
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %.032, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %18, %20
  %.not35 = icmp eq i32 %21, 0
  br i1 %.not35, label %46, label %22

22:                                               ; preds = %14
  %23 = add i32 %.030, 1
  %24 = shl i32 %.032, 1
  br label %25

25:                                               ; preds = %43, %22
  %.031 = phi i32 [ %24, %22 ], [ %44, %43 ]
  %.not36 = icmp ugt i32 %.031, %9
  br i1 %.not36, label %45, label %26

26:                                               ; preds = %25
  %27 = lshr i32 %.031, 5
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %.031, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %30, %32
  %.not37 = icmp eq i32 %33, 0
  br i1 %.not37, label %42, label %34

34:                                               ; preds = %26
  %35 = and i32 %.031, 31
  %36 = shl nuw i32 1, %35
  %37 = lshr i32 %.031, 5
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, %36
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %34, %26
  br label %43

43:                                               ; preds = %42
  %44 = add i32 %.031, %.032
  br label %25, !llvm.loop !7

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45, %14
  %.1 = phi i32 [ %23, %45 ], [ %.030, %14 ]
  br label %47

47:                                               ; preds = %46
  %48 = add i32 %.032, 1
  br label %13, !llvm.loop !9

49:                                               ; preds = %13
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9, i32 noundef %.030) #5
  br label %51

51:                                               ; preds = %49
  %52 = add nuw nsw i32 %.033, 1
  br label %6, !llvm.loop !10

53:                                               ; preds = %6
  call void @free(ptr noundef nonnull %3) #5
  br label %54

54:                                               ; preds = %53, %4
  %.0 = phi i32 [ 0, %53 ], [ 1, %4 ]
  ret i32 %.0
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
