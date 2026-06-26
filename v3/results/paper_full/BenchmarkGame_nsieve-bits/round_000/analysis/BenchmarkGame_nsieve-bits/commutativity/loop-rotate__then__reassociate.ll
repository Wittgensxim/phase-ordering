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
  br label %113

21:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  %22 = load i32, ptr %6, align 4
  %23 = icmp ule i32 %22, 2
  br i1 %23, label %.lr.ph5, label %111

.lr.ph5:                                          ; preds = %21
  br label %24

24:                                               ; preds = %.lr.ph5, %106
  store i32 0, ptr %11, align 4
  %25 = load i32, ptr %7, align 4
  %26 = load i32, ptr %6, align 4
  %27 = lshr i32 %25, %26
  store i32 %27, ptr %12, align 4
  %28 = load ptr, ptr %8, align 8
  %29 = load i32, ptr %12, align 4
  %30 = udiv i32 %29, 8
  %31 = zext i32 %30 to i64
  %32 = add i64 %31, 4
  call void @llvm.memset.p0.i64(ptr align 4 %28, i8 -1, i64 %32, i1 false)
  store i32 2, ptr %9, align 4
  %33 = load i32, ptr %9, align 4
  %34 = load i32, ptr %12, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %.lr.ph2, label %102

.lr.ph2:                                          ; preds = %24
  br label %36

36:                                               ; preds = %.lr.ph2, %96
  %37 = load ptr, ptr %8, align 8
  %38 = load i32, ptr %9, align 4
  %39 = zext i32 %38 to i64
  %40 = udiv i64 %39, 32
  %41 = getelementptr inbounds nuw i32, ptr %37, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %9, align 4
  %44 = zext i32 %43 to i64
  %45 = urem i64 %44, 32
  %46 = trunc i64 %45 to i32
  %47 = shl i32 1, %46
  %48 = and i32 %47, %42
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %95

50:                                               ; preds = %36
  %51 = load i32, ptr %11, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %11, align 4
  %53 = load i32, ptr %9, align 4
  %54 = load i32, ptr %9, align 4
  %55 = add i32 %54, %53
  store i32 %55, ptr %10, align 4
  %56 = load i32, ptr %10, align 4
  %57 = load i32, ptr %12, align 4
  %58 = icmp ule i32 %56, %57
  br i1 %58, label %.lr.ph, label %94

.lr.ph:                                           ; preds = %50
  br label %59

59:                                               ; preds = %.lr.ph, %87
  %60 = load ptr, ptr %8, align 8
  %61 = load i32, ptr %10, align 4
  %62 = zext i32 %61 to i64
  %63 = udiv i64 %62, 32
  %64 = getelementptr inbounds nuw i32, ptr %60, i64 %63
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %10, align 4
  %67 = zext i32 %66 to i64
  %68 = urem i64 %67, 32
  %69 = trunc i64 %68 to i32
  %70 = shl i32 1, %69
  %71 = and i32 %70, %65
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %59
  %74 = load i32, ptr %10, align 4
  %75 = zext i32 %74 to i64
  %76 = urem i64 %75, 32
  %77 = trunc i64 %76 to i32
  %78 = shl i32 1, %77
  %79 = load ptr, ptr %8, align 8
  %80 = load i32, ptr %10, align 4
  %81 = zext i32 %80 to i64
  %82 = udiv i64 %81, 32
  %83 = getelementptr inbounds nuw i32, ptr %79, i64 %82
  %84 = load i32, ptr %83, align 4
  %85 = xor i32 %78, %84
  store i32 %85, ptr %83, align 4
  br label %86

86:                                               ; preds = %73, %59
  br label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %9, align 4
  %89 = load i32, ptr %10, align 4
  %90 = add i32 %89, %88
  store i32 %90, ptr %10, align 4
  %91 = load i32, ptr %10, align 4
  %92 = load i32, ptr %12, align 4
  %93 = icmp ule i32 %91, %92
  br i1 %93, label %59, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %87
  br label %94

94:                                               ; preds = %._crit_edge, %50
  br label %95

95:                                               ; preds = %94, %36
  br label %96

96:                                               ; preds = %95
  %97 = load i32, ptr %9, align 4
  %98 = add i32 %97, 1
  store i32 %98, ptr %9, align 4
  %99 = load i32, ptr %9, align 4
  %100 = load i32, ptr %12, align 4
  %101 = icmp ule i32 %99, %100
  br i1 %101, label %36, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %96
  br label %102

102:                                              ; preds = %._crit_edge3, %24
  %103 = load i32, ptr %12, align 4
  %104 = load i32, ptr %11, align 4
  %105 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %103, i32 noundef %104)
  br label %106

106:                                              ; preds = %102
  %107 = load i32, ptr %6, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %6, align 4
  %109 = load i32, ptr %6, align 4
  %110 = icmp ule i32 %109, 2
  br i1 %110, label %24, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %106
  br label %111

111:                                              ; preds = %._crit_edge6, %21
  %112 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %112)
  store i32 0, ptr %3, align 4
  br label %113

113:                                              ; preds = %111, %20
  %114 = load i32, ptr %3, align 4
  ret i32 %114
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
