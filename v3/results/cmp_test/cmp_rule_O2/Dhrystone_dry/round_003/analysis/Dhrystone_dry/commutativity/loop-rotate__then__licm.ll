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

10:                                               ; preds = %0, %11
  %storemerge3 = phi i32 [ 0, %0 ], [ %12, %11 ]
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %storemerge3, 1
  %exitcond = icmp ne i32 %12, 100000000
  br i1 %exitcond, label %10, label %13, !llvm.loop !7

13:                                               ; preds = %11
  %.lcssa9 = phi i32 [ %12, %11 ]
  store i32 %.lcssa9, ptr %8, align 4
  %14 = call i32 @clock() #5
  %15 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %15, ptr @PtrGlbNext, align 8
  %16 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %16, ptr @PtrGlb, align 8
  %17 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %17, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 10001, ptr %19, align 4
  %20 = load ptr, ptr @PtrGlb, align 8
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 40, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %22, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %6, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %23 = call i32 @clock() #5
  store i32 0, ptr %8, align 4
  %.promoted = load i32, ptr %8, align 4
  br label %24

24:                                               ; preds = %13, %68
  %25 = phi i32 [ %.promoted, %13 ], [ %69, %68 ]
  %26 = call i32 @Proc5()
  %27 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %5, align 4
  %28 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %28, 0
  %29 = zext i1 %.not to i32
  store i32 %29, ptr @BoolGlob, align 4
  %30 = load i32, ptr %1, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %24
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %33 = phi i32 [ 3, %.lr.ph ], [ 3, %32 ]
  %34 = phi i32 [ %30, %.lr.ph ], [ %41, %32 ]
  %35 = mul nsw i32 %34, 5
  %36 = sub nsw i32 %35, %33
  store i32 %36, ptr %3, align 4
  %37 = load i32, ptr %1, align 4
  %38 = call i32 @Proc7(i32 noundef %37, i32 noundef 3, ptr noundef nonnull %3)
  %39 = load i32, ptr %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %1, align 4
  %41 = load i32, ptr %1, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %32, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %32
  %split = phi i32 [ %41, %32 ]
  br label %43

43:                                               ; preds = %._crit_edge, %24
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %30, %24 ]
  %44 = load i32, ptr %3, align 4
  %45 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %44)
  %46 = load ptr, ptr @PtrGlb, align 8
  %47 = call i32 @Proc1(ptr noundef %46)
  %48 = load i8, ptr @Char2Glob, align 1
  %.not34 = icmp sgt i8 65, %48
  br i1 %.not34, label %61, label %.lr.ph7

.lr.ph7:                                          ; preds = %43
  br label %49

49:                                               ; preds = %.lr.ph7, %58
  %50 = phi i8 [ 65, %.lr.ph7 ], [ %59, %58 ]
  %storemerge25 = phi i8 [ 65, %.lr.ph7 ], [ %59, %58 ]
  %51 = sext i8 %storemerge25 to i32
  %52 = load i32, ptr %5, align 4
  %53 = call i32 @Func1(i32 noundef %51, i32 noundef 67)
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %57

57:                                               ; preds = %55, %49
  br label %58

58:                                               ; preds = %57
  %59 = add i8 %50, 1
  %60 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %59, %60
  br i1 %.not3, label %._crit_edge8, label %49, !llvm.loop !10

._crit_edge8:                                     ; preds = %58
  %.lcssa10 = phi i8 [ %59, %58 ]
  br label %61

61:                                               ; preds = %._crit_edge8, %43
  %.lcssa1014 = phi i8 [ %.lcssa10, %._crit_edge8 ], [ 65, %43 ]
  %62 = load i32, ptr %1, align 4
  %63 = mul nsw i32 3, %62
  store i32 %63, ptr %3, align 4
  %64 = sub nsw i32 %63, 3
  %65 = mul nsw i32 %64, 7
  %66 = sub nsw i32 %65, %62
  %67 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %68

