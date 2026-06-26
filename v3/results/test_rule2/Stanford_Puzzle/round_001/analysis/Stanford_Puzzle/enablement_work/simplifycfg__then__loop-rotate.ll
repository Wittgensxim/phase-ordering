; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Puzzle.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@kount = dso_local global i32 0, align 4
@n = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error1 in Puzzle\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Error2 in Puzzle.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Error3 in Puzzle.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i32 74755, ptr @seed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %29
  %14 = phi i64 [ %9, %.lr.ph ], [ %34, %29 ]
  %15 = phi i32 [ %7, %.lr.ph ], [ %32, %29 ]
  %16 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %14
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [512 x i32], ptr %16, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, %15
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, ptr %3, align 4
  br label %39

29:                                               ; preds = %13, %21
  %30 = load i32, ptr %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %6, align 4
  %32 = load i32, ptr %6, align 4
  %33 = load i32, ptr %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp sle i32 %32, %36
  br i1 %37, label %13, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %29
  br label %38

38:                                               ; preds = %._crit_edge, %2
  store i32 1, ptr %3, align 4
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, ptr %3, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %26
  %14 = phi i64 [ %9, %.lr.ph ], [ %31, %26 ]
  %15 = phi i32 [ %7, %.lr.ph ], [ %29, %26 ]
  %16 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %14
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [512 x i32], ptr %16, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, %15
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %24
  store i32 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %13, %21
  %27 = load i32, ptr %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %6, align 4
  %29 = load i32, ptr %6, align 4
  %30 = load i32, ptr %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp sle i32 %29, %33
  br i1 %34, label %13, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %26
  %split = phi i64 [ %31, %26 ]
  br label %35

35:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %9, %2 ]
  %36 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %37 = load i32, ptr %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = load i32, ptr %5, align 4
  store i32 %42, ptr %6, align 4
  %43 = load i32, ptr %6, align 4
  %44 = icmp sle i32 %43, 511
  br i1 %44, label %.lr.ph2, label %56

.lr.ph2:                                          ; preds = %35
  br label %45

45:                                               ; preds = %.lr.ph2, %52
  %46 = phi i32 [ %43, %.lr.ph2 ], [ %54, %52 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  %.lcssa1 = phi i32 [ %46, %45 ]
  store i32 %.lcssa1, ptr %3, align 4
  br label %57

52:                                               ; preds = %45
  %53 = add nsw i32 %46, 1
  store i32 %53, ptr %6, align 4
  %54 = load i32, ptr %6, align 4
  %55 = icmp sle i32 %54, 511
  br i1 %55, label %45, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %52
  br label %56

56:                                               ; preds = %._crit_edge3, %35
  store i32 0, ptr %3, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i32, ptr %3, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp sle i32 %6, %10
  br i1 %11, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %25
  %13 = phi i64 [ %8, %.lr.ph ], [ %30, %25 ]
  %14 = phi i32 [ %6, %.lr.ph ], [ %28, %25 ]
  %15 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %13
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [512 x i32], ptr %15, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i32, ptr %4, align 4
  %22 = add nsw i32 %21, %14
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %23
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %12, %20
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %5, align 4
  %28 = load i32, ptr %5, align 4
  %29 = load i32, ptr %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp sle i32 %28, %32
  br i1 %33, label %12, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %25
  %split = phi i64 [ %30, %25 ]
  br label %34

34:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %8, %2 ]
  %35 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %38, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %6 = load i32, ptr @kount, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @kount, align 4
  store i32 0, ptr %4, align 4
  %8 = load i32, ptr %4, align 4
  %9 = icmp sle i32 %8, 12
  br i1 %9, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %1
  br label %10

