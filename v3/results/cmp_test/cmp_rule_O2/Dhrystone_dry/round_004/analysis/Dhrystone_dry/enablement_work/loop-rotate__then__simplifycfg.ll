; ModuleID = 'results\cmp_test\cmp_rule_O2\Dhrystone_dry\round_003\output.ll'
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

7:                                                ; preds = %0, %7
  %storemerge3 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %8 = add nuw nsw i32 %storemerge3, 1
  %exitcond = icmp ne i32 %8, 100000000
  br i1 %exitcond, label %7, label %9, !llvm.loop !7

9:                                                ; preds = %7
  %10 = call i32 @clock() #5
  %11 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %11, ptr @PtrGlbNext, align 8
  %12 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %12, ptr @PtrGlb, align 8
  %13 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %13, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 10001, ptr %15, align 4
  %16 = load ptr, ptr @PtrGlb, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 40, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %18, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %19 = call i32 @clock() #5
  br label %20

20:                                               ; preds = %9, %._crit_edge8
  %storemerge19 = phi i32 [ 0, %9 ], [ %53, %._crit_edge8 ]
  %21 = call i32 @Proc5()
  %22 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %3, align 4
  %23 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %23, 0
  %24 = zext i1 %.not to i32
  store i32 %24, ptr @BoolGlob, align 4
  %25 = load i32, ptr %1, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %20, %.lr.ph
  %27 = phi i32 [ %34, %.lr.ph ], [ %25, %20 ]
  %28 = mul nsw i32 %27, 5
  %29 = sub nsw i32 %28, 3
  store i32 %29, ptr %2, align 4
  %30 = load i32, ptr %1, align 4
  %31 = call i32 @Proc7(i32 noundef %30, i32 noundef 3, ptr noundef nonnull %2)
  %32 = load i32, ptr %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %1, align 4
  %34 = load i32, ptr %1, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %20
  %.lcssa = phi i32 [ %25, %20 ], [ %34, %.lr.ph ]
  %36 = load i32, ptr %2, align 4
  %37 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %36)
  %38 = load ptr, ptr @PtrGlb, align 8
  %39 = call i32 @Proc1(ptr noundef %38)
  %40 = load i8, ptr @Char2Glob, align 1
  %.not34 = icmp sgt i8 65, %40
  br i1 %.not34, label %._crit_edge8, label %.lr.ph7

.lr.ph7:                                          ; preds = %._crit_edge, %47
  %storemerge25 = phi i8 [ %48, %47 ], [ 65, %._crit_edge ]
  %41 = sext i8 %storemerge25 to i32
  %42 = load i32, ptr %3, align 4
  %43 = call i32 @Func1(i32 noundef %41, i32 noundef 67)
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %.lr.ph7
  %46 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %47

47:                                               ; preds = %.lr.ph7, %45
  %48 = add i8 %storemerge25, 1
  %49 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %48, %49
  br i1 %.not3, label %._crit_edge8, label %.lr.ph7, !llvm.loop !10

._crit_edge8:                                     ; preds = %47, %._crit_edge
  %50 = load i32, ptr %1, align 4
  %51 = mul nsw i32 3, %50
  store i32 %51, ptr %2, align 4
  %52 = call i32 @Proc2(ptr noundef nonnull %1)
  %53 = add i32 %storemerge19, 1
  %54 = icmp ult i32 %53, 100000000
  br i1 %54, label %20, label %55, !llvm.loop !11

55:                                               ; preds = %._crit_edge8
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
  %2 = load i32, ptr %0, align 4
  %3 = add nsw i32 %2, 10
  br label %4

4:                                                ; preds = %11, %1
  %.0 = phi i32 [ %3, %1 ], [ %.1, %11 ]
  %5 = load i8, ptr @Char1Glob, align 1
  %6 = icmp eq i8 %5, 65
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = add nsw i32 %.0, -1
  %9 = load i32, ptr @IntGlob, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr %0, align 4
  br label %11

11:                                               ; preds = %7, %4
  %.1 = phi i32 [ %8, %7 ], [ %.0, %4 ]
  %12 = icmp eq i32 0, 0
  br i1 %12, label %13, label %4

13:                                               ; preds = %11
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
  br label %6

5:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %6

6:                                                ; preds = %5, %3
  %7 = load i32, ptr @IntGlob, align 4
  %8 = load ptr, ptr @PtrGlb, align 8
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %10 = call i32 @Proc7(i32 noundef 10, i32 noundef %7, ptr noundef nonnull %9)
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

14:                                               ; preds = %10, %11, %13, %12, %6, %5
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
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %2 to i64
  %12 = getelementptr [4 x i8], ptr %0, i64 %11
  %13 = getelementptr i8, ptr %12, i64 24
  store i32 %10, ptr %13, align 4
  %14 = sext i32 %5 to i64
  %15 = getelementptr [4 x i8], ptr %0, i64 %14
  %16 = getelementptr i8, ptr %15, i64 120
  store i32 %5, ptr %16, align 4
  %17 = add nsw i32 %5, 1
  br label %18

18:                                               ; preds = %4, %18
  %storemerge1 = phi i32 [ %5, %4 ], [ %23, %18 ]
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds [204 x i8], ptr %1, i64 %19
  %21 = sext i32 %storemerge1 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %20, i64 %21
  store i32 %5, ptr %22, align 4
  %23 = add nsw i32 %storemerge1, 1
  %.not = icmp sgt i32 %23, %17
  br i1 %.not, label %24, label %18, !llvm.loop !12

24:                                               ; preds = %18
  %.lcssa = phi i32 [ %5, %18 ]
  %25 = sext i32 %.lcssa to i64
  %26 = getelementptr inbounds [204 x i8], ptr %1, i64 %25
  %27 = sext i32 %.lcssa to i64
  %28 = getelementptr [4 x i8], ptr %26, i64 %27
  %29 = getelementptr i8, ptr %28, i64 -4
  %30 = load i32, ptr %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = sext i32 %5 to i64
  %33 = getelementptr inbounds [4 x i8], ptr %0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %5 to i64
  %36 = getelementptr [204 x i8], ptr %1, i64 %35
  %37 = getelementptr i8, ptr %36, i64 4080
  %38 = getelementptr inbounds [4 x i8], ptr %37, i64 %32
  store i32 %34, ptr %38, align 4
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
  %4 = sext i32 %.011 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1
  %7 = sext i8 %6 to i32
  %8 = sext i32 %.011 to i64
  %9 = getelementptr i8, ptr %1, i64 %8
  %10 = getelementptr i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %13 = call i32 @Func1(i32 noundef %7, i32 noundef %12)
  %14 = icmp eq i32 %13, 0
  %15 = add nsw i32 %.011, 1
  %spec.select = select i1 %14, i32 %15, i32 %.011
  %16 = icmp slt i32 %spec.select, 2
  br i1 %16, label %3, label %17, !llvm.loop !13

17:                                               ; preds = %3
  %18 = icmp eq i8 65, 88
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %21 = icmp sgt i32 %20, 0
  %. = select i1 %21, i32 1, i32 0
  br label %22

22:                                               ; preds = %19, %17
  %.0 = phi i32 [ 1, %17 ], [ %., %19 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  %. = select i1 %2, i32 1, i32 0
  ret i32 %.
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
