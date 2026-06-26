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
  store i32 %12, ptr %8, align 4
  %exitcond.not = icmp eq i32 %12, 100000000
  br i1 %exitcond.not, label %13, label %10, !llvm.loop !7

13:                                               ; preds = %11
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
  br label %24

24:                                               ; preds = %13, %69
  %25 = call i32 @Proc5()
  %26 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  store i32 3, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %5, align 4
  %27 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %27, 0
  %28 = zext i1 %.not to i32
  store i32 %28, ptr @BoolGlob, align 4
  %29 = load i32, ptr %1, align 4
  %30 = load i32, ptr %2, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %24
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %33 = phi i32 [ %30, %.lr.ph ], [ %38, %32 ]
  %34 = phi i32 [ %29, %.lr.ph ], [ %41, %32 ]
  %35 = mul nsw i32 %34, 5
  %36 = sub nsw i32 %35, %33
  store i32 %36, ptr %3, align 4
  %37 = load i32, ptr %1, align 4
  %38 = load i32, ptr %2, align 4
  %39 = call i32 @Proc7(i32 noundef %37, i32 noundef %38, ptr noundef nonnull %3)
  %40 = load i32, ptr %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %1, align 4
  %42 = icmp slt i32 %41, %38
  br i1 %42, label %32, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %32
  br label %43

43:                                               ; preds = %._crit_edge, %24
  %.lcssa = phi i32 [ %41, %._crit_edge ], [ %29, %24 ]
  %44 = load i32, ptr %3, align 4
  %45 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %44)
  %46 = load ptr, ptr @PtrGlb, align 8
  %47 = call i32 @Proc1(ptr noundef %46)
  store i8 65, ptr %4, align 1
  %48 = load i8, ptr @Char2Glob, align 1
  %.not34 = icmp slt i8 %48, 65
  br i1 %.not34, label %61, label %.lr.ph7

.lr.ph7:                                          ; preds = %43
  br label %49

49:                                               ; preds = %.lr.ph7, %57
  %storemerge25 = phi i8 [ 65, %.lr.ph7 ], [ %59, %57 ]
  %50 = sext i8 %storemerge25 to i32
  %51 = load i32, ptr %5, align 4
  %52 = call i32 @Func1(i32 noundef %50, i32 noundef 67)
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %56

56:                                               ; preds = %54, %49
  br label %57

57:                                               ; preds = %56
  %58 = load i8, ptr %4, align 1
  %59 = add i8 %58, 1
  store i8 %59, ptr %4, align 1
  %60 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %59, %60
  br i1 %.not3, label %._crit_edge8, label %49, !llvm.loop !10

._crit_edge8:                                     ; preds = %57
  br label %61

61:                                               ; preds = %._crit_edge8, %43
  %62 = load i32, ptr %2, align 4
  %63 = load i32, ptr %1, align 4
  %64 = mul nsw i32 %62, %63
  store i32 %64, ptr %3, align 4
  %65 = sub nsw i32 %64, %62
  %66 = mul nsw i32 %65, 7
  %67 = sub nsw i32 %66, %63
  store i32 %67, ptr %2, align 4
  %68 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %69

69:                                               ; preds = %61
  %70 = load i32, ptr %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %8, align 4
  %72 = icmp ult i32 %71, 100000000
  br i1 %72, label %24, label %73, !llvm.loop !11

73:                                               ; preds = %69
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
  br label %7

7:                                                ; preds = %16, %1
  %8 = load i8, ptr @Char1Glob, align 1
  %9 = icmp eq i8 %8, 65
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %3, align 4
  %13 = load i32, ptr @IntGlob, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load ptr, ptr %2, align 8
  store i32 %14, ptr %15, align 4
  store i32 0, ptr %4, align 4
  br label %16

16:                                               ; preds = %10, %7
  %17 = load i32, ptr %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19
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
  br i1 %.not1, label %37, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %26

26:                                               ; preds = %.lr.ph, %33
  %27 = phi i32 [ %24, %.lr.ph ], [ %36, %33 ]
  %storemerge2 = phi i32 [ %19, %.lr.ph ], [ %35, %33 ]
  %28 = load ptr, ptr %6, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [204 x i8], ptr %28, i64 %29
  %31 = sext i32 %storemerge2 to i64
  %32 = getelementptr inbounds [4 x i8], ptr %30, i64 %31
  store i32 %27, ptr %32, align 4
  br label %33

33:                                               ; preds = %26
  %34 = load i32, ptr %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %8, align 4
  %36 = load i32, ptr %7, align 4
  %.not = icmp sgt i32 %34, %36
  br i1 %.not, label %._crit_edge, label %26, !llvm.loop !12

._crit_edge:                                      ; preds = %33
  br label %37

37:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %36, %._crit_edge ], [ %24, %4 ]
  %38 = load ptr, ptr %6, align 8
  %39 = sext i32 %.lcssa to i64
  %40 = getelementptr inbounds [204 x i8], ptr %38, i64 %39
  %41 = sext i32 %.lcssa to i64
  %42 = getelementptr [4 x i8], ptr %40, i64 %41
  %43 = getelementptr i8, ptr %42, i64 -4
  %44 = load i32, ptr %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %43, align 4
  %46 = load ptr, ptr %5, align 8
  %47 = load i32, ptr %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8], ptr %46, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %6, align 8
  %52 = sext i32 %47 to i64
  %53 = getelementptr [204 x i8], ptr %51, i64 %52
  %54 = getelementptr i8, ptr %53, i64 4080
  %55 = getelementptr inbounds [4 x i8], ptr %54, i64 %48
  store i32 %50, ptr %55, align 4
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
  br i1 true, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %26
  %9 = phi i32 [ 1, %.lr.ph ], [ %27, %26 ]
  %10 = load ptr, ptr %4, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load ptr, ptr %5, align 8
  %16 = sext i32 %9 to i64
  %17 = getelementptr i8, ptr %15, i64 %16
  %18 = getelementptr i8, ptr %17, i64 1
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 @Func1(i32 noundef %14, i32 noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  store i8 65, ptr %7, align 1
  %24 = load i32, ptr %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %6, align 4
  br label %26

26:                                               ; preds = %23, %8
  %27 = load i32, ptr %6, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %8, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %26
  br label %29

29:                                               ; preds = %._crit_edge, %2
  %30 = load i8, ptr %7, align 1
  %31 = icmp sgt i8 %30, 86
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = icmp ult i8 %30, 91
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  store i32 7, ptr %6, align 4
  br label %35

35:                                               ; preds = %34, %32, %29
  %36 = load i8, ptr %7, align 1
  %37 = icmp eq i8 %36, 88
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, ptr %3, align 4
  br label %48

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8
  %41 = load ptr, ptr %5, align 8
  %42 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) %41) #5
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, ptr %6, align 4
  %46 = add nsw i32 %45, 7
  store i32 %46, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %48

47:                                               ; preds = %39
  store i32 0, ptr %3, align 4
  br label %48

48:                                               ; preds = %47, %44, %38
  %49 = load i32, ptr %3, align 4
  ret i32 %49
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