10:                                               ; preds = %.lr.ph, %35
  %11 = phi i32 [ %8, %.lr.ph ], [ %38, %35 ]
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %10
  %20 = load i32, ptr %3, align 4
  %21 = call i32 @Fit(i32 noundef %11, i32 noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %3, align 4
  %26 = call i32 @Place(i32 noundef %24, i32 noundef %25)
  store i32 %26, ptr %5, align 4
  %27 = call i32 @Trial(i32 noundef %26)
  %28 = icmp ne i32 %27, 0
  %29 = load i32, ptr %5, align 4
  %30 = icmp eq i32 %29, 0
  %or.cond = select i1 %28, i1 true, i1 %30
  br i1 %or.cond, label %31, label %32

31:                                               ; preds = %23
  store i32 1, ptr %2, align 4
  br label %41

32:                                               ; preds = %23
  %33 = load i32, ptr %4, align 4
  %34 = load i32, ptr %3, align 4
  call void @Remove(i32 noundef %33, i32 noundef %34)
  br label %35

35:                                               ; preds = %10, %32, %19
  %36 = load i32, ptr %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %4, align 4
  %38 = load i32, ptr %4, align 4
  %39 = icmp sle i32 %38, 12
  br i1 %39, label %10, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %35
  br label %40

40:                                               ; preds = %._crit_edge, %1
  store i32 0, ptr %2, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, ptr %2, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sle i32 %5, 511
  br i1 %6, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %0
  br label %7

7:                                                ; preds = %.lr.ph, %7
  %8 = phi i32 [ %5, %.lr.ph ], [ %13, %7 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %9
  store i32 1, ptr %10, align 4
  %11 = load i32, ptr %4, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %4, align 4
  %13 = load i32, ptr %4, align 4
  %14 = icmp sle i32 %13, 511
  br i1 %14, label %7, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %7
  br label %15

15:                                               ; preds = %._crit_edge, %0
  store i32 1, ptr %1, align 4
  %16 = load i32, ptr %1, align 4
  %17 = icmp sle i32 %16, 5
  br i1 %17, label %.lr.ph8, label %48

.lr.ph8:                                          ; preds = %15
  br label %18

18:                                               ; preds = %.lr.ph8, %43
  store i32 1, ptr %2, align 4
  %19 = load i32, ptr %2, align 4
  %20 = icmp sle i32 %19, 5
  br i1 %20, label %.lr.ph5, label %43

.lr.ph5:                                          ; preds = %18
  br label %21

21:                                               ; preds = %.lr.ph5, %38
  store i32 1, ptr %3, align 4
  %22 = load i32, ptr %3, align 4
  %23 = icmp sle i32 %22, 5
  br i1 %23, label %.lr.ph2, label %38

.lr.ph2:                                          ; preds = %21
  br label %24

24:                                               ; preds = %.lr.ph2, %24
  %25 = phi i32 [ %22, %.lr.ph2 ], [ %36, %24 ]
  %26 = load i32, ptr %1, align 4
  %27 = load i32, ptr %2, align 4
  %28 = mul nsw i32 8, %25
  %29 = add nsw i32 %27, %28
  %30 = mul nsw i32 8, %29
  %31 = add nsw i32 %26, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %32
  store i32 0, ptr %33, align 4
  %34 = load i32, ptr %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %3, align 4
  %36 = load i32, ptr %3, align 4
  %37 = icmp sle i32 %36, 5
  br i1 %37, label %24, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %24
  br label %38

38:                                               ; preds = %._crit_edge3, %21
  %39 = load i32, ptr %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %2, align 4
  %41 = load i32, ptr %2, align 4
  %42 = icmp sle i32 %41, 5
  br i1 %42, label %21, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %38
  br label %43

43:                                               ; preds = %._crit_edge6, %18
  %44 = load i32, ptr %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %1, align 4
  %46 = load i32, ptr %1, align 4
  %47 = icmp sle i32 %46, 5
  br i1 %47, label %18, label %._crit_edge9, !llvm.loop !16

._crit_edge9:                                     ; preds = %43
  br label %48

48:                                               ; preds = %._crit_edge9, %15
  store i32 0, ptr %1, align 4
  %49 = load i32, ptr %1, align 4
  %50 = icmp sle i32 %49, 12
  br i1 %50, label %.lr.ph14, label %70

.lr.ph14:                                         ; preds = %48
  br label %51

51:                                               ; preds = %.lr.ph14, %65
  store i32 0, ptr %4, align 4
  %52 = load i32, ptr %4, align 4
  %53 = icmp sle i32 %52, 511
  br i1 %53, label %.lr.ph11, label %65

.lr.ph11:                                         ; preds = %51
  br label %54

54:                                               ; preds = %.lr.ph11, %54
  %55 = phi i32 [ %52, %.lr.ph11 ], [ %63, %54 ]
  %56 = load i32, ptr %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %57
  %59 = sext i32 %55 to i64
  %60 = getelementptr inbounds [512 x i32], ptr %58, i64 0, i64 %59
  store i32 0, ptr %60, align 4
  %61 = load i32, ptr %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %4, align 4
  %63 = load i32, ptr %4, align 4
  %64 = icmp sle i32 %63, 511
  br i1 %64, label %54, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %54
  br label %65

65:                                               ; preds = %._crit_edge12, %51
  %66 = load i32, ptr %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %1, align 4
  %68 = load i32, ptr %1, align 4
  %69 = icmp sle i32 %68, 12
  br i1 %69, label %51, label %._crit_edge15, !llvm.loop !18

._crit_edge15:                                    ; preds = %65
  br label %70

70:                                               ; preds = %._crit_edge15, %48
  store i32 0, ptr %1, align 4
  %71 = load i32, ptr %1, align 4
  %72 = icmp sle i32 %71, 3
  br i1 %72, label %.lr.ph23, label %103

.lr.ph23:                                         ; preds = %70
  br label %73

73:                                               ; preds = %.lr.ph23, %98
  store i32 0, ptr %2, align 4
  %74 = load i32, ptr %2, align 4
  %75 = icmp sle i32 %74, 1
  br i1 %75, label %.lr.ph20, label %98

.lr.ph20:                                         ; preds = %73
  br label %76

76:                                               ; preds = %.lr.ph20, %93
  store i32 0, ptr %3, align 4
  %77 = load i32, ptr %3, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %.lr.ph17, label %93

.lr.ph17:                                         ; preds = %76
  br label %79

79:                                               ; preds = %.lr.ph17, %79
  %80 = phi i32 [ %77, %.lr.ph17 ], [ %91, %79 ]
  %81 = load i32, ptr %1, align 4
  %82 = load i32, ptr %2, align 4
  %83 = mul nsw i32 8, %80
  %84 = add nsw i32 %82, %83
  %85 = mul nsw i32 8, %84
  %86 = add nsw i32 %81, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %87
  store i32 1, ptr %88, align 4
  %89 = load i32, ptr %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %3, align 4
  %91 = load i32, ptr %3, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %79, label %._crit_edge18, !llvm.loop !19

._crit_edge18:                                    ; preds = %79
  br label %93

93:                                               ; preds = %._crit_edge18, %76
  %94 = load i32, ptr %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %2, align 4
  %96 = load i32, ptr %2, align 4
  %97 = icmp sle i32 %96, 1
  br i1 %97, label %76, label %._crit_edge21, !llvm.loop !20

._crit_edge21:                                    ; preds = %93
  br label %98

98:                                               ; preds = %._crit_edge21, %73
  %99 = load i32, ptr %1, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %1, align 4
  %101 = load i32, ptr %1, align 4
  %102 = icmp sle i32 %101, 3
  br i1 %102, label %73, label %._crit_edge24, !llvm.loop !21

._crit_edge24:                                    ; preds = %98
  br label %103

103:                                              ; preds = %._crit_edge24, %70
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %104 = load i32, ptr %1, align 4
  %105 = icmp sle i32 %104, 1
  br i1 %105, label %.lr.ph32, label %136

.lr.ph32:                                         ; preds = %103
  br label %106

106:                                              ; preds = %.lr.ph32, %131
  store i32 0, ptr %2, align 4
  %107 = load i32, ptr %2, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %.lr.ph29, label %131

.lr.ph29:                                         ; preds = %106
  br label %109

109:                                              ; preds = %.lr.ph29, %126
  store i32 0, ptr %3, align 4
  %110 = load i32, ptr %3, align 4
  %111 = icmp sle i32 %110, 3
  br i1 %111, label %.lr.ph26, label %126

.lr.ph26:                                         ; preds = %109
  br label %112

112:                                              ; preds = %.lr.ph26, %112
  %113 = phi i32 [ %110, %.lr.ph26 ], [ %124, %112 ]
  %114 = load i32, ptr %1, align 4
  %115 = load i32, ptr %2, align 4
  %116 = mul nsw i32 8, %113
  %117 = add nsw i32 %115, %116
  %118 = mul nsw i32 8, %117
  %119 = add nsw i32 %114, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %120
  store i32 1, ptr %121, align 4
  %122 = load i32, ptr %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %3, align 4
  %124 = load i32, ptr %3, align 4
  %125 = icmp sle i32 %124, 3
  br i1 %125, label %112, label %._crit_edge27, !llvm.loop !22

._crit_edge27:                                    ; preds = %112
  br label %126

126:                                              ; preds = %._crit_edge27, %109
  %127 = load i32, ptr %2, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %2, align 4
  %129 = load i32, ptr %2, align 4
  %130 = icmp sle i32 %129, 0
  br i1 %130, label %109, label %._crit_edge30, !llvm.loop !23

._crit_edge30:                                    ; preds = %126
  br label %131

131:                                              ; preds = %._crit_edge30, %106
  %132 = load i32, ptr %1, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %1, align 4
  %134 = load i32, ptr %1, align 4
  %135 = icmp sle i32 %134, 1
  br i1 %135, label %106, label %._crit_edge33, !llvm.loop !24

._crit_edge33:                                    ; preds = %131
  br label %136

136:                                              ; preds = %._crit_edge33, %103
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %137 = load i32, ptr %1, align 4
  %138 = icmp sle i32 %137, 0
  br i1 %138, label %.lr.ph41, label %169

.lr.ph41:                                         ; preds = %136
  br label %139

139:                                              ; preds = %.lr.ph41, %164
  store i32 0, ptr %2, align 4
  %140 = load i32, ptr %2, align 4
  %141 = icmp sle i32 %140, 3
  br i1 %141, label %.lr.ph38, label %164

.lr.ph38:                                         ; preds = %139
  br label %142

142:                                              ; preds = %.lr.ph38, %159
  store i32 0, ptr %3, align 4
  %143 = load i32, ptr %3, align 4
  %144 = icmp sle i32 %143, 1
  br i1 %144, label %.lr.ph35, label %159

.lr.ph35:                                         ; preds = %142
  br label %145

145:                                              ; preds = %.lr.ph35, %145
  %146 = phi i32 [ %143, %.lr.ph35 ], [ %157, %145 ]
  %147 = load i32, ptr %1, align 4
  %148 = load i32, ptr %2, align 4
  %149 = mul nsw i32 8, %146
  %150 = add nsw i32 %148, %149
  %151 = mul nsw i32 8, %150
  %152 = add nsw i32 %147, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %153
  store i32 1, ptr %154, align 4
  %155 = load i32, ptr %3, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr %3, align 4
  %157 = load i32, ptr %3, align 4
  %158 = icmp sle i32 %157, 1
  br i1 %158, label %145, label %._crit_edge36, !llvm.loop !25

._crit_edge36:                                    ; preds = %145
  br label %159

159:                                              ; preds = %._crit_edge36, %142
  %160 = load i32, ptr %2, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr %2, align 4
  %162 = load i32, ptr %2, align 4
  %163 = icmp sle i32 %162, 3
  br i1 %163, label %142, label %._crit_edge39, !llvm.loop !26

._crit_edge39:                                    ; preds = %159
  br label %164

164:                                              ; preds = %._crit_edge39, %139
  %165 = load i32, ptr %1, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr %1, align 4
  %167 = load i32, ptr %1, align 4
  %168 = icmp sle i32 %167, 0
  br i1 %168, label %139, label %._crit_edge42, !llvm.loop !27

._crit_edge42:                                    ; preds = %164
  br label %169

169:                                              ; preds = %._crit_edge42, %136
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %170 = load i32, ptr %1, align 4
  %171 = icmp sle i32 %170, 1
  br i1 %171, label %.lr.ph50, label %202

.lr.ph50:                                         ; preds = %169
  br label %172

172:                                              ; preds = %.lr.ph50, %197
  store i32 0, ptr %2, align 4
  %173 = load i32, ptr %2, align 4
  %174 = icmp sle i32 %173, 3
  br i1 %174, label %.lr.ph47, label %197

.lr.ph47:                                         ; preds = %172
  br label %175

175:                                              ; preds = %.lr.ph47, %192
  store i32 0, ptr %3, align 4
  %176 = load i32, ptr %3, align 4
  %177 = icmp sle i32 %176, 0
  br i1 %177, label %.lr.ph44, label %192

.lr.ph44:                                         ; preds = %175
  br label %178

178:                                              ; preds = %.lr.ph44, %178
  %179 = phi i32 [ %176, %.lr.ph44 ], [ %190, %178 ]
  %180 = load i32, ptr %1, align 4
  %181 = load i32, ptr %2, align 4
  %182 = mul nsw i32 8, %179
  %183 = add nsw i32 %181, %182
  %184 = mul nsw i32 8, %183
  %185 = add nsw i32 %180, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %186
  store i32 1, ptr %187, align 4
  %188 = load i32, ptr %3, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, ptr %3, align 4
  %190 = load i32, ptr %3, align 4
  %191 = icmp sle i32 %190, 0
  br i1 %191, label %178, label %._crit_edge45, !llvm.loop !28

._crit_edge45:                                    ; preds = %178
  br label %192

192:                                              ; preds = %._crit_edge45, %175
  %193 = load i32, ptr %2, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, ptr %2, align 4
  %195 = load i32, ptr %2, align 4
  %196 = icmp sle i32 %195, 3
  br i1 %196, label %175, label %._crit_edge48, !llvm.loop !29

._crit_edge48:                                    ; preds = %192
  br label %197

197:                                              ; preds = %._crit_edge48, %172
  %198 = load i32, ptr %1, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %1, align 4
  %200 = load i32, ptr %1, align 4
  %201 = icmp sle i32 %200, 1
  br i1 %201, label %172, label %._crit_edge51, !llvm.loop !30

._crit_edge51:                                    ; preds = %197
  br label %202

202:                                              ; preds = %._crit_edge51, %169
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %203 = load i32, ptr %1, align 4
  %204 = icmp sle i32 %203, 3
  br i1 %204, label %.lr.ph59, label %235

.lr.ph59:                                         ; preds = %202
  br label %205

205:                                              ; preds = %.lr.ph59, %230
  store i32 0, ptr %2, align 4
  %206 = load i32, ptr %2, align 4
  %207 = icmp sle i32 %206, 0
  br i1 %207, label %.lr.ph56, label %230

.lr.ph56:                                         ; preds = %205
  br label %208

208:                                              ; preds = %.lr.ph56, %225
  store i32 0, ptr %3, align 4
  %209 = load i32, ptr %3, align 4
  %210 = icmp sle i32 %209, 1
  br i1 %210, label %.lr.ph53, label %225

.lr.ph53:                                         ; preds = %208
  br label %211

211:                                              ; preds = %.lr.ph53, %211
  %212 = phi i32 [ %209, %.lr.ph53 ], [ %223, %211 ]
  %213 = load i32, ptr %1, align 4
  %214 = load i32, ptr %2, align 4
  %215 = mul nsw i32 8, %212
  %216 = add nsw i32 %214, %215
  %217 = mul nsw i32 8, %216
  %218 = add nsw i32 %213, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %219
  store i32 1, ptr %220, align 4
  %221 = load i32, ptr %3, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr %3, align 4
  %223 = load i32, ptr %3, align 4
  %224 = icmp sle i32 %223, 1
  br i1 %224, label %211, label %._crit_edge54, !llvm.loop !31

._crit_edge54:                                    ; preds = %211
  br label %225

225:                                              ; preds = %._crit_edge54, %208
  %226 = load i32, ptr %2, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, ptr %2, align 4
  %228 = load i32, ptr %2, align 4
  %229 = icmp sle i32 %228, 0
  br i1 %229, label %208, label %._crit_edge57, !llvm.loop !32

._crit_edge57:                                    ; preds = %225
  br label %230

230:                                              ; preds = %._crit_edge57, %205
  %231 = load i32, ptr %1, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, ptr %1, align 4
  %233 = load i32, ptr %1, align 4
  %234 = icmp sle i32 %233, 3
  br i1 %234, label %205, label %._crit_edge60, !llvm.loop !33

._crit_edge60:                                    ; preds = %230
  br label %235

235:                                              ; preds = %._crit_edge60, %202
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %236 = load i32, ptr %1, align 4
  %237 = icmp sle i32 %236, 0
  br i1 %237, label %.lr.ph68, label %268

.lr.ph68:                                         ; preds = %235
  br label %238

238:                                              ; preds = %.lr.ph68, %263
  store i32 0, ptr %2, align 4
  %239 = load i32, ptr %2, align 4
  %240 = icmp sle i32 %239, 1
  br i1 %240, label %.lr.ph65, label %263

.lr.ph65:                                         ; preds = %238
  br label %241

241:                                              ; preds = %.lr.ph65, %258
  store i32 0, ptr %3, align 4
  %242 = load i32, ptr %3, align 4
  %243 = icmp sle i32 %242, 3
  br i1 %243, label %.lr.ph62, label %258

.lr.ph62:                                         ; preds = %241
  br label %244

244:                                              ; preds = %.lr.ph62, %244
  %245 = phi i32 [ %242, %.lr.ph62 ], [ %256, %244 ]
  %246 = load i32, ptr %1, align 4
  %247 = load i32, ptr %2, align 4
  %248 = mul nsw i32 8, %245
  %249 = add nsw i32 %247, %248
  %250 = mul nsw i32 8, %249
  %251 = add nsw i32 %246, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %252
  store i32 1, ptr %253, align 4
  %254 = load i32, ptr %3, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, ptr %3, align 4
  %256 = load i32, ptr %3, align 4
  %257 = icmp sle i32 %256, 3
  br i1 %257, label %244, label %._crit_edge63, !llvm.loop !34

._crit_edge63:                                    ; preds = %244
  br label %258

258:                                              ; preds = %._crit_edge63, %241
  %259 = load i32, ptr %2, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, ptr %2, align 4
  %261 = load i32, ptr %2, align 4
  %262 = icmp sle i32 %261, 1
  br i1 %262, label %241, label %._crit_edge66, !llvm.loop !35

._crit_edge66:                                    ; preds = %258
  br label %263

263:                                              ; preds = %._crit_edge66, %238
  %264 = load i32, ptr %1, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, ptr %1, align 4
  %266 = load i32, ptr %1, align 4
  %267 = icmp sle i32 %266, 0
  br i1 %267, label %238, label %._crit_edge69, !llvm.loop !36

._crit_edge69:                                    ; preds = %263
  br label %268

268:                                              ; preds = %._crit_edge69, %235
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %269 = load i32, ptr %1, align 4
  %270 = icmp sle i32 %269, 2
  br i1 %270, label %.lr.ph77, label %301

.lr.ph77:                                         ; preds = %268
  br label %271

271:                                              ; preds = %.lr.ph77, %296
  store i32 0, ptr %2, align 4
  %272 = load i32, ptr %2, align 4
  %273 = icmp sle i32 %272, 0
  br i1 %273, label %.lr.ph74, label %296

.lr.ph74:                                         ; preds = %271
  br label %274

274:                                              ; preds = %.lr.ph74, %291
  store i32 0, ptr %3, align 4
  %275 = load i32, ptr %3, align 4
  %276 = icmp sle i32 %275, 0
  br i1 %276, label %.lr.ph71, label %291

.lr.ph71:                                         ; preds = %274
  br label %277

277:                                              ; preds = %.lr.ph71, %277
  %278 = phi i32 [ %275, %.lr.ph71 ], [ %289, %277 ]
  %279 = load i32, ptr %1, align 4
  %280 = load i32, ptr %2, align 4
  %281 = mul nsw i32 8, %278
  %282 = add nsw i32 %280, %281
  %283 = mul nsw i32 8, %282
  %284 = add nsw i32 %279, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %285
  store i32 1, ptr %286, align 4
  %287 = load i32, ptr %3, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, ptr %3, align 4
  %289 = load i32, ptr %3, align 4
  %290 = icmp sle i32 %289, 0
  br i1 %290, label %277, label %._crit_edge72, !llvm.loop !37

._crit_edge72:                                    ; preds = %277
  br label %291

291:                                              ; preds = %._crit_edge72, %274
  %292 = load i32, ptr %2, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, ptr %2, align 4
  %294 = load i32, ptr %2, align 4
  %295 = icmp sle i32 %294, 0
  br i1 %295, label %274, label %._crit_edge75, !llvm.loop !38

._crit_edge75:                                    ; preds = %291
  br label %296

296:                                              ; preds = %._crit_edge75, %271
  %297 = load i32, ptr %1, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, ptr %1, align 4
  %299 = load i32, ptr %1, align 4
  %300 = icmp sle i32 %299, 2
  br i1 %300, label %271, label %._crit_edge78, !llvm.loop !39

._crit_edge78:                                    ; preds = %296
  br label %301

301:                                              ; preds = %._crit_edge78, %268
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %302 = load i32, ptr %1, align 4
  %303 = icmp sle i32 %302, 0
  br i1 %303, label %.lr.ph86, label %334

.lr.ph86:                                         ; preds = %301
  br label %304

304:                                              ; preds = %.lr.ph86, %329
  store i32 0, ptr %2, align 4
  %305 = load i32, ptr %2, align 4
  %306 = icmp sle i32 %305, 2
  br i1 %306, label %.lr.ph83, label %329

.lr.ph83:                                         ; preds = %304
  br label %307

307:                                              ; preds = %.lr.ph83, %324
  store i32 0, ptr %3, align 4
  %308 = load i32, ptr %3, align 4
  %309 = icmp sle i32 %308, 0
  br i1 %309, label %.lr.ph80, label %324

.lr.ph80:                                         ; preds = %307
  br label %310

310:                                              ; preds = %.lr.ph80, %310
  %311 = phi i32 [ %308, %.lr.ph80 ], [ %322, %310 ]
  %312 = load i32, ptr %1, align 4
  %313 = load i32, ptr %2, align 4
  %314 = mul nsw i32 8, %311
  %315 = add nsw i32 %313, %314
  %316 = mul nsw i32 8, %315
  %317 = add nsw i32 %312, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %318
  store i32 1, ptr %319, align 4
  %320 = load i32, ptr %3, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, ptr %3, align 4
  %322 = load i32, ptr %3, align 4
  %323 = icmp sle i32 %322, 0
  br i1 %323, label %310, label %._crit_edge81, !llvm.loop !40

._crit_edge81:                                    ; preds = %310
  br label %324

324:                                              ; preds = %._crit_edge81, %307
  %325 = load i32, ptr %2, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, ptr %2, align 4
  %327 = load i32, ptr %2, align 4
  %328 = icmp sle i32 %327, 2
  br i1 %328, label %307, label %._crit_edge84, !llvm.loop !41

._crit_edge84:                                    ; preds = %324
  br label %329

329:                                              ; preds = %._crit_edge84, %304
  %330 = load i32, ptr %1, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, ptr %1, align 4
  %332 = load i32, ptr %1, align 4
  %333 = icmp sle i32 %332, 0
  br i1 %333, label %304, label %._crit_edge87, !llvm.loop !42

._crit_edge87:                                    ; preds = %329
  br label %334

334:                                              ; preds = %._crit_edge87, %301
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %335 = load i32, ptr %1, align 4
  %336 = icmp sle i32 %335, 0
  br i1 %336, label %.lr.ph95, label %367

.lr.ph95:                                         ; preds = %334
  br label %337

337:                                              ; preds = %.lr.ph95, %362
  store i32 0, ptr %2, align 4
  %338 = load i32, ptr %2, align 4
  %339 = icmp sle i32 %338, 0
  br i1 %339, label %.lr.ph92, label %362

.lr.ph92:                                         ; preds = %337
  br label %340

340:                                              ; preds = %.lr.ph92, %357
  store i32 0, ptr %3, align 4
  %341 = load i32, ptr %3, align 4
  %342 = icmp sle i32 %341, 2
  br i1 %342, label %.lr.ph89, label %357

.lr.ph89:                                         ; preds = %340
  br label %343

343:                                              ; preds = %.lr.ph89, %343
  %344 = phi i32 [ %341, %.lr.ph89 ], [ %355, %343 ]
  %345 = load i32, ptr %1, align 4
  %346 = load i32, ptr %2, align 4
  %347 = mul nsw i32 8, %344
  %348 = add nsw i32 %346, %347
  %349 = mul nsw i32 8, %348
  %350 = add nsw i32 %345, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %351
  store i32 1, ptr %352, align 4
  %353 = load i32, ptr %3, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, ptr %3, align 4
  %355 = load i32, ptr %3, align 4
  %356 = icmp sle i32 %355, 2
  br i1 %356, label %343, label %._crit_edge90, !llvm.loop !43

._crit_edge90:                                    ; preds = %343
  br label %357

357:                                              ; preds = %._crit_edge90, %340
  %358 = load i32, ptr %2, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, ptr %2, align 4
  %360 = load i32, ptr %2, align 4
  %361 = icmp sle i32 %360, 0
  br i1 %361, label %340, label %._crit_edge93, !llvm.loop !44

._crit_edge93:                                    ; preds = %357
  br label %362

362:                                              ; preds = %._crit_edge93, %337
  %363 = load i32, ptr %1, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, ptr %1, align 4
  %365 = load i32, ptr %1, align 4
  %366 = icmp sle i32 %365, 0
  br i1 %366, label %337, label %._crit_edge96, !llvm.loop !45

._crit_edge96:                                    ; preds = %362
  br label %367

367:                                              ; preds = %._crit_edge96, %334
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %368 = load i32, ptr %1, align 4
  %369 = icmp sle i32 %368, 1
  br i1 %369, label %.lr.ph104, label %400

.lr.ph104:                                        ; preds = %367
  br label %370

370:                                              ; preds = %.lr.ph104, %395
  store i32 0, ptr %2, align 4
  %371 = load i32, ptr %2, align 4
  %372 = icmp sle i32 %371, 1
  br i1 %372, label %.lr.ph101, label %395

.lr.ph101:                                        ; preds = %370
  br label %373

373:                                              ; preds = %.lr.ph101, %390
  store i32 0, ptr %3, align 4
  %374 = load i32, ptr %3, align 4
  %375 = icmp sle i32 %374, 0
  br i1 %375, label %.lr.ph98, label %390

.lr.ph98:                                         ; preds = %373
  br label %376

376:                                              ; preds = %.lr.ph98, %376
  %377 = phi i32 [ %374, %.lr.ph98 ], [ %388, %376 ]
  %378 = load i32, ptr %1, align 4
  %379 = load i32, ptr %2, align 4
  %380 = mul nsw i32 8, %377
  %381 = add nsw i32 %379, %380
  %382 = mul nsw i32 8, %381
  %383 = add nsw i32 %378, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %384
  store i32 1, ptr %385, align 4
  %386 = load i32, ptr %3, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, ptr %3, align 4
  %388 = load i32, ptr %3, align 4
  %389 = icmp sle i32 %388, 0
  br i1 %389, label %376, label %._crit_edge99, !llvm.loop !46

._crit_edge99:                                    ; preds = %376
  br label %390

390:                                              ; preds = %._crit_edge99, %373
  %391 = load i32, ptr %2, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, ptr %2, align 4
  %393 = load i32, ptr %2, align 4
  %394 = icmp sle i32 %393, 1
  br i1 %394, label %373, label %._crit_edge102, !llvm.loop !47

._crit_edge102:                                   ; preds = %390
  br label %395

395:                                              ; preds = %._crit_edge102, %370
  %396 = load i32, ptr %1, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, ptr %1, align 4
  %398 = load i32, ptr %1, align 4
  %399 = icmp sle i32 %398, 1
  br i1 %399, label %370, label %._crit_edge105, !llvm.loop !48

._crit_edge105:                                   ; preds = %395
  br label %400

400:                                              ; preds = %._crit_edge105, %367
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %401 = load i32, ptr %1, align 4
  %402 = icmp sle i32 %401, 1
  br i1 %402, label %.lr.ph113, label %433

.lr.ph113:                                        ; preds = %400
  br label %403

403:                                              ; preds = %.lr.ph113, %428
  store i32 0, ptr %2, align 4
  %404 = load i32, ptr %2, align 4
  %405 = icmp sle i32 %404, 0
  br i1 %405, label %.lr.ph110, label %428

.lr.ph110:                                        ; preds = %403
  br label %406

406:                                              ; preds = %.lr.ph110, %423
  store i32 0, ptr %3, align 4
  %407 = load i32, ptr %3, align 4
  %408 = icmp sle i32 %407, 1
  br i1 %408, label %.lr.ph107, label %423

.lr.ph107:                                        ; preds = %406
  br label %409

409:                                              ; preds = %.lr.ph107, %409
  %410 = phi i32 [ %407, %.lr.ph107 ], [ %421, %409 ]
  %411 = load i32, ptr %1, align 4
  %412 = load i32, ptr %2, align 4
  %413 = mul nsw i32 8, %410
  %414 = add nsw i32 %412, %413
  %415 = mul nsw i32 8, %414
  %416 = add nsw i32 %411, %415
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %417
  store i32 1, ptr %418, align 4
  %419 = load i32, ptr %3, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, ptr %3, align 4
  %421 = load i32, ptr %3, align 4
  %422 = icmp sle i32 %421, 1
  br i1 %422, label %409, label %._crit_edge108, !llvm.loop !49

._crit_edge108:                                   ; preds = %409
  br label %423

423:                                              ; preds = %._crit_edge108, %406
  %424 = load i32, ptr %2, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, ptr %2, align 4
  %426 = load i32, ptr %2, align 4
  %427 = icmp sle i32 %426, 0
  br i1 %427, label %406, label %._crit_edge111, !llvm.loop !50

._crit_edge111:                                   ; preds = %423
  br label %428

428:                                              ; preds = %._crit_edge111, %403
  %429 = load i32, ptr %1, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, ptr %1, align 4
  %431 = load i32, ptr %1, align 4
  %432 = icmp sle i32 %431, 1
  br i1 %432, label %403, label %._crit_edge114, !llvm.loop !51

._crit_edge114:                                   ; preds = %428
  br label %433

433:                                              ; preds = %._crit_edge114, %400
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %434 = load i32, ptr %1, align 4
  %435 = icmp sle i32 %434, 0
  br i1 %435, label %.lr.ph122, label %466

.lr.ph122:                                        ; preds = %433
  br label %436

436:                                              ; preds = %.lr.ph122, %461
  store i32 0, ptr %2, align 4
  %437 = load i32, ptr %2, align 4
  %438 = icmp sle i32 %437, 1
  br i1 %438, label %.lr.ph119, label %461

.lr.ph119:                                        ; preds = %436
  br label %439

439:                                              ; preds = %.lr.ph119, %456
  store i32 0, ptr %3, align 4
  %440 = load i32, ptr %3, align 4
  %441 = icmp sle i32 %440, 1
  br i1 %441, label %.lr.ph116, label %456

.lr.ph116:                                        ; preds = %439
  br label %442

442:                                              ; preds = %.lr.ph116, %442
  %443 = phi i32 [ %440, %.lr.ph116 ], [ %454, %442 ]
  %444 = load i32, ptr %1, align 4
  %445 = load i32, ptr %2, align 4
  %446 = mul nsw i32 8, %443
  %447 = add nsw i32 %445, %446
  %448 = mul nsw i32 8, %447
  %449 = add nsw i32 %444, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %450
  store i32 1, ptr %451, align 4
  %452 = load i32, ptr %3, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, ptr %3, align 4
  %454 = load i32, ptr %3, align 4
  %455 = icmp sle i32 %454, 1
  br i1 %455, label %442, label %._crit_edge117, !llvm.loop !52

._crit_edge117:                                   ; preds = %442
  br label %456

456:                                              ; preds = %._crit_edge117, %439
  %457 = load i32, ptr %2, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, ptr %2, align 4
  %459 = load i32, ptr %2, align 4
  %460 = icmp sle i32 %459, 1
  br i1 %460, label %439, label %._crit_edge120, !llvm.loop !53

._crit_edge120:                                   ; preds = %456
  br label %461

461:                                              ; preds = %._crit_edge120, %436
  %462 = load i32, ptr %1, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, ptr %1, align 4
  %464 = load i32, ptr %1, align 4
  %465 = icmp sle i32 %464, 0
  br i1 %465, label %436, label %._crit_edge123, !llvm.loop !54

._crit_edge123:                                   ; preds = %461
  br label %466

466:                                              ; preds = %._crit_edge123, %433
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %467 = load i32, ptr %1, align 4
  %468 = icmp sle i32 %467, 1
  br i1 %468, label %.lr.ph131, label %499

.lr.ph131:                                        ; preds = %466
  br label %469

469:                                              ; preds = %.lr.ph131, %494
  store i32 0, ptr %2, align 4
  %470 = load i32, ptr %2, align 4
  %471 = icmp sle i32 %470, 1
  br i1 %471, label %.lr.ph128, label %494

.lr.ph128:                                        ; preds = %469
  br label %472

472:                                              ; preds = %.lr.ph128, %489
  store i32 0, ptr %3, align 4
  %473 = load i32, ptr %3, align 4
  %474 = icmp sle i32 %473, 1
  br i1 %474, label %.lr.ph125, label %489

.lr.ph125:                                        ; preds = %472
  br label %475

475:                                              ; preds = %.lr.ph125, %475
  %476 = phi i32 [ %473, %.lr.ph125 ], [ %487, %475 ]
  %477 = load i32, ptr %1, align 4
  %478 = load i32, ptr %2, align 4
  %479 = mul nsw i32 8, %476
  %480 = add nsw i32 %478, %479
  %481 = mul nsw i32 8, %480
  %482 = add nsw i32 %477, %481
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %483
  store i32 1, ptr %484, align 4
  %485 = load i32, ptr %3, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, ptr %3, align 4
  %487 = load i32, ptr %3, align 4
  %488 = icmp sle i32 %487, 1
  br i1 %488, label %475, label %._crit_edge126, !llvm.loop !55

._crit_edge126:                                   ; preds = %475
  br label %489

489:                                              ; preds = %._crit_edge126, %472
  %490 = load i32, ptr %2, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, ptr %2, align 4
  %492 = load i32, ptr %2, align 4
  %493 = icmp sle i32 %492, 1
  br i1 %493, label %472, label %._crit_edge129, !llvm.loop !56

._crit_edge129:                                   ; preds = %489
  br label %494

494:                                              ; preds = %._crit_edge129, %469
  %495 = load i32, ptr %1, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, ptr %1, align 4
  %497 = load i32, ptr %1, align 4
  %498 = icmp sle i32 %497, 1
  br i1 %498, label %469, label %._crit_edge132, !llvm.loop !57

._crit_edge132:                                   ; preds = %494
  br label %499

499:                                              ; preds = %._crit_edge132, %466
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %500 = load i32, ptr %4, align 4
  %501 = call i32 @Fit(i32 noundef 0, i32 noundef %500)
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %506

503:                                              ; preds = %499
  %504 = load i32, ptr %4, align 4
  %505 = call i32 @Place(i32 noundef 0, i32 noundef %504)
  store i32 %505, ptr @n, align 4
  br label %508

506:                                              ; preds = %499
  %507 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %508

508:                                              ; preds = %506, %503
  %509 = load i32, ptr @n, align 4
  %510 = call i32 @Trial(i32 noundef %509)
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %514, label %512

512:                                              ; preds = %508
  %513 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %519

514:                                              ; preds = %508
  %515 = load i32, ptr @kount, align 4
  %516 = icmp ne i32 %515, 2005
  br i1 %516, label %517, label %519

517:                                              ; preds = %514
  %518 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %519

519:                                              ; preds = %514, %517, %512
  %520 = load i32, ptr @n, align 4
  %521 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %520)
  %522 = load i32, ptr @kount, align 4
  %523 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %522)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %5
  call void @Puzzle()
  %6 = load i32, ptr %2, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %5, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %5
  br label %10

10:                                               ; preds = %._crit_edge, %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Puzzle.c", directory: "E:/Phase Ordering/v3")
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
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8}