68:                                               ; preds = %61
  %69 = add i32 %25, 1
  %70 = icmp ult i32 %69, 100000000
  br i1 %70, label %24, label %71, !llvm.loop !11

71:                                               ; preds = %68
  %.lcssa15 = phi i32 [ %69, %68 ]
  %.lcssa1014.lcssa = phi i8 [ %.lcssa1014, %68 ]
  %.lcssa12 = phi i32 [ %66, %68 ]
  store i32 %.lcssa12, ptr %2, align 4
  store i8 %.lcssa1014.lcssa, ptr %4, align 1
  store i32 %.lcssa15, ptr %8, align 4
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
  %7 = load i8, ptr @Char1Glob, align 1
  %8 = icmp eq i8 %7, 65
  %9 = load ptr, ptr %2, align 8
  %.promoted = load i32, ptr %3, align 4
  %.promoted1 = load i32, ptr %4, align 4
  br label %10

10:                                               ; preds = %17, %1
  %11 = phi i32 [ %18, %17 ], [ %.promoted1, %1 ]
  %12 = phi i32 [ %19, %17 ], [ %.promoted, %1 ]
  br i1 %8, label %13, label %17

13:                                               ; preds = %10
  %14 = add nsw i32 %12, -1
  %15 = load i32, ptr @IntGlob, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, ptr %9, align 4
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i32 [ 0, %13 ], [ %11, %10 ]
  %19 = phi i32 [ %14, %13 ], [ %12, %10 ]
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %10

21:                                               ; preds = %17
  %.lcssa2 = phi i32 [ %18, %17 ]
  %.lcssa = phi i32 [ %19, %17 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 4
  br label %22

22:                                               ; preds = %21
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
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %1, align 4
  %5 = call i32 @Func3(i32 noundef %0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8
  store i32 10002, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = load i32, ptr %3, align 4
  switch i32 %9, label %25 [
    i32 0, label %10
    i32 10000, label %12
    i32 10001, label %20
    i32 10002, label %22
    i32 10003, label %23
  ]

10:                                               ; preds = %8
  %11 = load ptr, ptr %4, align 8
  store i32 0, ptr %11, align 4
  br label %25

12:                                               ; preds = %8
  %13 = load i32, ptr @IntGlob, align 4
  %14 = icmp sgt i32 %13, 100
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8
  store i32 0, ptr %16, align 4
  br label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 8
  store i32 10002, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %15
  br label %25

20:                                               ; preds = %8
  %21 = load ptr, ptr %4, align 8
  store i32 10000, ptr %21, align 4
  br label %25

22:                                               ; preds = %8
  br label %25

23:                                               ; preds = %8
  %24 = load ptr, ptr %4, align 8
  store i32 10001, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %22, %20, %19, %10, %8
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
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  store i32 %3, ptr %11, align 4
  %12 = load ptr, ptr %5, align 8
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %2 to i64
  %17 = getelementptr [4 x i8], ptr %12, i64 %16
  %18 = getelementptr i8, ptr %17, i64 24
  store i32 %15, ptr %18, align 4
  %19 = load i32, ptr %7, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr [4 x i8], ptr %20, i64 %21
  %23 = getelementptr i8, ptr %22, i64 120
  store i32 %19, ptr %23, align 4
  store i32 %19, ptr %8, align 4
  %24 = load i32, ptr %7, align 4
  %25 = add nsw i32 %24, 1
  %.not1 = icmp sgt i32 %19, %25
  br i1 %.not1, label %38, label %.lr.ph

.lr.ph:                                           ; preds = %4
  %26 = load ptr, ptr %6, align 8
  %27 = load i32, ptr %7, align 4
  %28 = add nsw i32 %27, 1
  %.promoted = load i32, ptr %8, align 4
  br label %29

29:                                               ; preds = %.lr.ph, %36
  %30 = phi i32 [ %.promoted, %.lr.ph ], [ %37, %36 ]
  %31 = phi i32 [ %24, %.lr.ph ], [ %27, %36 ]
  %storemerge2 = phi i32 [ %19, %.lr.ph ], [ %37, %36 ]
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [204 x i8], ptr %26, i64 %32
  %34 = sext i32 %storemerge2 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %33, i64 %34
  store i32 %31, ptr %35, align 4
  br label %36

36:                                               ; preds = %29
  %37 = add nsw i32 %30, 1
  %.not = icmp sgt i32 %37, %28
  br i1 %.not, label %._crit_edge, label %29, !llvm.loop !12

._crit_edge:                                      ; preds = %36
  %.lcssa3 = phi i32 [ %37, %36 ]
  %split = phi i32 [ %27, %36 ]
  store i32 %.lcssa3, ptr %8, align 4
  br label %38

38:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %24, %4 ]
  %39 = load ptr, ptr %6, align 8
  %40 = sext i32 %.lcssa to i64
  %41 = getelementptr inbounds [204 x i8], ptr %39, i64 %40
  %42 = sext i32 %.lcssa to i64
  %43 = getelementptr [4 x i8], ptr %41, i64 %42
  %44 = getelementptr i8, ptr %43, i64 -4
  %45 = load i32, ptr %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %44, align 4
  %47 = load ptr, ptr %5, align 8
  %48 = load i32, ptr %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i8], ptr %47, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %6, align 8
  %53 = sext i32 %48 to i64
  %54 = getelementptr [204 x i8], ptr %52, i64 %53
  %55 = getelementptr i8, ptr %54, i64 4080
  %56 = getelementptr inbounds [4 x i8], ptr %55, i64 %49
  store i32 %51, ptr %56, align 4
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
  %8 = load i32, ptr %6, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %5, align 8
  %.promoted = load i8, ptr %7, align 1
  %.promoted1 = load i32, ptr %6, align 4
  br label %12

