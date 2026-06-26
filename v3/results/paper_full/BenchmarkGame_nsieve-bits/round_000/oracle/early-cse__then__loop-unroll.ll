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
  br label %83

16:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %78, %16
  %18 = load i32, ptr %6, align 4
  %19 = icmp ule i32 %18, 2
  br i1 %19, label %20, label %81

20:                                               ; preds = %17
  store i32 0, ptr %11, align 4
  %21 = load i32, ptr %7, align 4
  %22 = load i32, ptr %6, align 4
  %23 = lshr i32 %21, %22
  store i32 %23, ptr %12, align 4
  %24 = load ptr, ptr %8, align 8
  %25 = udiv i32 %23, 8
  %26 = zext i32 %25 to i64
  %27 = add i64 %26, 4
  call void @llvm.memset.p0.i64(ptr align 4 %24, i8 -1, i64 %27, i1 false)
  store i32 2, ptr %9, align 4
  br label %28

28:                                               ; preds = %72, %20
  %29 = load i32, ptr %9, align 4
  %30 = load i32, ptr %12, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = load ptr, ptr %8, align 8
  %34 = zext i32 %29 to i64
  %35 = udiv i64 %34, 32
  %36 = getelementptr inbounds nuw i32, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = urem i64 %34, 32
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %32
  %44 = load i32, ptr %11, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %11, align 4
  %46 = load i32, ptr %9, align 4
  %47 = add i32 %46, %46
  store i32 %47, ptr %10, align 4
  br label %48

48:                                               ; preds = %66, %43
  %49 = load i32, ptr %10, align 4
  %50 = load i32, ptr %12, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load ptr, ptr %8, align 8
  %54 = zext i32 %49 to i64
  %55 = udiv i64 %54, 32
  %56 = getelementptr inbounds nuw i32, ptr %53, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = urem i64 %54, 32
  %59 = trunc i64 %58 to i32
  %60 = shl i32 1, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = xor i32 %57, %60
  store i32 %64, ptr %56, align 4
  br label %65

65:                                               ; preds = %63, %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, ptr %9, align 4
  %68 = load i32, ptr %10, align 4
  %69 = add i32 %68, %67
  store i32 %69, ptr %10, align 4
  br label %48, !llvm.loop !7

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70, %32
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %9, align 4
  br label %28, !llvm.loop !9

75:                                               ; preds = %28
  %.lcssa = phi i32 [ %30, %28 ]
  %76 = load i32, ptr %11, align 4
  %77 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %.lcssa, i32 noundef %76)
  br label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %6, align 4
  br label %17, !llvm.loop !10

81:                                               ; preds = %17
  %82 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %82)
  store i32 0, ptr %3, align 4
  br label %83

83:                                               ; preds = %81, %15
  %84 = load i32, ptr %3, align 4
  ret i32 %84
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
