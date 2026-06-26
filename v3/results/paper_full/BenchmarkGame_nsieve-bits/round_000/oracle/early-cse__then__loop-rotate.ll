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
  br label %90

16:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp ule i32 %17, 2
  br i1 %18, label %.lr.ph5, label %88

.lr.ph5:                                          ; preds = %16
  br label %19

19:                                               ; preds = %.lr.ph5, %83
  store i32 0, ptr %11, align 4
  %20 = load i32, ptr %7, align 4
  %21 = load i32, ptr %6, align 4
  %22 = lshr i32 %20, %21
  store i32 %22, ptr %12, align 4
  %23 = load ptr, ptr %8, align 8
  %24 = udiv i32 %22, 8
  %25 = zext i32 %24 to i64
  %26 = add i64 %25, 4
  call void @llvm.memset.p0.i64(ptr align 4 %23, i8 -1, i64 %26, i1 false)
  store i32 2, ptr %9, align 4
  %27 = load i32, ptr %9, align 4
  %28 = load i32, ptr %12, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %.lr.ph2, label %80

.lr.ph2:                                          ; preds = %19
  br label %30

30:                                               ; preds = %.lr.ph2, %74
  %31 = phi i32 [ %27, %.lr.ph2 ], [ %77, %74 ]
  %32 = load ptr, ptr %8, align 8
  %33 = zext i32 %31 to i64
  %34 = udiv i64 %33, 32
  %35 = getelementptr inbounds nuw i32, ptr %32, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = urem i64 %33, 32
  %38 = trunc i64 %37 to i32
  %39 = shl i32 1, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %30
  %43 = load i32, ptr %11, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %11, align 4
  %45 = load i32, ptr %9, align 4
  %46 = add i32 %45, %45
  store i32 %46, ptr %10, align 4
  %47 = load i32, ptr %10, align 4
  %48 = load i32, ptr %12, align 4
  %49 = icmp ule i32 %47, %48
  br i1 %49, label %.lr.ph, label %72

.lr.ph:                                           ; preds = %42
  br label %50

50:                                               ; preds = %.lr.ph, %65
  %51 = phi i32 [ %47, %.lr.ph ], [ %69, %65 ]
  %52 = load ptr, ptr %8, align 8
  %53 = zext i32 %51 to i64
  %54 = udiv i64 %53, 32
  %55 = getelementptr inbounds nuw i32, ptr %52, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = urem i64 %53, 32
  %58 = trunc i64 %57 to i32
  %59 = shl i32 1, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = xor i32 %56, %59
  store i32 %63, ptr %55, align 4
  br label %64

64:                                               ; preds = %62, %50
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %9, align 4
  %67 = load i32, ptr %10, align 4
  %68 = add i32 %67, %66
  store i32 %68, ptr %10, align 4
  %69 = load i32, ptr %10, align 4
  %70 = load i32, ptr %12, align 4
  %71 = icmp ule i32 %69, %70
  br i1 %71, label %50, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %65
  br label %72

72:                                               ; preds = %._crit_edge, %42
  br label %73

73:                                               ; preds = %72, %30
  br label %74

74:                                               ; preds = %73
  %75 = load i32, ptr %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %9, align 4
  %77 = load i32, ptr %9, align 4
  %78 = load i32, ptr %12, align 4
  %79 = icmp ule i32 %77, %78
  br i1 %79, label %30, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %74
  %split = phi i32 [ %78, %74 ]
  br label %80

80:                                               ; preds = %._crit_edge3, %19
  %.lcssa = phi i32 [ %split, %._crit_edge3 ], [ %28, %19 ]
  %81 = load i32, ptr %11, align 4
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %.lcssa, i32 noundef %81)
  br label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %6, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %6, align 4
  %86 = load i32, ptr %6, align 4
  %87 = icmp ule i32 %86, 2
  br i1 %87, label %19, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %83
  br label %88

88:                                               ; preds = %._crit_edge6, %16
  %89 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %89)
  store i32 0, ptr %3, align 4
  br label %90

90:                                               ; preds = %88, %15
  %91 = load i32, ptr %3, align 4
  ret i32 %91
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
