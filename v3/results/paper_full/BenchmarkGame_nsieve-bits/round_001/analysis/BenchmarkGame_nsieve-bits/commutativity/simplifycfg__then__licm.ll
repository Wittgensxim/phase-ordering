; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %50, label %.preheader

.preheader:                                       ; preds = %2
  %.promoted2 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %.preheader, %46
  %.lcssa3 = phi i32 [ %.lcssa, %46 ], [ %.promoted2, %.preheader ]
  %storemerge = phi i32 [ %48, %46 ], [ 0, %.preheader ]
  %7 = icmp ult i32 %storemerge, 3
  br i1 %7, label %8, label %49

8:                                                ; preds = %6
  %9 = lshr exact i32 40960000, %storemerge
  %10 = lshr exact i32 5120000, %storemerge
  %11 = or disjoint i32 %10, 4
  %12 = zext nneg i32 %11 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 -1, i64 %12, i1 false)
  br label %13

13:                                               ; preds = %43, %8
  %14 = phi i32 [ %44, %43 ], [ 0, %8 ]
  %15 = phi i32 [ %45, %43 ], [ 2, %8 ]
  %.not1 = icmp ugt i32 %15, %9
  br i1 %.not1, label %46, label %16

16:                                               ; preds = %13
  %17 = lshr i32 %15, 5
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %15, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %20, %22
  %.not2 = icmp eq i32 %23, 0
  br i1 %.not2, label %43, label %24

24:                                               ; preds = %16
  %25 = add i32 %14, 1
  %26 = shl i32 %15, 1
  br label %27

27:                                               ; preds = %41, %24
  %28 = phi i32 [ %42, %41 ], [ %26, %24 ]
  %.not3 = icmp ugt i32 %28, %9
  br i1 %.not3, label %.loopexit, label %29

29:                                               ; preds = %27
  %30 = lshr i32 %28, 5
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %28, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %33, %35
  %.not4 = icmp eq i32 %36, 0
  br i1 %.not4, label %41, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %31
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, %35
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = add i32 %28, %15
  br label %27, !llvm.loop !7

.loopexit:                                        ; preds = %27
  br label %43

43:                                               ; preds = %.loopexit, %16
  %44 = phi i32 [ %25, %.loopexit ], [ %14, %16 ]
  %45 = add i32 %15, 1
  br label %13, !llvm.loop !9

46:                                               ; preds = %13
  %.lcssa = phi i32 [ %14, %13 ]
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9, i32 noundef %.lcssa) #5
  %48 = add i32 %storemerge, 1
  br label %6, !llvm.loop !10

49:                                               ; preds = %6
  %.lcssa3.lcssa = phi i32 [ %.lcssa3, %6 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %6 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %.lcssa3.lcssa, ptr %4, align 4
  call void @free(ptr noundef nonnull %5) #5
  br label %50

50:                                               ; preds = %2, %49
  %51 = phi i32 [ 0, %49 ], [ 1, %2 ]
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
