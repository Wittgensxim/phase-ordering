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
  %13 = load i32, ptr %7, align 4
  %14 = udiv i32 %13, 8
  %15 = zext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = call ptr @malloc(i64 noundef %16) #4
  store ptr %17, ptr %8, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 1, ptr %3, align 4
  br label %103

21:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  %22 = load i32, ptr %6, align 4
  %23 = icmp ule i32 %22, 2
  br i1 %23, label %.lr.ph5, label %._crit_edge6

.lr.ph5:                                          ; preds = %21, %._crit_edge3
  store i32 0, ptr %11, align 4
  %24 = load i32, ptr %7, align 4
  %25 = load i32, ptr %6, align 4
  %26 = lshr i32 %24, %25
  store i32 %26, ptr %12, align 4
  %27 = load ptr, ptr %8, align 8
  %28 = load i32, ptr %12, align 4
  %29 = udiv i32 %28, 8
  %30 = zext i32 %29 to i64
  %31 = add i64 %30, 4
  call void @llvm.memset.p0.i64(ptr align 4 %27, i8 -1, i64 %31, i1 false)
  store i32 2, ptr %9, align 4
  %32 = load i32, ptr %9, align 4
  %33 = load i32, ptr %12, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %.lr.ph5, %._crit_edge
  %35 = load ptr, ptr %8, align 8
  %36 = load i32, ptr %9, align 4
  %37 = zext i32 %36 to i64
  %38 = udiv i64 %37, 32
  %39 = getelementptr inbounds nuw i32, ptr %35, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %9, align 4
  %42 = zext i32 %41 to i64
  %43 = urem i64 %42, 32
  %44 = trunc i64 %43 to i32
  %45 = shl i32 1, %44
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %._crit_edge

48:                                               ; preds = %.lr.ph2
  %49 = load i32, ptr %11, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %11, align 4
  %51 = load i32, ptr %9, align 4
  %52 = load i32, ptr %9, align 4
  %53 = add i32 %51, %52
  store i32 %53, ptr %10, align 4
  %54 = load i32, ptr %10, align 4
  %55 = load i32, ptr %12, align 4
  %56 = icmp ule i32 %54, %55
  br i1 %56, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %48, %83
  %57 = load ptr, ptr %8, align 8
  %58 = load i32, ptr %10, align 4
  %59 = zext i32 %58 to i64
  %60 = udiv i64 %59, 32
  %61 = getelementptr inbounds nuw i32, ptr %57, i64 %60
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %10, align 4
  %64 = zext i32 %63 to i64
  %65 = urem i64 %64, 32
  %66 = trunc i64 %65 to i32
  %67 = shl i32 1, %66
  %68 = and i32 %62, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %.lr.ph
  %71 = load i32, ptr %10, align 4
  %72 = zext i32 %71 to i64
  %73 = urem i64 %72, 32
  %74 = trunc i64 %73 to i32
  %75 = shl i32 1, %74
  %76 = load ptr, ptr %8, align 8
  %77 = load i32, ptr %10, align 4
  %78 = zext i32 %77 to i64
  %79 = udiv i64 %78, 32
  %80 = getelementptr inbounds nuw i32, ptr %76, i64 %79
  %81 = load i32, ptr %80, align 4
  %82 = xor i32 %81, %75
  store i32 %82, ptr %80, align 4
  br label %83

83:                                               ; preds = %.lr.ph, %70
  %84 = load i32, ptr %9, align 4
  %85 = load i32, ptr %10, align 4
  %86 = add i32 %85, %84
  store i32 %86, ptr %10, align 4
  %87 = load i32, ptr %10, align 4
  %88 = load i32, ptr %12, align 4
  %89 = icmp ule i32 %87, %88
  br i1 %89, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph2, %83, %48
  %90 = load i32, ptr %9, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %9, align 4
  %92 = load i32, ptr %9, align 4
  %93 = load i32, ptr %12, align 4
  %94 = icmp ule i32 %92, %93
  br i1 %94, label %.lr.ph2, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %._crit_edge, %.lr.ph5
  %95 = load i32, ptr %12, align 4
  %96 = load i32, ptr %11, align 4
  %97 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %95, i32 noundef %96)
  %98 = load i32, ptr %6, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %6, align 4
  %100 = load i32, ptr %6, align 4
  %101 = icmp ule i32 %100, 2
  br i1 %101, label %.lr.ph5, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %._crit_edge3, %21
  %102 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %102)
  store i32 0, ptr %3, align 4
  br label %103

103:                                              ; preds = %._crit_edge6, %20
  %104 = load i32, ptr %3, align 4
  ret i32 %104
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
