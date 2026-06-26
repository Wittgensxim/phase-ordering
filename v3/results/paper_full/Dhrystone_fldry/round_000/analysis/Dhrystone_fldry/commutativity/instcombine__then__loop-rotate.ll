; ModuleID = 'results\paper_full\Dhrystone_fldry\Dhrystone_fldry.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/fldry.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@Version = dso_local global [4 x i8] c"1.1\00", align 1
@.str = private unnamed_addr constant [53 x i8] c"calculate floating dhrystones using doubles size %d\0A\00", align 1
@PtrGlbNext = dso_local global ptr null, align 8
@PtrGlb = dso_local global ptr null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Array2Glob = dso_local global [51 x [51 x double]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@BoolGlob = dso_local global i32 0, align 4
@Array1Glob = dso_local global [51 x double] zeroinitializer, align 16
@Char2Glob = dso_local global i8 0, align 1
@Char1Glob = dso_local global i8 0, align 1
@IntGlob = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef 8) #6
  %4 = call i32 @Proc0()
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca [31 x i8], align 16
  %7 = alloca [31 x i8], align 16
  %8 = alloca i32, align 4
  %9 = call i32 @clock() #6
  store i32 0, ptr %8, align 4
  br label %10

10:                                               ; preds = %0, %11
  br label %11

11:                                               ; preds = %10
  %12 = load i32, ptr %8, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %8, align 4
  %14 = icmp ult i32 %13, 100000000
  br i1 %14, label %10, label %15, !llvm.loop !7

15:                                               ; preds = %11
  %16 = call i32 @clock() #6
  %17 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %17, ptr @PtrGlbNext, align 8
  %18 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %18, ptr @PtrGlb, align 8
  %19 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %19, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 10001, ptr %21, align 4
  %22 = load ptr, ptr @PtrGlb, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store double 4.000000e+01, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %24, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %6, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %25 = call i32 @clock() #6
  store i32 0, ptr %8, align 4
  br label %26

26:                                               ; preds = %15, %74
  %27 = call i32 @Proc5()
  %28 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  store double 3.000000e+00, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.3, i64 31, i1 false) #6
  store i32 10000, ptr %5, align 4
  %29 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %29, 0
  %30 = zext i1 %.not to i32
  store i32 %30, ptr @BoolGlob, align 4
  %31 = load double, ptr %1, align 8
  %32 = load double, ptr %2, align 8
  %33 = fcmp olt double %31, %32
  br i1 %33, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %26
  br label %34

34:                                               ; preds = %.lr.ph, %34
  %35 = load double, ptr %1, align 8
  %36 = load double, ptr %2, align 8
  %37 = fneg double %36
  %38 = call double @llvm.fmuladd.f64(double %35, double 5.000000e+00, double %37)
  store double %38, ptr %3, align 8
  %39 = call i32 @Proc7(double noundef %35, double noundef %36, ptr noundef nonnull %3)
  %40 = load double, ptr %1, align 8
  %41 = fadd double %40, 1.000000e+00
  store double %41, ptr %1, align 8
  %42 = load double, ptr %1, align 8
  %43 = load double, ptr %2, align 8
  %44 = fcmp olt double %42, %43
  br i1 %44, label %34, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %34
  br label %45

45:                                               ; preds = %._crit_edge, %26
  %46 = load double, ptr %1, align 8
  %47 = load double, ptr %3, align 8
  %48 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, double noundef %46, double noundef %47)
  %49 = load ptr, ptr @PtrGlb, align 8
  %50 = call i32 @Proc1(ptr noundef %49)
  store i8 65, ptr %4, align 1
  %51 = load i8, ptr @Char2Glob, align 1
  %.not34 = icmp sgt i8 65, %51
  br i1 %.not34, label %65, label %.lr.ph6

.lr.ph6:                                          ; preds = %45
  br label %52

