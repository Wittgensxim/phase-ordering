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
  %22 = load i32, ptr %7, align 4
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load ptr, ptr %8, align 8
  %.promoted = load i32, ptr %6, align 4
  %.promoted9 = load i32, ptr %11, align 4
  %.promoted11 = load i32, ptr %12, align 4
  %.promoted13 = load i32, ptr %9, align 4
  %.promoted15 = load i32, ptr %10, align 4
  %27 = icmp ule i32 %.promoted, 2
  br i1 %27, label %.lr.ph26, label %90

.lr.ph26:                                         ; preds = %21
  br label %28

28:                                               ; preds = %.lr.ph26, %87
  %29 = phi i32 [ %.promoted, %.lr.ph26 ], [ %88, %87 ]
  %.lcssa7.lcssa1624 = phi i32 [ %.promoted15, %.lr.ph26 ], [ %.lcssa7.lcssa, %87 ]
  %30 = lshr i32 %22, %29
  %31 = udiv i32 %30, 8
  %32 = zext i32 %31 to i64
  %33 = add i64 %32, 4
  call void @llvm.memset.p0.i64(ptr align 4 %23, i8 -1, i64 %33, i1 false)
  %34 = icmp ule i32 2, %30
  br i1 %34, label %.lr.ph19, label %85

.lr.ph19:                                         ; preds = %28
  br label %35

35:                                               ; preds = %.lr.ph19, %82
  %36 = phi i32 [ 2, %.lr.ph19 ], [ %83, %82 ]
  %37 = phi i32 [ 0, %.lr.ph19 ], [ %81, %82 ]
  %.lcssa717 = phi i32 [ %.lcssa7.lcssa1624, %.lr.ph19 ], [ %.lcssa6, %82 ]
  %38 = zext i32 %36 to i64
  %39 = udiv i64 %38, 32
  %40 = getelementptr inbounds nuw i32, ptr %24, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = zext i32 %36 to i64
  %43 = urem i64 %42, 32
  %44 = trunc i64 %43 to i32
  %45 = shl i32 1, %44
  %46 = and i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %35
  %49 = add i32 %37, 1
  %50 = add i32 %36, %36
  %51 = icmp ule i32 %50, %30
  br i1 %51, label %.lr.ph, label %78

.lr.ph:                                           ; preds = %48
  br label %52

52:                                               ; preds = %.lr.ph, %75
  %53 = phi i32 [ %50, %.lr.ph ], [ %76, %75 ]
  %54 = zext i32 %53 to i64
  %55 = udiv i64 %54, 32
  %56 = getelementptr inbounds nuw i32, ptr %25, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = zext i32 %53 to i64
  %59 = urem i64 %58, 32
  %60 = trunc i64 %59 to i32
  %61 = shl i32 1, %60
  %62 = and i32 %57, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %52
  %65 = zext i32 %53 to i64
  %66 = urem i64 %65, 32
  %67 = trunc i64 %66 to i32
  %68 = shl i32 1, %67
  %69 = zext i32 %53 to i64
  %70 = udiv i64 %69, 32
  %71 = getelementptr inbounds nuw i32, ptr %26, i64 %70
  %72 = load i32, ptr %71, align 4
  %73 = xor i32 %72, %68
  store i32 %73, ptr %71, align 4
  br label %74

74:                                               ; preds = %64, %52
  br label %75

75:                                               ; preds = %74
  %76 = add i32 %53, %36
  %77 = icmp ule i32 %76, %30
  br i1 %77, label %52, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %75
  %split = phi i32 [ %76, %75 ]
  br label %78

78:                                               ; preds = %._crit_edge, %48
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %50, %48 ]
  br label %79

79:                                               ; preds = %78, %35
  %80 = phi i32 [ %36, %78 ], [ %36, %35 ]
  %.lcssa6 = phi i32 [ %.lcssa, %78 ], [ %.lcssa717, %35 ]
  %81 = phi i32 [ %49, %78 ], [ %37, %35 ]
  br label %82

82:                                               ; preds = %79
  %83 = add i32 %80, 1
  %84 = icmp ule i32 %83, %30
  br i1 %84, label %35, label %._crit_edge20, !llvm.loop !9

._crit_edge20:                                    ; preds = %82
  %split21 = phi i32 [ %.lcssa6, %82 ]
  %split22 = phi i32 [ %81, %82 ]
  %split23 = phi i32 [ %83, %82 ]
  br label %85

85:                                               ; preds = %._crit_edge20, %28
  %.lcssa7.lcssa = phi i32 [ %split21, %._crit_edge20 ], [ %.lcssa7.lcssa1624, %28 ]
  %.lcssa4 = phi i32 [ %split22, %._crit_edge20 ], [ 0, %28 ]
  %.lcssa2 = phi i32 [ %split23, %._crit_edge20 ], [ 2, %28 ]
  %86 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %30, i32 noundef %.lcssa4)
  br label %87

87:                                               ; preds = %85
  %88 = add i32 %29, 1
  %89 = icmp ule i32 %88, 2
  br i1 %89, label %28, label %._crit_edge27, !llvm.loop !10

._crit_edge27:                                    ; preds = %87
  %split28 = phi i32 [ %.lcssa7.lcssa, %87 ]
  %split29 = phi i32 [ %.lcssa2, %87 ]
  %split30 = phi i32 [ %30, %87 ]
  %split31 = phi i32 [ %.lcssa4, %87 ]
  %split32 = phi i32 [ %88, %87 ]
  br label %90

90:                                               ; preds = %._crit_edge27, %21
  %.lcssa7.lcssa16.lcssa = phi i32 [ %split28, %._crit_edge27 ], [ %.promoted15, %21 ]
  %.lcssa214.lcssa = phi i32 [ %split29, %._crit_edge27 ], [ %.promoted13, %21 ]
  %.lcssa12 = phi i32 [ %split30, %._crit_edge27 ], [ %.promoted11, %21 ]
  %.lcssa410.lcssa = phi i32 [ %split31, %._crit_edge27 ], [ %.promoted9, %21 ]
  %.lcssa8 = phi i32 [ %split32, %._crit_edge27 ], [ %.promoted, %21 ]
  store i32 %.lcssa8, ptr %6, align 4
  store i32 %.lcssa410.lcssa, ptr %11, align 4
  store i32 %.lcssa12, ptr %12, align 4
  store i32 %.lcssa214.lcssa, ptr %9, align 4
  store i32 %.lcssa7.lcssa16.lcssa, ptr %10, align 4
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
