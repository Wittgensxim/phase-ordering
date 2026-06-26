; ModuleID = 'results\paper_full\Shootout_ary3\round_007\output.ll'
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
  br i1 %exitcond1, label %.lr.ph.preheader, label %.preheader1.preheader

.lr.ph.preheader:                                 ; preds = %8
  %13 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 7
  %14 = icmp ult i64 %13, 7
  br i1 %14, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = sub i64 %wide.trip.count, %xtraiter
  br label %.lr.ph

.preheader1.preheader.loopexit.unr-lcssa:         ; preds = %.lr.ph
  %indvars.iv3.unr = phi i64 [ %indvars.iv.next.7, %.lr.ph ]
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.epil.preheader, label %.preheader1.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader1.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv3.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv3.unr, %.preheader1.preheader.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv3.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv3.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv3.epil, 1
  %15 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv3.epil
  %16 = trunc nuw i64 %indvars.iv.next.epil to i32
  store i32 %16, ptr %15, align 4
  %exitcond.epil = icmp ne i64 %indvars.iv.next.epil, %wide.trip.count
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp = icmp ne i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %.lr.ph.epil, label %.preheader1.preheader, !llvm.loop !7

.preheader1.preheader:                            ; preds = %.preheader1.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %8
  %17 = add nsw i64 %10, -1
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv3 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %18 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv3
  %19 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %19, ptr %18, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv3, 2
  %20 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next
  %21 = trunc nuw i64 %indvars.iv.next.1 to i32
  store i32 %21, ptr %20, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv3, 3
  %22 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.1
  %23 = trunc nuw i64 %indvars.iv.next.2 to i32
  store i32 %23, ptr %22, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv3, 4
  %24 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.2
  %25 = trunc nuw i64 %indvars.iv.next.3 to i32
  store i32 %25, ptr %24, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv3, 5
  %26 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.3
  %27 = trunc nuw i64 %indvars.iv.next.4 to i32
  store i32 %27, ptr %26, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv3, 6
  %28 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.4
  %29 = trunc nuw i64 %indvars.iv.next.5 to i32
  store i32 %29, ptr %28, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv3, 7
  %30 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.5
  %31 = trunc nuw i64 %indvars.iv.next.6 to i32
  store i32 %31, ptr %30, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv3, 8
  %32 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next.6
  %33 = trunc nuw i64 %indvars.iv.next.7 to i32
  store i32 %33, ptr %32, align 4
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp ne i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph, label %.preheader1.preheader.loopexit.unr-lcssa, !llvm.loop !9

.preheader.preheader:                             ; preds = %.preheader1, %.preheader1.preheader
  %34 = phi i32 [ 0, %.preheader1.preheader ], [ %64, %.preheader1 ]
  %35 = icmp sgt i64 %10, 0
  br i1 %35, label %.preheader.preheader1, label %.preheader1

.preheader.preheader1:                            ; preds = %.preheader.preheader
  %xtraiter3 = and i64 %10, 3
  %lcmp.mod4 = icmp ne i64 %xtraiter3, 0
  br i1 %lcmp.mod4, label %.preheader.prol, label %.preheader.prol.loopexit

.preheader.prol:                                  ; preds = %.preheader.preheader1, %.preheader.prol
  %indvars.iv24.prol = phi i64 [ %indvars.iv.next3.prol, %.preheader.prol ], [ %10, %.preheader.preheader1 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader1 ]
  %indvars.iv.next3.prol = add nsw i64 %indvars.iv24.prol, -1
  %36 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.prol
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.prol
  %39 = load i32, ptr %38, align 4
  %40 = add nsw i32 %39, %37
  store i32 %40, ptr %38, align 4
  %41 = icmp sgt i64 %indvars.iv.next3.prol, 0
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp = icmp ne i64 %prol.iter.next, %xtraiter3
  br i1 %prol.iter.cmp, label %.preheader.prol, label %.preheader.prol.loopexit, !llvm.loop !11

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader1
  %indvars.iv24.unr = phi i64 [ %10, %.preheader.preheader1 ], [ %indvars.iv.next3.prol, %.preheader.prol ]
  %42 = icmp ult i64 %17, 3
  br i1 %42, label %.preheader1, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv24 = phi i64 [ %indvars.iv.next3.3, %.preheader ], [ %indvars.iv24.unr, %.preheader.prol.loopexit ]
  %indvars.iv.next3 = add nsw i64 %indvars.iv24, -1
  %43 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3
  %46 = load i32, ptr %45, align 4
  %47 = add nsw i32 %46, %44
  store i32 %47, ptr %45, align 4
  %indvars.iv.next3.1 = add nsw i64 %indvars.iv24, -2
  %48 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.1
  %51 = load i32, ptr %50, align 4
  %52 = add nsw i32 %51, %49
  store i32 %52, ptr %50, align 4
  %indvars.iv.next3.2 = add nsw i64 %indvars.iv24, -3
  %53 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.2
  %56 = load i32, ptr %55, align 4
  %57 = add nsw i32 %56, %54
  store i32 %57, ptr %55, align 4
  %indvars.iv.next3.3 = add nsw i64 %indvars.iv24, -4
  %58 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3.3
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3.3
  %61 = load i32, ptr %60, align 4
  %62 = add nsw i32 %61, %59
  store i32 %62, ptr %60, align 4
  %63 = icmp sgt i64 %indvars.iv.next3.3, 0
  br i1 %63, label %.preheader, label %.preheader1, !llvm.loop !12

.preheader1:                                      ; preds = %.preheader.prol.loopexit, %.preheader, %.preheader.preheader
  %64 = add nuw nsw i32 %34, 1
  %exitcond5 = icmp ne i32 %64, 1000
  br i1 %exitcond5, label %.preheader.preheader, label %65, !llvm.loop !13

65:                                               ; preds = %.preheader1
  %66 = load i32, ptr %12, align 4
  %67 = getelementptr [4 x i8], ptr %12, i64 %10
  %68 = getelementptr i8, ptr %67, i64 -4
  %69 = load i32, ptr %68, align 4
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %66, i32 noundef %69) #5
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
