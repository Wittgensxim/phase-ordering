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
@str = private unnamed_addr constant [17 x i8] c"Error1 in Puzzle\00", align 1
@str.1 = private unnamed_addr constant [18 x i8] c"Error2 in Puzzle.\00", align 1
@str.2 = private unnamed_addr constant [18 x i8] c"Error3 in Puzzle.\00", align 1

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
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %26
  %11 = phi i64 [ %6, %.lr.ph ], [ %30, %26 ]
  %12 = phi i32 [ 0, %.lr.ph ], [ %28, %26 ]
  %13 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %25, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 4
  %19 = add nsw i32 %18, %12
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  %22 = load i32, ptr %21, align 4
  %.not1 = icmp eq i32 %22, 0
  br i1 %.not1, label %24, label %23

23:                                               ; preds = %17
  br label %34

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %10
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %5, align 4
  %29 = load i32, ptr %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %30
  %32 = load i32, ptr %31, align 4
  %.not2.not = icmp slt i32 %27, %32
  br i1 %.not2.not, label %10, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %26
  br label %33

33:                                               ; preds = %._crit_edge, %2
  br label %34

34:                                               ; preds = %33, %23
  %storemerge = phi i32 [ 1, %33 ], [ 0, %23 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %23
  %11 = phi i64 [ %6, %.lr.ph ], [ %27, %23 ]
  %12 = phi i32 [ 0, %.lr.ph ], [ %25, %23 ]
  %13 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %22, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 4
  %19 = add nsw i32 %18, %12
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %17, %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %5, align 4
  %26 = load i32, ptr %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not4.not = icmp slt i32 %24, %29
  br i1 %.not4.not, label %10, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %23
  br label %30

30:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %27, %._crit_edge ], [ %6, %2 ]
  %31 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %34, align 4
  %37 = load i32, ptr %4, align 4
  store i32 %37, ptr %5, align 4
  %38 = icmp slt i32 %37, 512
  br i1 %38, label %.lr.ph2, label %49

.lr.ph2:                                          ; preds = %30
  br label %39

39:                                               ; preds = %.lr.ph2, %46
  %40 = phi i32 [ %37, %.lr.ph2 ], [ %47, %46 ]
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %41
  %43 = load i32, ptr %42, align 4
  %.not5 = icmp eq i32 %43, 0
  br i1 %.not5, label %44, label %45

44:                                               ; preds = %39
  br label %50

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %40, 1
  store i32 %47, ptr %5, align 4
  %48 = icmp slt i32 %40, 511
  br i1 %48, label %39, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %46
  br label %49

49:                                               ; preds = %._crit_edge3, %30
  br label %50