52:                                               ; preds = %.lr.ph6, %61
  %53 = load i32, ptr %5, align 4
  %54 = load i8, ptr %4, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 @Func1(i32 noundef %55, i32 noundef 67)
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %60

60:                                               ; preds = %58, %52
  br label %61

61:                                               ; preds = %60
  %62 = load i8, ptr %4, align 1
  %63 = add i8 %62, 1
  store i8 %63, ptr %4, align 1
  %64 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %63, %64
  br i1 %.not3, label %._crit_edge7, label %52, !llvm.loop !10

._crit_edge7:                                     ; preds = %61
  br label %65

65:                                               ; preds = %._crit_edge7, %45
  %66 = load double, ptr %2, align 8
  %67 = load double, ptr %1, align 8
  %68 = fmul double %66, %67
  store double %68, ptr %3, align 8
  %69 = fdiv double %68, %67
  %70 = fsub double %68, %69
  %71 = fneg double %67
  %72 = call double @llvm.fmuladd.f64(double %70, double 7.000000e+00, double %71)
  store double %72, ptr %2, align 8
  %73 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, ptr %8, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %8, align 4
  %77 = icmp ult i32 %76, 100000000
  br i1 %77, label %26, label %78, !llvm.loop !11

78:                                               ; preds = %74
  ret i32 undef
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 5.000000e+00, ptr %3, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 5.000000e+00, ptr %5, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %6, ptr %8, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load double, ptr %0, align 8
  %6 = fadd double %5, 1.000000e+01
  store double %6, ptr %3, align 8
  br label %7

7:                                                ; preds = %16, %1
  %8 = load i8, ptr @Char1Glob, align 1
  %9 = icmp eq i8 %8, 65
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load double, ptr %3, align 8
  %12 = fadd double %11, -1.000000e+00
  store double %12, ptr %3, align 8
  %13 = load double, ptr @IntGlob, align 8
  %14 = fsub double %12, %13
  %15 = load ptr, ptr %2, align 8
  store double %14, ptr %15, align 8
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
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr @PtrGlb, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @PtrGlb, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %2, align 8
  store ptr %6, ptr %7, align 8
  br label %9

8:                                                ; preds = %1
  store double 1.000000e+02, ptr @IntGlob, align 8
  br label %9

9:                                                ; preds = %8, %4
  %10 = load double, ptr @IntGlob, align 8
  %11 = load ptr, ptr @PtrGlb, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %13 = call i32 @Proc7(i32 noundef 10, double noundef %10, ptr noundef nonnull %12)
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
  %13 = load double, ptr @IntGlob, align 8
  %14 = fcmp ogt double %13, 1.000000e+02
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
define dso_local i32 @Proc7(double noundef %0, double noundef %1, ptr noundef %2) #0 {
  %4 = fadd double %0, 2.000000e+00
  %5 = fadd double %1, %4
  store double %5, ptr %2, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = fadd double %2, 5.000000e+00
  store double %9, ptr %7, align 8
  %10 = fptosi double %9 to i32
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i8], ptr %0, i64 %11
  store double %3, ptr %12, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = fptosi double %9 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %13, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = load double, ptr %7, align 8
  %19 = fptosi double %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr [8 x i8], ptr %13, i64 %20
  %22 = getelementptr i8, ptr %21, i64 8
  store double %17, ptr %22, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load double, ptr %7, align 8
  %25 = fptosi double %24 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr [8 x i8], ptr %23, i64 %26
  %28 = getelementptr i8, ptr %27, i64 240
  store double %18, ptr %28, align 8
  store double %24, ptr %8, align 8
  %29 = load double, ptr %7, align 8
  %30 = fadd double %29, 1.000000e+00
  %31 = fcmp ugt double %24, %30
  br i1 %31, label %48, label %.lr.ph

.lr.ph:                                           ; preds = %4
  br label %32

