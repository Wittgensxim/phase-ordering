; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Bubblesort\round_003\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Bubblesort.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@top = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error3 in Bubble.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [18 x i8] c"Error3 in Bubble.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i32 74755, ptr @seed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bInitarr() #0 {
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  br label %15

.lr.ph:                                           ; preds = %0
  br label %1

1:                                                ; preds = %14, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 1, %.lr.ph ]
  %2 = call i32 @Rand()
  %.fr = freeze i32 %2
  %3 = srem i32 %.fr, 100000
  %4 = add nsw i32 %3, -50000
  %5 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr @biggest, align 4
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 %4, ptr @biggest, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load i32, ptr @littlest, align 4
  %11 = icmp slt i32 %4, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 %4, ptr @littlest, align 4
  br label %13

13:                                               ; preds = %12, %9
  br label %14

14:                                               ; preds = %13, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 501
  br i1 %exitcond, label %1, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %14
  br label %15

15:                                               ; preds = %._crit_edge, %._crit_edge1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  br i1 true, label %.lr.ph2, label %._crit_edge1

._crit_edge1:                                     ; preds = %1
  br label %35

.lr.ph2:                                          ; preds = %1
  br label %2

2:                                                ; preds = %34, %.lr.ph2
  %indvar = phi i32 [ %indvar.next, %34 ], [ 0, %.lr.ph2 ]
  %3 = mul nsw i32 %indvar, -1
  %4 = add nsw i32 %3, 499
  %5 = add nsw i32 %3, 498
  br i1 true, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %2
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %xtraiter = and i32 %4, 1
  %6 = icmp samesign ult i32 %5, 1
  br i1 %6, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %4, %xtraiter
  br label %7

7:                                                ; preds = %22, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next, %22 ], [ 1, %.lr.ph.new ]
  %8 = phi i32 [ %.pre, %.lr.ph.new ], [ %23, %22 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %22 ]
  %9 = add nuw nsw i64 %indvars.iv, 1
  %10 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  store i32 %11, ptr %14, align 4
  store i32 %8, ptr %10, align 4
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ %8, %13 ], [ %11, %7 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %17 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.next
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %9
  store i32 %18, ptr %21, align 4
  store i32 %16, ptr %17, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i32 [ %16, %20 ], [ %18, %15 ]
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %7, label %._crit_edge.unr-lcssa, !llvm.loop !9

._crit_edge.unr-lcssa:                            ; preds = %22
  %.unr = phi i32 [ %23, %22 ]
  %.unr1.wide = phi i64 [ %indvars.iv.next, %22 ]
  %24 = trunc nuw i64 %.unr1.wide to i32
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %.unr, %._crit_edge.unr-lcssa ]
  %.epil.init2 = phi i32 [ 1, %.lr.ph ], [ %24, %._crit_edge.unr-lcssa ]
  %lcmp.mod3 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod3)
  br label %25

25:                                               ; preds = %.epil.preheader
  %26 = add nuw nsw i32 %.epil.init2, 1
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %.epil.init, %29
  br i1 %30, label %31, label %._crit_edge.epilog-lcssa

31:                                               ; preds = %25
  %32 = zext nneg i32 %.epil.init2 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %32
  store i32 %29, ptr %33, align 4
  store i32 %.epil.init, ptr %28, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %31, %25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %34

34:                                               ; preds = %._crit_edge, %2
  %indvar.next = add nuw nsw i32 %indvar, 1
  %exitcond = icmp ne i32 %indvar.next, 499
  br i1 %exitcond, label %2, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %34
  store i32 1, ptr @top, align 4
  br label %35

35:                                               ; preds = %._crit_edge3, %._crit_edge1
  %36 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %37 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %36, %37
  br i1 %.not, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %40 = load i32, ptr @biggest, align 4
  %.not2 = icmp eq i32 %39, %40
  br i1 %.not2, label %42, label %41

41:                                               ; preds = %38, %35
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %42

42:                                               ; preds = %41, %38
  %43 = sext i32 %0 to i64
  %44 = getelementptr [4 x i8], ptr @sortlist, i64 %43
  %45 = getelementptr i8, ptr %44, i64 4
  %46 = load i32, ptr %45, align 4
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %46) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  br label %4

.lr.ph:                                           ; preds = %0
  br label %1

1:                                                ; preds = %1, %.lr.ph
  %2 = phi i32 [ %3, %1 ], [ 0, %.lr.ph ]
  call void @Bubble(i32 noundef %2)
  %3 = add nuw nsw i32 %2, 1
  %exitcond = icmp ne i32 %3, 100
  br i1 %exitcond, label %1, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %1
  br label %4

4:                                                ; preds = %._crit_edge, %._crit_edge1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Bubblesort.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