12:                                               ; preds = %.lr.ph, %29
  %13 = phi i32 [ %.promoted1, %.lr.ph ], [ %30, %29 ]
  %14 = phi i8 [ %.promoted, %.lr.ph ], [ %31, %29 ]
  %15 = phi i32 [ %8, %.lr.ph ], [ %30, %29 ]
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %10, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sext i32 %15 to i64
  %21 = getelementptr i8, ptr %11, i64 %20
  %22 = getelementptr i8, ptr %21, i64 1
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @Func1(i32 noundef %19, i32 noundef %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = add nsw i32 %13, 1
  br label %29

29:                                               ; preds = %27, %12
  %30 = phi i32 [ %28, %27 ], [ %13, %12 ]
  %31 = phi i8 [ 65, %27 ], [ %14, %12 ]
  %32 = icmp slt i32 %30, 2
  br i1 %32, label %12, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %29
  %.lcssa2 = phi i32 [ %30, %29 ]
  %.lcssa = phi i8 [ %31, %29 ]
  store i8 %.lcssa, ptr %7, align 1
  store i32 %.lcssa2, ptr %6, align 4
  br label %33

33:                                               ; preds = %._crit_edge, %2
  %34 = load i8, ptr %7, align 1
  %35 = icmp sgt i8 %34, 86
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = icmp ult i8 %34, 91
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i32 7, ptr %6, align 4
  br label %39

39:                                               ; preds = %38, %36, %33
  %40 = load i8, ptr %7, align 1
  %41 = icmp eq i8 %40, 88
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, ptr %3, align 4
  br label %52

43:                                               ; preds = %39
  %44 = load ptr, ptr %4, align 8
  %45 = load ptr, ptr %5, align 8
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) %45) #5
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, ptr %6, align 4
  %50 = add nsw i32 %49, 7
  store i32 %50, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, ptr %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %42
  %53 = load i32, ptr %3, align 4
  ret i32 %53
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
