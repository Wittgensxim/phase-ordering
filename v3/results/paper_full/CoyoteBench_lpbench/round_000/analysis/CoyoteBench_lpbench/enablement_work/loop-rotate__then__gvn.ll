; ModuleID = 'results\paper_full\CoyoteBench_lpbench\CoyoteBench_lpbench.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/lpbench.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\0Alpbench (Std. C) run time: %f\0A\0A\00", align 1
@seed = internal global i32 1325, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @matgen(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br i1 true, label %.lr.ph2, label %._crit_edge13

._crit_edge13:                                    ; preds = %2
  br label %22

.lr.ph2:                                          ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph2, %19
  %8 = phi i32 [ 0, %.lr.ph2 ], [ %20, %19 ]
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph, label %._crit_edge14

._crit_edge14:                                    ; preds = %7
  br label %19

.lr.ph:                                           ; preds = %7
  br label %9

9:                                                ; preds = %.lr.ph, %9
  %10 = phi i32 [ 0, %.lr.ph ], [ %17, %9 ]
  %11 = call double @random_double()
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds ptr, ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8
  %15 = sext i32 %8 to i64
  %16 = getelementptr inbounds double, ptr %14, i64 %15
  store double %11, ptr %16, align 8
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %6, align 4
  %18 = icmp slt i32 %17, 2000
  br i1 %18, label %9, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %9
  br label %19

19:                                               ; preds = %._crit_edge14, %._crit_edge
  %20 = add nsw i32 %8, 1
  store i32 %20, ptr %5, align 4
  %21 = icmp slt i32 %20, 2000
  br i1 %21, label %7, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %19
  br label %22

22:                                               ; preds = %._crit_edge13, %._crit_edge3
  store i32 0, ptr %5, align 4
  br i1 true, label %.lr.ph5, label %._crit_edge15

._crit_edge15:                                    ; preds = %22
  br label %29

.lr.ph5:                                          ; preds = %22
  br label %23

23:                                               ; preds = %.lr.ph5, %23
  %24 = phi i32 [ 0, %.lr.ph5 ], [ %27, %23 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, ptr %1, i64 %25
  store double 0.000000e+00, ptr %26, align 8
  %27 = add nsw i32 %24, 1
  store i32 %27, ptr %5, align 4
  %28 = icmp slt i32 %27, 2000
  br i1 %28, label %23, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %23
  br label %29

29:                                               ; preds = %._crit_edge15, %._crit_edge6
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph11, label %._crit_edge16

._crit_edge16:                                    ; preds = %29
  br label %48

.lr.ph11:                                         ; preds = %29
  br label %30

30:                                               ; preds = %.lr.ph11, %45
  %31 = phi i32 [ 0, %.lr.ph11 ], [ %46, %45 ]
  store i32 0, ptr %5, align 4
  br i1 true, label %.lr.ph8, label %._crit_edge17

._crit_edge17:                                    ; preds = %30
  br label %45

.lr.ph8:                                          ; preds = %30
  br label %32

32:                                               ; preds = %.lr.ph8, %32
  %33 = phi i32 [ 0, %.lr.ph8 ], [ %43, %32 ]
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %0, i64 %34
  %36 = load ptr, ptr %35, align 8
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds double, ptr %36, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds double, ptr %1, i64 %37
  %41 = load double, ptr %40, align 8
  %42 = fadd double %41, %39
  store double %42, ptr %40, align 8
  %43 = add nsw i32 %33, 1
  store i32 %43, ptr %5, align 4
  %44 = icmp slt i32 %43, 2000
  br i1 %44, label %32, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %32
  br label %45

45:                                               ; preds = %._crit_edge17, %._crit_edge9
  %46 = add nsw i32 %31, 1
  store i32 %46, ptr %6, align 4
  %47 = icmp slt i32 %46, 2000
  br i1 %47, label %30, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %45
  br label %48

48:                                               ; preds = %._crit_edge16, %._crit_edge12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  store i32 0, ptr %13, align 4
  %14 = icmp slt i32 %0, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, ptr %13, align 4
  br label %76

16:                                               ; preds = %4
  %17 = icmp eq i32 %0, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %74

19:                                               ; preds = %16
  %20 = icmp ne i32 %3, 1
  br i1 %20, label %21, label %48

21:                                               ; preds = %19
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds double, ptr %1, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  store double %25, ptr %9, align 8
  %26 = add nsw i32 1, %3
  store i32 %26, ptr %12, align 4
  store i32 1, ptr %11, align 4
  %27 = icmp slt i32 1, %0
  br i1 %27, label %.lr.ph2, label %46

.lr.ph2:                                          ; preds = %21
  br label %28

28:                                               ; preds = %.lr.ph2, %40
  %29 = phi i32 [ 0, %.lr.ph2 ], [ %41, %40 ]
  %30 = phi i32 [ 1, %.lr.ph2 ], [ %44, %40 ]
  %31 = phi double [ %25, %.lr.ph2 ], [ %42, %40 ]
  %32 = phi i32 [ %26, %.lr.ph2 ], [ %43, %40 ]
  %33 = add nsw i32 %32, %2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, ptr %1, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  store double %37, ptr %10, align 8
  %38 = fcmp ogt double %37, %31
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 %30, ptr %13, align 4
  store double %37, ptr %9, align 8
  br label %40

40:                                               ; preds = %39, %28
  %41 = phi i32 [ %30, %39 ], [ %29, %28 ]
  %42 = phi double [ %37, %39 ], [ %31, %28 ]
  %43 = add nsw i32 %32, %3
  store i32 %43, ptr %12, align 4
  %44 = add nsw i32 %30, 1
  store i32 %44, ptr %11, align 4
  %45 = icmp slt i32 %44, %0
  br i1 %45, label %28, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %40
  br label %46

46:                                               ; preds = %._crit_edge3, %21
  %47 = phi i32 [ %41, %._crit_edge3 ], [ 0, %21 ]
  br label %72

48:                                               ; preds = %19
  store i32 0, ptr %13, align 4
  %49 = sext i32 %2 to i64
  %50 = getelementptr inbounds double, ptr %1, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call double @llvm.fabs.f64(double %51)
  store double %52, ptr %9, align 8
  store i32 1, ptr %11, align 4
  %53 = icmp slt i32 1, %0
  br i1 %53, label %.lr.ph, label %70

.lr.ph:                                           ; preds = %48
  br label %54

54:                                               ; preds = %.lr.ph, %65
  %55 = phi i32 [ 0, %.lr.ph ], [ %66, %65 ]
  %56 = phi double [ %52, %.lr.ph ], [ %67, %65 ]
  %57 = phi i32 [ 1, %.lr.ph ], [ %68, %65 ]
  %58 = add nsw i32 %57, %2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, ptr %1, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = call double @llvm.fabs.f64(double %61)
  store double %62, ptr %10, align 8
  %63 = fcmp ogt double %62, %56
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 %57, ptr %13, align 4
  store double %62, ptr %9, align 8
  br label %65

65:                                               ; preds = %64, %54
  %66 = phi i32 [ %57, %64 ], [ %55, %54 ]
  %67 = phi double [ %62, %64 ], [ %56, %54 ]
  %68 = add nsw i32 %57, 1
  store i32 %68, ptr %11, align 4
  %69 = icmp slt i32 %68, %0
  br i1 %69, label %54, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %65
  br label %70

70:                                               ; preds = %._crit_edge, %48
  %71 = phi i32 [ %66, %._crit_edge ], [ 0, %48 ]
  br label %72

72:                                               ; preds = %70, %46
  %73 = phi i32 [ %71, %70 ], [ %47, %46 ]
  br label %74

74:                                               ; preds = %72, %18
  %75 = phi i32 [ %73, %72 ], [ 0, %18 ]
  br label %76

76:                                               ; preds = %74, %15
  %77 = phi i32 [ %75, %74 ], [ -1, %15 ]
  ret i32 %77
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store double %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %13 = icmp sgt i32 %0, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %5
  %15 = icmp ne i32 %4, 1
  br i1 %15, label %16, label %29

16:                                               ; preds = %14
  %17 = mul nsw i32 %0, %4
  store i32 %17, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %18 = icmp slt i32 0, %17
  br i1 %18, label %.lr.ph2, label %28

.lr.ph2:                                          ; preds = %16
  br label %19

19:                                               ; preds = %.lr.ph2, %19
  %20 = phi i32 [ 0, %.lr.ph2 ], [ %26, %19 ]
  %21 = add nsw i32 %20, %3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %2, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = fmul double %24, %1
  store double %25, ptr %23, align 8
  %26 = add nsw i32 %20, %4
  store i32 %26, ptr %11, align 4
  %27 = icmp slt i32 %26, %17
  br i1 %27, label %19, label %._crit_edge3, !llvm.loop !15

._crit_edge3:                                     ; preds = %19
  br label %28

28:                                               ; preds = %._crit_edge3, %16
  br label %40

29:                                               ; preds = %14
  store i32 0, ptr %11, align 4
  br i1 true, label %.lr.ph, label %._crit_edge4

._crit_edge4:                                     ; preds = %29
  br label %39

.lr.ph:                                           ; preds = %29
  br label %30

30:                                               ; preds = %.lr.ph, %30
  %31 = phi i32 [ 0, %.lr.ph ], [ %37, %30 ]
  %32 = add nsw i32 %31, %3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, ptr %2, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = fmul double %35, %1
  store double %36, ptr %34, align 8
  %37 = add nsw i32 %31, 1
  store i32 %37, ptr %11, align 4
  %38 = icmp slt i32 %37, %0
  br i1 %38, label %30, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %30
  br label %39

39:                                               ; preds = %._crit_edge4, %._crit_edge
  br label %40

40:                                               ; preds = %39, %28
  br label %41

41:                                               ; preds = %40, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, ptr %9, align 4
  store double %1, ptr %10, align 8
  store ptr %2, ptr %11, align 8
  store i32 %3, ptr %12, align 4
  store i32 %4, ptr %13, align 4
  store ptr %5, ptr %14, align 8
  store i32 %6, ptr %15, align 4
  store i32 %7, ptr %16, align 4
  %20 = icmp sgt i32 %0, 0
  br i1 %20, label %21, label %73

21:                                               ; preds = %8
  %22 = fcmp une double %1, 0.000000e+00
  br i1 %22, label %23, label %73

23:                                               ; preds = %21
  %24 = icmp ne i32 %4, 1
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ne i32 %7, 1
  br i1 %26, label %27, label %58

27:                                               ; preds = %25, %23
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %28 = icmp slt i32 %4, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = sub nsw i32 1, %0
  %31 = mul nsw i32 %30, %4
  store i32 %31, ptr %18, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %31, %29 ], [ 0, %27 ]
  %34 = icmp slt i32 %7, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = sub nsw i32 1, %0
  %37 = mul nsw i32 %36, %7
  store i32 %37, ptr %19, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %37, %35 ], [ 0, %32 ]
  store i32 0, ptr %17, align 4
  br i1 true, label %.lr.ph2, label %._crit_edge5

