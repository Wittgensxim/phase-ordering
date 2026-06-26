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
  br label %67

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %63
  %.03340 = phi i32 [ 0, %9 ], [ %64, %63 ]
  %11 = lshr i32 40960000, %.03340
  %12 = udiv i32 %11, 8
  %13 = zext i32 %12 to i64
  %14 = add i64 %13, 4
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 -1, i64 %14, i1 false)
  %15 = icmp ule i32 2, %11
  br i1 %15, label %.lr.ph38, label %61

.lr.ph38:                                         ; preds = %10
  br label %16

16:                                               ; preds = %.lr.ph38, %58
  %.03036 = phi i32 [ 0, %.lr.ph38 ], [ %.1, %58 ]
  %.03235 = phi i32 [ 2, %.lr.ph38 ], [ %59, %58 ]
  %17 = zext i32 %.03235 to i64
  %18 = udiv i64 %17, 32
  %19 = getelementptr inbounds nuw i32, ptr %6, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %.03235 to i64
  %22 = urem i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = shl i32 1, %23
  %25 = and i32 %20, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %16
  %28 = add i32 %.03036, 1
  %29 = add i32 %.03235, %.03235
  %30 = icmp ule i32 %29, %11
  br i1 %30, label %.lr.ph, label %56

.lr.ph:                                           ; preds = %27
  br label %31

31:                                               ; preds = %.lr.ph, %53
  %.03134 = phi i32 [ %29, %.lr.ph ], [ %54, %53 ]
  %32 = zext i32 %.03134 to i64
  %33 = udiv i64 %32, 32
  %34 = getelementptr inbounds nuw i32, ptr %6, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %.03134 to i64
  %37 = urem i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = shl i32 1, %38
  %40 = and i32 %35, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = zext i32 %.03134 to i64
  %44 = urem i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = shl i32 1, %45
  %47 = zext i32 %.03134 to i64
  %48 = udiv i64 %47, 32
  %49 = getelementptr inbounds nuw i32, ptr %6, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, %46
  store i32 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %42, %31
  br label %53

53:                                               ; preds = %52
  %54 = add i32 %.03134, %.03235
  %55 = icmp ule i32 %54, %11
  br i1 %55, label %31, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %53
  br label %56

56:                                               ; preds = %._crit_edge, %27
  br label %57

57:                                               ; preds = %56, %16
  %.1 = phi i32 [ %28, %56 ], [ %.03036, %16 ]
  br label %58

58:                                               ; preds = %57
  %59 = add i32 %.03235, 1
  %60 = icmp ule i32 %59, %11
  br i1 %60, label %16, label %._crit_edge39, !llvm.loop !9

._crit_edge39:                                    ; preds = %58
  %split = phi i32 [ %.1, %58 ]
  br label %61

61:                                               ; preds = %._crit_edge39, %10
  %.030.lcssa = phi i32 [ %split, %._crit_edge39 ], [ 0, %10 ]
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11, i32 noundef %.030.lcssa)
  br label %63

63:                                               ; preds = %61
  %64 = add i32 %.03340, 1
  %65 = icmp ule i32 %64, 2
  br i1 %65, label %10, label %66, !llvm.loop !10

66:                                               ; preds = %63
  call void @free(ptr noundef %6)
  br label %67

67:                                               ; preds = %66, %8
  %.0 = phi i32 [ 0, %66 ], [ 1, %8 ]
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
