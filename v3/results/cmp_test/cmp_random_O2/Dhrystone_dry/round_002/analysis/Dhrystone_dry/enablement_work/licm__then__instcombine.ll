; ModuleID = 'results\cmp_test\cmp_random_O2\Dhrystone_dry\round_001\output.ll'
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
  %6 = call i32 @clock() #5
  br label %7

7:                                                ; preds = %7, %0
  %8 = phi i32 [ 0, %0 ], [ %9, %7 ]
  %9 = add nuw nsw i32 %8, 1
  %10 = icmp samesign ult i32 %8, 99999999
  br i1 %10, label %7, label %11, !llvm.loop !7

11:                                               ; preds = %7
  %12 = call i32 @clock() #5
  %13 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %13, ptr @PtrGlbNext, align 8
  %14 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %14, ptr @PtrGlb, align 8
  %15 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %15, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 10001, ptr %17, align 4
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 40, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %19, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %20 = call i32 @clock() #5
  br label %21

21:                                               ; preds = %55, %11
  %22 = phi i32 [ 0, %11 ], [ %59, %55 ]
  %23 = call i32 @Proc5()
  %24 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %3, align 4
  %25 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %25, 0
  %26 = zext i1 %.not to i32
  store i32 %26, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  %27 = icmp slt i32 %.pre, 3
  br i1 %27, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %21
  br label %28

28:                                               ; preds = %28, %.lr.ph
  %29 = phi i32 [ %.pre, %.lr.ph ], [ %34, %28 ]
  %30 = mul nsw i32 %29, 5
  %31 = add nsw i32 %30, -3
  store i32 %31, ptr %2, align 4
  %32 = call i32 @Proc7(i32 noundef %29, i32 noundef 3, ptr noundef nonnull %2)
  %33 = load i32, ptr %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %1, align 4
  %35 = icmp slt i32 %33, 2
  br i1 %35, label %28, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %28
  br label %36

36:                                               ; preds = %._crit_edge, %21
  %.lcssa = phi i32 [ %34, %._crit_edge ], [ %.pre, %21 ]
  %37 = load i32, ptr %2, align 4
  %38 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %37)
  %39 = load ptr, ptr @PtrGlb, align 8
  %40 = call i32 @Proc1(ptr noundef %39)
  %41 = load i8, ptr @Char2Glob, align 1
  %42 = icmp sgt i8 %41, 64
  br i1 %42, label %.lr.ph2, label %55

.lr.ph2:                                          ; preds = %36
  br label %43

43:                                               ; preds = %51, %.lr.ph2
  %44 = phi i32 [ 65, %.lr.ph2 ], [ %53, %51 ]
  %45 = phi i8 [ 65, %.lr.ph2 ], [ %52, %51 ]
  %46 = load i32, ptr %3, align 4
  %47 = call i32 @Func1(i32 noundef %44, i32 noundef 67)
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %51

51:                                               ; preds = %49, %43
  %52 = add i8 %45, 1
  %53 = sext i8 %52 to i32
  %54 = load i8, ptr @Char2Glob, align 1
  %.not6 = icmp sgt i8 %52, %54
  br i1 %.not6, label %._crit_edge3, label %43, !llvm.loop !10

._crit_edge3:                                     ; preds = %51
  br label %55

55:                                               ; preds = %._crit_edge3, %36
  %56 = load i32, ptr %1, align 4
  %57 = mul nsw i32 %56, 3
  store i32 %57, ptr %2, align 4
  %58 = call i32 @Proc2(ptr noundef nonnull %1)
  %59 = add nuw nsw i32 %22, 1
  %60 = icmp samesign ult i32 %22, 99999999
  br i1 %60, label %21, label %61, !llvm.loop !11

61:                                               ; preds = %55
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
  %2 = alloca i32, align 4
  %3 = load i32, ptr %0, align 4
  %4 = add nsw i32 %3, 10
  %.pre = load i8, ptr @Char1Glob, align 1
  %5 = icmp eq i8 %.pre, 65
  %.promoted1 = load i32, ptr %2, align 1
  br label %6

6:                                                ; preds = %14, %1
  %7 = phi i32 [ %.promoted1, %1 ], [ %15, %14 ]
  %8 = phi i32 [ undef, %1 ], [ %16, %14 ]
  %9 = phi i32 [ %4, %1 ], [ %17, %14 ]
  br i1 %5, label %10, label %14