._crit_edge5:                                     ; preds = %38
  br label %57

.lr.ph2:                                          ; preds = %38
  br label %40

40:                                               ; preds = %.lr.ph2, %40
  %41 = phi i32 [ 0, %.lr.ph2 ], [ %55, %40 ]
  %42 = phi i32 [ %39, %.lr.ph2 ], [ %54, %40 ]
  %43 = phi i32 [ %33, %.lr.ph2 ], [ %53, %40 ]
  %44 = add nsw i32 %43, %3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, ptr %2, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = add nsw i32 %42, %6
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %5, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call double @llvm.fmuladd.f64(double %1, double %47, double %51)
  store double %52, ptr %50, align 8
  %53 = add nsw i32 %43, %4
  store i32 %53, ptr %18, align 4
  %54 = add nsw i32 %42, %7
  store i32 %54, ptr %19, align 4
  %55 = add nsw i32 %41, 1
  store i32 %55, ptr %17, align 4
  %56 = icmp slt i32 %55, %0
  br i1 %56, label %40, label %._crit_edge3, !llvm.loop !17

._crit_edge3:                                     ; preds = %40
  br label %57

57:                                               ; preds = %._crit_edge5, %._crit_edge3
  br label %73

58:                                               ; preds = %25
  store i32 0, ptr %17, align 4
  br i1 true, label %.lr.ph, label %._crit_edge4

