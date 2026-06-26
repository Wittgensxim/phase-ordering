; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_004\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %92, label %.preheader

.preheader:                                       ; preds = %2
  br label %4

4:                                                ; preds = %.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 5120004, i1 false)
  br label %5

5:                                                ; preds = %._crit_edge, %4
  %6 = phi i32 [ 2, %4 ], [ %31, %._crit_edge ]
  %7 = phi i32 [ 0, %4 ], [ %30, %._crit_edge ]
  %8 = lshr i32 %6, 5
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %6, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %._crit_edge, label %15

15:                                               ; preds = %5
  %16 = add i32 %7, 1
  %17 = shl nuw i32 %6, 1
  %.not31 = icmp samesign ugt i32 %17, 40960000
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %15
  br label %.lr.ph

.lr.ph:                                           ; preds = %28, %.lr.ph.preheader
  %18 = phi i32 [ %29, %28 ], [ %17, %.lr.ph.preheader ]
  %19 = lshr i32 %18, 5
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %18, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %.not4 = icmp eq i32 %25, 0
  br i1 %.not4, label %28, label %26

26:                                               ; preds = %.lr.ph
  %27 = xor i32 %24, %22
  store i32 %27, ptr %21, align 4
  br label %28

28:                                               ; preds = %26, %.lr.ph
  %29 = add nuw nsw i32 %18, %6
  %.not3 = icmp samesign ugt i32 %29, 40960000
  br i1 %.not3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !7

._crit_edge.loopexit:                             ; preds = %28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %15, %5
  %30 = phi i32 [ %7, %5 ], [ %16, %15 ], [ %16, %._crit_edge.loopexit ]
  %31 = add nuw nsw i32 %6, 1
  %exitcond = icmp eq i32 %6, 40960000
  br i1 %exitcond, label %32, label %5, !llvm.loop !9

32:                                               ; preds = %._crit_edge
  %.lcssa = phi i32 [ %30, %._crit_edge ]
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 40960000, i32 noundef %.lcssa) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 2560004, i1 false)
  br label %34

34:                                               ; preds = %._crit_edge.1, %32
  %35 = phi i32 [ 2, %32 ], [ %60, %._crit_edge.1 ]
  %36 = phi i32 [ 0, %32 ], [ %59, %._crit_edge.1 ]
  %37 = lshr i32 %35, 5
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %35, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %40, %42
  %.not2.1 = icmp eq i32 %43, 0
  br i1 %.not2.1, label %._crit_edge.1, label %44

44:                                               ; preds = %34
  %45 = add i32 %36, 1
  %46 = shl nuw i32 %35, 1
  %.not31.1 = icmp samesign ugt i32 %46, 20480000
  br i1 %.not31.1, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %44
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %57, %.lr.ph.preheader.1
  %47 = phi i32 [ %58, %57 ], [ %46, %.lr.ph.preheader.1 ]
  %48 = lshr i32 %47, 5
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %47, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %.not4.1 = icmp eq i32 %54, 0
  br i1 %.not4.1, label %57, label %55

55:                                               ; preds = %.lr.ph.1
  %56 = xor i32 %53, %51
  store i32 %56, ptr %50, align 4
  br label %57

57:                                               ; preds = %55, %.lr.ph.1
  %58 = add nuw nsw i32 %47, %35
  %.not3.1 = icmp samesign ugt i32 %58, 20480000
  br i1 %.not3.1, label %._crit_edge.loopexit.1, label %.lr.ph.1, !llvm.loop !7

._crit_edge.loopexit.1:                           ; preds = %57
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %44, %34
  %59 = phi i32 [ %36, %34 ], [ %45, %44 ], [ %45, %._crit_edge.loopexit.1 ]
  %60 = add nuw nsw i32 %35, 1
  %exitcond.1 = icmp eq i32 %35, 20480000
  br i1 %exitcond.1, label %61, label %34, !llvm.loop !9

61:                                               ; preds = %._crit_edge.1
  %.lcssa.1 = phi i32 [ %59, %._crit_edge.1 ]
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 20480000, i32 noundef %.lcssa.1) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 1280004, i1 false)
  br label %63

63:                                               ; preds = %._crit_edge.2, %61
  %64 = phi i32 [ 2, %61 ], [ %89, %._crit_edge.2 ]
  %65 = phi i32 [ 0, %61 ], [ %88, %._crit_edge.2 ]
  %66 = lshr i32 %64, 5
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %67
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %64, 31
  %71 = shl nuw i32 1, %70
  %72 = and i32 %69, %71
  %.not2.2 = icmp eq i32 %72, 0
  br i1 %.not2.2, label %._crit_edge.2, label %73

73:                                               ; preds = %63
  %74 = add i32 %65, 1
  %75 = shl nuw i32 %64, 1
  %.not31.2 = icmp samesign ugt i32 %75, 10240000
  br i1 %.not31.2, label %._crit_edge.2, label %.lr.ph.preheader.2

.lr.ph.preheader.2:                               ; preds = %73
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %86, %.lr.ph.preheader.2
  %76 = phi i32 [ %87, %86 ], [ %75, %.lr.ph.preheader.2 ]
  %77 = lshr i32 %76, 5
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %78
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %76, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %.not4.2 = icmp eq i32 %83, 0
  br i1 %.not4.2, label %86, label %84

84:                                               ; preds = %.lr.ph.2
  %85 = xor i32 %82, %80
  store i32 %85, ptr %79, align 4
  br label %86

86:                                               ; preds = %84, %.lr.ph.2
  %87 = add nuw nsw i32 %76, %64
  %.not3.2 = icmp samesign ugt i32 %87, 10240000
  br i1 %.not3.2, label %._crit_edge.loopexit.2, label %.lr.ph.2, !llvm.loop !7

._crit_edge.loopexit.2:                           ; preds = %86
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.loopexit.2, %73, %63
  %88 = phi i32 [ %65, %63 ], [ %74, %73 ], [ %74, %._crit_edge.loopexit.2 ]
  %89 = add nuw nsw i32 %64, 1
  %exitcond.2 = icmp eq i32 %64, 10240000
  br i1 %exitcond.2, label %90, label %63, !llvm.loop !9

90:                                               ; preds = %._crit_edge.2
  %.lcssa.2 = phi i32 [ %88, %._crit_edge.2 ]
  %91 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 10240000, i32 noundef %.lcssa.2) #6
  call void @free(ptr noundef nonnull %3) #6
  br label %92

92:                                               ; preds = %90, %2
  %93 = phi i32 [ 0, %90 ], [ 1, %2 ]
  ret i32 %93
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
