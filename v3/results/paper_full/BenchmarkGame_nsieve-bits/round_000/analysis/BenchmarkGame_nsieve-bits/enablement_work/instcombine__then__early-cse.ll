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
  br label %13

13:                                               ; preds = %64, %12
  %storemerge1 = phi i32 [ 0, %12 ], [ %66, %64 ]
  store i32 %storemerge1, ptr %3, align 4
  %14 = icmp ult i32 %storemerge1, 3
  br i1 %14, label %15, label %67

15:                                               ; preds = %13
  store i32 0, ptr %8, align 4
  %16 = load i32, ptr %4, align 4
  %17 = load i32, ptr %3, align 4
  %18 = lshr i32 %16, %17
  store i32 %18, ptr %9, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = lshr i32 %18, 3
  %narrow = add nuw nsw i32 %20, 4
  %21 = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %19, i8 -1, i64 %21, i1 false)
  br label %22

22:                                               ; preds = %58, %15
  %storemerge2 = phi i32 [ 2, %15 ], [ %60, %58 ]
  store i32 %storemerge2, ptr %6, align 4
  %23 = load i32, ptr %9, align 4
  %.not3 = icmp ugt i32 %storemerge2, %23
  br i1 %.not3, label %61, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %5, align 8
  %26 = lshr i32 %storemerge2, 5
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %storemerge2, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %.not4 = icmp eq i32 %32, 0
  br i1 %.not4, label %57, label %33

33:                                               ; preds = %24
  %34 = load i32, ptr %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %8, align 4
  %36 = load i32, ptr %6, align 4
  %37 = shl i32 %36, 1
  br label %38

38:                                               ; preds = %52, %33
  %storemerge5 = phi i32 [ %37, %33 ], [ %55, %52 ]
  store i32 %storemerge5, ptr %7, align 4
  %39 = load i32, ptr %9, align 4
  %.not6 = icmp ugt i32 %storemerge5, %39
  br i1 %.not6, label %56, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %5, align 8
  %42 = lshr i32 %storemerge5, 5
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds nuw [4 x i8], ptr %41, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %storemerge5, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %45, %47
  %.not7 = icmp eq i32 %48, 0
  br i1 %.not7, label %51, label %49

49:                                               ; preds = %40
  %50 = xor i32 %45, %47
  store i32 %50, ptr %44, align 4
  br label %51

51:                                               ; preds = %49, %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %6, align 4
  %54 = load i32, ptr %7, align 4
  %55 = add i32 %54, %53
  br label %38, !llvm.loop !7

56:                                               ; preds = %38
  br label %57

57:                                               ; preds = %56, %24
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %6, align 4
  %60 = add i32 %59, 1
  br label %22, !llvm.loop !9

61:                                               ; preds = %22
  %62 = load i32, ptr %8, align 4
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %23, i32 noundef %62) #5
  br label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %3, align 4
  %66 = add i32 %65, 1
  br label %13, !llvm.loop !10

67:                                               ; preds = %13
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
