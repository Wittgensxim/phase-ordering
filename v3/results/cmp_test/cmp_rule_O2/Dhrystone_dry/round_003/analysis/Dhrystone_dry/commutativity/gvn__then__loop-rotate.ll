; ModuleID = 'results\cmp_test\cmp_rule_O2\Dhrystone_dry\round_002\output.ll'
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
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca [31 x i8], align 16
  %7 = alloca [31 x i8], align 16
  %8 = alloca i32, align 4
  %9 = call i32 @clock() #5
  br label %10

10:                                               ; preds = %10, %0
  %storemerge = phi i32 [ 0, %0 ], [ %11, %10 ]
  store i32 %storemerge, ptr %8, align 4
  %exitcond = icmp ne i32 %storemerge, 100000000
  %11 = add nuw nsw i32 %storemerge, 1
  br i1 %exitcond, label %10, label %12, !llvm.loop !7

12:                                               ; preds = %10
  %13 = call i32 @clock() #5
  %14 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %14, ptr @PtrGlbNext, align 8
  %15 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %15, ptr @PtrGlb, align 8
  %16 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %16, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 10001, ptr %18, align 4
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 40, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %20, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %6, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %21 = call i32 @clock() #5
  store i32 0, ptr %8, align 4
  br label %22

22:                                               ; preds = %12, %54
  %23 = phi i32 [ 0, %12 ], [ %61, %54 ]
  %24 = call i32 @Proc5()
  %25 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  store i32 3, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %5, align 4
  %26 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %26, 0
  %27 = zext i1 %.not to i32
  store i32 %27, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  %28 = icmp slt i32 %.pre, 3
  br i1 %28, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %22
  br label %29

29:                                               ; preds = %.lr.ph, %29
  %30 = phi i32 [ %.pre, %.lr.ph ], [ %35, %29 ]
  %31 = mul nsw i32 %30, 5
  %32 = sub nsw i32 %31, 3
  store i32 %32, ptr %3, align 4
  %33 = call i32 @Proc7(i32 noundef %30, i32 noundef 3, ptr noundef nonnull %3)
  %34 = load i32, ptr %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %1, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %29, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %29
  %split = phi i32 [ %35, %29 ]
  br label %37

37:                                               ; preds = %._crit_edge, %22
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.pre, %22 ]
  %38 = load i32, ptr %3, align 4
  %39 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %38)
  %40 = load ptr, ptr @PtrGlb, align 8
  %41 = call i32 @Proc1(ptr noundef %40)
  store i8 65, ptr %4, align 1
  %42 = load i8, ptr @Char2Glob, align 1
  %.not31 = icmp sgt i8 65, %42
  br i1 %.not31, label %54, label %.lr.ph3

.lr.ph3:                                          ; preds = %37
  br label %43

43:                                               ; preds = %.lr.ph3, %51
  %44 = phi i8 [ 65, %.lr.ph3 ], [ %52, %51 ]
  %45 = sext i8 %44 to i32
  %46 = load i32, ptr %5, align 4
  %47 = call i32 @Func1(i32 noundef %45, i32 noundef 67)
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %51

51:                                               ; preds = %49, %43
  %52 = add i8 %44, 1
  store i8 %52, ptr %4, align 1
  %53 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %52, %53
  br i1 %.not3, label %._crit_edge4, label %43, !llvm.loop !10

._crit_edge4:                                     ; preds = %51
  br label %54

54:                                               ; preds = %._crit_edge4, %37
  %55 = load i32, ptr %1, align 4
  %56 = mul nsw i32 3, %55
  store i32 %56, ptr %3, align 4
  %57 = sub nsw i32 %56, 3
  %58 = mul nsw i32 %57, 7
  %59 = sub nsw i32 %58, %55
  store i32 %59, ptr %2, align 4
  %60 = call i32 @Proc2(ptr noundef nonnull %1)
  %61 = add i32 %23, 1
  store i32 %61, ptr %8, align 4
  %62 = icmp ult i32 %61, 100000000
  br i1 %62, label %22, label %63, !llvm.loop !11

63:                                               ; preds = %54
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
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load i32, ptr %0, align 4
  %6 = add nsw i32 %5, 10
  store i32 %6, ptr %3, align 4
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %7