._crit_edge4:                                     ; preds = %58
  br label %72

.lr.ph:                                           ; preds = %58
  br label %59

59:                                               ; preds = %.lr.ph, %59
  %60 = phi i32 [ 0, %.lr.ph ], [ %70, %59 ]
  %61 = add nsw i32 %60, %3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %2, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = add nsw i32 %60, %6
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %5, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = call double @llvm.fmuladd.f64(double %1, double %64, double %68)
  store double %69, ptr %67, align 8
  %70 = add nsw i32 %60, 1
  store i32 %70, ptr %17, align 4
  %71 = icmp slt i32 %70, %0
  br i1 %71, label %59, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %59
  br label %72

72:                                               ; preds = %._crit_edge4, %._crit_edge
  br label %73

73:                                               ; preds = %72, %57, %21, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph2, label %._crit_edge4

._crit_edge4:                                     ; preds = %2
  br label %67

.lr.ph2:                                          ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph2, %64
  %13 = phi i32 [ 0, %.lr.ph2 ], [ %18, %64 ]
  %14 = phi ptr [ %0, %.lr.ph2 ], [ %65, %64 ]
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %8, align 8
  %18 = add nsw i32 %13, 1
  store i32 %18, ptr %9, align 4
  %19 = sub nsw i32 2000, %13
  %20 = call i32 @idamax(i32 noundef %19, ptr noundef %17, i32 noundef %13, i32 noundef 1)
  %21 = add nsw i32 %20, %13
  store i32 %21, ptr %10, align 4
  %22 = getelementptr inbounds i32, ptr %1, i64 %15
  store i32 %21, ptr %22, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds double, ptr %17, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = fcmp une double %25, 0.000000e+00
  br i1 %26, label %27, label %64

