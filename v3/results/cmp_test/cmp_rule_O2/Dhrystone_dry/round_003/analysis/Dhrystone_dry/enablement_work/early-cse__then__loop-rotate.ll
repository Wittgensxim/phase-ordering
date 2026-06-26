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
  %exitcond = icmp ne i32 %12, 100000000
  br i1 %exitcond, label %10, label %13, !llvm.loop !7

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

24:                                               ; preds = %13, %71
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
  br i1 %31, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %24
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %33 = phi i32 [ %30, %.lr.ph ], [ %43, %32 ]
  %34 = phi i32 [ %29, %.lr.ph ], [ %42, %32 ]
  %35 = mul nsw i32 %34, 5
  %36 = sub nsw i32 %35, %33
  store i32 %36, ptr %3, align 4
  %37 = load i32, ptr %1, align 4
  %38 = load i32, ptr %2, align 4
  %39 = call i32 @Proc7(i32 noundef %37, i32 noundef %38, ptr noundef nonnull %3)
  %40 = load i32, ptr %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %1, align 4
  %42 = load i32, ptr %1, align 4
  %43 = load i32, ptr %2, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %32, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %32
  %split = phi i32 [ %42, %32 ]
  br label %45

45:                                               ; preds = %._crit_edge, %24
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %29, %24 ]
  %46 = load i32, ptr %3, align 4
  %47 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %46)
  %48 = load ptr, ptr @PtrGlb, align 8
  %49 = call i32 @Proc1(ptr noundef %48)
  store i8 65, ptr %4, align 1
  %50 = load i8, ptr @Char2Glob, align 1
  %.not34 = icmp sgt i8 65, %50
  br i1 %.not34, label %63, label %.lr.ph7

.lr.ph7:                                          ; preds = %45
  br label %51

51:                                               ; preds = %.lr.ph7, %59
  %storemerge25 = phi i8 [ 65, %.lr.ph7 ], [ %61, %59 ]
  %52 = sext i8 %storemerge25 to i32
  %53 = load i32, ptr %5, align 4
  %54 = call i32 @Func1(i32 noundef %52, i32 noundef 67)
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58
  %60 = load i8, ptr %4, align 1
  %61 = add i8 %60, 1
  store i8 %61, ptr %4, align 1
  %62 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %61, %62
  br i1 %.not3, label %._crit_edge8, label %51, !llvm.loop !10

._crit_edge8:                                     ; preds = %59
  br label %63

63:                                               ; preds = %._crit_edge8, %45
  %64 = load i32, ptr %2, align 4
  %65 = load i32, ptr %1, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, ptr %3, align 4
  %67 = sub nsw i32 %66, %64
  %68 = mul nsw i32 %67, 7
  %69 = sub nsw i32 %68, %65
  store i32 %69, ptr %2, align 4
  %70 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %71

71:                                               ; preds = %63
  %72 = load i32, ptr %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %8, align 4
  %74 = icmp ult i32 %73, 100000000
  br i1 %74, label %24, label %75, !llvm.loop !11

75:                                               ; preds = %71
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
  %13 = getelementptr inbounds [4 x i8], ptr %12, i64 %10
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %2 to i64
  %16 = getelementptr [4 x i8], ptr %12, i64 %15
  %17 = getelementptr i8, ptr %16, i64 24
  store i32 %14, ptr %17, align 4
  %18 = load i32, ptr %7, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr [4 x i8], ptr %19, i64 %20
  %22 = getelementptr i8, ptr %21, i64 120
  store i32 %18, ptr %22, align 4
  store i32 %18, ptr %8, align 4
  %23 = load i32, ptr %7, align 4
  %24 = add nsw i32 %23, 1
  %.not1 = icmp sgt i32 %18, %24
  br i1 %.not1, label %37, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %25

25:                                               ; preds = %.lr.ph, %32
  %26 = phi i32 [ %23, %.lr.ph ], [ %35, %32 ]
  %storemerge2 = phi i32 [ %18, %.lr.ph ], [ %34, %32 ]
  %27 = load ptr, ptr %6, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds [204 x i8], ptr %27, i64 %28
  %30 = sext i32 %storemerge2 to i64
  %31 = getelementptr inbounds [4 x i8], ptr %29, i64 %30
  store i32 %26, ptr %31, align 4
  br label %32

32:                                               ; preds = %25
  %33 = load i32, ptr %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %8, align 4
  %35 = load i32, ptr %7, align 4
  %36 = add nsw i32 %35, 1
  %.not = icmp sgt i32 %34, %36
  br i1 %.not, label %._crit_edge, label %25, !llvm.loop !12

._crit_edge:                                      ; preds = %32
  %split = phi i32 [ %35, %32 ]
  br label %37

37:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %23, %4 ]
  %38 = load ptr, ptr %6, align 8
  %39 = sext i32 %.lcssa to i64
  %40 = getelementptr inbounds [204 x i8], ptr %38, i64 %39
  %41 = getelementptr [4 x i8], ptr %40, i64 %39
  %42 = getelementptr i8, ptr %41, i64 -4
  %43 = load i32, ptr %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = load ptr, ptr %5, align 8
  %46 = load i32, ptr %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i8], ptr %45, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr [204 x i8], ptr %50, i64 %47
  %52 = getelementptr i8, ptr %51, i64 4080
  %53 = getelementptr inbounds [4 x i8], ptr %52, i64 %47
  store i32 %49, ptr %53, align 4
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
  br i1 %9, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %27
  %11 = phi i32 [ %8, %.lr.ph ], [ %28, %27 ]
  %12 = load ptr, ptr %4, align 8
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr i8, ptr %17, i64 %13
  %19 = getelementptr i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 @Func1(i32 noundef %16, i32 noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %10
  store i8 65, ptr %7, align 1
  %25 = load i32, ptr %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %6, align 4
  br label %27

27:                                               ; preds = %24, %10
  %28 = load i32, ptr %6, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %10, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %27
  br label %30

30:                                               ; preds = %._crit_edge, %2
  %31 = load i8, ptr %7, align 1
  %32 = icmp sgt i8 %31, 86
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = icmp ult i8 %31, 91
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  store i32 7, ptr %6, align 4
  br label %36

36:                                               ; preds = %35, %33, %30
  %37 = load i8, ptr %7, align 1
  %38 = icmp eq i8 %37, 88
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, ptr %3, align 4
  br label %49

40:                                               ; preds = %36
  %41 = load ptr, ptr %4, align 8
  %42 = load ptr, ptr %5, align 8
  %43 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) %42) #5
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, ptr %6, align 4
  %47 = add nsw i32 %46, 7
  store i32 %47, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %49

48:                                               ; preds = %40
  store i32 0, ptr %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %39
  %50 = load i32, ptr %3, align 4
  ret i32 %50
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
