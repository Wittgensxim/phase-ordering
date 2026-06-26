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
  store i32 0, ptr %8, align 4
  br label %10

10:                                               ; preds = %0, %10
  %storemerge3 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %11 = add nuw nsw i32 %storemerge3, 1
  store i32 %11, ptr %8, align 4
  %exitcond = icmp ne i32 %11, 100000000
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

22:                                               ; preds = %12, %55
  %23 = phi i32 [ 0, %12 ], [ %62, %55 ]
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
  %28 = load i32, ptr %1, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %22
  br label %30

30:                                               ; preds = %.lr.ph, %30
  %31 = phi i32 [ %28, %.lr.ph ], [ %36, %30 ]
  %32 = mul nsw i32 %31, 5
  %33 = sub nsw i32 %32, 3
  store i32 %33, ptr %3, align 4
  %34 = call i32 @Proc7(i32 noundef %31, i32 noundef 3, ptr noundef nonnull %3)
  %35 = load i32, ptr %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %1, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %30, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %30
  br label %38

38:                                               ; preds = %._crit_edge, %22
  %.lcssa = phi i32 [ %36, %._crit_edge ], [ %28, %22 ]
  %39 = load i32, ptr %3, align 4
  %40 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %39)
  %41 = load ptr, ptr @PtrGlb, align 8
  %42 = call i32 @Proc1(ptr noundef %41)
  store i8 65, ptr %4, align 1
  %43 = load i8, ptr @Char2Glob, align 1
  %.not34 = icmp sgt i8 65, %43
  br i1 %.not34, label %55, label %.lr.ph7

.lr.ph7:                                          ; preds = %38
  br label %44

44:                                               ; preds = %.lr.ph7, %52
  %45 = phi i8 [ 65, %.lr.ph7 ], [ %53, %52 ]
  %46 = sext i8 %45 to i32
  %47 = load i32, ptr %5, align 4
  %48 = call i32 @Func1(i32 noundef %46, i32 noundef 67)
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %52

52:                                               ; preds = %50, %44
  %53 = add i8 %45, 1
  store i8 %53, ptr %4, align 1
  %54 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %53, %54
  br i1 %.not3, label %._crit_edge8, label %44, !llvm.loop !10

._crit_edge8:                                     ; preds = %52
  br label %55

55:                                               ; preds = %._crit_edge8, %38
  %56 = load i32, ptr %1, align 4
  %57 = mul nsw i32 3, %56
  store i32 %57, ptr %3, align 4
  %58 = sub nsw i32 %57, 3
  %59 = mul nsw i32 %58, 7
  %60 = sub nsw i32 %59, %56
  store i32 %60, ptr %2, align 4
  %61 = call i32 @Proc2(ptr noundef nonnull %1)
  %62 = add i32 %23, 1
  store i32 %62, ptr %8, align 4
  %63 = icmp ult i32 %62, 100000000
  br i1 %63, label %22, label %64, !llvm.loop !11

64:                                               ; preds = %55
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
  br i1 false, label %._crit_edge3, label %.lr.ph

._crit_edge3:                                     ; preds = %4
  br label %23

.lr.ph:                                           ; preds = %4
  br label %17

17:                                               ; preds = %.lr.ph, %17
  %18 = phi i32 [ %9, %.lr.ph ], [ %22, %17 ]
  %19 = getelementptr inbounds [204 x i8], ptr %1, i64 %10
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %19, i64 %20
  store i32 %9, ptr %21, align 4
  %22 = add nsw i32 %18, 1
  store i32 %22, ptr %8, align 4
  %.not = icmp sgt i32 %22, %16
  br i1 %.not, label %._crit_edge, label %17, !llvm.loop !12

._crit_edge:                                      ; preds = %17
  br label %23

23:                                               ; preds = %._crit_edge3, %._crit_edge
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
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %2
  br label %27

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %23
  %9 = phi i8 [ undef, %.lr.ph ], [ %24, %23 ]
  %10 = phi i32 [ 1, %.lr.ph ], [ %25, %23 ]
  %11 = sext i32 %10 to i64
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
  %22 = add nsw i32 %10, 1
  store i32 %22, ptr %6, align 4
  br label %23

23:                                               ; preds = %21, %8
  %24 = phi i8 [ 65, %21 ], [ %9, %8 ]
  %25 = phi i32 [ %22, %21 ], [ %10, %8 ]
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %8, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %23
  br label %27

27:                                               ; preds = %._crit_edge1, %._crit_edge
  %28 = phi i32 [ 1, %._crit_edge1 ], [ %25, %._crit_edge ]
  %29 = phi i8 [ undef, %._crit_edge1 ], [ %24, %._crit_edge ]
  %30 = icmp sgt i8 %29, 86
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = icmp ult i8 %29, 91
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  store i32 7, ptr %6, align 4
  br label %34

34:                                               ; preds = %33, %31, %27
  %35 = phi i32 [ 7, %33 ], [ %28, %31 ], [ %28, %27 ]
  %36 = icmp eq i8 %29, 88
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, ptr %3, align 4
  br label %44

38:                                               ; preds = %34
  %39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = add nsw i32 %35, 7
  store i32 %42, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %44

43:                                               ; preds = %38
  store i32 0, ptr %3, align 4
  br label %44

44:                                               ; preds = %43, %41, %37
  %45 = phi i32 [ 0, %43 ], [ 1, %41 ], [ 1, %37 ]
  ret i32 %45
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
