; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_002\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %103

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 5120004, i1 false)
  br label %7

7:                                                ; preds = %34, %6
  %8 = phi i32 [ 2, %6 ], [ %36, %34 ]
  %9 = phi i32 [ 0, %6 ], [ %35, %34 ]
  %10 = lshr i32 %8, 5
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %8, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %34, label %17

17:                                               ; preds = %7
  %18 = add i32 %9, 1
  %19 = shl i32 %8, 1
  %.not31 = icmp samesign ugt i32 %19, 40960000
  br i1 %.not31, label %33, label %.lr.ph

.lr.ph:                                           ; preds = %17
  br label %20

20:                                               ; preds = %31, %.lr.ph
  %21 = phi i32 [ %19, %.lr.ph ], [ %32, %31 ]
  %22 = lshr i32 %21, 5
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %21, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %25, %27
  %.not4 = icmp eq i32 %28, 0
  br i1 %.not4, label %31, label %29

29:                                               ; preds = %20
  %30 = xor i32 %25, %27
  store i32 %30, ptr %24, align 4
  br label %31

31:                                               ; preds = %29, %20
  %32 = add nuw nsw i32 %21, %8
  %.not3 = icmp samesign ugt i32 %32, 40960000
  br i1 %.not3, label %._crit_edge, label %20, !llvm.loop !7

._crit_edge:                                      ; preds = %31
  br label %33

33:                                               ; preds = %._crit_edge, %17
  br label %34

34:                                               ; preds = %33, %7
  %35 = phi i32 [ %18, %33 ], [ %9, %7 ]
  %36 = add nuw nsw i32 %8, 1
  %exitcond = icmp eq i32 %36, 40960001
  br i1 %exitcond, label %37, label %7, !llvm.loop !9

37:                                               ; preds = %34
  %.lcssa = phi i32 [ %35, %34 ]
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 40960000, i32 noundef %.lcssa) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 2560004, i1 false)
  br label %39

39:                                               ; preds = %66, %37
  %40 = phi i32 [ 2, %37 ], [ %68, %66 ]
  %41 = phi i32 [ 0, %37 ], [ %67, %66 ]
  %42 = lshr i32 %40, 5
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %40, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %45, %47
  %.not2.1 = icmp eq i32 %48, 0
  br i1 %.not2.1, label %66, label %49

49:                                               ; preds = %39
  %50 = add i32 %41, 1
  %51 = shl i32 %40, 1
  %.not31.1 = icmp samesign ugt i32 %51, 20480000
  br i1 %.not31.1, label %65, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %49
  br label %52

52:                                               ; preds = %63, %.lr.ph.1
  %53 = phi i32 [ %51, %.lr.ph.1 ], [ %64, %63 ]
  %54 = lshr i32 %53, 5
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %53, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %57, %59
  %.not4.1 = icmp eq i32 %60, 0
  br i1 %.not4.1, label %63, label %61

61:                                               ; preds = %52
  %62 = xor i32 %57, %59
  store i32 %62, ptr %56, align 4
  br label %63

63:                                               ; preds = %61, %52
  %64 = add nuw nsw i32 %53, %40
  %.not3.1 = icmp samesign ugt i32 %64, 20480000
  br i1 %.not3.1, label %._crit_edge.1, label %52, !llvm.loop !7

._crit_edge.1:                                    ; preds = %63
  br label %65

65:                                               ; preds = %._crit_edge.1, %49
  br label %66

66:                                               ; preds = %65, %39
  %67 = phi i32 [ %50, %65 ], [ %41, %39 ]
  %68 = add nuw nsw i32 %40, 1
  %exitcond.1 = icmp eq i32 %68, 20480001
  br i1 %exitcond.1, label %69, label %39, !llvm.loop !9

69:                                               ; preds = %66
  %.lcssa.1 = phi i32 [ %67, %66 ]
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 20480000, i32 noundef %.lcssa.1) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 1280004, i1 false)
  br label %71

71:                                               ; preds = %98, %69
  %72 = phi i32 [ 2, %69 ], [ %100, %98 ]
  %73 = phi i32 [ 0, %69 ], [ %99, %98 ]
  %74 = lshr i32 %72, 5
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %75
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %72, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %77, %79
  %.not2.2 = icmp eq i32 %80, 0
  br i1 %.not2.2, label %98, label %81

81:                                               ; preds = %71
  %82 = add i32 %73, 1
  %83 = shl i32 %72, 1
  %.not31.2 = icmp samesign ugt i32 %83, 10240000
  br i1 %.not31.2, label %97, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %81
  br label %84

84:                                               ; preds = %95, %.lr.ph.2
  %85 = phi i32 [ %83, %.lr.ph.2 ], [ %96, %95 ]
  %86 = lshr i32 %85, 5
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %87
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %85, 31
  %91 = shl nuw i32 1, %90
  %92 = and i32 %89, %91
  %.not4.2 = icmp eq i32 %92, 0
  br i1 %.not4.2, label %95, label %93

93:                                               ; preds = %84
  %94 = xor i32 %89, %91
  store i32 %94, ptr %88, align 4
  br label %95

95:                                               ; preds = %93, %84
  %96 = add nuw nsw i32 %85, %72
  %.not3.2 = icmp samesign ugt i32 %96, 10240000
  br i1 %.not3.2, label %._crit_edge.2, label %84, !llvm.loop !7

._crit_edge.2:                                    ; preds = %95
  br label %97

97:                                               ; preds = %._crit_edge.2, %81
  br label %98

98:                                               ; preds = %97, %71
  %99 = phi i32 [ %82, %97 ], [ %73, %71 ]
  %100 = add nuw nsw i32 %72, 1
  %exitcond.2 = icmp eq i32 %100, 10240001
  br i1 %exitcond.2, label %101, label %71, !llvm.loop !9

101:                                              ; preds = %98
  %.lcssa.2 = phi i32 [ %99, %98 ]
  %102 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 10240000, i32 noundef %.lcssa.2) #6
  call void @free(ptr noundef nonnull %3) #6
  br label %103

103:                                              ; preds = %101, %4
  %104 = phi i32 [ 0, %101 ], [ 1, %4 ]
  ret i32 %104
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare dso_local i32 @printf(ptr noundef, ...) #3

declare dso_local void @free(ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

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
