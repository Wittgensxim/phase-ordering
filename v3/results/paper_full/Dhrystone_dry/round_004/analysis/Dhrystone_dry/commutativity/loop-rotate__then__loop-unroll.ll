; ModuleID = 'results\paper_full\Dhrystone_dry\round_003\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/dry.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@Version = dso_local global [4 x i8] c"1.1\00", align 1
@PtrGlbNext = dso_local global ptr null, align 8
@PtrGlb = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Array2Glob = dso_local global [51 x [51 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@BoolGlob = dso_local global i32 0, align 4
@Array1Glob = dso_local global [51 x i32] zeroinitializer, align 16
@Char2Glob = dso_local global i8 0, align 1
@Char1Glob = dso_local global i8 0, align 1
@IntGlob = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @Proc0()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [31 x i8], align 16
  %5 = alloca [31 x i8], align 16
  %6 = call i32 @clock() #6
  br label %7

7:                                                ; preds = %0
  %8 = call i32 @clock() #6
  %9 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %9, ptr @PtrGlbNext, align 8
  %10 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %10, ptr @PtrGlb, align 8
  %11 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %11, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 10001, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 40, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %15, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #6
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %16 = call i32 @clock() #6
  br label %17

17:                                               ; preds = %7, %47
  %.16 = phi i32 [ 0, %7 ], [ %51, %47 ]
  %18 = call i32 @Proc5()
  %19 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #6
  store i32 10000, ptr %3, align 4
  %20 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %20, 0
  %21 = zext i1 %.not to i32
  store i32 %21, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  %22 = icmp slt i32 %.pre, 3
  br i1 %22, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %17
  br label %23

23:                                               ; preds = %.lr.ph, %23
  %24 = phi i32 [ %.pre, %.lr.ph ], [ %29, %23 ]
  %25 = mul nsw i32 %24, 5
  %26 = add nsw i32 %25, -3
  store i32 %26, ptr %2, align 4
  %27 = call i32 @Proc7(i32 noundef %24, i32 noundef 3, ptr noundef nonnull %2)
  %28 = load i32, ptr %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %1, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %23, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %23
  %split = phi i32 [ %29, %23 ]
  br label %31

31:                                               ; preds = %._crit_edge, %17
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.pre, %17 ]
  %32 = load i32, ptr %2, align 4
  %33 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %32)
  %34 = load ptr, ptr @PtrGlb, align 8
  %35 = call i32 @Proc1(ptr noundef %34)
  %36 = load i8, ptr @Char2Glob, align 1
  %.not11 = icmp sgt i8 65, %36
  br i1 %.not11, label %47, label %.lr.ph4

.lr.ph4:                                          ; preds = %31
  br label %37

37:                                               ; preds = %.lr.ph4, %44
  %.012 = phi i8 [ 65, %.lr.ph4 ], [ %45, %44 ]
  %38 = load i32, ptr %3, align 4
  %39 = sext i8 %.012 to i32
  %40 = call i32 @Func1(i32 noundef %39, i32 noundef 67)
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %44

44:                                               ; preds = %42, %37
  %45 = add i8 %.012, 1
  %46 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %45, %46
  br i1 %.not1, label %._crit_edge5, label %37, !llvm.loop !9

._crit_edge5:                                     ; preds = %44
  br label %47

47:                                               ; preds = %._crit_edge5, %31
  %48 = load i32, ptr %1, align 4
  %49 = mul nsw i32 %48, 3
  store i32 %49, ptr %2, align 4
  %50 = call i32 @Proc2(ptr noundef nonnull %1)
  %51 = add nuw nsw i32 %.16, 1
  %exitcond.not = icmp eq i32 %51, 100000000
  br i1 %exitcond.not, label %52, label %17, !llvm.loop !10

52:                                               ; preds = %47
  ret i32 undef
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 5, ptr %2, align 8
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 5, ptr %4, align 8
  %5 = load ptr, ptr %0, align 8
  store ptr %5, ptr %5, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %.pre = load i8, ptr @Char1Glob, align 1
  %2 = icmp eq i8 %.pre, 65
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4
  %5 = add nsw i32 %4, 9
  %6 = load i32, ptr @IntGlob, align 4
  %7 = sub nsw i32 %5, %6
  store i32 %7, ptr %0, align 4
  br label %8

8:                                                ; preds = %3, %1
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8, !nonnull !11, !noundef !11
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %0, align 8
  %.pre = load i32, ptr @IntGlob, align 4
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  %4 = getelementptr inbounds nuw i8, ptr %.pre1, i64 16
  %5 = call i32 @Proc7(i32 noundef 10, i32 noundef %.pre, ptr noundef nonnull %4)
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc4() #0 {
  store i8 66, ptr @Char2Glob, align 1
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc5() #0 {
  store i8 65, ptr @Char1Glob, align 1
  store i32 0, ptr @BoolGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc6(i32 noundef %0, ptr noundef %1) #0 {
  store i32 %0, ptr %1, align 4
  %3 = call i32 @Func3(i32 noundef %0)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %5

5:                                                ; preds = %4, %2
  switch i32 %0, label %12 [
    i32 0, label %6
    i32 10000, label %7
    i32 10001, label %10
    i32 10003, label %11
  ]

6:                                                ; preds = %5
  store i32 0, ptr %1, align 4
  br label %12

