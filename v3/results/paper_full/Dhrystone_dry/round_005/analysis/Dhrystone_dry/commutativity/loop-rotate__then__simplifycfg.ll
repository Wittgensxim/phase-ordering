; ModuleID = 'results\paper_full\Dhrystone_dry\round_004\output.ll'
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
  %7 = call i32 @clock() #6
  %8 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %8, ptr @PtrGlbNext, align 8
  %9 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %9, ptr @PtrGlb, align 8
  %10 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %10, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 10001, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 40, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %14, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #6
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %15 = call i32 @clock() #6
  br label %16

16:                                               ; preds = %0, %._crit_edge5
  %.16 = phi i32 [ 0, %0 ], [ %46, %._crit_edge5 ]
  %17 = call i32 @Proc5()
  %18 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #6
  store i32 10000, ptr %3, align 4
  %19 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %19, 0
  %20 = zext i1 %.not to i32
  store i32 %20, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  %21 = icmp slt i32 %.pre, 3
  br i1 %21, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %16, %.lr.ph
  %22 = phi i32 [ %27, %.lr.ph ], [ %.pre, %16 ]
  %23 = mul nsw i32 %22, 5
  %24 = add nsw i32 %23, -3
  store i32 %24, ptr %2, align 4
  %25 = call i32 @Proc7(i32 noundef %22, i32 noundef 3, ptr noundef nonnull %2)
  %26 = load i32, ptr %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %1, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %16
  %.lcssa = phi i32 [ %.pre, %16 ], [ %27, %.lr.ph ]
  %29 = load i32, ptr %2, align 4
  %30 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %29)
  %31 = load ptr, ptr @PtrGlb, align 8
  %32 = call i32 @Proc1(ptr noundef %31)
  %33 = load i8, ptr @Char2Glob, align 1
  %.not11 = icmp sgt i8 65, %33
  br i1 %.not11, label %._crit_edge5, label %.lr.ph4

.lr.ph4:                                          ; preds = %._crit_edge, %40
  %.012 = phi i8 [ %41, %40 ], [ 65, %._crit_edge ]
  %34 = load i32, ptr %3, align 4
  %35 = sext i8 %.012 to i32
  %36 = call i32 @Func1(i32 noundef %35, i32 noundef 67)
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %.lr.ph4
  %39 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %40

40:                                               ; preds = %38, %.lr.ph4
  %41 = add i8 %.012, 1
  %42 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %41, %42
  br i1 %.not1, label %._crit_edge5, label %.lr.ph4, !llvm.loop !9

._crit_edge5:                                     ; preds = %40, %._crit_edge
  %43 = load i32, ptr %1, align 4
  %44 = mul nsw i32 %43, 3
  store i32 %44, ptr %2, align 4
  %45 = call i32 @Proc2(ptr noundef nonnull %1)
  %46 = add nuw nsw i32 %.16, 1
  %exitcond.not = icmp eq i32 %46, 100000000
  br i1 %exitcond.not, label %47, label %16, !llvm.loop !10

47:                                               ; preds = %._crit_edge5
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
  %12 = add nsw i64 %8, 5
  %13 = add i32 %2, 7
  %wide.trip.count = sext i32 %13 to i64
  %exitcond1 = icmp eq i64 %12, %wide.trip.count
  br i1 %exitcond1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4, %.lr.ph
  %indvars.iv2 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %12, %4 ]
  %14 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %15 = getelementptr inbounds [4 x i8], ptr %14, i64 %indvars.iv2
  store i32 %5, ptr %15, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv2, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %4
  %16 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %17 = getelementptr [4 x i8], ptr %16, i64 %8
  %18 = getelementptr i8, ptr %17, i64 16
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr [204 x i8], ptr %1, i64 %8
  %23 = getelementptr i8, ptr %22, i64 5100
  %24 = getelementptr inbounds [4 x i8], ptr %23, i64 %6
  store i32 %21, ptr %24, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 10001) i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %.not.unshifted = xor i32 %0, %1
  %.not.mask = and i32 %.not.unshifted, 255
  %.not = icmp eq i32 %.not.mask, 0
  %. = select i1 %.not, i32 10000, i32 0
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1
  %6 = sext i8 %5 to i32
  %7 = getelementptr i8, ptr %1, i64 1
  %8 = getelementptr i8, ptr %7, i64 1
  %9 = load i8, ptr %8, align 1
  %10 = sext i8 %9 to i32
  %11 = call i32 @Func1(i32 noundef %6, i32 noundef %10)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %spec.select = add nuw nsw i32 1, %13
  %14 = icmp samesign ult i32 %spec.select, 2
  br i1 %14, label %3, label %15, !llvm.loop !13

15:                                               ; preds = %3
  %16 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #6
  %17 = icmp sgt i32 %16, 0
  %. = zext i1 %17 to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Func3(i32 noundef %0) #0 {
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
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
