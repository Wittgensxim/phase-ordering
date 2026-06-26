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
  br i1 true, label %.lr.ph5, label %._crit_edge7

._crit_edge7:                                     ; preds = %16
  br label %83

.lr.ph5:                                          ; preds = %16
  br label %17

17:                                               ; preds = %.lr.ph5, %74
  %18 = phi ptr [ %13, %.lr.ph5 ], [ %75, %74 ]
  %19 = phi ptr [ %13, %.lr.ph5 ], [ %76, %74 ]
  %20 = phi ptr [ %13, %.lr.ph5 ], [ %77, %74 ]
  %21 = phi i32 [ 0, %.lr.ph5 ], [ %81, %74 ]
  store i32 0, ptr %11, align 4
  %22 = lshr i32 40960000, %21
  store i32 %22, ptr %12, align 4
  %23 = udiv i32 %22, 8
  %24 = zext i32 %23 to i64
  %25 = add i64 %24, 4
  call void @llvm.memset.p0.i64(ptr align 4 %20, i8 -1, i64 %25, i1 false)
  store i32 2, ptr %9, align 4
  %26 = load i32, ptr %12, align 4
  %27 = icmp ule i32 2, %26
  br i1 %27, label %.lr.ph2, label %74

.lr.ph2:                                          ; preds = %17
  br label %28

28:                                               ; preds = %.lr.ph2, %69
  %29 = phi ptr [ %18, %.lr.ph2 ], [ %70, %69 ]
  %30 = phi i32 [ 2, %.lr.ph2 ], [ %72, %69 ]
  %31 = phi ptr [ %19, %.lr.ph2 ], [ %71, %69 ]
  %32 = zext i32 %30 to i64
  %33 = udiv i64 %32, 32
  %34 = getelementptr inbounds nuw i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = urem i64 %32, 32
  %37 = trunc i64 %36 to i32
  %38 = shl i32 1, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %28
  %42 = load i32, ptr %11, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %11, align 4
  %44 = add i32 %30, %30
  store i32 %44, ptr %10, align 4
  %45 = icmp ule i32 %44, %26
  br i1 %45, label %.lr.ph, label %66

.lr.ph:                                           ; preds = %41
  br label %46

46:                                               ; preds = %.lr.ph, %62
  %47 = phi i32 [ %44, %.lr.ph ], [ %64, %62 ]
  %48 = phi ptr [ %29, %.lr.ph ], [ %63, %62 ]
  %49 = zext i32 %47 to i64
  %50 = udiv i64 %49, 32
  %51 = getelementptr inbounds nuw i32, ptr %48, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = urem i64 %49, 32
  %54 = trunc i64 %53 to i32
  %55 = shl i32 1, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = getelementptr inbounds nuw i32, ptr %13, i64 %50
  %60 = load i32, ptr %59, align 4
  %61 = xor i32 %60, %55
  store i32 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %58, %46
  %63 = phi ptr [ %13, %58 ], [ %48, %46 ]
  %64 = add i32 %47, %30
  store i32 %64, ptr %10, align 4
  %65 = icmp ule i32 %64, %26
  br i1 %65, label %46, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %62
  br label %66

66:                                               ; preds = %._crit_edge, %41
  %67 = phi ptr [ %63, %._crit_edge ], [ %29, %41 ]
  %68 = phi ptr [ %63, %._crit_edge ], [ %31, %41 ]
  br label %69

69:                                               ; preds = %66, %28
  %70 = phi ptr [ %67, %66 ], [ %29, %28 ]
  %71 = phi ptr [ %68, %66 ], [ %31, %28 ]
  %72 = add i32 %30, 1
  store i32 %72, ptr %9, align 4
  %73 = icmp ule i32 %72, %26
  br i1 %73, label %28, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %69
  br label %74

74:                                               ; preds = %._crit_edge3, %17
  %75 = phi ptr [ %70, %._crit_edge3 ], [ %18, %17 ]
  %76 = phi ptr [ %71, %._crit_edge3 ], [ %19, %17 ]
  %77 = phi ptr [ %71, %._crit_edge3 ], [ %20, %17 ]
  %78 = load i32, ptr %11, align 4
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %26, i32 noundef %78)
  %80 = load i32, ptr %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %6, align 4
  %82 = icmp ule i32 %81, 2
  br i1 %82, label %17, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %74
  br label %83

83:                                               ; preds = %._crit_edge7, %._crit_edge6
  call void @free(ptr noundef %13)
  store i32 0, ptr %3, align 4
  br label %84

84:                                               ; preds = %83, %15
  %85 = phi i32 [ 0, %83 ], [ 1, %15 ]
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
