; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_001\output.ll'
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
  br i1 %12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %28
  %13 = phi i64 [ %33, %28 ], [ %9, %2 ]
  %14 = phi i32 [ %31, %28 ], [ %7, %2 ]
  %15 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %13
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [512 x i32], ptr %15, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %.lr.ph
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %21, %14
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, ptr %3, align 4
  br label %37

28:                                               ; preds = %.lr.ph, %20
  %29 = load i32, ptr %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %6, align 4
  %31 = load i32, ptr %6, align 4
  %32 = load i32, ptr %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp sle i32 %31, %35
  br i1 %36, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %28, %2
  store i32 1, ptr %3, align 4
  br label %37

37:                                               ; preds = %._crit_edge, %27
  %38 = load i32, ptr %3, align 4
  ret i32 %38
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
  br i1 %12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %25
  %13 = phi i64 [ %30, %25 ], [ %9, %2 ]
  %14 = phi i32 [ %28, %25 ], [ %7, %2 ]
  %15 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %13
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [512 x i32], ptr %15, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %.lr.ph
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %21, %14
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %23
  store i32 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %.lr.ph, %20
  %26 = load i32, ptr %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %6, align 4
  %28 = load i32, ptr %6, align 4
  %29 = load i32, ptr %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp sle i32 %28, %32
  br i1 %33, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %25, %2
  %.lcssa = phi i64 [ %9, %2 ], [ %30, %25 ]
  %34 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %35 = load i32, ptr %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, ptr %37, align 4
  %40 = load i32, ptr %5, align 4
  store i32 %40, ptr %6, align 4
  %41 = load i32, ptr %6, align 4
  %42 = icmp sle i32 %41, 511
  br i1 %42, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %._crit_edge, %49
  %43 = phi i32 [ %51, %49 ], [ %41, %._crit_edge ]
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %.lr.ph2
  %.lcssa1 = phi i32 [ %43, %.lr.ph2 ]
  store i32 %.lcssa1, ptr %3, align 4
  br label %53

49:                                               ; preds = %.lr.ph2
  %50 = add nsw i32 %43, 1
  store i32 %50, ptr %6, align 4
  %51 = load i32, ptr %6, align 4
  %52 = icmp sle i32 %51, 511
  br i1 %52, label %.lr.ph2, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %49, %._crit_edge
  store i32 0, ptr %3, align 4
  br label %53