27:                                               ; preds = %12
  %28 = icmp ne i32 %21, %13
  br i1 %28, label %29, label %._crit_edge5

._crit_edge5:                                     ; preds = %27
  %.phi.trans.insert = getelementptr inbounds double, ptr %17, i64 %15
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %32

29:                                               ; preds = %27
  store double %25, ptr %5, align 8
  %30 = getelementptr inbounds double, ptr %17, i64 %15
  %31 = load double, ptr %30, align 8
  store double %31, ptr %24, align 8
  store double %25, ptr %30, align 8
  br label %32

32:                                               ; preds = %._crit_edge5, %29
  %33 = phi double [ %.pre, %._crit_edge5 ], [ %25, %29 ]
  %34 = getelementptr inbounds double, ptr %17, i64 %15
  %35 = fdiv double -1.000000e+00, %33
  store double %35, ptr %5, align 8
  %36 = sub nsw i32 2000, %18
  call void @dscal(i32 noundef %36, double noundef %35, ptr noundef %17, i32 noundef %18, i32 noundef 1)
  store i32 %18, ptr %7, align 4
  %37 = icmp slt i32 %18, 2000
  br i1 %37, label %.lr.ph, label %62

.lr.ph:                                           ; preds = %32
  br label %38

38:                                               ; preds = %.lr.ph, %56
  %39 = phi i32 [ %13, %.lr.ph ], [ %57, %56 ]
  %40 = phi i32 [ %13, %.lr.ph ], [ %58, %56 ]
  %41 = phi i32 [ %21, %.lr.ph ], [ %59, %56 ]
  %42 = phi i32 [ %18, %.lr.ph ], [ %60, %56 ]
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %0, i64 %43
  %45 = load ptr, ptr %44, align 8
  store ptr %45, ptr %11, align 8
  %46 = sext i32 %41 to i64
  %47 = getelementptr inbounds double, ptr %45, i64 %46
  %48 = load double, ptr %47, align 8
  store double %48, ptr %5, align 8
  %49 = icmp ne i32 %41, %40
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = sext i32 %39 to i64
  %52 = getelementptr inbounds double, ptr %45, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = getelementptr inbounds double, ptr %45, i64 %23
  store double %53, ptr %54, align 8
  %55 = getelementptr inbounds double, ptr %45, i64 %15
  store double %48, ptr %55, align 8
  br label %56

