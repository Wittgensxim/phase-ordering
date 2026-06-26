; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_002\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %102

5:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 5120004, i1 false)
  br label %6

6:                                                ; preds = %33, %5
  %7 = phi i32 [ 2, %5 ], [ %35, %33 ]
  %8 = phi i32 [ 0, %5 ], [ %34, %33 ]
  %9 = lshr i32 %7, 5
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %7, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %33, label %16

16:                                               ; preds = %6
  %17 = add i32 %8, 1
  %18 = shl i32 %7, 1
  %.not31 = icmp ugt i32 %18, 40960000
  br i1 %.not31, label %32, label %.lr.ph

.lr.ph:                                           ; preds = %16
  br label %19

19:                                               ; preds = %30, %.lr.ph
  %20 = phi i32 [ %18, %.lr.ph ], [ %31, %30 ]
  %21 = lshr i32 %20, 5
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %20, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %24, %26
  %.not4 = icmp eq i32 %27, 0
  br i1 %.not4, label %30, label %28

28:                                               ; preds = %19
  %29 = xor i32 %24, %26
  store i32 %29, ptr %23, align 4
  br label %30

30:                                               ; preds = %28, %19
  %31 = add i32 %20, %7
  %.not3 = icmp ugt i32 %31, 40960000
  br i1 %.not3, label %._crit_edge, label %19, !llvm.loop !7

._crit_edge:                                      ; preds = %30
  br label %32

32:                                               ; preds = %._crit_edge, %16
  br label %33

33:                                               ; preds = %32, %6
  %34 = phi i32 [ %17, %32 ], [ %8, %6 ]
  %35 = add i32 %7, 1
  %.not1 = icmp ugt i32 %35, 40960000
  br i1 %.not1, label %36, label %6, !llvm.loop !9

36:                                               ; preds = %33
  %37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 40960000, i32 noundef %34) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 2560004, i1 false)
  br label %38

38:                                               ; preds = %65, %36
  %39 = phi i32 [ 2, %36 ], [ %67, %65 ]
  %40 = phi i32 [ 0, %36 ], [ %66, %65 ]
  %41 = lshr i32 %39, 5
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %39, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %44, %46
  %.not2.1 = icmp eq i32 %47, 0
  br i1 %.not2.1, label %65, label %48

48:                                               ; preds = %38
  %49 = add i32 %40, 1
  %50 = shl i32 %39, 1
  %.not31.1 = icmp ugt i32 %50, 20480000
  br i1 %.not31.1, label %64, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %48
  br label %51

51:                                               ; preds = %62, %.lr.ph.1
  %52 = phi i32 [ %50, %.lr.ph.1 ], [ %63, %62 ]
  %53 = lshr i32 %52, 5
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %52, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %56, %58
  %.not4.1 = icmp eq i32 %59, 0
  br i1 %.not4.1, label %62, label %60

60:                                               ; preds = %51
  %61 = xor i32 %56, %58
  store i32 %61, ptr %55, align 4
  br label %62

62:                                               ; preds = %60, %51
  %63 = add i32 %52, %39
  %.not3.1 = icmp ugt i32 %63, 20480000
  br i1 %.not3.1, label %._crit_edge.1, label %51, !llvm.loop !7

._crit_edge.1:                                    ; preds = %62
  br label %64

64:                                               ; preds = %._crit_edge.1, %48
  br label %65

65:                                               ; preds = %64, %38
  %66 = phi i32 [ %49, %64 ], [ %40, %38 ]
  %67 = add i32 %39, 1
  %.not1.1 = icmp ugt i32 %67, 20480000
  br i1 %.not1.1, label %68, label %38, !llvm.loop !9

68:                                               ; preds = %65
  %69 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 20480000, i32 noundef %66) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 1280004, i1 false)
  br label %70

70:                                               ; preds = %97, %68
  %71 = phi i32 [ 2, %68 ], [ %99, %97 ]
  %72 = phi i32 [ 0, %68 ], [ %98, %97 ]
  %73 = lshr i32 %71, 5
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %71, 31
  %78 = shl nuw i32 1, %77
  %79 = and i32 %76, %78
  %.not2.2 = icmp eq i32 %79, 0
  br i1 %.not2.2, label %97, label %80

80:                                               ; preds = %70
  %81 = add i32 %72, 1
  %82 = shl i32 %71, 1
  %.not31.2 = icmp ugt i32 %82, 10240000
  br i1 %.not31.2, label %96, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %80
  br label %83

83:                                               ; preds = %94, %.lr.ph.2
  %84 = phi i32 [ %82, %.lr.ph.2 ], [ %95, %94 ]
  %85 = lshr i32 %84, 5
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %86
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %84, 31
  %90 = shl nuw i32 1, %89
  %91 = and i32 %88, %90
  %.not4.2 = icmp eq i32 %91, 0
  br i1 %.not4.2, label %94, label %92

92:                                               ; preds = %83
  %93 = xor i32 %88, %90
  store i32 %93, ptr %87, align 4
  br label %94

94:                                               ; preds = %92, %83
  %95 = add i32 %84, %71
  %.not3.2 = icmp ugt i32 %95, 10240000
  br i1 %.not3.2, label %._crit_edge.2, label %83, !llvm.loop !7

._crit_edge.2:                                    ; preds = %94
  br label %96

96:                                               ; preds = %._crit_edge.2, %80
  br label %97

97:                                               ; preds = %96, %70
  %98 = phi i32 [ %81, %96 ], [ %72, %70 ]
  %99 = add i32 %71, 1
  %.not1.2 = icmp ugt i32 %99, 10240000
  br i1 %.not1.2, label %100, label %70, !llvm.loop !9

100:                                              ; preds = %97
  %101 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 10240000, i32 noundef %98) #5
  call void @free(ptr noundef nonnull %3) #5
  br label %102

102:                                              ; preds = %100, %4
  %103 = phi i32 [ 0, %100 ], [ 1, %4 ]
  ret i32 %103
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
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

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