10:                                               ; preds = %6
  %11 = add nsw i32 %9, -1
  %12 = load i32, ptr @IntGlob, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, ptr %0, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 0, %10 ], [ %7, %6 ]
  %16 = phi i32 [ 0, %10 ], [ %8, %6 ]
  %17 = phi i32 [ %11, %10 ], [ %9, %6 ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %6

19:                                               ; preds = %14
  store i32 %15, ptr %2, align 1
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8
  store ptr %4, ptr %0, align 8
  %.pre = load i32, ptr @IntGlob, align 4
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  br label %6

5:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi ptr [ null, %5 ], [ %.pre1, %3 ]
  %8 = phi i32 [ 100, %5 ], [ %.pre, %3 ]
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %10 = call i32 @Proc7(i32 noundef 10, i32 noundef %8, ptr noundef nonnull %9)
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
  switch i32 %0, label %14 [
    i32 0, label %6
    i32 10000, label %7
    i32 10001, label %12
    i32 10003, label %13
  ]

6:                                                ; preds = %5
  store i32 0, ptr %1, align 4
  br label %14

7:                                                ; preds = %5
  %8 = load i32, ptr @IntGlob, align 4
  %9 = icmp sgt i32 %8, 100
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 0, ptr %1, align 4
  br label %14

11:                                               ; preds = %7
  store i32 10002, ptr %1, align 4
  br label %14

12:                                               ; preds = %5
  store i32 10000, ptr %1, align 4
  br label %14

13:                                               ; preds = %5
  store i32 10001, ptr %1, align 4
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %6, %5
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
  %8 = add nsw i32 %2, 6
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %0, i64 %9
  store i32 %3, ptr %10, align 4
  %11 = sext i32 %2 to i64
  %12 = getelementptr [4 x i8], ptr %0, i64 %11
  %13 = getelementptr i8, ptr %12, i64 140
  store i32 %5, ptr %13, align 4
  %14 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  br label %15

15:                                               ; preds = %15, %4
  %16 = phi i32 [ %5, %4 ], [ %19, %15 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %14, i64 %17
  store i32 %5, ptr %18, align 4
  %19 = add nsw i32 %16, 1
  %.not.not = icmp slt i32 %16, %8
  br i1 %.not.not, label %15, label %20, !llvm.loop !12

20:                                               ; preds = %15
  %21 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %22 = sext i32 %2 to i64
  %23 = getelementptr [4 x i8], ptr %21, i64 %22
  %24 = getelementptr i8, ptr %23, i64 16
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %2 to i64
  %29 = getelementptr [204 x i8], ptr %1, i64 %28
  %30 = getelementptr i8, ptr %29, i64 5100
  %31 = getelementptr inbounds [4 x i8], ptr %30, i64 %6
  store i32 %27, ptr %31, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %.not.unshifted = xor i32 %0, %1
  %.not.mask = and i32 %.not.unshifted, 255
  %.not = icmp eq i32 %.not.mask, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ 10000, %4 ], [ 0, %3 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %.promoted = load i8, ptr %3, align 1
  br label %4

4:                                                ; preds = %20, %2
  %5 = phi i8 [ %.promoted, %2 ], [ %21, %20 ]
  %6 = phi i8 [ undef, %2 ], [ %23, %20 ]
  %7 = phi i32 [ 1, %2 ], [ %22, %20 ]
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = add nsw i32 %7, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @Func1(i32 noundef %11, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %4
  %21 = phi i8 [ 65, %19 ], [ %5, %4 ]
  %22 = phi i32 [ %12, %19 ], [ %7, %4 ]
  %23 = phi i8 [ 65, %19 ], [ %6, %4 ]
  %24 = icmp slt i32 %22, 2
  br i1 %24, label %4, label %25, !llvm.loop !13

25:                                               ; preds = %20
  store i8 %21, ptr %3, align 1
  %26 = add i8 %23, -87
  %or.cond = icmp ult i8 %26, 4
  br i1 %or.cond, label %27, label %28

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27, %25
  %29 = icmp eq i8 %23, 88
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %36

31:                                               ; preds = %28
  %32 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %36

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %34, %30
  %37 = phi i32 [ 0, %35 ], [ 1, %34 ], [ 1, %30 ]
  ret i32 %37
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ 0, %4 ], [ 1, %3 ]
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
