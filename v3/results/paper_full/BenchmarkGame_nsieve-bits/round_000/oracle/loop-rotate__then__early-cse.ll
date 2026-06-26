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
  br label %84

16:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph5, label %82

.lr.ph5:                                          ; preds = %16
  br label %17

17:                                               ; preds = %.lr.ph5, %78
  store i32 0, ptr %11, align 4
  %18 = load i32, ptr %7, align 4
  %19 = load i32, ptr %6, align 4
  %20 = lshr i32 %18, %19
  store i32 %20, ptr %12, align 4
  %21 = load ptr, ptr %8, align 8
  %22 = udiv i32 %20, 8
  %23 = zext i32 %22 to i64
  %24 = add i64 %23, 4
  call void @llvm.memset.p0.i64(ptr align 4 %21, i8 -1, i64 %24, i1 false)
  store i32 2, ptr %9, align 4
  %25 = load i32, ptr %12, align 4
  %26 = icmp ule i32 2, %25
  br i1 %26, label %.lr.ph2, label %74

.lr.ph2:                                          ; preds = %17
  br label %27

27:                                               ; preds = %.lr.ph2, %69
  %28 = load ptr, ptr %8, align 8
  %29 = load i32, ptr %9, align 4
  %30 = zext i32 %29 to i64
  %31 = udiv i64 %30, 32
  %32 = getelementptr inbounds nuw i32, ptr %28, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = urem i64 %30, 32
  %35 = trunc i64 %34 to i32
  %36 = shl i32 1, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %27
  %40 = load i32, ptr %11, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %11, align 4
  %42 = load i32, ptr %9, align 4
  %43 = add i32 %42, %42
  store i32 %43, ptr %10, align 4
  %44 = load i32, ptr %12, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %.lr.ph, label %67

.lr.ph:                                           ; preds = %39
  br label %46

46:                                               ; preds = %.lr.ph, %61
  %47 = load ptr, ptr %8, align 8
  %48 = load i32, ptr %10, align 4
  %49 = zext i32 %48 to i64
  %50 = udiv i64 %49, 32
  %51 = getelementptr inbounds nuw i32, ptr %47, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = urem i64 %49, 32
  %54 = trunc i64 %53 to i32
  %55 = shl i32 1, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = xor i32 %52, %55
  store i32 %59, ptr %51, align 4
  br label %60

60:                                               ; preds = %58, %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %9, align 4
  %63 = load i32, ptr %10, align 4
  %64 = add i32 %63, %62
  store i32 %64, ptr %10, align 4
  %65 = load i32, ptr %12, align 4
  %66 = icmp ule i32 %64, %65
  br i1 %66, label %46, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %61
  br label %67

67:                                               ; preds = %._crit_edge, %39
  br label %68

68:                                               ; preds = %67, %27
  br label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %9, align 4
  %72 = load i32, ptr %12, align 4
  %73 = icmp ule i32 %71, %72
  br i1 %73, label %27, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %69
  br label %74

74:                                               ; preds = %._crit_edge3, %17
  %75 = load i32, ptr %12, align 4
  %76 = load i32, ptr %11, align 4
  %77 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %75, i32 noundef %76)
  br label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %6, align 4
  %81 = icmp ule i32 %80, 2
  br i1 %81, label %17, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %78
  br label %82

82:                                               ; preds = %._crit_edge6, %16
  %83 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %83)
  store i32 0, ptr %3, align 4
  br label %84

84:                                               ; preds = %82, %15
  %85 = load i32, ptr %3, align 4
  ret i32 %85
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
