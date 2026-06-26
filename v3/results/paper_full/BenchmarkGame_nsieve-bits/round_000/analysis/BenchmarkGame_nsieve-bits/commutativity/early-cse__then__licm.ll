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
  %17 = load i32, ptr %7, align 4
  %18 = load ptr, ptr %8, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = load ptr, ptr %8, align 8
  %.promoted = load i32, ptr %6, align 4
  %.promoted10 = load i32, ptr %11, align 4
  %.promoted12 = load i32, ptr %12, align 4
  %.promoted14 = load i32, ptr %9, align 4
  %.promoted16 = load i32, ptr %10, align 4
  br label %21

21:                                               ; preds = %72, %16
  %.lcssa18.lcssa17 = phi i32 [ %.lcssa18.lcssa, %72 ], [ %.promoted16, %16 ]
  %.lcssa315 = phi i32 [ %.lcssa3, %72 ], [ %.promoted14, %16 ]
  %22 = phi i32 [ %26, %72 ], [ %.promoted12, %16 ]
  %.lcssa511 = phi i32 [ %.lcssa5, %72 ], [ %.promoted10, %16 ]
  %23 = phi i32 [ %73, %72 ], [ %.promoted, %16 ]
  %24 = icmp ule i32 %23, 2
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  %26 = lshr i32 %17, %23
  %27 = udiv i32 %26, 8
  %28 = zext i32 %27 to i64
  %29 = add i64 %28, 4
  call void @llvm.memset.p0.i64(ptr align 4 %18, i8 -1, i64 %29, i1 false)
  br label %30

30:                                               ; preds = %68, %25
  %.lcssa18 = phi i32 [ %.lcssa17, %68 ], [ %.lcssa18.lcssa17, %25 ]
  %31 = phi i32 [ %67, %68 ], [ 0, %25 ]
  %32 = phi i32 [ %69, %68 ], [ 2, %25 ]
  %33 = icmp ule i32 %32, %26
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = zext i32 %32 to i64
  %36 = udiv i64 %35, 32
  %37 = getelementptr inbounds nuw i32, ptr %19, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = urem i64 %35, 32
  %40 = trunc i64 %39 to i32
  %41 = shl i32 1, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %34
  %45 = add i32 %31, 1
  %46 = add i32 %32, %32
  br label %47

47:                                               ; preds = %63, %44
  %48 = phi i32 [ %64, %63 ], [ %46, %44 ]
  %49 = icmp ule i32 %48, %26
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = zext i32 %48 to i64
  %52 = udiv i64 %51, 32
  %53 = getelementptr inbounds nuw i32, ptr %20, i64 %52
  %54 = load i32, ptr %53, align 4
  %55 = urem i64 %51, 32
  %56 = trunc i64 %55 to i32
  %57 = shl i32 1, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = xor i32 %54, %57
  store i32 %61, ptr %53, align 4
  br label %62

62:                                               ; preds = %60, %50
  br label %63

63:                                               ; preds = %62
  %64 = add i32 %48, %32
  br label %47, !llvm.loop !7

65:                                               ; preds = %47
  %.lcssa1 = phi i32 [ %48, %47 ]
  br label %66

66:                                               ; preds = %65, %34
  %.lcssa17 = phi i32 [ %.lcssa1, %65 ], [ %.lcssa18, %34 ]
  %67 = phi i32 [ %45, %65 ], [ %31, %34 ]
  br label %68

68:                                               ; preds = %66
  %69 = add i32 %32, 1
  br label %30, !llvm.loop !9

70:                                               ; preds = %30
  %.lcssa18.lcssa = phi i32 [ %.lcssa18, %30 ]
  %.lcssa5 = phi i32 [ %31, %30 ]
  %.lcssa3 = phi i32 [ %32, %30 ]
  %.lcssa = phi i32 [ %26, %30 ]
  %71 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %.lcssa, i32 noundef %.lcssa5)
  br label %72

72:                                               ; preds = %70
  %73 = add i32 %23, 1
  br label %21, !llvm.loop !10

74:                                               ; preds = %21
  %.lcssa18.lcssa17.lcssa = phi i32 [ %.lcssa18.lcssa17, %21 ]
  %.lcssa315.lcssa = phi i32 [ %.lcssa315, %21 ]
  %.lcssa13 = phi i32 [ %22, %21 ]
  %.lcssa511.lcssa = phi i32 [ %.lcssa511, %21 ]
  %.lcssa9 = phi i32 [ %23, %21 ]
  store i32 %.lcssa9, ptr %6, align 4
  store i32 %.lcssa511.lcssa, ptr %11, align 4
  store i32 %.lcssa13, ptr %12, align 4
  store i32 %.lcssa315.lcssa, ptr %9, align 4
  store i32 %.lcssa18.lcssa17.lcssa, ptr %10, align 4
  %75 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %75)
  store i32 0, ptr %3, align 4
  br label %76

76:                                               ; preds = %74, %15
  %77 = load i32, ptr %3, align 4
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
