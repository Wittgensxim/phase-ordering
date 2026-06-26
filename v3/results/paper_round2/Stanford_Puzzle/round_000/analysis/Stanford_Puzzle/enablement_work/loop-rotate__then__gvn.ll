; ModuleID = 'results\paper_round2\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sle i32 0, %9
  br i1 %10, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  br label %11

11:                                               ; preds = %.lr.ph, %26
  %12 = phi i32 [ 0, %.lr.ph ], [ %27, %26 ]
  %13 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %7
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [512 x i32], ptr %13, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = add nsw i32 %1, %12
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, ptr %3, align 4
  br label %30

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %11
  %27 = add nsw i32 %12, 1
  store i32 %27, ptr %6, align 4
  %28 = icmp sle i32 %27, %9
  br i1 %28, label %11, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %26
  br label %29

29:                                               ; preds = %._crit_edge, %2
  store i32 1, ptr %3, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i32 [ 1, %29 ], [ 0, %24 ]
  ret i32 %31
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
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sle i32 0, %9
  br i1 %10, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %2
  br label %11

11:                                               ; preds = %.lr.ph, %22
  %12 = phi i32 [ 0, %.lr.ph ], [ %23, %22 ]
  %13 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %7
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [512 x i32], ptr %13, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = add nsw i32 %1, %12
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %20
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %11
  %23 = add nsw i32 %12, 1
  store i32 %23, ptr %6, align 4
  %24 = icmp sle i32 %23, %9
  br i1 %24, label %11, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %22
  br label %25

25:                                               ; preds = %._crit_edge, %2
  %26 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %7
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, ptr %29, align 4
  store i32 %1, ptr %6, align 4
  %32 = icmp sle i32 %1, 511
  br i1 %32, label %.lr.ph2, label %43

.lr.ph2:                                          ; preds = %25
  br label %33

33:                                               ; preds = %.lr.ph2, %40
  %34 = phi i32 [ %1, %.lr.ph2 ], [ %41, %40 ]
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 %34, ptr %3, align 4
  br label %44

40:                                               ; preds = %33
  %41 = add nsw i32 %34, 1
  store i32 %41, ptr %6, align 4
  %42 = icmp sle i32 %41, 511
  br i1 %42, label %33, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %40
  br label %43

43:                                               ; preds = %._crit_edge3, %25
  store i32 0, ptr %3, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ 0, %43 ], [ %34, %39 ]
  ret i32 %45
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
  %7 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sle i32 0, %8
  br i1 %9, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %21
  %11 = phi i32 [ 0, %.lr.ph ], [ %22, %21 ]
  %12 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %6
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [512 x i32], ptr %12, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = add nsw i32 %1, %11
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %10
  %22 = add nsw i32 %11, 1
  store i32 %22, ptr %5, align 4
  %23 = icmp sle i32 %22, %8
  br i1 %23, label %10, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %21
  br label %24

