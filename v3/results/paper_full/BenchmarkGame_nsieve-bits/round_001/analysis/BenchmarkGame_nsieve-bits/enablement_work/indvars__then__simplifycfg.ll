; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %52, label %6

6:                                                ; preds = %2, %46
  %storemerge = phi i32 [ %50, %46 ], [ 0, %2 ]
  store i32 %storemerge, ptr %3, align 4
  %7 = icmp ult i32 %storemerge, 3
  br i1 %7, label %8, label %51

8:                                                ; preds = %6
  store i32 0, ptr %4, align 4
  %9 = lshr exact i32 40960000, %storemerge
  %10 = lshr exact i32 5120000, %storemerge
  %11 = or disjoint i32 %10, 4
  %12 = zext nneg i32 %11 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 -1, i64 %12, i1 false)
  %13 = add nuw nsw i32 %9, 1
  %umax = call i32 @llvm.umax.i32(i32 %13, i32 2)
  br label %14

14:                                               ; preds = %44, %8
  %15 = phi i32 [ %45, %44 ], [ 2, %8 ]
  %exitcond = icmp eq i32 %15, %umax
  br i1 %exitcond, label %46, label %16

16:                                               ; preds = %14
  %17 = lshr i32 %15, 5
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %15, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %20, %22
  %.not2 = icmp eq i32 %23, 0
  br i1 %.not2, label %44, label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %4, align 4
  %27 = shl i32 %15, 1
  br label %28

28:                                               ; preds = %42, %24
  %29 = phi i32 [ %43, %42 ], [ %27, %24 ]
  %.not3 = icmp ugt i32 %29, %9
  br i1 %.not3, label %44, label %30

30:                                               ; preds = %28
  %31 = lshr i32 %29, 5
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %29, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %34, %36
  %.not4 = icmp eq i32 %37, 0
  br i1 %.not4, label %42, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %32
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, %36
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %38, %30
  %43 = add i32 %29, %15
  br label %28, !llvm.loop !7

44:                                               ; preds = %28, %16
  %45 = add nuw nsw i32 %15, 1
  br label %14, !llvm.loop !9

46:                                               ; preds = %14
  %47 = load i32, ptr %4, align 4
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9, i32 noundef %47) #6
  %49 = load i32, ptr %3, align 4
  %50 = add i32 %49, 1
  br label %6, !llvm.loop !10

51:                                               ; preds = %6
  call void @free(ptr noundef nonnull %5) #6
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 0, %51 ], [ 1, %2 ]
  ret i32 %53
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