56:                                               ; preds = %50, %38
  %57 = phi i32 [ %13, %50 ], [ %39, %38 ]
  %58 = phi i32 [ %13, %50 ], [ %40, %38 ]
  %59 = phi i32 [ %21, %50 ], [ %40, %38 ]
  call void @daxpy(i32 noundef %36, double noundef %48, ptr noundef %17, i32 noundef %18, i32 noundef 1, ptr noundef %45, i32 noundef %18, i32 noundef 1)
  %60 = add nsw i32 %42, 1
  store i32 %60, ptr %7, align 4
  %61 = icmp slt i32 %60, 2000
  br i1 %61, label %38, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %56
  br label %62

62:                                               ; preds = %._crit_edge, %32
  %63 = phi ptr [ %0, %._crit_edge ], [ %14, %32 ]
  br label %64

64:                                               ; preds = %62, %12
  %65 = phi ptr [ %63, %62 ], [ %14, %12 ]
  store i32 %18, ptr %6, align 4
  %66 = icmp slt i32 %18, 1999
  br i1 %66, label %12, label %._crit_edge3, !llvm.loop !20

._crit_edge3:                                     ; preds = %64
  br label %67

67:                                               ; preds = %._crit_edge4, %._crit_edge3
  %68 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %68, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %8, align 4
  br i1 true, label %.lr.ph, label %._crit_edge4

._crit_edge4:                                     ; preds = %3
  br label %30

.lr.ph:                                           ; preds = %3
  br label %12