53:                                               ; preds = %._crit_edge3, %48
  %54 = load i32, ptr %3, align 4
  ret i32 %54
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
  br i1 %11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %24
  %12 = phi i64 [ %29, %24 ], [ %8, %2 ]
  %13 = phi i32 [ %27, %24 ], [ %6, %2 ]
  %14 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %12
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds [512 x i32], ptr %14, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %.lr.ph
  %20 = load i32, ptr %4, align 4
  %21 = add nsw i32 %20, %13
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %22
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %.lr.ph, %19
  %25 = load i32, ptr %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %5, align 4
  %27 = load i32, ptr %5, align 4
  %28 = load i32, ptr %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp sle i32 %27, %31
  br i1 %32, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %24, %2
  %.lcssa = phi i64 [ %8, %2 ], [ %29, %24 ]
  %33 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4
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
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %34
  %10 = phi i32 [ %37, %34 ], [ %8, %1 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %.lr.ph
  %19 = load i32, ptr %3, align 4
  %20 = call i32 @Fit(i32 noundef %10, i32 noundef %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32, ptr %4, align 4
  %24 = load i32, ptr %3, align 4
  %25 = call i32 @Place(i32 noundef %23, i32 noundef %24)
  store i32 %25, ptr %5, align 4
  %26 = call i32 @Trial(i32 noundef %25)
  %27 = icmp ne i32 %26, 0
  %28 = load i32, ptr %5, align 4
  %29 = icmp eq i32 %28, 0
  %or.cond = select i1 %27, i1 true, i1 %29
  br i1 %or.cond, label %30, label %31

30:                                               ; preds = %22
  store i32 1, ptr %2, align 4
  br label %39

31:                                               ; preds = %22
  %32 = load i32, ptr %4, align 4
  %33 = load i32, ptr %3, align 4
  call void @Remove(i32 noundef %32, i32 noundef %33)
  br label %34

34:                                               ; preds = %.lr.ph, %31, %18
  %35 = load i32, ptr %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %4, align 4
  %37 = load i32, ptr %4, align 4
  %38 = icmp sle i32 %37, 12
  br i1 %38, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %34, %1
  store i32 0, ptr %2, align 4
  br label %39

39:                                               ; preds = %._crit_edge, %30
  %40 = load i32, ptr %2, align 4
  ret i32 %40
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
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %7 = phi i32 [ %12, %.lr.ph ], [ %5, %0 ]
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %8
  store i32 1, ptr %9, align 4
  %10 = load i32, ptr %4, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %4, align 4
  %12 = load i32, ptr %4, align 4
  %13 = icmp sle i32 %12, 511
  br i1 %13, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %0
  store i32 1, ptr %1, align 4
  %14 = load i32, ptr %1, align 4
  %15 = icmp sle i32 %14, 5
  br i1 %15, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %._crit_edge, %._crit_edge6
  store i32 1, ptr %2, align 4
  %16 = load i32, ptr %2, align 4
  %17 = icmp sle i32 %16, 5
  br i1 %17, label %.lr.ph5, label %._crit_edge6

.lr.ph5:                                          ; preds = %.lr.ph8, %._crit_edge3
  store i32 1, ptr %3, align 4
  %18 = load i32, ptr %3, align 4
  %19 = icmp sle i32 %18, 5
  br i1 %19, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %.lr.ph5, %.lr.ph2
  %20 = phi i32 [ %31, %.lr.ph2 ], [ %18, %.lr.ph5 ]
  %21 = load i32, ptr %1, align 4
  %22 = load i32, ptr %2, align 4
  %23 = mul nsw i32 8, %20
  %24 = add nsw i32 %22, %23
  %25 = mul nsw i32 8, %24
  %26 = add nsw i32 %21, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %27
  store i32 0, ptr %28, align 4
  %29 = load i32, ptr %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %3, align 4
  %31 = load i32, ptr %3, align 4
  %32 = icmp sle i32 %31, 5
  br i1 %32, label %.lr.ph2, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %.lr.ph5, %.lr.ph2
  %33 = load i32, ptr %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %2, align 4
  %35 = load i32, ptr %2, align 4
  %36 = icmp sle i32 %35, 5
  br i1 %36, label %.lr.ph5, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %.lr.ph8, %._crit_edge3
  %37 = load i32, ptr %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %1, align 4
  %39 = load i32, ptr %1, align 4
  %40 = icmp sle i32 %39, 5
  br i1 %40, label %.lr.ph8, label %._crit_edge9, !llvm.loop !16

._crit_edge9:                                     ; preds = %._crit_edge6, %._crit_edge
  store i32 0, ptr %1, align 4
  %41 = load i32, ptr %1, align 4
  %42 = icmp sle i32 %41, 12
  br i1 %42, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %._crit_edge9, %._crit_edge12
  store i32 0, ptr %4, align 4
  %43 = load i32, ptr %4, align 4
  %44 = icmp sle i32 %43, 511
  br i1 %44, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %.lr.ph14, %.lr.ph11
  %45 = phi i32 [ %53, %.lr.ph11 ], [ %43, %.lr.ph14 ]
  %46 = load i32, ptr %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %47
  %49 = sext i32 %45 to i64
  %50 = getelementptr inbounds [512 x i32], ptr %48, i64 0, i64 %49
  store i32 0, ptr %50, align 4
  %51 = load i32, ptr %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %4, align 4
  %53 = load i32, ptr %4, align 4
  %54 = icmp sle i32 %53, 511
  br i1 %54, label %.lr.ph11, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %.lr.ph14, %.lr.ph11
  %55 = load i32, ptr %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %1, align 4
  %57 = load i32, ptr %1, align 4
  %58 = icmp sle i32 %57, 12
  br i1 %58, label %.lr.ph14, label %._crit_edge15, !llvm.loop !18

._crit_edge15:                                    ; preds = %._crit_edge12, %._crit_edge9
  store i32 0, ptr %1, align 4
  %59 = load i32, ptr %1, align 4
  %60 = icmp sle i32 %59, 3
  br i1 %60, label %.lr.ph23, label %._crit_edge24

.lr.ph23:                                         ; preds = %._crit_edge15, %._crit_edge21
  store i32 0, ptr %2, align 4
  %61 = load i32, ptr %2, align 4
  %62 = icmp sle i32 %61, 1
  br i1 %62, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %.lr.ph23, %._crit_edge18
  store i32 0, ptr %3, align 4
  %63 = load i32, ptr %3, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %.lr.ph17, label %._crit_edge18

.lr.ph17:                                         ; preds = %.lr.ph20, %.lr.ph17
  %65 = phi i32 [ %76, %.lr.ph17 ], [ %63, %.lr.ph20 ]
  %66 = load i32, ptr %1, align 4
  %67 = load i32, ptr %2, align 4
  %68 = mul nsw i32 8, %65
  %69 = add nsw i32 %67, %68
  %70 = mul nsw i32 8, %69
  %71 = add nsw i32 %66, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %72
  store i32 1, ptr %73, align 4
  %74 = load i32, ptr %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %3, align 4
  %76 = load i32, ptr %3, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %.lr.ph17, label %._crit_edge18, !llvm.loop !19

._crit_edge18:                                    ; preds = %.lr.ph20, %.lr.ph17
  %78 = load i32, ptr %2, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %2, align 4
  %80 = load i32, ptr %2, align 4
  %81 = icmp sle i32 %80, 1
  br i1 %81, label %.lr.ph20, label %._crit_edge21, !llvm.loop !20

._crit_edge21:                                    ; preds = %.lr.ph23, %._crit_edge18
  %82 = load i32, ptr %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %1, align 4
  %84 = load i32, ptr %1, align 4
  %85 = icmp sle i32 %84, 3
  br i1 %85, label %.lr.ph23, label %._crit_edge24, !llvm.loop !21

._crit_edge24:                                    ; preds = %._crit_edge21, %._crit_edge15
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %86 = load i32, ptr %1, align 4
  %87 = icmp sle i32 %86, 1
  br i1 %87, label %.lr.ph32, label %._crit_edge33

.lr.ph32:                                         ; preds = %._crit_edge24, %._crit_edge30
  store i32 0, ptr %2, align 4
  %88 = load i32, ptr %2, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %.lr.ph32, %._crit_edge27
  store i32 0, ptr %3, align 4
  %90 = load i32, ptr %3, align 4
  %91 = icmp sle i32 %90, 3
  br i1 %91, label %.lr.ph26, label %._crit_edge27

.lr.ph26:                                         ; preds = %.lr.ph29, %.lr.ph26
  %92 = phi i32 [ %103, %.lr.ph26 ], [ %90, %.lr.ph29 ]
  %93 = load i32, ptr %1, align 4
  %94 = load i32, ptr %2, align 4
  %95 = mul nsw i32 8, %92
  %96 = add nsw i32 %94, %95
  %97 = mul nsw i32 8, %96
  %98 = add nsw i32 %93, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %99
  store i32 1, ptr %100, align 4
  %101 = load i32, ptr %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %3, align 4
  %103 = load i32, ptr %3, align 4
  %104 = icmp sle i32 %103, 3
  br i1 %104, label %.lr.ph26, label %._crit_edge27, !llvm.loop !22

._crit_edge27:                                    ; preds = %.lr.ph29, %.lr.ph26
  %105 = load i32, ptr %2, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %2, align 4
  %107 = load i32, ptr %2, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %.lr.ph29, label %._crit_edge30, !llvm.loop !23

._crit_edge30:                                    ; preds = %.lr.ph32, %._crit_edge27
  %109 = load i32, ptr %1, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %1, align 4
  %111 = load i32, ptr %1, align 4
  %112 = icmp sle i32 %111, 1
  br i1 %112, label %.lr.ph32, label %._crit_edge33, !llvm.loop !24

._crit_edge33:                                    ; preds = %._crit_edge30, %._crit_edge24
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %113 = load i32, ptr %1, align 4
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %._crit_edge33, %._crit_edge39
  store i32 0, ptr %2, align 4
  %115 = load i32, ptr %2, align 4
  %116 = icmp sle i32 %115, 3
  br i1 %116, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %.lr.ph41, %._crit_edge36
  store i32 0, ptr %3, align 4
  %117 = load i32, ptr %3, align 4
  %118 = icmp sle i32 %117, 1
  br i1 %118, label %.lr.ph35, label %._crit_edge36

.lr.ph35:                                         ; preds = %.lr.ph38, %.lr.ph35
  %119 = phi i32 [ %130, %.lr.ph35 ], [ %117, %.lr.ph38 ]
  %120 = load i32, ptr %1, align 4
  %121 = load i32, ptr %2, align 4
  %122 = mul nsw i32 8, %119
  %123 = add nsw i32 %121, %122
  %124 = mul nsw i32 8, %123
  %125 = add nsw i32 %120, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %126
  store i32 1, ptr %127, align 4
  %128 = load i32, ptr %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %3, align 4
  %130 = load i32, ptr %3, align 4
  %131 = icmp sle i32 %130, 1
  br i1 %131, label %.lr.ph35, label %._crit_edge36, !llvm.loop !25

._crit_edge36:                                    ; preds = %.lr.ph38, %.lr.ph35
  %132 = load i32, ptr %2, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %2, align 4
  %134 = load i32, ptr %2, align 4
  %135 = icmp sle i32 %134, 3
  br i1 %135, label %.lr.ph38, label %._crit_edge39, !llvm.loop !26

._crit_edge39:                                    ; preds = %.lr.ph41, %._crit_edge36
  %136 = load i32, ptr %1, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %1, align 4
  %138 = load i32, ptr %1, align 4
  %139 = icmp sle i32 %138, 0
  br i1 %139, label %.lr.ph41, label %._crit_edge42, !llvm.loop !27

._crit_edge42:                                    ; preds = %._crit_edge39, %._crit_edge33
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %140 = load i32, ptr %1, align 4
  %141 = icmp sle i32 %140, 1
  br i1 %141, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %._crit_edge42, %._crit_edge48
  store i32 0, ptr %2, align 4
  %142 = load i32, ptr %2, align 4
  %143 = icmp sle i32 %142, 3
  br i1 %143, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %.lr.ph50, %._crit_edge45
  store i32 0, ptr %3, align 4
  %144 = load i32, ptr %3, align 4
  %145 = icmp sle i32 %144, 0
  br i1 %145, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %.lr.ph47, %.lr.ph44
  %146 = phi i32 [ %157, %.lr.ph44 ], [ %144, %.lr.ph47 ]
  %147 = load i32, ptr %1, align 4
  %148 = load i32, ptr %2, align 4
  %149 = mul nsw i32 8, %146
  %150 = add nsw i32 %148, %149
  %151 = mul nsw i32 8, %150
  %152 = add nsw i32 %147, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %153
  store i32 1, ptr %154, align 4
  %155 = load i32, ptr %3, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr %3, align 4
  %157 = load i32, ptr %3, align 4
  %158 = icmp sle i32 %157, 0
  br i1 %158, label %.lr.ph44, label %._crit_edge45, !llvm.loop !28

._crit_edge45:                                    ; preds = %.lr.ph47, %.lr.ph44
  %159 = load i32, ptr %2, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr %2, align 4
  %161 = load i32, ptr %2, align 4
  %162 = icmp sle i32 %161, 3
  br i1 %162, label %.lr.ph47, label %._crit_edge48, !llvm.loop !29

._crit_edge48:                                    ; preds = %.lr.ph50, %._crit_edge45
  %163 = load i32, ptr %1, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %1, align 4
  %165 = load i32, ptr %1, align 4
  %166 = icmp sle i32 %165, 1
  br i1 %166, label %.lr.ph50, label %._crit_edge51, !llvm.loop !30

._crit_edge51:                                    ; preds = %._crit_edge48, %._crit_edge42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %167 = load i32, ptr %1, align 4
  %168 = icmp sle i32 %167, 3
  br i1 %168, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %._crit_edge51, %._crit_edge57
  store i32 0, ptr %2, align 4
  %169 = load i32, ptr %2, align 4
  %170 = icmp sle i32 %169, 0
  br i1 %170, label %.lr.ph56, label %._crit_edge57

.lr.ph56:                                         ; preds = %.lr.ph59, %._crit_edge54
  store i32 0, ptr %3, align 4
  %171 = load i32, ptr %3, align 4
  %172 = icmp sle i32 %171, 1
  br i1 %172, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %.lr.ph56, %.lr.ph53
  %173 = phi i32 [ %184, %.lr.ph53 ], [ %171, %.lr.ph56 ]
  %174 = load i32, ptr %1, align 4
  %175 = load i32, ptr %2, align 4
  %176 = mul nsw i32 8, %173
  %177 = add nsw i32 %175, %176
  %178 = mul nsw i32 8, %177
  %179 = add nsw i32 %174, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %180
  store i32 1, ptr %181, align 4
  %182 = load i32, ptr %3, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %3, align 4
  %184 = load i32, ptr %3, align 4
  %185 = icmp sle i32 %184, 1
  br i1 %185, label %.lr.ph53, label %._crit_edge54, !llvm.loop !31

._crit_edge54:                                    ; preds = %.lr.ph56, %.lr.ph53
  %186 = load i32, ptr %2, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %2, align 4
  %188 = load i32, ptr %2, align 4
  %189 = icmp sle i32 %188, 0
  br i1 %189, label %.lr.ph56, label %._crit_edge57, !llvm.loop !32

._crit_edge57:                                    ; preds = %.lr.ph59, %._crit_edge54
  %190 = load i32, ptr %1, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %1, align 4
  %192 = load i32, ptr %1, align 4
  %193 = icmp sle i32 %192, 3
  br i1 %193, label %.lr.ph59, label %._crit_edge60, !llvm.loop !33

._crit_edge60:                                    ; preds = %._crit_edge57, %._crit_edge51
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %194 = load i32, ptr %1, align 4
  %195 = icmp sle i32 %194, 0
  br i1 %195, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %._crit_edge60, %._crit_edge66
  store i32 0, ptr %2, align 4
  %196 = load i32, ptr %2, align 4
  %197 = icmp sle i32 %196, 1
  br i1 %197, label %.lr.ph65, label %._crit_edge66

.lr.ph65:                                         ; preds = %.lr.ph68, %._crit_edge63
  store i32 0, ptr %3, align 4
  %198 = load i32, ptr %3, align 4
  %199 = icmp sle i32 %198, 3
  br i1 %199, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %.lr.ph65, %.lr.ph62
  %200 = phi i32 [ %211, %.lr.ph62 ], [ %198, %.lr.ph65 ]
  %201 = load i32, ptr %1, align 4
  %202 = load i32, ptr %2, align 4
  %203 = mul nsw i32 8, %200
  %204 = add nsw i32 %202, %203
  %205 = mul nsw i32 8, %204
  %206 = add nsw i32 %201, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %207
  store i32 1, ptr %208, align 4
  %209 = load i32, ptr %3, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %3, align 4
  %211 = load i32, ptr %3, align 4
  %212 = icmp sle i32 %211, 3
  br i1 %212, label %.lr.ph62, label %._crit_edge63, !llvm.loop !34

._crit_edge63:                                    ; preds = %.lr.ph65, %.lr.ph62
  %213 = load i32, ptr %2, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr %2, align 4
  %215 = load i32, ptr %2, align 4
  %216 = icmp sle i32 %215, 1
  br i1 %216, label %.lr.ph65, label %._crit_edge66, !llvm.loop !35

._crit_edge66:                                    ; preds = %.lr.ph68, %._crit_edge63
  %217 = load i32, ptr %1, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %1, align 4
  %219 = load i32, ptr %1, align 4
  %220 = icmp sle i32 %219, 0
  br i1 %220, label %.lr.ph68, label %._crit_edge69, !llvm.loop !36

._crit_edge69:                                    ; preds = %._crit_edge66, %._crit_edge60
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %221 = load i32, ptr %1, align 4
  %222 = icmp sle i32 %221, 2
  br i1 %222, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %._crit_edge69, %._crit_edge75
  store i32 0, ptr %2, align 4
  %223 = load i32, ptr %2, align 4
  %224 = icmp sle i32 %223, 0
  br i1 %224, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %.lr.ph77, %._crit_edge72
  store i32 0, ptr %3, align 4
  %225 = load i32, ptr %3, align 4
  %226 = icmp sle i32 %225, 0
  br i1 %226, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %.lr.ph74, %.lr.ph71
  %227 = phi i32 [ %238, %.lr.ph71 ], [ %225, %.lr.ph74 ]
  %228 = load i32, ptr %1, align 4
  %229 = load i32, ptr %2, align 4
  %230 = mul nsw i32 8, %227
  %231 = add nsw i32 %229, %230
  %232 = mul nsw i32 8, %231
  %233 = add nsw i32 %228, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %234
  store i32 1, ptr %235, align 4
  %236 = load i32, ptr %3, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr %3, align 4
  %238 = load i32, ptr %3, align 4
  %239 = icmp sle i32 %238, 0
  br i1 %239, label %.lr.ph71, label %._crit_edge72, !llvm.loop !37

._crit_edge72:                                    ; preds = %.lr.ph74, %.lr.ph71
  %240 = load i32, ptr %2, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, ptr %2, align 4
  %242 = load i32, ptr %2, align 4
  %243 = icmp sle i32 %242, 0
  br i1 %243, label %.lr.ph74, label %._crit_edge75, !llvm.loop !38

._crit_edge75:                                    ; preds = %.lr.ph77, %._crit_edge72
  %244 = load i32, ptr %1, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr %1, align 4
  %246 = load i32, ptr %1, align 4
  %247 = icmp sle i32 %246, 2
  br i1 %247, label %.lr.ph77, label %._crit_edge78, !llvm.loop !39

._crit_edge78:                                    ; preds = %._crit_edge75, %._crit_edge69
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %248 = load i32, ptr %1, align 4
  %249 = icmp sle i32 %248, 0
  br i1 %249, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %._crit_edge78, %._crit_edge84
  store i32 0, ptr %2, align 4
  %250 = load i32, ptr %2, align 4
  %251 = icmp sle i32 %250, 2
  br i1 %251, label %.lr.ph83, label %._crit_edge84

.lr.ph83:                                         ; preds = %.lr.ph86, %._crit_edge81
  store i32 0, ptr %3, align 4
  %252 = load i32, ptr %3, align 4
  %253 = icmp sle i32 %252, 0
  br i1 %253, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %.lr.ph83, %.lr.ph80
  %254 = phi i32 [ %265, %.lr.ph80 ], [ %252, %.lr.ph83 ]
  %255 = load i32, ptr %1, align 4
  %256 = load i32, ptr %2, align 4
  %257 = mul nsw i32 8, %254
  %258 = add nsw i32 %256, %257
  %259 = mul nsw i32 8, %258
  %260 = add nsw i32 %255, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %261
  store i32 1, ptr %262, align 4
  %263 = load i32, ptr %3, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %3, align 4
  %265 = load i32, ptr %3, align 4
  %266 = icmp sle i32 %265, 0
  br i1 %266, label %.lr.ph80, label %._crit_edge81, !llvm.loop !40

._crit_edge81:                                    ; preds = %.lr.ph83, %.lr.ph80
  %267 = load i32, ptr %2, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, ptr %2, align 4
  %269 = load i32, ptr %2, align 4
  %270 = icmp sle i32 %269, 2
  br i1 %270, label %.lr.ph83, label %._crit_edge84, !llvm.loop !41

._crit_edge84:                                    ; preds = %.lr.ph86, %._crit_edge81
  %271 = load i32, ptr %1, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, ptr %1, align 4
  %273 = load i32, ptr %1, align 4
  %274 = icmp sle i32 %273, 0
  br i1 %274, label %.lr.ph86, label %._crit_edge87, !llvm.loop !42

._crit_edge87:                                    ; preds = %._crit_edge84, %._crit_edge78
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %275 = load i32, ptr %1, align 4
  %276 = icmp sle i32 %275, 0
  br i1 %276, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %._crit_edge87, %._crit_edge93
  store i32 0, ptr %2, align 4
  %277 = load i32, ptr %2, align 4
  %278 = icmp sle i32 %277, 0
  br i1 %278, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %.lr.ph95, %._crit_edge90
  store i32 0, ptr %3, align 4
  %279 = load i32, ptr %3, align 4
  %280 = icmp sle i32 %279, 2
  br i1 %280, label %.lr.ph89, label %._crit_edge90

.lr.ph89:                                         ; preds = %.lr.ph92, %.lr.ph89
  %281 = phi i32 [ %292, %.lr.ph89 ], [ %279, %.lr.ph92 ]
  %282 = load i32, ptr %1, align 4
  %283 = load i32, ptr %2, align 4
  %284 = mul nsw i32 8, %281
  %285 = add nsw i32 %283, %284
  %286 = mul nsw i32 8, %285
  %287 = add nsw i32 %282, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %288
  store i32 1, ptr %289, align 4
  %290 = load i32, ptr %3, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, ptr %3, align 4
  %292 = load i32, ptr %3, align 4
  %293 = icmp sle i32 %292, 2
  br i1 %293, label %.lr.ph89, label %._crit_edge90, !llvm.loop !43

._crit_edge90:                                    ; preds = %.lr.ph92, %.lr.ph89
  %294 = load i32, ptr %2, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, ptr %2, align 4
  %296 = load i32, ptr %2, align 4
  %297 = icmp sle i32 %296, 0
  br i1 %297, label %.lr.ph92, label %._crit_edge93, !llvm.loop !44

._crit_edge93:                                    ; preds = %.lr.ph95, %._crit_edge90
  %298 = load i32, ptr %1, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, ptr %1, align 4
  %300 = load i32, ptr %1, align 4
  %301 = icmp sle i32 %300, 0
  br i1 %301, label %.lr.ph95, label %._crit_edge96, !llvm.loop !45

._crit_edge96:                                    ; preds = %._crit_edge93, %._crit_edge87
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %302 = load i32, ptr %1, align 4
  %303 = icmp sle i32 %302, 1
  br i1 %303, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %._crit_edge96, %._crit_edge102
  store i32 0, ptr %2, align 4
  %304 = load i32, ptr %2, align 4
  %305 = icmp sle i32 %304, 1
  br i1 %305, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %.lr.ph104, %._crit_edge99
  store i32 0, ptr %3, align 4
  %306 = load i32, ptr %3, align 4
  %307 = icmp sle i32 %306, 0
  br i1 %307, label %.lr.ph98, label %._crit_edge99

.lr.ph98:                                         ; preds = %.lr.ph101, %.lr.ph98
  %308 = phi i32 [ %319, %.lr.ph98 ], [ %306, %.lr.ph101 ]
  %309 = load i32, ptr %1, align 4
  %310 = load i32, ptr %2, align 4
  %311 = mul nsw i32 8, %308
  %312 = add nsw i32 %310, %311
  %313 = mul nsw i32 8, %312
  %314 = add nsw i32 %309, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %315
  store i32 1, ptr %316, align 4
  %317 = load i32, ptr %3, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, ptr %3, align 4
  %319 = load i32, ptr %3, align 4
  %320 = icmp sle i32 %319, 0
  br i1 %320, label %.lr.ph98, label %._crit_edge99, !llvm.loop !46

._crit_edge99:                                    ; preds = %.lr.ph101, %.lr.ph98
  %321 = load i32, ptr %2, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, ptr %2, align 4
  %323 = load i32, ptr %2, align 4
  %324 = icmp sle i32 %323, 1
  br i1 %324, label %.lr.ph101, label %._crit_edge102, !llvm.loop !47

._crit_edge102:                                   ; preds = %.lr.ph104, %._crit_edge99
  %325 = load i32, ptr %1, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, ptr %1, align 4
  %327 = load i32, ptr %1, align 4
  %328 = icmp sle i32 %327, 1
  br i1 %328, label %.lr.ph104, label %._crit_edge105, !llvm.loop !48

._crit_edge105:                                   ; preds = %._crit_edge102, %._crit_edge96
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %329 = load i32, ptr %1, align 4
  %330 = icmp sle i32 %329, 1
  br i1 %330, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %._crit_edge105, %._crit_edge111
  store i32 0, ptr %2, align 4
  %331 = load i32, ptr %2, align 4
  %332 = icmp sle i32 %331, 0
  br i1 %332, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %.lr.ph113, %._crit_edge108
  store i32 0, ptr %3, align 4
  %333 = load i32, ptr %3, align 4
  %334 = icmp sle i32 %333, 1
  br i1 %334, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %.lr.ph110, %.lr.ph107
  %335 = phi i32 [ %346, %.lr.ph107 ], [ %333, %.lr.ph110 ]
  %336 = load i32, ptr %1, align 4
  %337 = load i32, ptr %2, align 4
  %338 = mul nsw i32 8, %335
  %339 = add nsw i32 %337, %338
  %340 = mul nsw i32 8, %339
  %341 = add nsw i32 %336, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %342
  store i32 1, ptr %343, align 4
  %344 = load i32, ptr %3, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, ptr %3, align 4
  %346 = load i32, ptr %3, align 4
  %347 = icmp sle i32 %346, 1
  br i1 %347, label %.lr.ph107, label %._crit_edge108, !llvm.loop !49

._crit_edge108:                                   ; preds = %.lr.ph110, %.lr.ph107
  %348 = load i32, ptr %2, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, ptr %2, align 4
  %350 = load i32, ptr %2, align 4
  %351 = icmp sle i32 %350, 0
  br i1 %351, label %.lr.ph110, label %._crit_edge111, !llvm.loop !50

._crit_edge111:                                   ; preds = %.lr.ph113, %._crit_edge108
  %352 = load i32, ptr %1, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, ptr %1, align 4
  %354 = load i32, ptr %1, align 4
  %355 = icmp sle i32 %354, 1
  br i1 %355, label %.lr.ph113, label %._crit_edge114, !llvm.loop !51

._crit_edge114:                                   ; preds = %._crit_edge111, %._crit_edge105
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %356 = load i32, ptr %1, align 4
  %357 = icmp sle i32 %356, 0
  br i1 %357, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %._crit_edge114, %._crit_edge120
  store i32 0, ptr %2, align 4
  %358 = load i32, ptr %2, align 4
  %359 = icmp sle i32 %358, 1
  br i1 %359, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %.lr.ph122, %._crit_edge117
  store i32 0, ptr %3, align 4
  %360 = load i32, ptr %3, align 4
  %361 = icmp sle i32 %360, 1
  br i1 %361, label %.lr.ph116, label %._crit_edge117

.lr.ph116:                                        ; preds = %.lr.ph119, %.lr.ph116
  %362 = phi i32 [ %373, %.lr.ph116 ], [ %360, %.lr.ph119 ]
  %363 = load i32, ptr %1, align 4
  %364 = load i32, ptr %2, align 4
  %365 = mul nsw i32 8, %362
  %366 = add nsw i32 %364, %365
  %367 = mul nsw i32 8, %366
  %368 = add nsw i32 %363, %367
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %369
  store i32 1, ptr %370, align 4
  %371 = load i32, ptr %3, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, ptr %3, align 4
  %373 = load i32, ptr %3, align 4
  %374 = icmp sle i32 %373, 1
  br i1 %374, label %.lr.ph116, label %._crit_edge117, !llvm.loop !52

._crit_edge117:                                   ; preds = %.lr.ph119, %.lr.ph116
  %375 = load i32, ptr %2, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, ptr %2, align 4
  %377 = load i32, ptr %2, align 4
  %378 = icmp sle i32 %377, 1
  br i1 %378, label %.lr.ph119, label %._crit_edge120, !llvm.loop !53

._crit_edge120:                                   ; preds = %.lr.ph122, %._crit_edge117
  %379 = load i32, ptr %1, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, ptr %1, align 4
  %381 = load i32, ptr %1, align 4
  %382 = icmp sle i32 %381, 0
  br i1 %382, label %.lr.ph122, label %._crit_edge123, !llvm.loop !54

._crit_edge123:                                   ; preds = %._crit_edge120, %._crit_edge114
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %383 = load i32, ptr %1, align 4
  %384 = icmp sle i32 %383, 1
  br i1 %384, label %.lr.ph131, label %._crit_edge132

.lr.ph131:                                        ; preds = %._crit_edge123, %._crit_edge129
  store i32 0, ptr %2, align 4
  %385 = load i32, ptr %2, align 4
  %386 = icmp sle i32 %385, 1
  br i1 %386, label %.lr.ph128, label %._crit_edge129

.lr.ph128:                                        ; preds = %.lr.ph131, %._crit_edge126
  store i32 0, ptr %3, align 4
  %387 = load i32, ptr %3, align 4
  %388 = icmp sle i32 %387, 1
  br i1 %388, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %.lr.ph128, %.lr.ph125
  %389 = phi i32 [ %400, %.lr.ph125 ], [ %387, %.lr.ph128 ]
  %390 = load i32, ptr %1, align 4
  %391 = load i32, ptr %2, align 4
  %392 = mul nsw i32 8, %389
  %393 = add nsw i32 %391, %392
  %394 = mul nsw i32 8, %393
  %395 = add nsw i32 %390, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %396
  store i32 1, ptr %397, align 4
  %398 = load i32, ptr %3, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, ptr %3, align 4
  %400 = load i32, ptr %3, align 4
  %401 = icmp sle i32 %400, 1
  br i1 %401, label %.lr.ph125, label %._crit_edge126, !llvm.loop !55

._crit_edge126:                                   ; preds = %.lr.ph128, %.lr.ph125
  %402 = load i32, ptr %2, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, ptr %2, align 4
  %404 = load i32, ptr %2, align 4
  %405 = icmp sle i32 %404, 1
  br i1 %405, label %.lr.ph128, label %._crit_edge129, !llvm.loop !56

._crit_edge129:                                   ; preds = %.lr.ph131, %._crit_edge126
  %406 = load i32, ptr %1, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, ptr %1, align 4
  %408 = load i32, ptr %1, align 4
  %409 = icmp sle i32 %408, 1
  br i1 %409, label %.lr.ph131, label %._crit_edge132, !llvm.loop !57

._crit_edge132:                                   ; preds = %._crit_edge129, %._crit_edge123
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %410 = load i32, ptr %4, align 4
  %411 = call i32 @Fit(i32 noundef 0, i32 noundef %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %._crit_edge132
  %414 = load i32, ptr %4, align 4
  %415 = call i32 @Place(i32 noundef 0, i32 noundef %414)
  store i32 %415, ptr @n, align 4
  br label %418

416:                                              ; preds = %._crit_edge132
  %417 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %418

418:                                              ; preds = %416, %413
  %419 = load i32, ptr @n, align 4
  %420 = call i32 @Trial(i32 noundef %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %418
  %423 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %429

424:                                              ; preds = %418
  %425 = load i32, ptr @kount, align 4
  %426 = icmp ne i32 %425, 2005
  br i1 %426, label %427, label %429

427:                                              ; preds = %424
  %428 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %429

429:                                              ; preds = %424, %427, %422
  %430 = load i32, ptr @n, align 4
  %431 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %430)
  %432 = load i32, ptr @kount, align 4
  %433 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %432)
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
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  call void @Puzzle()
  %5 = load i32, ptr %2, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %2, align 4
  %7 = load i32, ptr %2, align 4
  %8 = icmp slt i32 %7, 100
  br i1 %8, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %0
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