7:                                                ; preds = %15, %1
  %8 = phi i32 [ %16, %15 ], [ undef, %1 ]
  %9 = phi i32 [ %17, %15 ], [ %6, %1 ]
  %10 = icmp eq i8 %.pre, 65
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = add nsw i32 %9, -1
  store i32 %12, ptr %3, align 4
  %13 = load i32, ptr @IntGlob, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, ptr %0, align 4
  store i32 0, ptr %4, align 4
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ 0, %11 ], [ %8, %7 ]
  %17 = phi i32 [ %12, %11 ], [ %9, %7 ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %15
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
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %1, align 4
  %5 = call i32 @Func3(i32 noundef %0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %7

6:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %7

7:                                                ; preds = %6, %2
  switch i32 %0, label %18 [
    i32 0, label %8
    i32 10000, label %9
    i32 10001, label %15
    i32 10002, label %16
    i32 10003, label %17
  ]

8:                                                ; preds = %7
  store i32 0, ptr %1, align 4
  br label %18

9:                                                ; preds = %7
  %10 = load i32, ptr @IntGlob, align 4
  %11 = icmp sgt i32 %10, 100
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, ptr %1, align 4
  br label %14

13:                                               ; preds = %9
  store i32 10002, ptr %1, align 4
  br label %14

14:                                               ; preds = %13, %12
  br label %18

15:                                               ; preds = %7
  store i32 10000, ptr %1, align 4
  br label %18

16:                                               ; preds = %7
  br label %18

17:                                               ; preds = %7
  store i32 10001, ptr %1, align 4
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %8, %7
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
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = add nsw i32 %2, 5
  store i32 %9, ptr %7, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr [4 x i8], ptr %0, i64 %10
  store i32 %3, ptr %11, align 4
  %12 = sext i32 %2 to i64
  %13 = getelementptr [4 x i8], ptr %0, i64 %12
  %14 = getelementptr i8, ptr %13, i64 24
  store i32 %3, ptr %14, align 4
  %15 = getelementptr i8, ptr %11, i64 120
  store i32 %9, ptr %15, align 4
  store i32 %9, ptr %8, align 4
  %16 = add nsw i32 %9, 1
  br label %17

17:                                               ; preds = %4, %17
  %18 = phi i32 [ %9, %4 ], [ %22, %17 ]
  %19 = getelementptr inbounds [204 x i8], ptr %1, i64 %10
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %19, i64 %20
  store i32 %9, ptr %21, align 4
  %22 = add nsw i32 %18, 1
  store i32 %22, ptr %8, align 4
  %.not = icmp sgt i32 %22, %16
  br i1 %.not, label %23, label %17, !llvm.loop !12

23:                                               ; preds = %17
  %24 = getelementptr [204 x i8], ptr %1, i64 %10
  %25 = getelementptr [4 x i8], ptr %24, i64 %10
  %26 = getelementptr i8, ptr %25, i64 -4
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = load i32, ptr %11, align 4
  %30 = getelementptr i8, ptr %24, i64 4080
  %31 = getelementptr inbounds [4 x i8], ptr %30, i64 %10
  store i32 %29, ptr %31, align 4
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
  %storemerge = phi i32 [ 10000, %4 ], [ 0, %3 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 1, ptr %6, align 4
  br label %8

8:                                                ; preds = %2, %23
  %9 = phi i32 [ 1, %2 ], [ %25, %23 ]
  %10 = phi i8 [ undef, %2 ], [ %24, %23 ]
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = getelementptr i8, ptr %1, i64 %11
  %16 = getelementptr i8, ptr %15, i64 1
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 @Func1(i32 noundef %14, i32 noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %8
  store i8 65, ptr %7, align 1
  %22 = add nsw i32 %9, 1
  store i32 %22, ptr %6, align 4
  br label %23

23:                                               ; preds = %21, %8
  %24 = phi i8 [ 65, %21 ], [ %10, %8 ]
  %25 = phi i32 [ %22, %21 ], [ %9, %8 ]
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %8, label %27, !llvm.loop !13

27:                                               ; preds = %23
  %.lcssa1 = phi i8 [ %24, %23 ]
  %.lcssa = phi i32 [ %25, %23 ]
  %28 = icmp sgt i8 %.lcssa1, 86
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = icmp ult i8 %.lcssa1, 91
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  store i32 7, ptr %6, align 4
  br label %32

32:                                               ; preds = %31, %29, %27
  %33 = phi i32 [ 7, %31 ], [ %.lcssa, %29 ], [ %.lcssa, %27 ]
  %34 = icmp eq i8 %.lcssa1, 88
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, ptr %3, align 4
  br label %42

36:                                               ; preds = %32
  %37 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = add nsw i32 %33, 7
  store i32 %40, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %42

41:                                               ; preds = %36
  store i32 0, ptr %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %35
  %43 = phi i32 [ 0, %41 ], [ 1, %39 ], [ 1, %35 ]
  ret i32 %43
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
  %storemerge = phi i32 [ 0, %4 ], [ 1, %3 ]
  ret i32 %storemerge
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