7:                                                ; preds = %5
  %8 = load i32, ptr @IntGlob, align 4
  %9 = icmp sgt i32 %8, 100
  %. = select i1 %9, i32 0, i32 10002
  store i32 %., ptr %1, align 4
  br label %12

10:                                               ; preds = %5
  store i32 10000, ptr %1, align 4
  br label %12

11:                                               ; preds = %5
  store i32 10001, ptr %1, align 4
  br label %12

12:                                               ; preds = %11, %10, %7, %6, %5
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc7(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = add nsw i32 %0, 2
  %5 = add nsw i32 %1, %4
  store i32 %5, ptr %2, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = add nsw i32 %2, 5
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  store i32 %3, ptr %7, align 4
  %8 = sext i32 %2 to i64
  %9 = getelementptr [4 x i8], ptr %0, i64 %8
  %10 = getelementptr i8, ptr %9, i64 24
  store i32 %3, ptr %10, align 4
  %11 = getelementptr i8, ptr %9, i64 140
  store i32 %5, ptr %11, align 4
  %12 = sext i32 %2 to i64
  %13 = add nsw i64 %12, 5
  %14 = add i32 %2, 7
  %wide.trip.count = sext i32 %14 to i64
  %exitcond1 = icmp eq i64 %13, %wide.trip.count
  br i1 %exitcond1, label %32, label %.lr.ph

.lr.ph:                                           ; preds = %4
  %15 = add i64 %wide.trip.count, -5
  %16 = sub i64 %15, %12
  %17 = add i64 %wide.trip.count, -6
  %18 = sub i64 %17, %12
  %xtraiter = and i64 %16, 3
  %lcmp.mod = icmp ne i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  br label %19

19:                                               ; preds = %19, %.prol.preheader
  %indvars.iv2.prol = phi i64 [ %13, %.prol.preheader ], [ %indvars.iv.next.prol, %19 ]
  %prol.iter = phi i64 [ 0, %.prol.preheader ], [ %prol.iter.next, %19 ]
  %20 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %21 = getelementptr inbounds [4 x i8], ptr %20, i64 %indvars.iv2.prol
  store i32 %5, ptr %21, align 4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv2.prol, 1
  %exitcond.prol = icmp eq i64 %indvars.iv.next.prol, %wide.trip.count
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp = icmp ne i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp, label %19, label %.prol.loopexit.unr-lcssa, !llvm.loop !12

.prol.loopexit.unr-lcssa:                         ; preds = %19
  %indvars.iv2.unr.ph = phi i64 [ %indvars.iv.next.prol, %19 ]
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv2.unr = phi i64 [ %13, %.lr.ph ], [ %indvars.iv2.unr.ph, %.prol.loopexit.unr-lcssa ]
  %22 = icmp ult i64 %18, 3
  br i1 %22, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit
  br label %23

23:                                               ; preds = %23, %.lr.ph.new
  %indvars.iv2 = phi i64 [ %indvars.iv2.unr, %.lr.ph.new ], [ %indvars.iv.next.3, %23 ]
  %24 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %25 = getelementptr inbounds [4 x i8], ptr %24, i64 %indvars.iv2
  store i32 %5, ptr %25, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv2, 1
  %26 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %27 = getelementptr inbounds [4 x i8], ptr %26, i64 %indvars.iv.next
  store i32 %5, ptr %27, align 4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv2, 2
  %28 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %29 = getelementptr inbounds [4 x i8], ptr %28, i64 %indvars.iv.next.1
  store i32 %5, ptr %29, align 4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv2, 3
  %30 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %31 = getelementptr inbounds [4 x i8], ptr %30, i64 %indvars.iv.next.2
  store i32 %5, ptr %31, align 4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv2, 4
  %exitcond.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3, label %._crit_edge.unr-lcssa, label %23, !llvm.loop !14

._crit_edge.unr-lcssa:                            ; preds = %23
  br label %._crit_edge

._crit_edge:                                      ; preds = %.prol.loopexit, %._crit_edge.unr-lcssa
  br label %32

32:                                               ; preds = %._crit_edge, %4
  %33 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %34 = getelementptr [4 x i8], ptr %33, i64 %8
  %35 = getelementptr i8, ptr %34, i64 16
  %36 = load i32, ptr %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 4
  %38 = load i32, ptr %7, align 4
  %39 = getelementptr [204 x i8], ptr %1, i64 %8
  %40 = getelementptr i8, ptr %39, i64 5100
  %41 = getelementptr inbounds [4 x i8], ptr %40, i64 %6
  store i32 %38, ptr %41, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %.not.unshifted = xor i32 %0, %1
  %.not.mask = and i32 %.not.unshifted, 255
  %.not = icmp eq i32 %.not.mask, 0
  %. = select i1 %.not, i32 10000, i32 0
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %3
  %.011 = phi i32 [ 1, %2 ], [ %spec.select, %3 ]
  %4 = zext nneg i32 %.011 to i64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1
  %7 = sext i8 %6 to i32
  %8 = getelementptr i8, ptr %1, i64 %4
  %9 = getelementptr i8, ptr %8, i64 1
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 @Func1(i32 noundef %7, i32 noundef %11)
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %spec.select = add nuw nsw i32 %.011, %14
  %15 = icmp samesign ult i32 %spec.select, 2
  br i1 %15, label %3, label %16, !llvm.loop !15

16:                                               ; preds = %3
  %17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #6
  %18 = icmp sgt i32 %17, 0
  %. = zext i1 %18 to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  %. = zext i1 %2 to i32
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/dry.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = !{}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