24:                                               ; preds = %._crit_edge, %2
  %25 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %6
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 4
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
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %1
  br label %35

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %31
  %9 = phi i32 [ %0, %.lr.ph ], [ %32, %31 ]
  %10 = phi i32 [ 0, %.lr.ph ], [ %33, %31 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %8
  %19 = call i32 @Fit(i32 noundef %10, i32 noundef %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = call i32 @Place(i32 noundef %10, i32 noundef %9)
  store i32 %22, ptr %5, align 4
  %23 = call i32 @Trial(i32 noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %25, %21
  store i32 1, ptr %2, align 4
  br label %36

28:                                               ; preds = %25
  call void @Remove(i32 noundef %10, i32 noundef %0)
  br label %29

29:                                               ; preds = %28, %18
  %30 = phi i32 [ %0, %28 ], [ %9, %18 ]
  br label %31

31:                                               ; preds = %29, %8
  %32 = phi i32 [ %30, %29 ], [ %9, %8 ]
  %33 = add nsw i32 %10, 1
  store i32 %33, ptr %4, align 4
  %34 = icmp sle i32 %33, 12
  br i1 %34, label %8, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %31
  br label %35

35:                                               ; preds = %._crit_edge1, %._crit_edge
  store i32 0, ptr %2, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = phi i32 [ 0, %35 ], [ 1, %27 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  br i1 true, label %.lr.ph, label %._crit_edge133

._crit_edge133:                                   ; preds = %0
  br label %11

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %6 = phi i32 [ 0, %.lr.ph ], [ %9, %5 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nsw i32 %6, 1
  store i32 %9, ptr %4, align 4
  %10 = icmp sle i32 %9, 511
  br i1 %10, label %5, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %5
  br label %11

11:                                               ; preds = %._crit_edge133, %._crit_edge
  store i32 1, ptr %1, align 4
  br i1 true, label %.lr.ph8, label %._crit_edge134

._crit_edge134:                                   ; preds = %11
  br label %32

.lr.ph8:                                          ; preds = %11
  br label %12

12:                                               ; preds = %.lr.ph8, %29
  %13 = phi i32 [ 1, %.lr.ph8 ], [ %30, %29 ]
  store i32 1, ptr %2, align 4
  br i1 true, label %.lr.ph5, label %._crit_edge135

._crit_edge135:                                   ; preds = %12
  br label %29

.lr.ph5:                                          ; preds = %12
  br label %14

14:                                               ; preds = %.lr.ph5, %26
  %15 = phi i32 [ 1, %.lr.ph5 ], [ %27, %26 ]
  store i32 1, ptr %3, align 4
  br i1 true, label %.lr.ph2, label %._crit_edge136

._crit_edge136:                                   ; preds = %14
  br label %26

.lr.ph2:                                          ; preds = %14
  br label %16

16:                                               ; preds = %.lr.ph2, %16
  %17 = phi i32 [ 1, %.lr.ph2 ], [ %24, %16 ]
  %18 = mul nsw i32 8, %17
  %19 = add nsw i32 %15, %18
  %20 = mul nsw i32 8, %19
  %21 = add nsw i32 %13, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %22
  store i32 0, ptr %23, align 4
  %24 = add nsw i32 %17, 1
  store i32 %24, ptr %3, align 4
  %25 = icmp sle i32 %24, 5
  br i1 %25, label %16, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %16
  br label %26

26:                                               ; preds = %._crit_edge136, %._crit_edge3
  %27 = add nsw i32 %15, 1
  store i32 %27, ptr %2, align 4
  %28 = icmp sle i32 %27, 5
  br i1 %28, label %14, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %26
  br label %29

29:                                               ; preds = %._crit_edge135, %._crit_edge6
  %30 = add nsw i32 %13, 1
  store i32 %30, ptr %1, align 4
  %31 = icmp sle i32 %30, 5
  br i1 %31, label %12, label %._crit_edge9, !llvm.loop !16

._crit_edge9:                                     ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge134, %._crit_edge9
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph14, label %._crit_edge137

._crit_edge137:                                   ; preds = %32
  br label %46

.lr.ph14:                                         ; preds = %32
  br label %33

33:                                               ; preds = %.lr.ph14, %43
  %34 = phi i32 [ 0, %.lr.ph14 ], [ %44, %43 ]
  store i32 0, ptr %4, align 4
  br i1 true, label %.lr.ph11, label %._crit_edge138

._crit_edge138:                                   ; preds = %33
  br label %43

.lr.ph11:                                         ; preds = %33
  br label %35

35:                                               ; preds = %.lr.ph11, %35
  %36 = phi i32 [ 0, %.lr.ph11 ], [ %41, %35 ]
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %37
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds [512 x i32], ptr %38, i64 0, i64 %39
  store i32 0, ptr %40, align 4
  %41 = add nsw i32 %36, 1
  store i32 %41, ptr %4, align 4
  %42 = icmp sle i32 %41, 511
  br i1 %42, label %35, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %35
  br label %43

43:                                               ; preds = %._crit_edge138, %._crit_edge12
  %44 = add nsw i32 %34, 1
  store i32 %44, ptr %1, align 4
  %45 = icmp sle i32 %44, 12
  br i1 %45, label %33, label %._crit_edge15, !llvm.loop !18

._crit_edge15:                                    ; preds = %43
  br label %46

46:                                               ; preds = %._crit_edge137, %._crit_edge15
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph23, label %._crit_edge139

._crit_edge139:                                   ; preds = %46
  br label %62

.lr.ph23:                                         ; preds = %46
  br label %47

47:                                               ; preds = %.lr.ph23, %59
  %48 = phi i32 [ 0, %.lr.ph23 ], [ %60, %59 ]
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph20, label %._crit_edge140

._crit_edge140:                                   ; preds = %47
  br label %59

.lr.ph20:                                         ; preds = %47
  br label %49

49:                                               ; preds = %.lr.ph20, %56
  %50 = phi i32 [ 0, %.lr.ph20 ], [ %57, %56 ]
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph17, label %._crit_edge141

._crit_edge141:                                   ; preds = %49
  br label %56

.lr.ph17:                                         ; preds = %49
  br label %51

51:                                               ; preds = %._crit_edge142, %.lr.ph17
  %52 = mul nsw i32 8, %50
  %53 = add nsw i32 %48, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %54
  store i32 1, ptr %55, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge142, label %._crit_edge18, !llvm.loop !19

._crit_edge142:                                   ; preds = %51
  br label %51, !llvm.loop !19

._crit_edge18:                                    ; preds = %51
  br label %56

56:                                               ; preds = %._crit_edge141, %._crit_edge18
  %57 = add nsw i32 %50, 1
  store i32 %57, ptr %2, align 4
  %58 = icmp sle i32 %57, 1
  br i1 %58, label %49, label %._crit_edge21, !llvm.loop !20

._crit_edge21:                                    ; preds = %56
  br label %59

59:                                               ; preds = %._crit_edge140, %._crit_edge21
  %60 = add nsw i32 %48, 1
  store i32 %60, ptr %1, align 4
  %61 = icmp sle i32 %60, 3
  br i1 %61, label %47, label %._crit_edge24, !llvm.loop !21

._crit_edge24:                                    ; preds = %59
  br label %62

62:                                               ; preds = %._crit_edge139, %._crit_edge24
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph32, label %._crit_edge143

._crit_edge143:                                   ; preds = %62
  br label %79

.lr.ph32:                                         ; preds = %62
  br label %63

63:                                               ; preds = %.lr.ph32, %76
  %64 = phi i32 [ 0, %.lr.ph32 ], [ %77, %76 ]
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph29, label %._crit_edge144

._crit_edge144:                                   ; preds = %63
  br label %76

.lr.ph29:                                         ; preds = %63
  br label %65

65:                                               ; preds = %._crit_edge146, %.lr.ph29
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph26, label %._crit_edge145

._crit_edge145:                                   ; preds = %65
  br label %75

.lr.ph26:                                         ; preds = %65
  br label %66

66:                                               ; preds = %.lr.ph26, %66
  %67 = phi i32 [ 0, %.lr.ph26 ], [ %73, %66 ]
  %68 = mul nsw i32 8, %67
  %69 = mul nsw i32 8, %68
  %70 = add nsw i32 %64, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %71
  store i32 1, ptr %72, align 4
  %73 = add nsw i32 %67, 1
  store i32 %73, ptr %3, align 4
  %74 = icmp sle i32 %73, 3
  br i1 %74, label %66, label %._crit_edge27, !llvm.loop !22

._crit_edge27:                                    ; preds = %66
  br label %75

75:                                               ; preds = %._crit_edge145, %._crit_edge27
  store i32 1, ptr %2, align 4
  br i1 false, label %._crit_edge146, label %._crit_edge30, !llvm.loop !23

._crit_edge146:                                   ; preds = %75
  br label %65, !llvm.loop !23

._crit_edge30:                                    ; preds = %75
  br label %76

76:                                               ; preds = %._crit_edge144, %._crit_edge30
  %77 = add nsw i32 %64, 1
  store i32 %77, ptr %1, align 4
  %78 = icmp sle i32 %77, 1
  br i1 %78, label %63, label %._crit_edge33, !llvm.loop !24

._crit_edge33:                                    ; preds = %76
  br label %79

79:                                               ; preds = %._crit_edge143, %._crit_edge33
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph41, label %._crit_edge147

._crit_edge147:                                   ; preds = %79
  br label %96

.lr.ph41:                                         ; preds = %79
  br label %80

80:                                               ; preds = %._crit_edge150, %.lr.ph41
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph38, label %._crit_edge148

._crit_edge148:                                   ; preds = %80
  br label %95

.lr.ph38:                                         ; preds = %80
  br label %81

81:                                               ; preds = %.lr.ph38, %92
  %82 = phi i32 [ 0, %.lr.ph38 ], [ %93, %92 ]
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph35, label %._crit_edge149

._crit_edge149:                                   ; preds = %81
  br label %92

.lr.ph35:                                         ; preds = %81
  br label %83

83:                                               ; preds = %.lr.ph35, %83
  %84 = phi i32 [ 0, %.lr.ph35 ], [ %90, %83 ]
  %85 = mul nsw i32 8, %84
  %86 = add nsw i32 %82, %85
  %87 = mul nsw i32 8, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %88
  store i32 1, ptr %89, align 4
  %90 = add nsw i32 %84, 1
  store i32 %90, ptr %3, align 4
  %91 = icmp sle i32 %90, 1
  br i1 %91, label %83, label %._crit_edge36, !llvm.loop !25

._crit_edge36:                                    ; preds = %83
  br label %92

92:                                               ; preds = %._crit_edge149, %._crit_edge36
  %93 = add nsw i32 %82, 1
  store i32 %93, ptr %2, align 4
  %94 = icmp sle i32 %93, 3
  br i1 %94, label %81, label %._crit_edge39, !llvm.loop !26

._crit_edge39:                                    ; preds = %92
  br label %95

95:                                               ; preds = %._crit_edge148, %._crit_edge39
  store i32 1, ptr %1, align 4
  br i1 false, label %._crit_edge150, label %._crit_edge42, !llvm.loop !27

._crit_edge150:                                   ; preds = %95
  br label %80, !llvm.loop !27

._crit_edge42:                                    ; preds = %95
  br label %96

96:                                               ; preds = %._crit_edge147, %._crit_edge42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph50, label %._crit_edge151

._crit_edge151:                                   ; preds = %96
  br label %112

.lr.ph50:                                         ; preds = %96
  br label %97

97:                                               ; preds = %.lr.ph50, %109
  %98 = phi i32 [ 0, %.lr.ph50 ], [ %110, %109 ]
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph47, label %._crit_edge152

._crit_edge152:                                   ; preds = %97
  br label %109

.lr.ph47:                                         ; preds = %97
  br label %99

99:                                               ; preds = %.lr.ph47, %106
  %100 = phi i32 [ 0, %.lr.ph47 ], [ %107, %106 ]
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph44, label %._crit_edge153

._crit_edge153:                                   ; preds = %99
  br label %106

.lr.ph44:                                         ; preds = %99
  br label %101

101:                                              ; preds = %._crit_edge154, %.lr.ph44
  %102 = mul nsw i32 8, %100
  %103 = add nsw i32 %98, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %104
  store i32 1, ptr %105, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge154, label %._crit_edge45, !llvm.loop !28

._crit_edge154:                                   ; preds = %101
  br label %101, !llvm.loop !28

._crit_edge45:                                    ; preds = %101
  br label %106

106:                                              ; preds = %._crit_edge153, %._crit_edge45
  %107 = add nsw i32 %100, 1
  store i32 %107, ptr %2, align 4
  %108 = icmp sle i32 %107, 3
  br i1 %108, label %99, label %._crit_edge48, !llvm.loop !29

._crit_edge48:                                    ; preds = %106
  br label %109

109:                                              ; preds = %._crit_edge152, %._crit_edge48
  %110 = add nsw i32 %98, 1
  store i32 %110, ptr %1, align 4
  %111 = icmp sle i32 %110, 1
  br i1 %111, label %97, label %._crit_edge51, !llvm.loop !30

._crit_edge51:                                    ; preds = %109
  br label %112

112:                                              ; preds = %._crit_edge151, %._crit_edge51
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph59, label %._crit_edge155

._crit_edge155:                                   ; preds = %112
  br label %129

.lr.ph59:                                         ; preds = %112
  br label %113

113:                                              ; preds = %.lr.ph59, %126
  %114 = phi i32 [ 0, %.lr.ph59 ], [ %127, %126 ]
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph56, label %._crit_edge156

._crit_edge156:                                   ; preds = %113
  br label %126

.lr.ph56:                                         ; preds = %113
  br label %115

115:                                              ; preds = %._crit_edge158, %.lr.ph56
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph53, label %._crit_edge157

._crit_edge157:                                   ; preds = %115
  br label %125

.lr.ph53:                                         ; preds = %115
  br label %116

116:                                              ; preds = %.lr.ph53, %116
  %117 = phi i32 [ 0, %.lr.ph53 ], [ %123, %116 ]
  %118 = mul nsw i32 8, %117
  %119 = mul nsw i32 8, %118
  %120 = add nsw i32 %114, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %121
  store i32 1, ptr %122, align 4
  %123 = add nsw i32 %117, 1
  store i32 %123, ptr %3, align 4
  %124 = icmp sle i32 %123, 1
  br i1 %124, label %116, label %._crit_edge54, !llvm.loop !31

._crit_edge54:                                    ; preds = %116
  br label %125

125:                                              ; preds = %._crit_edge157, %._crit_edge54
  store i32 1, ptr %2, align 4
  br i1 false, label %._crit_edge158, label %._crit_edge57, !llvm.loop !32

._crit_edge158:                                   ; preds = %125
  br label %115, !llvm.loop !32

._crit_edge57:                                    ; preds = %125
  br label %126

126:                                              ; preds = %._crit_edge156, %._crit_edge57
  %127 = add nsw i32 %114, 1
  store i32 %127, ptr %1, align 4
  %128 = icmp sle i32 %127, 3
  br i1 %128, label %113, label %._crit_edge60, !llvm.loop !33

._crit_edge60:                                    ; preds = %126
  br label %129

129:                                              ; preds = %._crit_edge155, %._crit_edge60
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph68, label %._crit_edge159

._crit_edge159:                                   ; preds = %129
  br label %146

.lr.ph68:                                         ; preds = %129
  br label %130

130:                                              ; preds = %._crit_edge162, %.lr.ph68
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph65, label %._crit_edge160

._crit_edge160:                                   ; preds = %130
  br label %145

.lr.ph65:                                         ; preds = %130
  br label %131

131:                                              ; preds = %.lr.ph65, %142
  %132 = phi i32 [ 0, %.lr.ph65 ], [ %143, %142 ]
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph62, label %._crit_edge161

._crit_edge161:                                   ; preds = %131
  br label %142

.lr.ph62:                                         ; preds = %131
  br label %133

133:                                              ; preds = %.lr.ph62, %133
  %134 = phi i32 [ 0, %.lr.ph62 ], [ %140, %133 ]
  %135 = mul nsw i32 8, %134
  %136 = add nsw i32 %132, %135
  %137 = mul nsw i32 8, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %138
  store i32 1, ptr %139, align 4
  %140 = add nsw i32 %134, 1
  store i32 %140, ptr %3, align 4
  %141 = icmp sle i32 %140, 3
  br i1 %141, label %133, label %._crit_edge63, !llvm.loop !34

._crit_edge63:                                    ; preds = %133
  br label %142

142:                                              ; preds = %._crit_edge161, %._crit_edge63
  %143 = add nsw i32 %132, 1
  store i32 %143, ptr %2, align 4
  %144 = icmp sle i32 %143, 1
  br i1 %144, label %131, label %._crit_edge66, !llvm.loop !35

._crit_edge66:                                    ; preds = %142
  br label %145

145:                                              ; preds = %._crit_edge160, %._crit_edge66
  store i32 1, ptr %1, align 4
  br i1 false, label %._crit_edge162, label %._crit_edge69, !llvm.loop !36

._crit_edge162:                                   ; preds = %145
  br label %130, !llvm.loop !36

._crit_edge69:                                    ; preds = %145
  br label %146

146:                                              ; preds = %._crit_edge159, %._crit_edge69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph77, label %._crit_edge163

._crit_edge163:                                   ; preds = %146
  br label %157

.lr.ph77:                                         ; preds = %146
  br label %147

147:                                              ; preds = %.lr.ph77, %154
  %148 = phi i32 [ 0, %.lr.ph77 ], [ %155, %154 ]
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph74, label %._crit_edge164

._crit_edge164:                                   ; preds = %147
  br label %154

.lr.ph74:                                         ; preds = %147
  br label %149

149:                                              ; preds = %._crit_edge167, %.lr.ph74
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph71, label %._crit_edge165

._crit_edge165:                                   ; preds = %149
  br label %153

.lr.ph71:                                         ; preds = %149
  br label %150

150:                                              ; preds = %._crit_edge166, %.lr.ph71
  %151 = sext i32 %148 to i64
  %152 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %151
  store i32 1, ptr %152, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge166, label %._crit_edge72, !llvm.loop !37

._crit_edge166:                                   ; preds = %150
  br label %150, !llvm.loop !37

._crit_edge72:                                    ; preds = %150
  br label %153

153:                                              ; preds = %._crit_edge165, %._crit_edge72
  store i32 1, ptr %2, align 4
  br i1 false, label %._crit_edge167, label %._crit_edge75, !llvm.loop !38

._crit_edge167:                                   ; preds = %153
  br label %149, !llvm.loop !38

._crit_edge75:                                    ; preds = %153
  br label %154

154:                                              ; preds = %._crit_edge164, %._crit_edge75
  %155 = add nsw i32 %148, 1
  store i32 %155, ptr %1, align 4
  %156 = icmp sle i32 %155, 2
  br i1 %156, label %147, label %._crit_edge78, !llvm.loop !39

._crit_edge78:                                    ; preds = %154
  br label %157

157:                                              ; preds = %._crit_edge163, %._crit_edge78
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph86, label %._crit_edge168

._crit_edge168:                                   ; preds = %157
  br label %169

.lr.ph86:                                         ; preds = %157
  br label %158

158:                                              ; preds = %._crit_edge172, %.lr.ph86
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph83, label %._crit_edge169

._crit_edge169:                                   ; preds = %158
  br label %168

.lr.ph83:                                         ; preds = %158
  br label %159

159:                                              ; preds = %.lr.ph83, %165
  %160 = phi i32 [ 0, %.lr.ph83 ], [ %166, %165 ]
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph80, label %._crit_edge170

._crit_edge170:                                   ; preds = %159
  br label %165

.lr.ph80:                                         ; preds = %159
  br label %161

161:                                              ; preds = %._crit_edge171, %.lr.ph80
  %162 = mul nsw i32 8, %160
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %163
  store i32 1, ptr %164, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge171, label %._crit_edge81, !llvm.loop !40

._crit_edge171:                                   ; preds = %161
  br label %161, !llvm.loop !40

._crit_edge81:                                    ; preds = %161
  br label %165

165:                                              ; preds = %._crit_edge170, %._crit_edge81
  %166 = add nsw i32 %160, 1
  store i32 %166, ptr %2, align 4
  %167 = icmp sle i32 %166, 2
  br i1 %167, label %159, label %._crit_edge84, !llvm.loop !41

._crit_edge84:                                    ; preds = %165
  br label %168

168:                                              ; preds = %._crit_edge169, %._crit_edge84
  store i32 1, ptr %1, align 4
  br i1 false, label %._crit_edge172, label %._crit_edge87, !llvm.loop !42

._crit_edge172:                                   ; preds = %168
  br label %158, !llvm.loop !42

._crit_edge87:                                    ; preds = %168
  br label %169

169:                                              ; preds = %._crit_edge168, %._crit_edge87
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph95, label %._crit_edge173

._crit_edge173:                                   ; preds = %169
  br label %182

.lr.ph95:                                         ; preds = %169
  br label %170

170:                                              ; preds = %._crit_edge177, %.lr.ph95
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph92, label %._crit_edge174

._crit_edge174:                                   ; preds = %170
  br label %181

.lr.ph92:                                         ; preds = %170
  br label %171

171:                                              ; preds = %._crit_edge176, %.lr.ph92
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph89, label %._crit_edge175

._crit_edge175:                                   ; preds = %171
  br label %180

.lr.ph89:                                         ; preds = %171
  br label %172

172:                                              ; preds = %.lr.ph89, %172
  %173 = phi i32 [ 0, %.lr.ph89 ], [ %178, %172 ]
  %174 = mul nsw i32 8, %173
  %175 = mul nsw i32 8, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %176
  store i32 1, ptr %177, align 4
  %178 = add nsw i32 %173, 1
  store i32 %178, ptr %3, align 4
  %179 = icmp sle i32 %178, 2
  br i1 %179, label %172, label %._crit_edge90, !llvm.loop !43

._crit_edge90:                                    ; preds = %172
  br label %180

180:                                              ; preds = %._crit_edge175, %._crit_edge90
  store i32 1, ptr %2, align 4
  br i1 false, label %._crit_edge176, label %._crit_edge93, !llvm.loop !44

._crit_edge176:                                   ; preds = %180
  br label %171, !llvm.loop !44

._crit_edge93:                                    ; preds = %180
  br label %181

181:                                              ; preds = %._crit_edge174, %._crit_edge93
  store i32 1, ptr %1, align 4
  br i1 false, label %._crit_edge177, label %._crit_edge96, !llvm.loop !45

._crit_edge177:                                   ; preds = %181
  br label %170, !llvm.loop !45

._crit_edge96:                                    ; preds = %181
  br label %182

182:                                              ; preds = %._crit_edge173, %._crit_edge96
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph104, label %._crit_edge178

._crit_edge178:                                   ; preds = %182
  br label %198

.lr.ph104:                                        ; preds = %182
  br label %183

183:                                              ; preds = %.lr.ph104, %195
  %184 = phi i32 [ 0, %.lr.ph104 ], [ %196, %195 ]
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph101, label %._crit_edge179

._crit_edge179:                                   ; preds = %183
  br label %195

.lr.ph101:                                        ; preds = %183
  br label %185

185:                                              ; preds = %.lr.ph101, %192
  %186 = phi i32 [ 0, %.lr.ph101 ], [ %193, %192 ]
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph98, label %._crit_edge180

._crit_edge180:                                   ; preds = %185
  br label %192

.lr.ph98:                                         ; preds = %185
  br label %187

187:                                              ; preds = %._crit_edge181, %.lr.ph98
  %188 = mul nsw i32 8, %186
  %189 = add nsw i32 %184, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %190
  store i32 1, ptr %191, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge181, label %._crit_edge99, !llvm.loop !46

._crit_edge181:                                   ; preds = %187
  br label %187, !llvm.loop !46

._crit_edge99:                                    ; preds = %187
  br label %192

192:                                              ; preds = %._crit_edge180, %._crit_edge99
  %193 = add nsw i32 %186, 1
  store i32 %193, ptr %2, align 4
  %194 = icmp sle i32 %193, 1
  br i1 %194, label %185, label %._crit_edge102, !llvm.loop !47

._crit_edge102:                                   ; preds = %192
  br label %195

195:                                              ; preds = %._crit_edge179, %._crit_edge102
  %196 = add nsw i32 %184, 1
  store i32 %196, ptr %1, align 4
  %197 = icmp sle i32 %196, 1
  br i1 %197, label %183, label %._crit_edge105, !llvm.loop !48

._crit_edge105:                                   ; preds = %195
  br label %198

198:                                              ; preds = %._crit_edge178, %._crit_edge105
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph113, label %._crit_edge182

._crit_edge182:                                   ; preds = %198
  br label %215

.lr.ph113:                                        ; preds = %198
  br label %199

199:                                              ; preds = %.lr.ph113, %212
  %200 = phi i32 [ 0, %.lr.ph113 ], [ %213, %212 ]
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph110, label %._crit_edge183

._crit_edge183:                                   ; preds = %199
  br label %212

.lr.ph110:                                        ; preds = %199
  br label %201

201:                                              ; preds = %._crit_edge185, %.lr.ph110
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph107, label %._crit_edge184

._crit_edge184:                                   ; preds = %201
  br label %211

.lr.ph107:                                        ; preds = %201
  br label %202

202:                                              ; preds = %.lr.ph107, %202
  %203 = phi i32 [ 0, %.lr.ph107 ], [ %209, %202 ]
  %204 = mul nsw i32 8, %203
  %205 = mul nsw i32 8, %204
  %206 = add nsw i32 %200, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %207
  store i32 1, ptr %208, align 4
  %209 = add nsw i32 %203, 1
  store i32 %209, ptr %3, align 4
  %210 = icmp sle i32 %209, 1
  br i1 %210, label %202, label %._crit_edge108, !llvm.loop !49

._crit_edge108:                                   ; preds = %202
  br label %211

211:                                              ; preds = %._crit_edge184, %._crit_edge108
  store i32 1, ptr %2, align 4
  br i1 false, label %._crit_edge185, label %._crit_edge111, !llvm.loop !50

._crit_edge185:                                   ; preds = %211
  br label %201, !llvm.loop !50

._crit_edge111:                                   ; preds = %211
  br label %212

212:                                              ; preds = %._crit_edge183, %._crit_edge111
  %213 = add nsw i32 %200, 1
  store i32 %213, ptr %1, align 4
  %214 = icmp sle i32 %213, 1
  br i1 %214, label %199, label %._crit_edge114, !llvm.loop !51

._crit_edge114:                                   ; preds = %212
  br label %215

215:                                              ; preds = %._crit_edge182, %._crit_edge114
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph122, label %._crit_edge186

._crit_edge186:                                   ; preds = %215
  br label %232

.lr.ph122:                                        ; preds = %215
  br label %216

216:                                              ; preds = %._crit_edge189, %.lr.ph122
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph119, label %._crit_edge187

._crit_edge187:                                   ; preds = %216
  br label %231

.lr.ph119:                                        ; preds = %216
  br label %217

217:                                              ; preds = %.lr.ph119, %228
  %218 = phi i32 [ 0, %.lr.ph119 ], [ %229, %228 ]
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph116, label %._crit_edge188

._crit_edge188:                                   ; preds = %217
  br label %228

.lr.ph116:                                        ; preds = %217
  br label %219

219:                                              ; preds = %.lr.ph116, %219
  %220 = phi i32 [ 0, %.lr.ph116 ], [ %226, %219 ]
  %221 = mul nsw i32 8, %220
  %222 = add nsw i32 %218, %221
  %223 = mul nsw i32 8, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %224
  store i32 1, ptr %225, align 4
  %226 = add nsw i32 %220, 1
  store i32 %226, ptr %3, align 4
  %227 = icmp sle i32 %226, 1
  br i1 %227, label %219, label %._crit_edge117, !llvm.loop !52

._crit_edge117:                                   ; preds = %219
  br label %228

228:                                              ; preds = %._crit_edge188, %._crit_edge117
  %229 = add nsw i32 %218, 1
  store i32 %229, ptr %2, align 4
  %230 = icmp sle i32 %229, 1
  br i1 %230, label %217, label %._crit_edge120, !llvm.loop !53

._crit_edge120:                                   ; preds = %228
  br label %231

231:                                              ; preds = %._crit_edge187, %._crit_edge120
  store i32 1, ptr %1, align 4
  br i1 false, label %._crit_edge189, label %._crit_edge123, !llvm.loop !54

._crit_edge189:                                   ; preds = %231
  br label %216, !llvm.loop !54

._crit_edge123:                                   ; preds = %231
  br label %232

232:                                              ; preds = %._crit_edge186, %._crit_edge123
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph131, label %._crit_edge190

._crit_edge190:                                   ; preds = %232
  br label %253

.lr.ph131:                                        ; preds = %232
  br label %233

233:                                              ; preds = %.lr.ph131, %250
  %234 = phi i32 [ 0, %.lr.ph131 ], [ %251, %250 ]
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph128, label %._crit_edge191

._crit_edge191:                                   ; preds = %233
  br label %250

.lr.ph128:                                        ; preds = %233
  br label %235

235:                                              ; preds = %.lr.ph128, %247
  %236 = phi i32 [ 0, %.lr.ph128 ], [ %248, %247 ]
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph125, label %._crit_edge192

._crit_edge192:                                   ; preds = %235
  br label %247

.lr.ph125:                                        ; preds = %235
  br label %237

237:                                              ; preds = %.lr.ph125, %237
  %238 = phi i32 [ 0, %.lr.ph125 ], [ %245, %237 ]
  %239 = mul nsw i32 8, %238
  %240 = add nsw i32 %236, %239
  %241 = mul nsw i32 8, %240
  %242 = add nsw i32 %234, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %243
  store i32 1, ptr %244, align 4
  %245 = add nsw i32 %238, 1
  store i32 %245, ptr %3, align 4
  %246 = icmp sle i32 %245, 1
  br i1 %246, label %237, label %._crit_edge126, !llvm.loop !55

._crit_edge126:                                   ; preds = %237
  br label %247

247:                                              ; preds = %._crit_edge192, %._crit_edge126
  %248 = add nsw i32 %236, 1
  store i32 %248, ptr %2, align 4
  %249 = icmp sle i32 %248, 1
  br i1 %249, label %235, label %._crit_edge129, !llvm.loop !56

._crit_edge129:                                   ; preds = %247
  br label %250

250:                                              ; preds = %._crit_edge191, %._crit_edge129
  %251 = add nsw i32 %234, 1
  store i32 %251, ptr %1, align 4
  %252 = icmp sle i32 %251, 1
  br i1 %252, label %233, label %._crit_edge132, !llvm.loop !57

._crit_edge132:                                   ; preds = %250
  br label %253

253:                                              ; preds = %._crit_edge190, %._crit_edge132
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %254 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %257, ptr @n, align 4
  br label %260

258:                                              ; preds = %253
  %259 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %.pre = load i32, ptr @n, align 4
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi i32 [ %.pre, %258 ], [ %257, %256 ]
  %262 = call i32 @Trial(i32 noundef %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %260
  %265 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %272

266:                                              ; preds = %260
  %267 = load i32, ptr @kount, align 4
  %268 = icmp ne i32 %267, 2005
  br i1 %268, label %269, label %271

269:                                              ; preds = %266
  %270 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %271

271:                                              ; preds = %269, %266
  br label %272

272:                                              ; preds = %271, %264
  %273 = load i32, ptr @n, align 4
  %274 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %273)
  %275 = load i32, ptr @kount, align 4
  %276 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %275)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  br label %7

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %4 = phi i32 [ 0, %.lr.ph ], [ %5, %3 ]
  call void @Puzzle()
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %2, align 4
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %3, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %3
  br label %7

7:                                                ; preds = %._crit_edge1, %._crit_edge
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
