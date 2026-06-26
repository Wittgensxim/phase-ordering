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
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 40960000, ptr %7, align 4
  %13 = call ptr @malloc(i64 noundef 5120004) #4
  store ptr %13, ptr %8, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 1, ptr %3, align 4
  br label %76

16:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %70, %16
  %18 = phi ptr [ %28, %70 ], [ %13, %16 ]
  %19 = phi ptr [ %31, %70 ], [ %13, %16 ]
  %20 = phi i32 [ %74, %70 ], [ 0, %16 ]
  %21 = icmp ule i32 %20, 2
  br i1 %21, label %22, label %75

22:                                               ; preds = %17
  store i32 0, ptr %11, align 4
  %23 = lshr i32 40960000, %20
  store i32 %23, ptr %12, align 4
  %24 = udiv i32 %23, 8
  %25 = zext i32 %24 to i64
  %26 = add i64 %25, 4
  call void @llvm.memset.p0.i64(ptr align 4 %19, i8 -1, i64 %26, i1 false)
  store i32 2, ptr %9, align 4
  %.pre = load i32, ptr %12, align 4
  br label %27

27:                                               ; preds = %66, %22
  %28 = phi ptr [ %67, %66 ], [ %18, %22 ]
  %29 = phi i32 [ %68, %66 ], [ %.pre, %22 ]
  %30 = phi i32 [ %69, %66 ], [ 2, %22 ]
  %31 = phi ptr [ %67, %66 ], [ %19, %22 ]
  %32 = icmp ule i32 %30, %29
  br i1 %32, label %33, label %70

33:                                               ; preds = %27
  %34 = zext i32 %30 to i64
  %35 = udiv i64 %34, 32
  %36 = getelementptr inbounds nuw i32, ptr %28, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = urem i64 %34, 32
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %33
  %44 = load i32, ptr %11, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %11, align 4
  %46 = add i32 %30, %30
  store i32 %46, ptr %10, align 4
  br label %47

47:                                               ; preds = %63, %43
  %48 = phi i32 [ %64, %63 ], [ %46, %43 ]
  %49 = phi ptr [ %13, %63 ], [ %28, %43 ]
  %50 = icmp ule i32 %48, %.pre
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = zext i32 %48 to i64
  %53 = udiv i64 %52, 32
  %54 = getelementptr inbounds nuw i32, ptr %13, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = urem i64 %52, 32
  %57 = trunc i64 %56 to i32
  %58 = shl i32 1, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = xor i32 %55, %58
  store i32 %62, ptr %54, align 4
  br label %63

63:                                               ; preds = %61, %51
  %64 = add i32 %48, %30
  store i32 %64, ptr %10, align 4
  br label %47, !llvm.loop !7

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65, %33
  %67 = phi ptr [ %49, %65 ], [ %28, %33 ]
  %68 = phi i32 [ %.pre, %65 ], [ %29, %33 ]
  %69 = add i32 %30, 1
  store i32 %69, ptr %9, align 4
  br label %27, !llvm.loop !9

70:                                               ; preds = %27
  %71 = load i32, ptr %11, align 4
  %72 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %29, i32 noundef %71)
  %73 = load i32, ptr %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %6, align 4
  br label %17, !llvm.loop !10

75:                                               ; preds = %17
  call void @free(ptr noundef %19)
  store i32 0, ptr %3, align 4
  br label %76

76:                                               ; preds = %75, %15
  %77 = phi i32 [ 0, %75 ], [ 1, %15 ]
  ret i32 %77
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
attributes #4 = { allocsize(0) }

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
