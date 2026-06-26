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

10:                                               ; preds = %12, %0
  %storemerge = phi i32 [ 0, %0 ], [ %13, %12 ]
  %exitcond = icmp ne i32 %storemerge, 100000000
  br i1 %exitcond, label %11, label %14

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %storemerge, 1
  br label %10, !llvm.loop !7

14:                                               ; preds = %10
  %storemerge.lcssa = phi i32 [ %storemerge, %10 ]
  store i32 %storemerge.lcssa, ptr %8, align 4
  %15 = call i32 @clock() #5
  %16 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %16, ptr @PtrGlbNext, align 8
  %17 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %17, ptr @PtrGlb, align 8
  %18 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %18, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 10001, ptr %20, align 4
  %21 = load ptr, ptr @PtrGlb, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 40, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %23, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %6, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %24 = call i32 @clock() #5
  %.promoted = load i32, ptr %2, align 4
  %.promoted3 = load i8, ptr %4, align 1
  br label %25

25:                                               ; preds = %67, %14
  %storemerge2.lcssa4 = phi i8 [ %.promoted3, %14 ], [ %storemerge2.lcssa, %67 ]
  %26 = phi i32 [ %.promoted, %14 ], [ %65, %67 ]
  %storemerge1 = phi i32 [ 0, %14 ], [ %68, %67 ]
  %27 = icmp ult i32 %storemerge1, 100000000
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = call i32 @Proc5()
  %30 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %5, align 4
  %31 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %31, 0
  %32 = zext i1 %.not to i32
  store i32 %32, ptr @BoolGlob, align 4
  br label %33

33:                                               ; preds = %36, %28
  %34 = load i32, ptr %1, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = mul nsw i32 %34, 5
  %38 = sub nsw i32 %37, 3
  store i32 %38, ptr %3, align 4
  %39 = load i32, ptr %1, align 4
  %40 = call i32 @Proc7(i32 noundef %39, i32 noundef 3, ptr noundef nonnull %3)
  %41 = load i32, ptr %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %1, align 4
  br label %33, !llvm.loop !9

43:                                               ; preds = %33
  %.lcssa = phi i32 [ %34, %33 ]
  %44 = load i32, ptr %3, align 4
  %45 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %44)
  %46 = load ptr, ptr @PtrGlb, align 8
  %47 = call i32 @Proc1(ptr noundef %46)
  br label %48

48:                                               ; preds = %58, %43
  %storemerge2 = phi i8 [ 65, %43 ], [ %59, %58 ]
  %49 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %storemerge2, %49
  br i1 %.not3, label %60, label %50

50:                                               ; preds = %48
  %51 = sext i8 %storemerge2 to i32
  %52 = load i32, ptr %5, align 4
  %53 = call i32 @Func1(i32 noundef %51, i32 noundef 67)
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %57

57:                                               ; preds = %55, %50
  br label %58

58:                                               ; preds = %57
  %59 = add i8 %storemerge2, 1
  br label %48, !llvm.loop !10

60:                                               ; preds = %48
  %storemerge2.lcssa = phi i8 [ %storemerge2, %48 ]
  %61 = load i32, ptr %1, align 4
  %62 = mul nsw i32 3, %61
  store i32 %62, ptr %3, align 4
  %63 = sub nsw i32 %62, 3
  %64 = mul nsw i32 %63, 7
  %65 = sub nsw i32 %64, %61
  %66 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %67

67:                                               ; preds = %60
  %68 = add i32 %storemerge1, 1
  br label %25, !llvm.loop !11

69:                                               ; preds = %25
  %storemerge2.lcssa4.lcssa = phi i8 [ %storemerge2.lcssa4, %25 ]
  %.lcssa2 = phi i32 [ %26, %25 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %25 ]
  store i32 %storemerge1.lcssa, ptr %8, align 4
  store i32 %.lcssa2, ptr %2, align 4
  store i8 %storemerge2.lcssa4.lcssa, ptr %4, align 1
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

