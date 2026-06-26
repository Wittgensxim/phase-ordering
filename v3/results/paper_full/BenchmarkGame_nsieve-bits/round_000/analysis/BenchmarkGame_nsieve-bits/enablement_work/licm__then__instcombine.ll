; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 40960000, ptr %3, align 4
  %9 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  store ptr %9, ptr %4, align 8
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %10, label %11

10:                                               ; preds = %2
  br label %68

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  %13 = load ptr, ptr %4, align 8
  %.promoted9 = load i32, ptr %7, align 4
  %.promoted11 = load i32, ptr %8, align 4
  %.promoted13 = load i32, ptr %5, align 4
  %.promoted15 = load i32, ptr %6, align 4
  br label %14

14:                                               ; preds = %64, %11
  %.lcssa7.lcssa16 = phi i32 [ %.lcssa7, %64 ], [ %.promoted15, %11 ]
  %.lcssa214 = phi i32 [ %24, %64 ], [ %.promoted13, %11 ]
  %15 = phi i32 [ %19, %64 ], [ %.promoted11, %11 ]
  %.lcssa410 = phi i32 [ %23, %64 ], [ %.promoted9, %11 ]
  %16 = phi i32 [ %65, %64 ], [ 0, %11 ]
  %17 = icmp samesign ult i32 %16, 3
  br i1 %17, label %18, label %66

18:                                               ; preds = %14
  %19 = lshr i32 %12, %16
  %20 = lshr i32 %19, 3
  %narrow = add nuw nsw i32 %20, 4
  %21 = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %13, i8 -1, i64 %21, i1 false)
  br label %22

22:                                               ; preds = %60, %18
  %.lcssa7 = phi i32 [ %.lcssa6, %60 ], [ %.lcssa7.lcssa16, %18 ]
  %23 = phi i32 [ %59, %60 ], [ 0, %18 ]
  %24 = phi i32 [ %61, %60 ], [ 2, %18 ]
  %.not17 = icmp ugt i32 %24, %19
  br i1 %.not17, label %62, label %25

25:                                               ; preds = %22
  %26 = lshr i32 %24, 5
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %24, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %.not18 = icmp eq i32 %32, 0
  br i1 %.not18, label %58, label %33

33:                                               ; preds = %25
  %34 = add i32 %23, 1
  %35 = shl i32 %24, 1
  br label %36

36:                                               ; preds = %55, %33
  %37 = phi i32 [ %56, %55 ], [ %35, %33 ]
  %.not19 = icmp ugt i32 %37, %19
  br i1 %.not19, label %57, label %38

38:                                               ; preds = %36
  %39 = lshr i32 %37, 5
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %37, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %42, %44
  %.not20 = icmp eq i32 %45, 0
  br i1 %.not20, label %54, label %46

46:                                               ; preds = %38
  %47 = and i32 %37, 31
  %48 = shl nuw i32 1, %47
  %49 = lshr i32 %37, 5
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = xor i32 %52, %48
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %46, %38
  br label %55

55:                                               ; preds = %54
  %56 = add i32 %37, %24
  br label %36, !llvm.loop !7

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %57, %25
  %.lcssa6 = phi i32 [ %37, %57 ], [ %.lcssa7, %25 ]
  %59 = phi i32 [ %34, %57 ], [ %23, %25 ]
  br label %60

60:                                               ; preds = %58
  %61 = add i32 %24, 1
  br label %22, !llvm.loop !9

62:                                               ; preds = %22
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %19, i32 noundef %23) #5
  br label %64

64:                                               ; preds = %62
  %65 = add nuw nsw i32 %16, 1
  br label %14, !llvm.loop !10

66:                                               ; preds = %14
  store i32 %.lcssa410, ptr %7, align 4
  store i32 %15, ptr %8, align 4
  store i32 %.lcssa214, ptr %5, align 4
  store i32 %.lcssa7.lcssa16, ptr %6, align 4
  %67 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %67) #5
  br label %68

68:                                               ; preds = %66, %10
  %storemerge = phi i32 [ 1, %10 ], [ 0, %66 ]
  ret i32 %storemerge
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
