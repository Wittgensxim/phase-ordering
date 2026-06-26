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
  br label %92

21:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  %22 = load i32, ptr %6, align 4
  %23 = icmp ule i32 %22, 2
  br i1 %23, label %.lr.ph5, label %90

.lr.ph5:                                          ; preds = %21
  %24 = load i32, ptr %7, align 4
  %25 = load ptr, ptr %8, align 8
  %26 = load ptr, ptr %8, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = load ptr, ptr %8, align 8
  %.promoted = load i32, ptr %6, align 4
  %.promoted21 = load i32, ptr %10, align 4
  br label %29

29:                                               ; preds = %.lr.ph5, %87
  %.lcssa12.lcssa23 = phi i32 [ %.promoted21, %.lr.ph5 ], [ %.lcssa12.lcssa22, %87 ]
  %30 = phi i32 [ %.promoted, %.lr.ph5 ], [ %88, %87 ]
  %31 = lshr i32 %24, %30
  %32 = udiv i32 %31, 8
  %33 = zext i32 %32 to i64
  %34 = add i64 %33, 4
  call void @llvm.memset.p0.i64(ptr align 4 %25, i8 -1, i64 %34, i1 false)
  %35 = icmp ule i32 2, %31
  br i1 %35, label %.lr.ph2, label %85

.lr.ph2:                                          ; preds = %29
  br label %36

36:                                               ; preds = %.lr.ph2, %82
  %.lcssa13 = phi i32 [ %.lcssa12.lcssa23, %.lr.ph2 ], [ %.lcssa12, %82 ]
  %37 = phi i32 [ 0, %.lr.ph2 ], [ %81, %82 ]
  %38 = phi i32 [ 2, %.lr.ph2 ], [ %83, %82 ]
  %39 = zext i32 %38 to i64
  %40 = udiv i64 %39, 32
  %41 = getelementptr inbounds nuw i32, ptr %26, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = zext i32 %38 to i64
  %44 = urem i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = shl i32 1, %45
  %47 = and i32 %42, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %36
  %50 = add i32 %37, 1
  %51 = add i32 %38, %38
  %52 = icmp ule i32 %51, %31
  br i1 %52, label %.lr.ph, label %79

.lr.ph:                                           ; preds = %49
  br label %53

53:                                               ; preds = %.lr.ph, %76
  %54 = phi i32 [ %51, %.lr.ph ], [ %77, %76 ]
  %55 = zext i32 %54 to i64
  %56 = udiv i64 %55, 32
  %57 = getelementptr inbounds nuw i32, ptr %27, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = zext i32 %54 to i64
  %60 = urem i64 %59, 32
  %61 = trunc i64 %60 to i32
  %62 = shl i32 1, %61
  %63 = and i32 %58, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %53
  %66 = zext i32 %54 to i64
  %67 = urem i64 %66, 32
  %68 = trunc i64 %67 to i32
  %69 = shl i32 1, %68
  %70 = zext i32 %54 to i64
  %71 = udiv i64 %70, 32
  %72 = getelementptr inbounds nuw i32, ptr %28, i64 %71
  %73 = load i32, ptr %72, align 4
  %74 = xor i32 %73, %69
  store i32 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %65, %53
  br label %76

76:                                               ; preds = %75
  %77 = add i32 %54, %38
  %78 = icmp ule i32 %77, %31
  br i1 %78, label %53, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %76
  %.lcssa = phi i32 [ %77, %76 ]
  br label %79

79:                                               ; preds = %._crit_edge, %49
  %.lcssa14 = phi i32 [ %.lcssa, %._crit_edge ], [ %51, %49 ]
  br label %80

80:                                               ; preds = %79, %36
  %.lcssa12 = phi i32 [ %.lcssa14, %79 ], [ %.lcssa13, %36 ]
  %81 = phi i32 [ %50, %79 ], [ %37, %36 ]
  br label %82

82:                                               ; preds = %80
  %83 = add i32 %38, 1
  %84 = icmp ule i32 %83, %31
  br i1 %84, label %36, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %82
  %.lcssa12.lcssa = phi i32 [ %.lcssa12, %82 ]
  %.lcssa10 = phi i32 [ %81, %82 ]
  %.lcssa8 = phi i32 [ %83, %82 ]
  br label %85

85:                                               ; preds = %._crit_edge3, %29
  %.lcssa12.lcssa22 = phi i32 [ %.lcssa12.lcssa, %._crit_edge3 ], [ %.lcssa12.lcssa23, %29 ]
  %.lcssa820 = phi i32 [ %.lcssa8, %._crit_edge3 ], [ 2, %29 ]
  %.lcssa1015 = phi i32 [ %.lcssa10, %._crit_edge3 ], [ 0, %29 ]
  %86 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %31, i32 noundef %.lcssa1015)
  br label %87

87:                                               ; preds = %85
  %88 = add i32 %30, 1
  %89 = icmp ule i32 %88, 2
  br i1 %89, label %29, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %87
  %.lcssa12.lcssa22.lcssa = phi i32 [ %.lcssa12.lcssa22, %87 ]
  %.lcssa820.lcssa = phi i32 [ %.lcssa820, %87 ]
  %.lcssa18 = phi i32 [ %31, %87 ]
  %.lcssa16 = phi i32 [ %88, %87 ]
  %.lcssa1015.lcssa = phi i32 [ %.lcssa1015, %87 ]
  store i32 %.lcssa1015.lcssa, ptr %11, align 4
  store i32 %.lcssa16, ptr %6, align 4
  store i32 %.lcssa18, ptr %12, align 4
  store i32 %.lcssa820.lcssa, ptr %9, align 4
  store i32 %.lcssa12.lcssa22.lcssa, ptr %10, align 4
  br label %90

90:                                               ; preds = %._crit_edge6, %21
  %91 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %91)
  store i32 0, ptr %3, align 4
  br label %92

92:                                               ; preds = %90, %20
  %93 = load i32, ptr %3, align 4
  ret i32 %93
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
