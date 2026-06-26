; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %6, label %7

6:                                                ; preds = %2
  br label %54

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %48, %7
  %storemerge = phi i32 [ 0, %7 ], [ %52, %48 ]
  store i32 %storemerge, ptr %3, align 4
  %9 = icmp ult i32 %storemerge, 3
  br i1 %9, label %10, label %53

10:                                               ; preds = %8
  store i32 0, ptr %4, align 4
  %11 = lshr exact i32 40960000, %storemerge
  %12 = lshr exact i32 5120000, %storemerge
  %13 = or disjoint i32 %12, 4
  %14 = zext nneg i32 %13 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 -1, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %46, %10
  %16 = phi i32 [ %47, %46 ], [ 2, %10 ]
  %.not1 = icmp samesign ugt i32 %16, %11
  br i1 %.not1, label %48, label %17

17:                                               ; preds = %15
  %18 = lshr i32 %16, 5
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %16, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %46, label %25

25:                                               ; preds = %17
  %26 = load i32, ptr %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %4, align 4
  %28 = shl nuw nsw i32 %16, 1
  br label %29

29:                                               ; preds = %43, %25
  %30 = phi i32 [ %44, %43 ], [ %28, %25 ]
  %.not3 = icmp samesign ugt i32 %30, %11
  br i1 %.not3, label %45, label %31

31:                                               ; preds = %29
  %32 = lshr i32 %30, 5
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %30, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %35, %37
  %.not4 = icmp eq i32 %38, 0
  br i1 %.not4, label %43, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %33
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, %37
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %31
  %44 = add nuw nsw i32 %30, %16
  br label %29, !llvm.loop !7

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %17
  %47 = add nuw nsw i32 %16, 1
  br label %15, !llvm.loop !9

48:                                               ; preds = %15
  %49 = load i32, ptr %4, align 4
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %11, i32 noundef %49) #5
  %51 = load i32, ptr %3, align 4
  %52 = add i32 %51, 1
  br label %8, !llvm.loop !10

53:                                               ; preds = %8
  call void @free(ptr noundef nonnull %5) #5
  br label %54

54:                                               ; preds = %53, %6
  %55 = phi i32 [ 0, %53 ], [ 1, %6 ]
  ret i32 %55
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
