; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = udiv i32 40960000, 8
  %4 = zext i32 %3 to i64
  %5 = add i64 %4, 4
  %6 = call ptr @malloc(i64 noundef %5) #4
  %7 = icmp ne ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %74

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %71, %9
  %.lcssa7.lcssa16 = phi i32 [ %.lcssa7.lcssa, %71 ], [ undef, %9 ]
  %.lcssa214 = phi i32 [ %.lcssa2, %71 ], [ undef, %9 ]
  %11 = phi i32 [ %15, %71 ], [ undef, %9 ]
  %.lcssa410 = phi i32 [ %.lcssa4, %71 ], [ undef, %9 ]
  %12 = phi i32 [ %72, %71 ], [ 0, %9 ]
  %13 = icmp ule i32 %12, 2
  br i1 %13, label %14, label %73

14:                                               ; preds = %10
  %15 = lshr i32 40960000, %12
  %16 = udiv i32 %15, 8
  %17 = zext i32 %16 to i64
  %18 = add i64 %17, 4
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 -1, i64 %18, i1 false)
  br label %19

19:                                               ; preds = %67, %14
  %.lcssa7 = phi i32 [ %.lcssa6, %67 ], [ %.lcssa7.lcssa16, %14 ]
  %20 = phi i32 [ %66, %67 ], [ 0, %14 ]
  %21 = phi i32 [ %68, %67 ], [ 2, %14 ]
  %22 = icmp ule i32 %21, %15
  br i1 %22, label %23, label %69

23:                                               ; preds = %19
  %24 = zext i32 %21 to i64
  %25 = udiv i64 %24, 32
  %26 = getelementptr inbounds nuw i32, ptr %6, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %21 to i64
  %29 = urem i64 %28, 32
  %30 = trunc i64 %29 to i32
  %31 = shl i32 1, %30
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %23
  %35 = add i32 %20, 1
  %36 = add i32 %21, %21
  br label %37

37:                                               ; preds = %62, %34
  %38 = phi i32 [ %63, %62 ], [ %36, %34 ]
  %39 = icmp ule i32 %38, %15
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = zext i32 %38 to i64
  %42 = udiv i64 %41, 32
  %43 = getelementptr inbounds nuw i32, ptr %6, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = zext i32 %38 to i64
  %46 = urem i64 %45, 32
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = and i32 %44, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = zext i32 %38 to i64
  %53 = urem i64 %52, 32
  %54 = trunc i64 %53 to i32
  %55 = shl i32 1, %54
  %56 = zext i32 %38 to i64
  %57 = udiv i64 %56, 32
  %58 = getelementptr inbounds nuw i32, ptr %6, i64 %57
  %59 = load i32, ptr %58, align 4
  %60 = xor i32 %59, %55
  store i32 %60, ptr %58, align 4
  br label %61

61:                                               ; preds = %51, %40
  br label %62

62:                                               ; preds = %61
  %63 = add i32 %38, %21
  br label %37, !llvm.loop !7

64:                                               ; preds = %37
  %.lcssa = phi i32 [ %38, %37 ]
  br label %65

65:                                               ; preds = %64, %23
  %.lcssa6 = phi i32 [ %.lcssa, %64 ], [ %.lcssa7, %23 ]
  %66 = phi i32 [ %35, %64 ], [ %20, %23 ]
  br label %67

67:                                               ; preds = %65
  %68 = add i32 %21, 1
  br label %19, !llvm.loop !9

69:                                               ; preds = %19
  %.lcssa7.lcssa = phi i32 [ %.lcssa7, %19 ]
  %.lcssa4 = phi i32 [ %20, %19 ]
  %.lcssa2 = phi i32 [ %21, %19 ]
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15, i32 noundef %.lcssa4)
  br label %71

71:                                               ; preds = %69
  %72 = add i32 %12, 1
  br label %10, !llvm.loop !10

73:                                               ; preds = %10
  %.lcssa7.lcssa16.lcssa = phi i32 [ %.lcssa7.lcssa16, %10 ]
  %.lcssa214.lcssa = phi i32 [ %.lcssa214, %10 ]
  %.lcssa12 = phi i32 [ %11, %10 ]
  %.lcssa410.lcssa = phi i32 [ %.lcssa410, %10 ]
  %.lcssa8 = phi i32 [ %12, %10 ]
  call void @free(ptr noundef %6)
  br label %74

74:                                               ; preds = %73, %8
  %.0 = phi i32 [ 0, %73 ], [ 1, %8 ]
  ret i32 %.0
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