32:                                               ; preds = %.lr.ph, %42
  %33 = load double, ptr %7, align 8
  %34 = load ptr, ptr %6, align 8
  %35 = fptosi double %33 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [408 x i8], ptr %34, i64 %36
  %38 = load double, ptr %8, align 8
  %39 = fptosi double %38 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i8], ptr %37, i64 %40
  store double %33, ptr %41, align 8
  br label %42

42:                                               ; preds = %32
  %43 = load double, ptr %8, align 8
  %44 = fadd double %43, 1.000000e+00
  store double %44, ptr %8, align 8
  %45 = load double, ptr %7, align 8
  %46 = fadd double %45, 1.000000e+00
  %47 = fcmp ugt double %44, %46
  br i1 %47, label %._crit_edge, label %32, !llvm.loop !12

._crit_edge:                                      ; preds = %42
  br label %48

48:                                               ; preds = %._crit_edge, %4
  %49 = load ptr, ptr %6, align 8
  %50 = load double, ptr %7, align 8
  %51 = fptosi double %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [408 x i8], ptr %49, i64 %52
  %54 = fptosi double %50 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr [8 x i8], ptr %53, i64 %55
  %57 = getelementptr i8, ptr %56, i64 -8
  %58 = load double, ptr %57, align 8
  %59 = fadd double %58, 1.000000e+00
  store double %59, ptr %57, align 8
  %60 = load ptr, ptr %5, align 8
  %61 = load double, ptr %7, align 8
  %62 = fptosi double %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i8], ptr %60, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = load ptr, ptr %6, align 8
  %67 = fptosi double %61 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr [408 x i8], ptr %66, i64 %68
  %70 = getelementptr i8, ptr %69, i64 8160
  %71 = load double, ptr %7, align 8
  %72 = fptosi double %71 to i32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i8], ptr %70, i64 %73
  store double %65, ptr %74, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
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
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store double 1.000000e+00, ptr %6, align 8
  %8 = load double, ptr %6, align 8
  %9 = fcmp ugt double %8, 1.000000e+00
  br i1 %9, label %34, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %31
  %11 = load ptr, ptr %4, align 8
  %12 = load double, ptr %6, align 8
  %13 = fptosi double %12 to i32
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load ptr, ptr %5, align 8
  %19 = load double, ptr %6, align 8
  %20 = fptosi double %19 to i32
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, ptr %18, i64 %21
  %23 = getelementptr i8, ptr %22, i64 1
  %24 = load i8, ptr %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 @Func1(i32 noundef %17, i32 noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %10
  store i8 65, ptr %7, align 1
  %29 = load double, ptr %6, align 8
  %30 = fadd double %29, 1.000000e+00
  store double %30, ptr %6, align 8
  br label %31

31:                                               ; preds = %28, %10
  %32 = load double, ptr %6, align 8
  %33 = fcmp ugt double %32, 1.000000e+00
  br i1 %33, label %._crit_edge, label %10, !llvm.loop !13

._crit_edge:                                      ; preds = %31
  br label %34

34:                                               ; preds = %._crit_edge, %2
  %35 = load i8, ptr %7, align 1
  %36 = icmp sgt i8 %35, 86
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i8, ptr %7, align 1
  %39 = icmp slt i8 %38, 91
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store double 7.000000e+00, ptr %6, align 8
  br label %41

41:                                               ; preds = %40, %37, %34
  %42 = load i8, ptr %7, align 1
  %43 = icmp eq i8 %42, 88
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, ptr %3, align 4
  br label %54

45:                                               ; preds = %41
  %46 = load ptr, ptr %4, align 8
  %47 = load ptr, ptr %5, align 8
  %48 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) %47) #6
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load double, ptr %6, align 8
  %52 = fadd double %51, 7.000000e+00
  store double %52, ptr %6, align 8
  store i32 1, ptr %3, align 4
  br label %54

53:                                               ; preds = %45
  store i32 0, ptr %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %44
  %55 = load i32, ptr %3, align 4
  ret i32 %55
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/fldry.c", directory: "E:/Phase Ordering/v3")
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