10:                                               ; preds = %22, %1
  %11 = phi i32 [ %18, %22 ], [ %.promoted1, %1 ]
  %12 = phi i32 [ %19, %22 ], [ %.promoted, %1 ]
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
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  %.lcssa2 = phi i32 [ %18, %17 ]
  %.lcssa = phi i32 [ %19, %17 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 4
  br label %23

22:                                               ; preds = %17
  br label %10

23:                                               ; preds = %21
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
  %24 = load i32, ptr %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = load ptr, ptr %6, align 8
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [204 x i8], ptr %26, i64 %27
  br label %29

29:                                               ; preds = %33, %4
  %storemerge = phi i32 [ %19, %4 ], [ %34, %33 ]
  %.not = icmp sgt i32 %storemerge, %25
  br i1 %.not, label %35, label %30

30:                                               ; preds = %29
  %31 = sext i32 %storemerge to i64
  %32 = getelementptr inbounds [4 x i8], ptr %28, i64 %31
  store i32 %24, ptr %32, align 4
  br label %33

33:                                               ; preds = %30
  %34 = add nsw i32 %storemerge, 1
  br label %29, !llvm.loop !12

35:                                               ; preds = %29
  %storemerge.lcssa = phi i32 [ %storemerge, %29 ]
  %.lcssa = phi i32 [ %24, %29 ]
  store i32 %storemerge.lcssa, ptr %8, align 4
  %36 = load ptr, ptr %6, align 8
  %37 = sext i32 %.lcssa to i64
  %38 = getelementptr inbounds [204 x i8], ptr %36, i64 %37
  %39 = sext i32 %.lcssa to i64
  %40 = getelementptr [4 x i8], ptr %38, i64 %39
  %41 = getelementptr i8, ptr %40, i64 -4
  %42 = load i32, ptr %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 4
  %44 = load ptr, ptr %5, align 8
  %45 = load i32, ptr %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8], ptr %44, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %6, align 8
  %50 = sext i32 %45 to i64
  %51 = getelementptr [204 x i8], ptr %49, i64 %50
  %52 = getelementptr i8, ptr %51, i64 4080
  %53 = getelementptr inbounds [4 x i8], ptr %52, i64 %46
  store i32 %48, ptr %53, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 10001) i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
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
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %.promoted = load i32, ptr %6, align 4
  %.promoted2 = load i8, ptr %7, align 1
  br label %10

10:                                               ; preds = %28, %2
  %11 = phi i8 [ %29, %28 ], [ %.promoted2, %2 ]
  %12 = phi i32 [ %30, %28 ], [ %.promoted, %2 ]
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i8, ptr %8, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = sext i32 %12 to i64
  %20 = getelementptr i8, ptr %9, i64 %19
  %21 = getelementptr i8, ptr %20, i64 1
  %22 = load i8, ptr %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 @Func1(i32 noundef %18, i32 noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = add nsw i32 %12, 1
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi i8 [ 65, %26 ], [ %11, %14 ]
  %30 = phi i32 [ %27, %26 ], [ %12, %14 ]
  br label %10, !llvm.loop !13

31:                                               ; preds = %10
  %.lcssa3 = phi i8 [ %11, %10 ]
  %.lcssa = phi i32 [ %12, %10 ]
  store i32 %.lcssa, ptr %6, align 4
  store i8 %.lcssa3, ptr %7, align 1
  %32 = load i8, ptr %7, align 1
  %33 = icmp sgt i8 %32, 86
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = icmp ult i8 %32, 91
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  store i32 7, ptr %6, align 4
  br label %37

37:                                               ; preds = %36, %34, %31
  %38 = load i8, ptr %7, align 1
  %39 = icmp eq i8 %38, 88
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, ptr %3, align 4
  br label %50

41:                                               ; preds = %37
  %42 = load ptr, ptr %4, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %43) #5
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, ptr %6, align 4
  %48 = add nsw i32 %47, 7
  store i32 %48, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %50

49:                                               ; preds = %41
  store i32 0, ptr %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %40
  %51 = load i32, ptr %3, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Func3(i32 noundef %0) #0 {
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
