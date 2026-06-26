; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 40960000, ptr %4, align 4
  %10 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  store ptr %10, ptr %5, align 8
  %.not = icmp eq ptr %10, null
  br i1 %.not, label %11, label %12

11:                                               ; preds = %2
  br label %69

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %5, align 8
  %.promoted12 = load i32, ptr %8, align 4
  %.promoted = load i32, ptr %9, align 4
  %.promoted15 = load i32, ptr %7, align 1
  br label %18

18:                                               ; preds = %65, %12
  %storemerge2.lcssa17 = phi i32 [ poison, %12 ], [ %storemerge2.lcssa, %65 ]
  %storemerge5.lcssa10.lcssa16 = phi i32 [ %.promoted15, %12 ], [ %storemerge5.lcssa10.lcssa, %65 ]
  %19 = phi i32 [ %.promoted, %12 ], [ %22, %65 ]
  %.lcssa13 = phi i32 [ %.promoted12, %12 ], [ %.lcssa, %65 ]
  %storemerge1 = phi i32 [ 0, %12 ], [ %66, %65 ]
  %20 = icmp ult i32 %storemerge1, 3
  br i1 %20, label %21, label %67

21:                                               ; preds = %18
  %22 = lshr i32 %13, %storemerge1
  %23 = lshr i32 %22, 3
  %narrow = add nuw nsw i32 %23, 4
  %24 = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %14, i8 -1, i64 %24, i1 false)
  br label %25

25:                                               ; preds = %61, %21
  %storemerge5.lcssa10 = phi i32 [ %storemerge5.lcssa10.lcssa16, %21 ], [ %storemerge5.lcssa9, %61 ]
  %26 = phi i32 [ 0, %21 ], [ %60, %61 ]
  %storemerge2 = phi i32 [ 2, %21 ], [ %62, %61 ]
  %.not3 = icmp ugt i32 %storemerge2, %22
  br i1 %.not3, label %63, label %27

27:                                               ; preds = %25
  %28 = lshr i32 %storemerge2, 5
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %storemerge2, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %31, %33
  %.not4 = icmp eq i32 %34, 0
  br i1 %.not4, label %59, label %35

35:                                               ; preds = %27
  %36 = add i32 %26, 1
  %37 = shl i32 %storemerge2, 1
  br label %38

38:                                               ; preds = %56, %35
  %storemerge5 = phi i32 [ %37, %35 ], [ %57, %56 ]
  %.not6 = icmp ugt i32 %storemerge5, %22
  br i1 %.not6, label %58, label %39

39:                                               ; preds = %38
  %40 = lshr i32 %storemerge5, 5
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %storemerge5, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %43, %45
  %.not7 = icmp eq i32 %46, 0
  br i1 %.not7, label %55, label %47

47:                                               ; preds = %39
  %48 = and i32 %storemerge5, 31
  %49 = shl nuw i32 1, %48
  %50 = lshr i32 %storemerge5, 5
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = xor i32 %53, %49
  store i32 %54, ptr %52, align 4
  br label %55

55:                                               ; preds = %47, %39
  br label %56

56:                                               ; preds = %55
  %57 = add i32 %storemerge5, %storemerge2
  br label %38, !llvm.loop !7

58:                                               ; preds = %38
  %storemerge5.lcssa = phi i32 [ %storemerge5, %38 ]
  br label %59

59:                                               ; preds = %58, %27
  %storemerge5.lcssa9 = phi i32 [ %storemerge5.lcssa, %58 ], [ %storemerge5.lcssa10, %27 ]
  %60 = phi i32 [ %36, %58 ], [ %26, %27 ]
  br label %61

61:                                               ; preds = %59
  %62 = add i32 %storemerge2, 1
  br label %25, !llvm.loop !9

63:                                               ; preds = %25
  %storemerge5.lcssa10.lcssa = phi i32 [ %storemerge5.lcssa10, %25 ]
  %.lcssa = phi i32 [ %26, %25 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %25 ]
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %22, i32 noundef %.lcssa) #5
  br label %65

65:                                               ; preds = %63
  %66 = add i32 %storemerge1, 1
  br label %18, !llvm.loop !10

67:                                               ; preds = %18
  %storemerge2.lcssa17.lcssa = phi i32 [ %storemerge2.lcssa17, %18 ]
  %storemerge5.lcssa10.lcssa16.lcssa = phi i32 [ %storemerge5.lcssa10.lcssa16, %18 ]
  %.lcssa14 = phi i32 [ %19, %18 ]
  %.lcssa13.lcssa = phi i32 [ %.lcssa13, %18 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %18 ]
  store i32 %storemerge1.lcssa, ptr %3, align 4
  store i32 %.lcssa13.lcssa, ptr %8, align 4
  store i32 %.lcssa14, ptr %9, align 4
  store i32 %storemerge5.lcssa10.lcssa16.lcssa, ptr %7, align 1
  store i32 %storemerge2.lcssa17.lcssa, ptr %6, align 4
  %68 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %68) #5
  br label %69

69:                                               ; preds = %67, %11
  %storemerge = phi i32 [ 1, %11 ], [ 0, %67 ]
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
