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
  br i1 %.not, label %74, label %11

11:                                               ; preds = %2, %66
  %storemerge1 = phi i32 [ %71, %66 ], [ 0, %2 ]
  store i32 %storemerge1, ptr %3, align 4
  %12 = icmp ult i32 %storemerge1, 3
  br i1 %12, label %13, label %72

13:                                               ; preds = %11
  store i32 0, ptr %8, align 4
  %14 = load i32, ptr %4, align 4
  %15 = load i32, ptr %3, align 4
  %16 = lshr i32 %14, %15
  store i32 %16, ptr %9, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = lshr i32 %16, 3
  %narrow = add nuw nsw i32 %18, 4
  %19 = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %17, i8 -1, i64 %19, i1 false)
  br label %20

20:                                               ; preds = %63, %13
  %storemerge2 = phi i32 [ 2, %13 ], [ %65, %63 ]
  store i32 %storemerge2, ptr %6, align 4
  %21 = load i32, ptr %9, align 4
  %.not3 = icmp ugt i32 %storemerge2, %21
  br i1 %.not3, label %66, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %5, align 8
  %24 = load i32, ptr %6, align 4
  %25 = lshr i32 %24, 5
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %24, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %.not4 = icmp eq i32 %31, 0
  br i1 %.not4, label %63, label %32

32:                                               ; preds = %22
  %33 = load i32, ptr %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %8, align 4
  %35 = load i32, ptr %6, align 4
  %36 = shl i32 %35, 1
  br label %37

37:                                               ; preds = %59, %32
  %storemerge5 = phi i32 [ %36, %32 ], [ %62, %59 ]
  store i32 %storemerge5, ptr %7, align 4
  %38 = load i32, ptr %9, align 4
  %.not6 = icmp ugt i32 %storemerge5, %38
  br i1 %.not6, label %63, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %5, align 8
  %41 = load i32, ptr %7, align 4
  %42 = lshr i32 %41, 5
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds nuw [4 x i8], ptr %40, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %41, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %45, %47
  %.not7 = icmp eq i32 %48, 0
  br i1 %.not7, label %59, label %49

49:                                               ; preds = %39
  %50 = load i32, ptr %7, align 4
  %51 = and i32 %50, 31
  %52 = shl nuw i32 1, %51
  %53 = load ptr, ptr %5, align 8
  %54 = lshr i32 %50, 5
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = xor i32 %57, %52
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %39, %49
  %60 = load i32, ptr %6, align 4
  %61 = load i32, ptr %7, align 4
  %62 = add i32 %61, %60
  br label %37, !llvm.loop !7

63:                                               ; preds = %22, %37
  %64 = load i32, ptr %6, align 4
  %65 = add i32 %64, 1
  br label %20, !llvm.loop !9

66:                                               ; preds = %20
  %67 = load i32, ptr %9, align 4
  %68 = load i32, ptr %8, align 4
  %69 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %67, i32 noundef %68) #5
  %70 = load i32, ptr %3, align 4
  %71 = add i32 %70, 1
  br label %11, !llvm.loop !10

72:                                               ; preds = %11
  %73 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %73) #5
  br label %74

74:                                               ; preds = %2, %72
  %storemerge = phi i32 [ 0, %72 ], [ 1, %2 ]
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
