; ModuleID = 'results\paper_full\Shootout_ary3\round_004\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6) #5
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ 1500000, %2 ]
  %10 = sext i32 %9 to i64
  %11 = call ptr @calloc(i64 noundef %10, i64 noundef 4) #6
  %12 = call ptr @calloc(i64 noundef %10, i64 noundef 4) #6
  %smax = call i32 @llvm.smax.i32(i32 %9, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond1 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond1, label %.lr.ph, label %.preheader1.preheader

.lr.ph:                                           ; preds = %8
  %13 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 7
  %14 = icmp ult i64 %13, 7
  br i1 %14, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %wide.trip.count, %xtraiter
  br label %19

..preheader1.preheader_crit_edge.unr-lcssa:       ; preds = %19
  %indvars.iv3.unr = phi i64 [ %indvars.iv.next.7, %19 ]
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %..preheader1.preheader_crit_edge

.epil.preheader:                                  ; preds = %..preheader1.preheader_crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv3.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv3.unr, %..preheader1.preheader_crit_edge.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %15

15:                                               ; preds = %15, %.epil.preheader
  %indvars.iv3.epil = phi i64 [ %indvars.iv3.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %15 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %15 ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv3.epil, 1
  %16 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv3.epil
  %17 = trunc nuw i64 %indvars.iv.next.epil to i32
  store i32 %17, ptr %16, align 4
  %exitcond.epil = icmp ne i64 %indvars.iv.next.epil, %wide.trip.count
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp = icmp ne i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %15, label %..preheader1.preheader_crit_edge.epilog-lcssa, !llvm.loop !7

..preheader1.preheader_crit_edge.epilog-lcssa:    ; preds = %15
  br label %..preheader1.preheader_crit_edge

..preheader1.preheader_crit_edge:                 ; preds = %..preheader1.preheader_crit_edge.unr-lcssa, %..preheader1.preheader_crit_edge.epilog-lcssa
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %..preheader1.preheader_crit_edge, %8
  %18 = add nsw i64 %10, -1
  br label %.preheader.preheader

19:                                               ; preds = %19, %.lr.ph.new
  %indvars.iv3 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %19 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %19 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %20 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv3
  %21 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %21, ptr %20, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv3, 2
  %22 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next
  %23 = trunc nuw i64 %indvars.iv.next.1 to i32
  store i32 %23, ptr %22, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv3, 3
  %24 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.1
  %25 = trunc nuw i64 %indvars.iv.next.2 to i32
  store i32 %25, ptr %24, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv3, 4
  %26 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.2
  %27 = trunc nuw i64 %indvars.iv.next.3 to i32
  store i32 %27, ptr %26, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv3, 5
  %28 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.3
  %29 = trunc nuw i64 %indvars.iv.next.4 to i32
  store i32 %29, ptr %28, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv3, 6
  %30 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.4
  %31 = trunc nuw i64 %indvars.iv.next.5 to i32
  store i32 %31, ptr %30, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv3, 7
  %32 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.5
  %33 = trunc nuw i64 %indvars.iv.next.6 to i32
  store i32 %33, ptr %32, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv3, 8
  %34 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.6
  %35 = trunc nuw i64 %indvars.iv.next.7 to i32
  store i32 %35, ptr %34, align 4
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp ne i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %19, label %..preheader1.preheader_crit_edge.unr-lcssa, !llvm.loop !9

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %36 = phi i32 [ 0, %.preheader1.preheader ], [ %66, %.preheader1 ]
  %37 = icmp sgt i64 %10, 0
  br i1 %37, label %.lr.ph5, label %.preheader1

.lr.ph5:                                          ; preds = %.preheader.preheader
  %xtraiter7 = and i64 %10, 3
  %lcmp.mod8 = icmp ne i64 %xtraiter7, 0
  br i1 %lcmp.mod8, label %.preheader.prol.preheader, label %.preheader.prol.loopexit

.preheader.prol.preheader:                        ; preds = %.lr.ph5
  br label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.prol, %.preheader.prol.preheader
  %indvars.iv24.prol = phi i64 [ %10, %.preheader.prol.preheader ], [ %indvars.iv.next3.prol, %.preheader.prol ]
  %prol.iter = phi i64 [ 0, %.preheader.prol.preheader ], [ %prol.iter.next, %.preheader.prol ]
  %indvars.iv.next3.prol = add nsw i64 %indvars.iv24.prol, -1
  %38 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.prol
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.prol
  %41 = load i32, ptr %40, align 4
  %42 = add nsw i32 %41, %39
  store i32 %42, ptr %40, align 4
  %43 = icmp sgt i64 %indvars.iv.next3.prol, 0
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp = icmp ne i64 %prol.iter.next, %xtraiter7
  br i1 %prol.iter.cmp, label %.preheader.prol, label %.preheader.prol.loopexit.unr-lcssa, !llvm.loop !11

.preheader.prol.loopexit.unr-lcssa:               ; preds = %.preheader.prol
  %indvars.iv24.unr.ph = phi i64 [ %indvars.iv.next3.prol, %.preheader.prol ]
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol.loopexit.unr-lcssa, %.lr.ph5
  %indvars.iv24.unr = phi i64 [ %10, %.lr.ph5 ], [ %indvars.iv24.unr.ph, %.preheader.prol.loopexit.unr-lcssa ]
  %44 = icmp ult i64 %18, 3
  br i1 %44, label %.preheader._crit_edge, label %.lr.ph5.new

.lr.ph5.new:                                      ; preds = %.preheader.prol.loopexit
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.lr.ph5.new
  %indvars.iv24 = phi i64 [ %indvars.iv24.unr, %.lr.ph5.new ], [ %indvars.iv.next3.3, %.preheader ]
  %indvars.iv.next3 = add nsw i64 %indvars.iv24, -1
  %45 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3
  %48 = load i32, ptr %47, align 4
  %49 = add nsw i32 %48, %46
  store i32 %49, ptr %47, align 4
  %indvars.iv.next3.1 = add nsw i64 %indvars.iv24, -2
  %50 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.1
  %53 = load i32, ptr %52, align 4
  %54 = add nsw i32 %53, %51
  store i32 %54, ptr %52, align 4
  %indvars.iv.next3.2 = add nsw i64 %indvars.iv24, -3
  %55 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.2
  %58 = load i32, ptr %57, align 4
  %59 = add nsw i32 %58, %56
  store i32 %59, ptr %57, align 4
  %indvars.iv.next3.3 = add nsw i64 %indvars.iv24, -4
  %60 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.3
  %63 = load i32, ptr %62, align 4
  %64 = add nsw i32 %63, %61
  store i32 %64, ptr %62, align 4
  %65 = icmp sgt i64 %indvars.iv.next3.3, 0
  br i1 %65, label %.preheader, label %.preheader._crit_edge.unr-lcssa, !llvm.loop !12

.preheader._crit_edge.unr-lcssa:                  ; preds = %.preheader
  br label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader.prol.loopexit, %.preheader._crit_edge.unr-lcssa
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader._crit_edge, %.preheader.preheader
  %66 = add nuw nsw i32 %36, 1
  %exitcond5 = icmp ne i32 %66, 1000
  br i1 %exitcond5, label %.preheader.preheader, label %67, !llvm.loop !13

67:                                               ; preds = %.preheader1
  %68 = load i32, ptr %12, align 4
  %69 = getelementptr [4 x i8], ptr %12, i64 %10
  %70 = getelementptr i8, ptr %69, i64 -4
  %71 = load i32, ptr %70, align 4
  %72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %68, i32 noundef %71) #5
  call void @free(ptr noundef %11) #5
  call void @free(ptr noundef nonnull %12) #5
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i64 noundef, i64 noundef) #2

declare dso_local i32 @printf(ptr noundef, ...) #1

declare dso_local void @free(ptr noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