12:                                               ; preds = %.lr.ph, %24
  %13 = phi i32 [ 0, %.lr.ph ], [ %25, %24 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %1, i64 %14
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, ptr %2, i64 %17
  %19 = load double, ptr %18, align 8
  store double %19, ptr %7, align 8
  %20 = icmp ne i32 %16, %13
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds double, ptr %2, i64 %14
  %23 = load double, ptr %22, align 8
  store double %23, ptr %18, align 8
  store double %19, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %12
  %25 = add nsw i32 %13, 1
  store i32 %25, ptr %11, align 4
  %26 = sub nsw i32 2000, %25
  %27 = getelementptr inbounds ptr, ptr %0, i64 %14
  %28 = load ptr, ptr %27, align 8
  call void @daxpy(i32 noundef %26, double noundef %19, ptr noundef %28, i32 noundef %25, i32 noundef 1, ptr noundef %2, i32 noundef %25, i32 noundef 1)
  store i32 %25, ptr %8, align 4
  %29 = icmp slt i32 %25, 1999
  br i1 %29, label %12, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %24
  br label %30

30:                                               ; preds = %._crit_edge4, %._crit_edge
  store i32 0, ptr %9, align 4
  br i1 true, label %.lr.ph2, label %._crit_edge5

._crit_edge5:                                     ; preds = %30
  br label %46

.lr.ph2:                                          ; preds = %30
  br label %31

31:                                               ; preds = %.lr.ph2, %31
  %32 = phi i32 [ 0, %.lr.ph2 ], [ %33, %31 ]
  %33 = add nsw i32 %32, 1
  %34 = sub nsw i32 2000, %33
  store i32 %34, ptr %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %0, i64 %35
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds double, ptr %37, i64 %35
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds double, ptr %2, i64 %35
  %41 = load double, ptr %40, align 8
  %42 = fdiv double %41, %39
  store double %42, ptr %40, align 8
  %43 = fneg double %42
  store double %43, ptr %7, align 8
  %44 = load ptr, ptr %36, align 8
  call void @daxpy(i32 noundef %34, double noundef %43, ptr noundef %44, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  store i32 %33, ptr %9, align 4
  %45 = icmp slt i32 %33, 2000
  br i1 %45, label %31, label %._crit_edge3, !llvm.loop !22

._crit_edge3:                                     ; preds = %31
  br label %46

46:                                               ; preds = %._crit_edge5, %._crit_edge3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i8 0, ptr %7, align 1
  %14 = icmp sgt i32 %0, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br i1 true, label %.lr.ph, label %..loopexit_crit_edge5

..loopexit_crit_edge5:                            ; preds = %15
  br label %.loopexit

.lr.ph:                                           ; preds = %15
  br label %16

16:                                               ; preds = %.lr.ph, %23
  %17 = phi i32 [ 1, %.lr.ph ], [ %24, %23 ]
  %18 = getelementptr inbounds ptr, ptr %1, i64 1
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @strcmp(ptr noundef %19, ptr noundef @.str) #5
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i8 1, ptr %7, align 1
  br label %26

23:                                               ; preds = %16
  %24 = add nsw i32 %17, 1
  store i32 %24, ptr %6, align 4
  %25 = icmp slt i32 %24, %0
  br i1 %25, label %16, label %..loopexit_crit_edge, !llvm.loop !23

..loopexit_crit_edge:                             ; preds = %23
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge5, %..loopexit_crit_edge
  br label %26

26:                                               ; preds = %.loopexit, %22
  %27 = phi i8 [ 0, %.loopexit ], [ 1, %22 ]
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i8 [ %27, %26 ], [ 0, %2 ]
  %30 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %30, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph1, label %._crit_edge6

._crit_edge6:                                     ; preds = %28
  br label %38

.lr.ph1:                                          ; preds = %28
  br label %31

31:                                               ; preds = %.lr.ph1, %31
  %32 = phi i32 [ 0, %.lr.ph1 ], [ %36, %31 ]
  %33 = call ptr @malloc(i64 noundef 16008) #6
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds ptr, ptr %30, i64 %34
  store ptr %33, ptr %35, align 8
  %36 = add nsw i32 %32, 1
  store i32 %36, ptr %6, align 4
  %37 = icmp slt i32 %36, 2000
  br i1 %37, label %31, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %31
  br label %38

38:                                               ; preds = %._crit_edge6, %._crit_edge
  %39 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %39, ptr %9, align 8
  %40 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %40, ptr %10, align 8
  %41 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %41, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  call void @matgen(ptr noundef %30, ptr noundef %39)
  call void @dgefa(ptr noundef %30, ptr noundef %41)
  call void @dgesl(ptr noundef %30, ptr noundef %41, ptr noundef %39)
  store double 0.000000e+00, ptr %13, align 8
  call void @free(ptr noundef %41)
  call void @free(ptr noundef %40)
  call void @free(ptr noundef %39)
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph3, label %._crit_edge7

._crit_edge7:                                     ; preds = %38
  br label %49

.lr.ph3:                                          ; preds = %38
  br label %42

42:                                               ; preds = %.lr.ph3, %42
  %43 = phi i32 [ 0, %.lr.ph3 ], [ %47, %42 ]
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %30, i64 %44
  %46 = load ptr, ptr %45, align 8
  call void @free(ptr noundef %46)
  %47 = add nsw i32 %43, 1
  store i32 %47, ptr %6, align 4
  %48 = icmp slt i32 %47, 2000
  br i1 %48, label %42, label %._crit_edge4, !llvm.loop !25

._crit_edge4:                                     ; preds = %42
  br label %49

49:                                               ; preds = %._crit_edge7, %._crit_edge4
  call void @free(ptr noundef %30)
  %50 = icmp ne i8 %29, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = call ptr @__acrt_iob_func(i32 noundef 1)
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %57

54:                                               ; preds = %49
  %55 = call ptr @__acrt_iob_func(i32 noundef 1)
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %57

57:                                               ; preds = %54, %51
  %58 = call ptr @__acrt_iob_func(i32 noundef 1)
  %59 = call i32 @fflush(ptr noundef %58)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #3

declare dso_local void @free(ptr noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare dllimport ptr @__acrt_iob_func(i32 noundef) #4

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal double @random_double() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = load i32, ptr @seed, align 4
  %4 = xor i32 %3, 123459876
  store i32 %4, ptr @seed, align 4
  %5 = sdiv i32 %4, 127773
  store i32 %5, ptr %1, align 4
  %6 = mul nsw i32 %5, 127773
  %7 = sub nsw i32 %4, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %5
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = add nsw i32 %10, 2147483647
  store i32 %13, ptr @seed, align 4
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i32 [ %13, %12 ], [ %10, %0 ]
  %16 = sitofp i32 %15 to double
  %17 = fmul double f0x3E00000000200FE1, %16
  store double %17, ptr %2, align 8
  %18 = xor i32 %15, 123459876
  store i32 %18, ptr @seed, align 4
  ret double %17
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/lpbench.c", directory: "E:/Phase Ordering/v3")
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
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
