; ModuleID = 'results\paper_full\Shootout_ary3\round_002\output.ll'
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
  br i1 %exitcond1, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %8
  %13 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 7
  %14 = icmp ult i64 %13, 7
  br i1 %14, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %wide.trip.count, %xtraiter
  br label %15

15:                                               ; preds = %15, %.lr.ph.new
  %indvars.iv3 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %15 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %15 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %16 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv3
  %17 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %17, ptr %16, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv3, 2
  %18 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next
  %19 = trunc nuw i64 %indvars.iv.next.1 to i32
  store i32 %19, ptr %18, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv3, 3
  %20 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.1
  %21 = trunc nuw i64 %indvars.iv.next.2 to i32
  store i32 %21, ptr %20, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv3, 4
  %22 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.2
  %23 = trunc nuw i64 %indvars.iv.next.3 to i32
  store i32 %23, ptr %22, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv3, 5
  %24 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.3
  %25 = trunc nuw i64 %indvars.iv.next.4 to i32
  store i32 %25, ptr %24, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv3, 6
  %26 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.4
  %27 = trunc nuw i64 %indvars.iv.next.5 to i32
  store i32 %27, ptr %26, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv3, 7
  %28 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.5
  %29 = trunc nuw i64 %indvars.iv.next.6 to i32
  store i32 %29, ptr %28, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv3, 8
  %30 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.6
  %31 = trunc nuw i64 %indvars.iv.next.7 to i32
  store i32 %31, ptr %30, align 4
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp ne i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %15, label %._crit_edge.unr-lcssa, !llvm.loop !7

._crit_edge.unr-lcssa:                            ; preds = %15
  %indvars.iv3.unr = phi i64 [ %indvars.iv.next.7, %15 ]
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv3.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv3.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod7)
  br label %32

32:                                               ; preds = %32, %.epil.preheader
  %indvars.iv3.epil = phi i64 [ %indvars.iv3.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %32 ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %32 ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv3.epil, 1
  %33 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv3.epil
  %34 = trunc nuw i64 %indvars.iv.next.epil to i32
  store i32 %34, ptr %33, align 4
  %exitcond.epil = icmp ne i64 %indvars.iv.next.epil, %wide.trip.count
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp = icmp ne i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %32, label %._crit_edge.epilog-lcssa, !llvm.loop !9

._crit_edge.epilog-lcssa:                         ; preds = %32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %35

35:                                               ; preds = %._crit_edge, %8
  %36 = sext i32 %9 to i64
  %37 = add nsw i64 %36, -1
  br label %.preheader

.preheader:                                       ; preds = %35, %70
  %38 = phi i32 [ 0, %35 ], [ %71, %70 ]
  %39 = icmp sgt i64 %36, 0
  br i1 %39, label %.lr.ph5, label %70

.lr.ph5:                                          ; preds = %.preheader
  %xtraiter8 = and i64 %36, 3
  %lcmp.mod9 = icmp ne i64 %xtraiter8, 0
  br i1 %lcmp.mod9, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph5
  br label %40

40:                                               ; preds = %40, %.prol.preheader
  %indvars.iv24.prol = phi i64 [ %36, %.prol.preheader ], [ %indvars.iv.next3.prol, %40 ]
  %prol.iter = phi i64 [ 0, %.prol.preheader ], [ %prol.iter.next, %40 ]
  %indvars.iv.next3.prol = add nsw i64 %indvars.iv24.prol, -1
  %41 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.prol
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.prol
  %44 = load i32, ptr %43, align 4
  %45 = add nsw i32 %44, %42
  store i32 %45, ptr %43, align 4
  %46 = icmp sgt i64 %indvars.iv.next3.prol, 0
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp = icmp ne i64 %prol.iter.next, %xtraiter8
  br i1 %prol.iter.cmp, label %40, label %.prol.loopexit.unr-lcssa, !llvm.loop !11

.prol.loopexit.unr-lcssa:                         ; preds = %40
  %indvars.iv24.unr.ph = phi i64 [ %indvars.iv.next3.prol, %40 ]
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph5
  %indvars.iv24.unr = phi i64 [ %36, %.lr.ph5 ], [ %indvars.iv24.unr.ph, %.prol.loopexit.unr-lcssa ]
  %47 = icmp ult i64 %37, 3
  br i1 %47, label %._crit_edge6, label %.lr.ph5.new

.lr.ph5.new:                                      ; preds = %.prol.loopexit
  br label %48

48:                                               ; preds = %48, %.lr.ph5.new
  %indvars.iv24 = phi i64 [ %indvars.iv24.unr, %.lr.ph5.new ], [ %indvars.iv.next3.3, %48 ]
  %indvars.iv.next3 = add nsw i64 %indvars.iv24, -1
  %49 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3
  %52 = load i32, ptr %51, align 4
  %53 = add nsw i32 %52, %50
  store i32 %53, ptr %51, align 4
  %indvars.iv.next3.1 = add nsw i64 %indvars.iv24, -2
  %54 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.1
  %57 = load i32, ptr %56, align 4
  %58 = add nsw i32 %57, %55
  store i32 %58, ptr %56, align 4
  %indvars.iv.next3.2 = add nsw i64 %indvars.iv24, -3
  %59 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.2
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.2
  %62 = load i32, ptr %61, align 4
  %63 = add nsw i32 %62, %60
  store i32 %63, ptr %61, align 4
  %indvars.iv.next3.3 = add nsw i64 %indvars.iv24, -4
  %64 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.3
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.3
  %67 = load i32, ptr %66, align 4
  %68 = add nsw i32 %67, %65
  store i32 %68, ptr %66, align 4
  %69 = icmp sgt i64 %indvars.iv.next3.3, 0
  br i1 %69, label %48, label %._crit_edge6.unr-lcssa, !llvm.loop !12

._crit_edge6.unr-lcssa:                           ; preds = %48
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %.prol.loopexit, %._crit_edge6.unr-lcssa
  br label %70

70:                                               ; preds = %._crit_edge6, %.preheader
  %71 = add nuw nsw i32 %38, 1
  %exitcond5 = icmp ne i32 %71, 1000
  br i1 %exitcond5, label %.preheader, label %72, !llvm.loop !13

72:                                               ; preds = %70
  %73 = load i32, ptr %12, align 4
  %74 = getelementptr [4 x i8], ptr %12, i64 %10
  %75 = getelementptr i8, ptr %74, i64 -4
  %76 = load i32, ptr %75, align 4
  %77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %73, i32 noundef %76) #5
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
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