50:                                               ; preds = %49, %44
  %storemerge = phi i32 [ %40, %44 ], [ 0, %49 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %23
  %11 = phi i64 [ %6, %.lr.ph ], [ %27, %23 ]
  %12 = phi i32 [ 0, %.lr.ph ], [ %25, %23 ]
  %13 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %22, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 4
  %19 = add nsw i32 %18, %12
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  br label %22

22:                                               ; preds = %17, %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %5, align 4
  %26 = load i32, ptr %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not1.not = icmp slt i32 %24, %29
  br i1 %.not1.not, label %10, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %23
  br label %30

30:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %27, %._crit_edge ], [ %6, %2 ]
  %31 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %34, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr @kount, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @kount, align 4
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %33
  %8 = phi i32 [ 0, %.lr.ph ], [ %35, %33 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @class, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %32, label %15

15:                                               ; preds = %7
  %16 = load i32, ptr %2, align 4
  %17 = call i32 @Fit(i32 noundef %8, i32 noundef %16)
  %.not1 = icmp eq i32 %17, 0
  br i1 %.not1, label %31, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr %2, align 4
  %21 = call i32 @Place(i32 noundef %19, i32 noundef %20)
  store i32 %21, ptr %4, align 4
  %22 = call i32 @Trial(i32 noundef %21)
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, ptr %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %18
  br label %38

27:                                               ; preds = %23
  %28 = load i32, ptr %3, align 4
  %29 = load i32, ptr %2, align 4
  call void @Remove(i32 noundef %28, i32 noundef %29)
  br label %30

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %15
  br label %32

32:                                               ; preds = %31, %7
  br label %33

33:                                               ; preds = %32
  %34 = load i32, ptr %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %3, align 4
  %36 = icmp slt i32 %34, 12
  br i1 %36, label %7, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %33
  br label %37

37:                                               ; preds = %._crit_edge, %1
  br label %38

38:                                               ; preds = %37, %26
  %storemerge = phi i32 [ 0, %37 ], [ 1, %26 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  br i1 true, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %9
  %6 = phi i32 [ 0, %.lr.ph ], [ %11, %9 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %4, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %4, align 4
  %12 = icmp slt i32 %10, 511
  br i1 %12, label %5, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %0
  store i32 1, ptr %1, align 4
  br i1 true, label %.lr.ph8, label %40

.lr.ph8:                                          ; preds = %13
  br label %14

14:                                               ; preds = %.lr.ph8, %36
  store i32 1, ptr %2, align 4
  br i1 true, label %.lr.ph5, label %35

.lr.ph5:                                          ; preds = %14
  br label %15

15:                                               ; preds = %.lr.ph5, %31
  store i32 1, ptr %3, align 4
  br i1 true, label %.lr.ph2, label %30

.lr.ph2:                                          ; preds = %15
  br label %16

16:                                               ; preds = %.lr.ph2, %26
  %17 = phi i32 [ 1, %.lr.ph2 ], [ %28, %26 ]
  %18 = load i32, ptr %1, align 4
  %19 = load i32, ptr %2, align 4
  %20 = shl i32 %17, 6
  %21 = shl i32 %19, 3
  %22 = add i32 %20, %21
  %23 = add nsw i32 %18, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, ptr %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %3, align 4
  %29 = icmp slt i32 %27, 5
  br i1 %29, label %16, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %26
  br label %30

30:                                               ; preds = %._crit_edge3, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %2, align 4
  %34 = icmp slt i32 %32, 5
  br i1 %34, label %15, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %31
  br label %35

35:                                               ; preds = %._crit_edge6, %14
  br label %36

36:                                               ; preds = %35
  %37 = load i32, ptr %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %1, align 4
  %39 = icmp slt i32 %37, 5
  br i1 %39, label %14, label %._crit_edge9, !llvm.loop !16

._crit_edge9:                                     ; preds = %36
  br label %40

40:                                               ; preds = %._crit_edge9, %13
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph14, label %58

.lr.ph14:                                         ; preds = %40
  br label %41

41:                                               ; preds = %.lr.ph14, %54
  store i32 0, ptr %4, align 4
  br i1 true, label %.lr.ph11, label %53

.lr.ph11:                                         ; preds = %41
  br label %42

42:                                               ; preds = %.lr.ph11, %49
  %43 = phi i32 [ 0, %.lr.ph11 ], [ %51, %49 ]
  %44 = load i32, ptr %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2048 x i8], ptr @p, i64 %45
  %47 = sext i32 %43 to i64
  %48 = getelementptr inbounds [4 x i8], ptr %46, i64 %47
  store i32 0, ptr %48, align 4
  br label %49

49:                                               ; preds = %42
  %50 = load i32, ptr %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %4, align 4
  %52 = icmp slt i32 %50, 511
  br i1 %52, label %42, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %49
  br label %53

53:                                               ; preds = %._crit_edge12, %41
  br label %54

54:                                               ; preds = %53
  %55 = load i32, ptr %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %1, align 4
  %57 = icmp slt i32 %55, 12
  br i1 %57, label %41, label %._crit_edge15, !llvm.loop !18

._crit_edge15:                                    ; preds = %54
  br label %58

58:                                               ; preds = %._crit_edge15, %40
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph23, label %85

.lr.ph23:                                         ; preds = %58
  br label %59

59:                                               ; preds = %.lr.ph23, %81
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph20, label %80

.lr.ph20:                                         ; preds = %59
  br label %60

60:                                               ; preds = %.lr.ph20, %76
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph17, label %75

.lr.ph17:                                         ; preds = %60
  br label %61

61:                                               ; preds = %.lr.ph17, %71
  %62 = phi i32 [ 0, %.lr.ph17 ], [ %73, %71 ]
  %63 = load i32, ptr %1, align 4
  %64 = load i32, ptr %2, align 4
  %65 = shl i32 %62, 6
  %66 = shl i32 %64, 3
  %67 = add i32 %65, %66
  %68 = add nsw i32 %63, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i8], ptr @p, i64 %69
  store i32 1, ptr %70, align 4
  br label %71

71:                                               ; preds = %61
  %72 = load i32, ptr %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %3, align 4
  %74 = icmp slt i32 %72, 0
  br i1 %74, label %61, label %._crit_edge18, !llvm.loop !19

._crit_edge18:                                    ; preds = %71
  br label %75

75:                                               ; preds = %._crit_edge18, %60
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %2, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %2, align 4
  %79 = icmp slt i32 %77, 1
  br i1 %79, label %60, label %._crit_edge21, !llvm.loop !20

._crit_edge21:                                    ; preds = %76
  br label %80

80:                                               ; preds = %._crit_edge21, %59
  br label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %1, align 4
  %84 = icmp slt i32 %82, 3
  br i1 %84, label %59, label %._crit_edge24, !llvm.loop !21

._crit_edge24:                                    ; preds = %81
  br label %85

85:                                               ; preds = %._crit_edge24, %58
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph32, label %112

.lr.ph32:                                         ; preds = %85
  br label %86

86:                                               ; preds = %.lr.ph32, %108
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph29, label %107

.lr.ph29:                                         ; preds = %86
  br label %87

87:                                               ; preds = %.lr.ph29, %103
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph26, label %102

.lr.ph26:                                         ; preds = %87
  br label %88

88:                                               ; preds = %.lr.ph26, %98
  %89 = phi i32 [ 0, %.lr.ph26 ], [ %100, %98 ]
  %90 = load i32, ptr %1, align 4
  %91 = load i32, ptr %2, align 4
  %92 = shl i32 %89, 6
  %93 = shl i32 %91, 3
  %94 = add i32 %92, %93
  %95 = add nsw i32 %90, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %96
  store i32 1, ptr %97, align 4
  br label %98

98:                                               ; preds = %88
  %99 = load i32, ptr %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %3, align 4
  %101 = icmp slt i32 %99, 3
  br i1 %101, label %88, label %._crit_edge27, !llvm.loop !22

._crit_edge27:                                    ; preds = %98
  br label %102

102:                                              ; preds = %._crit_edge27, %87
  br label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %2, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %2, align 4
  %106 = icmp slt i32 %104, 0
  br i1 %106, label %87, label %._crit_edge30, !llvm.loop !23

._crit_edge30:                                    ; preds = %103
  br label %107

107:                                              ; preds = %._crit_edge30, %86
  br label %108

108:                                              ; preds = %107
  %109 = load i32, ptr %1, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %1, align 4
  %111 = icmp slt i32 %109, 1
  br i1 %111, label %86, label %._crit_edge33, !llvm.loop !24

._crit_edge33:                                    ; preds = %108
  br label %112

112:                                              ; preds = %._crit_edge33, %85
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph41, label %139

.lr.ph41:                                         ; preds = %112
  br label %113

113:                                              ; preds = %.lr.ph41, %135
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph38, label %134

.lr.ph38:                                         ; preds = %113
  br label %114

114:                                              ; preds = %.lr.ph38, %130
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph35, label %129

.lr.ph35:                                         ; preds = %114
  br label %115

115:                                              ; preds = %.lr.ph35, %125
  %116 = phi i32 [ 0, %.lr.ph35 ], [ %127, %125 ]
  %117 = load i32, ptr %1, align 4
  %118 = load i32, ptr %2, align 4
  %119 = shl i32 %116, 6
  %120 = shl i32 %118, 3
  %121 = add i32 %119, %120
  %122 = add nsw i32 %117, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %123
  store i32 1, ptr %124, align 4
  br label %125

125:                                              ; preds = %115
  %126 = load i32, ptr %3, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %3, align 4
  %128 = icmp slt i32 %126, 1
  br i1 %128, label %115, label %._crit_edge36, !llvm.loop !25

._crit_edge36:                                    ; preds = %125
  br label %129

129:                                              ; preds = %._crit_edge36, %114
  br label %130

130:                                              ; preds = %129
  %131 = load i32, ptr %2, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, ptr %2, align 4
  %133 = icmp slt i32 %131, 3
  br i1 %133, label %114, label %._crit_edge39, !llvm.loop !26

._crit_edge39:                                    ; preds = %130
  br label %134

134:                                              ; preds = %._crit_edge39, %113
  br label %135

135:                                              ; preds = %134
  %136 = load i32, ptr %1, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %1, align 4
  %138 = icmp slt i32 %136, 0
  br i1 %138, label %113, label %._crit_edge42, !llvm.loop !27

._crit_edge42:                                    ; preds = %135
  br label %139

139:                                              ; preds = %._crit_edge42, %112
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph50, label %166

.lr.ph50:                                         ; preds = %139
  br label %140

140:                                              ; preds = %.lr.ph50, %162
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph47, label %161

.lr.ph47:                                         ; preds = %140
  br label %141

141:                                              ; preds = %.lr.ph47, %157
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph44, label %156

.lr.ph44:                                         ; preds = %141
  br label %142

142:                                              ; preds = %.lr.ph44, %152
  %143 = phi i32 [ 0, %.lr.ph44 ], [ %154, %152 ]
  %144 = load i32, ptr %1, align 4
  %145 = load i32, ptr %2, align 4
  %146 = shl i32 %143, 6
  %147 = shl i32 %145, 3
  %148 = add i32 %146, %147
  %149 = add nsw i32 %144, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %150
  store i32 1, ptr %151, align 4
  br label %152

152:                                              ; preds = %142
  %153 = load i32, ptr %3, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %3, align 4
  %155 = icmp slt i32 %153, 0
  br i1 %155, label %142, label %._crit_edge45, !llvm.loop !28

._crit_edge45:                                    ; preds = %152
  br label %156

156:                                              ; preds = %._crit_edge45, %141
  br label %157

157:                                              ; preds = %156
  %158 = load i32, ptr %2, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %2, align 4
  %160 = icmp slt i32 %158, 3
  br i1 %160, label %141, label %._crit_edge48, !llvm.loop !29

._crit_edge48:                                    ; preds = %157
  br label %161

161:                                              ; preds = %._crit_edge48, %140
  br label %162

162:                                              ; preds = %161
  %163 = load i32, ptr %1, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %1, align 4
  %165 = icmp slt i32 %163, 1
  br i1 %165, label %140, label %._crit_edge51, !llvm.loop !30

._crit_edge51:                                    ; preds = %162
  br label %166

166:                                              ; preds = %._crit_edge51, %139
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph59, label %193

.lr.ph59:                                         ; preds = %166
  br label %167

167:                                              ; preds = %.lr.ph59, %189
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph56, label %188

.lr.ph56:                                         ; preds = %167
  br label %168

168:                                              ; preds = %.lr.ph56, %184
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph53, label %183

.lr.ph53:                                         ; preds = %168
  br label %169

169:                                              ; preds = %.lr.ph53, %179
  %170 = phi i32 [ 0, %.lr.ph53 ], [ %181, %179 ]
  %171 = load i32, ptr %1, align 4
  %172 = load i32, ptr %2, align 4
  %173 = shl i32 %170, 6
  %174 = shl i32 %172, 3
  %175 = add i32 %173, %174
  %176 = add nsw i32 %171, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %177
  store i32 1, ptr %178, align 4
  br label %179

179:                                              ; preds = %169
  %180 = load i32, ptr %3, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, ptr %3, align 4
  %182 = icmp slt i32 %180, 1
  br i1 %182, label %169, label %._crit_edge54, !llvm.loop !31

._crit_edge54:                                    ; preds = %179
  br label %183

183:                                              ; preds = %._crit_edge54, %168
  br label %184

184:                                              ; preds = %183
  %185 = load i32, ptr %2, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %2, align 4
  %187 = icmp slt i32 %185, 0
  br i1 %187, label %168, label %._crit_edge57, !llvm.loop !32

._crit_edge57:                                    ; preds = %184
  br label %188

188:                                              ; preds = %._crit_edge57, %167
  br label %189

189:                                              ; preds = %188
  %190 = load i32, ptr %1, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %1, align 4
  %192 = icmp slt i32 %190, 3
  br i1 %192, label %167, label %._crit_edge60, !llvm.loop !33

._crit_edge60:                                    ; preds = %189
  br label %193

193:                                              ; preds = %._crit_edge60, %166
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph68, label %220

.lr.ph68:                                         ; preds = %193
  br label %194

194:                                              ; preds = %.lr.ph68, %216
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph65, label %215

.lr.ph65:                                         ; preds = %194
  br label %195

195:                                              ; preds = %.lr.ph65, %211
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph62, label %210

.lr.ph62:                                         ; preds = %195
  br label %196

196:                                              ; preds = %.lr.ph62, %206
  %197 = phi i32 [ 0, %.lr.ph62 ], [ %208, %206 ]
  %198 = load i32, ptr %1, align 4
  %199 = load i32, ptr %2, align 4
  %200 = shl i32 %197, 6
  %201 = shl i32 %199, 3
  %202 = add i32 %200, %201
  %203 = add nsw i32 %198, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %204
  store i32 1, ptr %205, align 4
  br label %206

206:                                              ; preds = %196
  %207 = load i32, ptr %3, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr %3, align 4
  %209 = icmp slt i32 %207, 3
  br i1 %209, label %196, label %._crit_edge63, !llvm.loop !34

._crit_edge63:                                    ; preds = %206
  br label %210

210:                                              ; preds = %._crit_edge63, %195
  br label %211

211:                                              ; preds = %210
  %212 = load i32, ptr %2, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %2, align 4
  %214 = icmp slt i32 %212, 1
  br i1 %214, label %195, label %._crit_edge66, !llvm.loop !35

._crit_edge66:                                    ; preds = %211
  br label %215

215:                                              ; preds = %._crit_edge66, %194
  br label %216

216:                                              ; preds = %215
  %217 = load i32, ptr %1, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %1, align 4
  %219 = icmp slt i32 %217, 0
  br i1 %219, label %194, label %._crit_edge69, !llvm.loop !36

._crit_edge69:                                    ; preds = %216
  br label %220

220:                                              ; preds = %._crit_edge69, %193
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph77, label %247

.lr.ph77:                                         ; preds = %220
  br label %221

221:                                              ; preds = %.lr.ph77, %243
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph74, label %242

.lr.ph74:                                         ; preds = %221
  br label %222

222:                                              ; preds = %.lr.ph74, %238
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph71, label %237

.lr.ph71:                                         ; preds = %222
  br label %223

223:                                              ; preds = %.lr.ph71, %233
  %224 = phi i32 [ 0, %.lr.ph71 ], [ %235, %233 ]
  %225 = load i32, ptr %1, align 4
  %226 = load i32, ptr %2, align 4
  %227 = shl i32 %224, 6
  %228 = shl i32 %226, 3
  %229 = add i32 %227, %228
  %230 = add nsw i32 %225, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %231
  store i32 1, ptr %232, align 4
  br label %233

233:                                              ; preds = %223
  %234 = load i32, ptr %3, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr %3, align 4
  %236 = icmp slt i32 %234, 0
  br i1 %236, label %223, label %._crit_edge72, !llvm.loop !37

._crit_edge72:                                    ; preds = %233
  br label %237

237:                                              ; preds = %._crit_edge72, %222
  br label %238

238:                                              ; preds = %237
  %239 = load i32, ptr %2, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr %2, align 4
  %241 = icmp slt i32 %239, 0
  br i1 %241, label %222, label %._crit_edge75, !llvm.loop !38

._crit_edge75:                                    ; preds = %238
  br label %242

242:                                              ; preds = %._crit_edge75, %221
  br label %243

243:                                              ; preds = %242
  %244 = load i32, ptr %1, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr %1, align 4
  %246 = icmp slt i32 %244, 2
  br i1 %246, label %221, label %._crit_edge78, !llvm.loop !39

._crit_edge78:                                    ; preds = %243
  br label %247

247:                                              ; preds = %._crit_edge78, %220
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph86, label %274

.lr.ph86:                                         ; preds = %247
  br label %248

248:                                              ; preds = %.lr.ph86, %270
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph83, label %269

.lr.ph83:                                         ; preds = %248
  br label %249

249:                                              ; preds = %.lr.ph83, %265
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph80, label %264

.lr.ph80:                                         ; preds = %249
  br label %250

250:                                              ; preds = %.lr.ph80, %260
  %251 = phi i32 [ 0, %.lr.ph80 ], [ %262, %260 ]
  %252 = load i32, ptr %1, align 4
  %253 = load i32, ptr %2, align 4
  %254 = shl i32 %251, 6
  %255 = shl i32 %253, 3
  %256 = add i32 %254, %255
  %257 = add nsw i32 %252, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %258
  store i32 1, ptr %259, align 4
  br label %260

260:                                              ; preds = %250
  %261 = load i32, ptr %3, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, ptr %3, align 4
  %263 = icmp slt i32 %261, 0
  br i1 %263, label %250, label %._crit_edge81, !llvm.loop !40

._crit_edge81:                                    ; preds = %260
  br label %264

264:                                              ; preds = %._crit_edge81, %249
  br label %265

265:                                              ; preds = %264
  %266 = load i32, ptr %2, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr %2, align 4
  %268 = icmp slt i32 %266, 2
  br i1 %268, label %249, label %._crit_edge84, !llvm.loop !41

._crit_edge84:                                    ; preds = %265
  br label %269

269:                                              ; preds = %._crit_edge84, %248
  br label %270

270:                                              ; preds = %269
  %271 = load i32, ptr %1, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, ptr %1, align 4
  %273 = icmp slt i32 %271, 0
  br i1 %273, label %248, label %._crit_edge87, !llvm.loop !42

._crit_edge87:                                    ; preds = %270
  br label %274

274:                                              ; preds = %._crit_edge87, %247
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph95, label %301

.lr.ph95:                                         ; preds = %274
  br label %275

275:                                              ; preds = %.lr.ph95, %297
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph92, label %296

.lr.ph92:                                         ; preds = %275
  br label %276

276:                                              ; preds = %.lr.ph92, %292
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph89, label %291

.lr.ph89:                                         ; preds = %276
  br label %277

277:                                              ; preds = %.lr.ph89, %287
  %278 = phi i32 [ 0, %.lr.ph89 ], [ %289, %287 ]
  %279 = load i32, ptr %1, align 4
  %280 = load i32, ptr %2, align 4
  %281 = shl i32 %278, 6
  %282 = shl i32 %280, 3
  %283 = add i32 %281, %282
  %284 = add nsw i32 %279, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %285
  store i32 1, ptr %286, align 4
  br label %287

287:                                              ; preds = %277
  %288 = load i32, ptr %3, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, ptr %3, align 4
  %290 = icmp slt i32 %288, 2
  br i1 %290, label %277, label %._crit_edge90, !llvm.loop !43

._crit_edge90:                                    ; preds = %287
  br label %291

291:                                              ; preds = %._crit_edge90, %276
  br label %292

292:                                              ; preds = %291
  %293 = load i32, ptr %2, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, ptr %2, align 4
  %295 = icmp slt i32 %293, 0
  br i1 %295, label %276, label %._crit_edge93, !llvm.loop !44

._crit_edge93:                                    ; preds = %292
  br label %296

296:                                              ; preds = %._crit_edge93, %275
  br label %297

297:                                              ; preds = %296
  %298 = load i32, ptr %1, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, ptr %1, align 4
  %300 = icmp slt i32 %298, 0
  br i1 %300, label %275, label %._crit_edge96, !llvm.loop !45

._crit_edge96:                                    ; preds = %297
  br label %301

301:                                              ; preds = %._crit_edge96, %274
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph104, label %328

.lr.ph104:                                        ; preds = %301
  br label %302

302:                                              ; preds = %.lr.ph104, %324
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph101, label %323

.lr.ph101:                                        ; preds = %302
  br label %303

303:                                              ; preds = %.lr.ph101, %319
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph98, label %318

.lr.ph98:                                         ; preds = %303
  br label %304

304:                                              ; preds = %.lr.ph98, %314
  %305 = phi i32 [ 0, %.lr.ph98 ], [ %316, %314 ]
  %306 = load i32, ptr %1, align 4
  %307 = load i32, ptr %2, align 4
  %308 = shl i32 %305, 6
  %309 = shl i32 %307, 3
  %310 = add i32 %308, %309
  %311 = add nsw i32 %306, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %312
  store i32 1, ptr %313, align 4
  br label %314

314:                                              ; preds = %304
  %315 = load i32, ptr %3, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, ptr %3, align 4
  %317 = icmp slt i32 %315, 0
  br i1 %317, label %304, label %._crit_edge99, !llvm.loop !46

._crit_edge99:                                    ; preds = %314
  br label %318

318:                                              ; preds = %._crit_edge99, %303
  br label %319

319:                                              ; preds = %318
  %320 = load i32, ptr %2, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, ptr %2, align 4
  %322 = icmp slt i32 %320, 1
  br i1 %322, label %303, label %._crit_edge102, !llvm.loop !47

._crit_edge102:                                   ; preds = %319
  br label %323

323:                                              ; preds = %._crit_edge102, %302
  br label %324

324:                                              ; preds = %323
  %325 = load i32, ptr %1, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, ptr %1, align 4
  %327 = icmp slt i32 %325, 1
  br i1 %327, label %302, label %._crit_edge105, !llvm.loop !48

._crit_edge105:                                   ; preds = %324
  br label %328

328:                                              ; preds = %._crit_edge105, %301
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph113, label %355

.lr.ph113:                                        ; preds = %328
  br label %329

329:                                              ; preds = %.lr.ph113, %351
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph110, label %350

.lr.ph110:                                        ; preds = %329
  br label %330

330:                                              ; preds = %.lr.ph110, %346
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph107, label %345

.lr.ph107:                                        ; preds = %330
  br label %331

331:                                              ; preds = %.lr.ph107, %341
  %332 = phi i32 [ 0, %.lr.ph107 ], [ %343, %341 ]
  %333 = load i32, ptr %1, align 4
  %334 = load i32, ptr %2, align 4
  %335 = shl i32 %332, 6
  %336 = shl i32 %334, 3
  %337 = add i32 %335, %336
  %338 = add nsw i32 %333, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %339
  store i32 1, ptr %340, align 4
  br label %341

341:                                              ; preds = %331
  %342 = load i32, ptr %3, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, ptr %3, align 4
  %344 = icmp slt i32 %342, 1
  br i1 %344, label %331, label %._crit_edge108, !llvm.loop !49

._crit_edge108:                                   ; preds = %341
  br label %345

345:                                              ; preds = %._crit_edge108, %330
  br label %346

346:                                              ; preds = %345
  %347 = load i32, ptr %2, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, ptr %2, align 4
  %349 = icmp slt i32 %347, 0
  br i1 %349, label %330, label %._crit_edge111, !llvm.loop !50

._crit_edge111:                                   ; preds = %346
  br label %350

350:                                              ; preds = %._crit_edge111, %329
  br label %351

351:                                              ; preds = %350
  %352 = load i32, ptr %1, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, ptr %1, align 4
  %354 = icmp slt i32 %352, 1
  br i1 %354, label %329, label %._crit_edge114, !llvm.loop !51

._crit_edge114:                                   ; preds = %351
  br label %355

355:                                              ; preds = %._crit_edge114, %328
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph122, label %382

.lr.ph122:                                        ; preds = %355
  br label %356

356:                                              ; preds = %.lr.ph122, %378
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph119, label %377

.lr.ph119:                                        ; preds = %356
  br label %357

357:                                              ; preds = %.lr.ph119, %373
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph116, label %372

.lr.ph116:                                        ; preds = %357
  br label %358

358:                                              ; preds = %.lr.ph116, %368
  %359 = phi i32 [ 0, %.lr.ph116 ], [ %370, %368 ]
  %360 = load i32, ptr %1, align 4
  %361 = load i32, ptr %2, align 4
  %362 = shl i32 %359, 6
  %363 = shl i32 %361, 3
  %364 = add i32 %362, %363
  %365 = add nsw i32 %360, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %366
  store i32 1, ptr %367, align 4
  br label %368

368:                                              ; preds = %358
  %369 = load i32, ptr %3, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, ptr %3, align 4
  %371 = icmp slt i32 %369, 1
  br i1 %371, label %358, label %._crit_edge117, !llvm.loop !52

._crit_edge117:                                   ; preds = %368
  br label %372

372:                                              ; preds = %._crit_edge117, %357
  br label %373

373:                                              ; preds = %372
  %374 = load i32, ptr %2, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, ptr %2, align 4
  %376 = icmp slt i32 %374, 1
  br i1 %376, label %357, label %._crit_edge120, !llvm.loop !53

._crit_edge120:                                   ; preds = %373
  br label %377

377:                                              ; preds = %._crit_edge120, %356
  br label %378

378:                                              ; preds = %377
  %379 = load i32, ptr %1, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, ptr %1, align 4
  %381 = icmp slt i32 %379, 0
  br i1 %381, label %356, label %._crit_edge123, !llvm.loop !54

._crit_edge123:                                   ; preds = %378
  br label %382

382:                                              ; preds = %._crit_edge123, %355
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph131, label %409

.lr.ph131:                                        ; preds = %382
  br label %383

383:                                              ; preds = %.lr.ph131, %405
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph128, label %404

.lr.ph128:                                        ; preds = %383
  br label %384

384:                                              ; preds = %.lr.ph128, %400
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph125, label %399

.lr.ph125:                                        ; preds = %384
  br label %385

385:                                              ; preds = %.lr.ph125, %395
  %386 = phi i32 [ 0, %.lr.ph125 ], [ %397, %395 ]
  %387 = load i32, ptr %1, align 4
  %388 = load i32, ptr %2, align 4
  %389 = shl i32 %386, 6
  %390 = shl i32 %388, 3
  %391 = add i32 %389, %390
  %392 = add nsw i32 %387, %391
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %393
  store i32 1, ptr %394, align 4
  br label %395

395:                                              ; preds = %385
  %396 = load i32, ptr %3, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, ptr %3, align 4
  %398 = icmp slt i32 %396, 1
  br i1 %398, label %385, label %._crit_edge126, !llvm.loop !55

._crit_edge126:                                   ; preds = %395
  br label %399

399:                                              ; preds = %._crit_edge126, %384
  br label %400

400:                                              ; preds = %399
  %401 = load i32, ptr %2, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, ptr %2, align 4
  %403 = icmp slt i32 %401, 1
  br i1 %403, label %384, label %._crit_edge129, !llvm.loop !56

._crit_edge129:                                   ; preds = %400
  br label %404

404:                                              ; preds = %._crit_edge129, %383
  br label %405

405:                                              ; preds = %404
  %406 = load i32, ptr %1, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, ptr %1, align 4
  %408 = icmp slt i32 %406, 1
  br i1 %408, label %383, label %._crit_edge132, !llvm.loop !57

._crit_edge132:                                   ; preds = %405
  br label %409

409:                                              ; preds = %._crit_edge132, %382
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %410 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %410, 0
  br i1 %.not, label %414, label %411

411:                                              ; preds = %409
  %412 = load i32, ptr %4, align 4
  %413 = call i32 @Place(i32 noundef 0, i32 noundef %412)
  store i32 %413, ptr @n, align 4
  br label %415

414:                                              ; preds = %409
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %415

415:                                              ; preds = %414, %411
  %416 = load i32, ptr @n, align 4
  %417 = call i32 @Trial(i32 noundef %416)
  %.not133 = icmp eq i32 %417, 0
  br i1 %.not133, label %418, label %419

418:                                              ; preds = %415
  %puts134 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %423

419:                                              ; preds = %415
  %420 = load i32, ptr @kount, align 4
  %.not135 = icmp eq i32 %420, 2005
  br i1 %.not135, label %422, label %421

421:                                              ; preds = %419
  %puts136 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %422

422:                                              ; preds = %421, %419
  br label %423

423:                                              ; preds = %422, %418
  %424 = load i32, ptr @n, align 4
  %425 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %424) #3
  %426 = load i32, ptr @kount, align 4
  %427 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %426) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph, label %7

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %3
  call void @Puzzle()
  br label %3

3:                                                ; preds = %2
  %4 = load i32, ptr %1, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %1, align 4
  %6 = icmp slt i32 %4, 99
  br i1 %6, label %2, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %3
  br label %7

7:                                                ; preds = %._crit_edge, %0
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
