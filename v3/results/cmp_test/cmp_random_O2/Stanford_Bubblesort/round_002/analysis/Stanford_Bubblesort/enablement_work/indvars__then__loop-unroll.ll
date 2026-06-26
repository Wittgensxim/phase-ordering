; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Bubblesort\round_001\output.ll'
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
  br label %32

.lr.ph2:                                          ; preds = %1
  br label %2

2:                                                ; preds = %29, %.lr.ph2
  %indvar = phi i32 [ %indvar.next, %29 ], [ 0, %.lr.ph2 ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %29 ], [ 500, %.lr.ph2 ]
  %3 = mul nsw i32 %indvar, -1
  %4 = add i32 %3, 499
  %5 = add i32 %3, 498
  br i1 true, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %xtraiter = and i32 %4, 1
  %6 = icmp ult i32 %5, 1
  br i1 %6, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %4, %xtraiter
  br label %7

7:                                                ; preds = %21, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %21 ]
  %8 = phi i32 [ %.pre, %.lr.ph.new ], [ %22, %21 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %21 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.next
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  store i32 %10, ptr %13, align 4
  store i32 %8, ptr %9, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ %8, %12 ], [ %10, %7 ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %16 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.next.1
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.next
  store i32 %17, ptr %20, align 4
  store i32 %15, ptr %16, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %15, %19 ], [ %17, %14 ]
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %7, label %._crit_edge.unr-lcssa, !llvm.loop !9

._crit_edge.unr-lcssa:                            ; preds = %21
  %indvars.iv.unr = phi i64 [ %indvars.iv.next.1, %21 ]
  %.unr = phi i32 [ %22, %21 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.unr, %._crit_edge.unr-lcssa ]
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod5 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod5)
  br label %23

23:                                               ; preds = %.epil.preheader
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 1
  %24 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.next.epil
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %.epil.init, %25
  br i1 %26, label %27, label %._crit_edge.epilog-lcssa

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.epil.init
  store i32 %25, ptr %28, align 4
  store i32 %.epil.init, ptr %24, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %27, %23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %29

29:                                               ; preds = %._crit_edge, %2
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, -1
  %30 = trunc nuw nsw i64 %indvars.iv.next3 to i32
  store i32 %30, ptr @top, align 4
  %31 = icmp samesign ugt i64 %indvars.iv2, 2
  %indvar.next = add i32 %indvar, 1
  br i1 %31, label %2, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge3, %._crit_edge1
  %33 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %34 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %33, %34
  br i1 %.not, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %37 = load i32, ptr @biggest, align 4
  %.not2 = icmp eq i32 %36, %37
  br i1 %.not2, label %39, label %38

38:                                               ; preds = %35, %32
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %39

39:                                               ; preds = %38, %35
  %40 = sext i32 %0 to i64
  %41 = getelementptr [4 x i8], ptr @sortlist, i64 %40
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = load i32, ptr %42, align 4
  %44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %43) #4
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
