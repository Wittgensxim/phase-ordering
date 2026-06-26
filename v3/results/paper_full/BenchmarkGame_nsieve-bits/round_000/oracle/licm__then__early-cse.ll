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
  br label %74

16:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  %17 = load i32, ptr %7, align 4
  %18 = load ptr, ptr %8, align 8
  %.promoted9 = load i32, ptr %11, align 4
  %.promoted11 = load i32, ptr %12, align 4
  %.promoted13 = load i32, ptr %9, align 4
  %.promoted15 = load i32, ptr %10, align 4
  br label %19

19:                                               ; preds = %70, %16
  %.lcssa7.lcssa16 = phi i32 [ %.lcssa7, %70 ], [ %.promoted15, %16 ]
  %.lcssa214 = phi i32 [ %30, %70 ], [ %.promoted13, %16 ]
  %20 = phi i32 [ %24, %70 ], [ %.promoted11, %16 ]
  %.lcssa410 = phi i32 [ %29, %70 ], [ %.promoted9, %16 ]
  %21 = phi i32 [ %71, %70 ], [ 0, %16 ]
  %22 = icmp ule i32 %21, 2
  br i1 %22, label %23, label %72

23:                                               ; preds = %19
  %24 = lshr i32 %17, %21
  %25 = udiv i32 %24, 8
  %26 = zext i32 %25 to i64
  %27 = add i64 %26, 4
  call void @llvm.memset.p0.i64(ptr align 4 %18, i8 -1, i64 %27, i1 false)
  br label %28

28:                                               ; preds = %66, %23
  %.lcssa7 = phi i32 [ %.lcssa6, %66 ], [ %.lcssa7.lcssa16, %23 ]
  %29 = phi i32 [ %65, %66 ], [ 0, %23 ]
  %30 = phi i32 [ %67, %66 ], [ 2, %23 ]
  %31 = icmp ule i32 %30, %24
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = zext i32 %30 to i64
  %34 = udiv i64 %33, 32
  %35 = getelementptr inbounds nuw i32, ptr %18, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = urem i64 %33, 32
  %38 = trunc i64 %37 to i32
  %39 = shl i32 1, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %32
  %43 = add i32 %29, 1
  %44 = add i32 %30, %30
  br label %45

45:                                               ; preds = %61, %42
  %46 = phi i32 [ %62, %61 ], [ %44, %42 ]
  %47 = icmp ule i32 %46, %24
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = zext i32 %46 to i64
  %50 = udiv i64 %49, 32
  %51 = getelementptr inbounds nuw i32, ptr %18, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = urem i64 %49, 32
  %54 = trunc i64 %53 to i32
  %55 = shl i32 1, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = xor i32 %52, %55
  store i32 %59, ptr %51, align 4
  br label %60

60:                                               ; preds = %58, %48
  br label %61

61:                                               ; preds = %60
  %62 = add i32 %46, %30
  br label %45, !llvm.loop !7

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %32
  %.lcssa6 = phi i32 [ %46, %63 ], [ %.lcssa7, %32 ]
  %65 = phi i32 [ %43, %63 ], [ %29, %32 ]
  br label %66

66:                                               ; preds = %64
  %67 = add i32 %30, 1
  br label %28, !llvm.loop !9

68:                                               ; preds = %28
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %24, i32 noundef %29)
  br label %70

70:                                               ; preds = %68
  %71 = add i32 %21, 1
  br label %19, !llvm.loop !10

72:                                               ; preds = %19
  store i32 %21, ptr %6, align 4
  store i32 %.lcssa410, ptr %11, align 4
  store i32 %20, ptr %12, align 4
  store i32 %.lcssa214, ptr %9, align 4
  store i32 %.lcssa7.lcssa16, ptr %10, align 4
  %73 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %73)
  store i32 0, ptr %3, align 4
  br label %74

74:                                               ; preds = %72, %15
  %75 = load i32, ptr %3, align 4
  ret i32 %75
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
