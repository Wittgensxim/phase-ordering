; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_005\output.ll'
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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = phi i32 [ 0, %2 ], [ %19, %18 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %20, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %18, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %18, label %20

18:                                               ; preds = %13, %8
  %19 = add nsw i32 %7, 1
  br label %6, !llvm.loop !7

20:                                               ; preds = %13, %6
  %storemerge1 = phi i32 [ 0, %13 ], [ 1, %6 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = phi i32 [ 0, %2 ], [ %18, %17 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %17, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = add nsw i32 %7, 1
  br label %6, !llvm.loop !9

19:                                               ; preds = %6
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %27

27:                                               ; preds = %33, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ %26, %19 ]
  %28 = trunc nsw i64 %indvars.iv to i32
  store i32 %28, ptr %5, align 4
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %33

32:                                               ; preds = %29
  %.lcssa2 = phi i32 [ %28, %29 ]
  br label %.loopexit

33:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %27, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %27
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %32
  %storemerge2 = phi i32 [ %.lcssa2, %32 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = phi i32 [ 0, %2 ], [ %18, %17 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %17, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = add nsw i32 %7, 1
  br label %6, !llvm.loop !11

19:                                               ; preds = %6
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr @kount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @kount, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = phi i32 [ %0, %1 ], [ %25, %24 ]
  %8 = phi i32 [ 0, %1 ], [ %26, %24 ]
  store i32 %8, ptr %3, align 4
  %9 = icmp slt i32 %8, 13
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %24, label %17

17:                                               ; preds = %10
  %18 = call i32 @Fit(i32 noundef %8, i32 noundef %7)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %24, label %19

19:                                               ; preds = %17
  %20 = call i32 @Place(i32 noundef %8, i32 noundef %7)
  %21 = call i32 @Trial(i32 noundef %20)
  %.not3 = icmp ne i32 %21, 0
  %22 = icmp eq i32 %20, 0
  %or.cond = or i1 %.not3, %22
  br i1 %or.cond, label %27, label %23

23:                                               ; preds = %19
  call void @Remove(i32 noundef %8, i32 noundef %0)
  br label %24

24:                                               ; preds = %23, %17, %10
  %25 = phi i32 [ %0, %23 ], [ %7, %17 ], [ %7, %10 ]
  %26 = add nsw i32 %8, 1
  br label %6, !llvm.loop !12

27:                                               ; preds = %19, %6
  %storemerge1 = phi i32 [ 1, %19 ], [ 0, %6 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %16, %0
  %6 = phi i32 [ 0, %0 ], [ %19, %16 ]
  store i32 %6, ptr %4, align 4
  br label %7

.preheader31.preheader:                           ; preds = %11
  br label %.preheader31

7:                                                ; preds = %5
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  %10 = add nuw nsw i32 %6, 1
  store i32 %10, ptr %4, align 4
  br label %11

11:                                               ; preds = %7
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  %14 = add nuw nsw i32 %6, 2
  store i32 %14, ptr %4, align 4
  %15 = icmp samesign ult i32 %14, 512
  br i1 %15, label %16, label %.preheader31.preheader

16:                                               ; preds = %11
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 1, ptr %18, align 4
  %19 = add nuw nsw i32 %6, 3
  br label %5, !llvm.loop !13

.preheader31:                                     ; preds = %119, %.preheader31.preheader
  %20 = phi i32 [ %120, %119 ], [ 1, %.preheader31.preheader ]
  store i32 %20, ptr %1, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %.preheader30.preheader
  store i32 1, ptr %2, align 4
  br label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader
  store i32 1, ptr %3, align 4
  br label %.preheader29.1

.preheader29.1:                                   ; preds = %.preheader29
  %22 = add nsw i32 %20, 72
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  store i32 2, ptr %3, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %25 = add nsw i32 %20, 136
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %26
  store i32 0, ptr %27, align 4
  store i32 3, ptr %3, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %28 = add nsw i32 %20, 200
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  store i32 4, ptr %3, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %31 = add nsw i32 %20, 264
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %32
  store i32 0, ptr %33, align 4
  store i32 5, ptr %3, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %34 = add nsw i32 %20, 328
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %.preheader30.1

.loopexit:                                        ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  %.lcssa31.ph = phi i32 [ %20, %.preheader29.5.4 ], [ %20, %.preheader29.5.3 ], [ %20, %.preheader29.5.2 ], [ %20, %.preheader29.5.1 ], [ %20, %.preheader29.5 ]
  %.lcssa29.ph = phi i32 [ 5, %.preheader29.5.4 ], [ 4, %.preheader29.5.3 ], [ 3, %.preheader29.5.2 ], [ 2, %.preheader29.5.1 ], [ 1, %.preheader29.5 ]
  br label %37

37:                                               ; preds = %.loopexit, %.preheader29.5.5
  %.lcssa31 = phi i32 [ %.lcssa39, %.preheader29.5.5 ], [ %.lcssa31.ph, %.loopexit ]
  %.lcssa29 = phi i32 [ 6, %.preheader29.5.5 ], [ %.lcssa29.ph, %.loopexit ]
  %38 = shl i32 %.lcssa29, 3
  %39 = add i32 384, %38
  %40 = add nsw i32 %.lcssa31, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  store i32 2, ptr %2, align 4
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  br label %.preheader29.132

.preheader29.132:                                 ; preds = %.preheader29.preheader.1
  store i32 1, ptr %3, align 4
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.132
  %43 = add nsw i32 %20, 80
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %44
  store i32 0, ptr %45, align 4
  store i32 2, ptr %3, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %46 = add nsw i32 %20, 144
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  store i32 3, ptr %3, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %49 = add nsw i32 %20, 208
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %50
  store i32 0, ptr %51, align 4
  store i32 4, ptr %3, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %52 = add nsw i32 %20, 272
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  store i32 5, ptr %3, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %55 = add nsw i32 %20, 336
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %56
  store i32 0, ptr %57, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  store i32 3, ptr %2, align 4
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  br label %.preheader29.233

.preheader29.233:                                 ; preds = %.preheader29.preheader.2
  store i32 1, ptr %3, align 4
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.233
  %58 = add nsw i32 %20, 88
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  store i32 2, ptr %3, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %61 = add nsw i32 %20, 152
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %62
  store i32 0, ptr %63, align 4
  store i32 3, ptr %3, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %64 = add nsw i32 %20, 216
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  store i32 4, ptr %3, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %67 = add nsw i32 %20, 280
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %68
  store i32 0, ptr %69, align 4
  store i32 5, ptr %3, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %70 = add nsw i32 %20, 344
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  store i32 4, ptr %2, align 4
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  br label %.preheader29.334

.preheader29.334:                                 ; preds = %.preheader29.preheader.3
  store i32 1, ptr %3, align 4
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.334
  %73 = add nsw i32 %20, 96
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %74
  store i32 0, ptr %75, align 4
  store i32 2, ptr %3, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %76 = add nsw i32 %20, 160
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %77
  store i32 0, ptr %78, align 4
  store i32 3, ptr %3, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %79 = add nsw i32 %20, 224
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %80
  store i32 0, ptr %81, align 4
  store i32 4, ptr %3, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %82 = add nsw i32 %20, 288
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %83
  store i32 0, ptr %84, align 4
  store i32 5, ptr %3, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %85 = add nsw i32 %20, 352
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %86
  store i32 0, ptr %87, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  store i32 5, ptr %2, align 4
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  br label %.preheader29.435

.preheader29.435:                                 ; preds = %.preheader29.preheader.4
  store i32 1, ptr %3, align 4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.435
  %88 = add nsw i32 %20, 104
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %89
  store i32 0, ptr %90, align 4
  store i32 2, ptr %3, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %91 = add nsw i32 %20, 168
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %92
  store i32 0, ptr %93, align 4
  store i32 3, ptr %3, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %94 = add nsw i32 %20, 232
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %95
  store i32 0, ptr %96, align 4
  store i32 4, ptr %3, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %97 = add nsw i32 %20, 296
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %98
  store i32 0, ptr %99, align 4
  store i32 5, ptr %3, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %100 = add nsw i32 %20, 360
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %101
  store i32 0, ptr %102, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  store i32 6, ptr %2, align 4
  br i1 false, label %.preheader29.preheader.5, label %119

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %.lcssa39 = phi i32 [ %20, %.preheader30.5 ]
  br label %.preheader29.536

.preheader29.536:                                 ; preds = %.preheader29.preheader.5
  store i32 1, ptr %3, align 4
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.536
  %103 = add nsw i32 %.lcssa39, 112
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %104
  store i32 0, ptr %105, align 4
  store i32 2, ptr %3, align 4
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  %106 = add nsw i32 %.lcssa39, 176
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %107
  store i32 0, ptr %108, align 4
  store i32 3, ptr %3, align 4
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  %109 = add nsw i32 %.lcssa39, 240
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %110
  store i32 0, ptr %111, align 4
  store i32 4, ptr %3, align 4
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  %112 = add nsw i32 %.lcssa39, 304
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %113
  store i32 0, ptr %114, align 4
  store i32 5, ptr %3, align 4
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  %115 = add nsw i32 %.lcssa39, 368
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %116
  store i32 0, ptr %117, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %37, label %118

118:                                              ; preds = %.preheader29.5.5
  unreachable

119:                                              ; preds = %.preheader30.5
  %.lcssa27 = phi i32 [ %20, %.preheader30.5 ]
  %120 = add nsw i32 %.lcssa27, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %141, %.preheader28.preheader
  %121 = phi i32 [ %142, %141 ], [ 0, %.preheader28.preheader ]
  store i32 %121, ptr %1, align 4
  %122 = icmp slt i32 %121, 13
  br i1 %122, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds [2048 x i8], ptr @p, i64 %123
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %135, %.preheader27.preheader
  %125 = phi i32 [ 0, %.preheader27.preheader ], [ %140, %135 ]
  store i32 %125, ptr %4, align 4
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %126 = sext i32 %121 to i64
  %127 = getelementptr inbounds [2048 x i8], ptr @p, i64 %126
  %128 = sext i32 %125 to i64
  %129 = getelementptr inbounds [4 x i8], ptr %127, i64 %128
  store i32 0, ptr %129, align 4
  %130 = add nuw nsw i32 %125, 1
  store i32 %130, ptr %4, align 4
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x i8], ptr %124, i64 %131
  store i32 0, ptr %132, align 4
  %133 = add nuw nsw i32 %125, 2
  store i32 %133, ptr %4, align 4
  %134 = icmp samesign ult i32 %133, 512
  br i1 %134, label %135, label %141

135:                                              ; preds = %.preheader27.2
  %136 = sext i32 %121 to i64
  %137 = getelementptr inbounds [2048 x i8], ptr @p, i64 %136
  %138 = sext i32 %133 to i64
  %139 = getelementptr inbounds [4 x i8], ptr %137, i64 %138
  store i32 0, ptr %139, align 4
  %140 = add nuw nsw i32 %125, 3
  br label %.preheader27, !llvm.loop !15

141:                                              ; preds = %.preheader27.2
  %142 = add nsw i32 %121, 1
  br label %.preheader28, !llvm.loop !16

.preheader26:                                     ; preds = %.preheader26.preheader
  store i32 0, ptr %1, align 4
  br label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader24.1

.preheader24.1:                                   ; preds = %.preheader24
  store i32 1, ptr @p, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit48, label %.preheader25.1

.loopexit48:                                      ; preds = %.preheader24.1.1.4, %.preheader24.1.4, %.preheader24.1.1.3, %.preheader24.1.3, %.preheader24.1.1.2, %.preheader24.1.256, %.preheader24.1.1.1, %.preheader24.1.152, %.preheader24.1, %.preheader24.1.1
  %.lcssa43.ph = phi i32 [ 0, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 1, %.preheader24.1.152 ], [ 1, %.preheader24.1.1.1 ], [ 2, %.preheader24.1.256 ], [ 2, %.preheader24.1.1.2 ], [ 3, %.preheader24.1.3 ], [ 3, %.preheader24.1.1.3 ], [ 4, %.preheader24.1.4 ], [ 4, %.preheader24.1.1.4 ]
  %.lcssa41.ph = phi i32 [ 1, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 0, %.preheader24.1.152 ], [ 1, %.preheader24.1.1.1 ], [ 0, %.preheader24.1.256 ], [ 1, %.preheader24.1.1.2 ], [ 0, %.preheader24.1.3 ], [ 1, %.preheader24.1.1.3 ], [ 0, %.preheader24.1.4 ], [ 1, %.preheader24.1.1.4 ]
  br label %143

143:                                              ; preds = %.loopexit48, %.preheader24.1.2
  %.lcssa43 = phi i32 [ %.lcssa47, %.preheader24.1.2 ], [ %.lcssa43.ph, %.loopexit48 ]
  %.lcssa41 = phi i32 [ 2, %.preheader24.1.2 ], [ %.lcssa41.ph, %.loopexit48 ]
  %144 = shl i32 %.lcssa41, 3
  %145 = add i32 64, %144
  %146 = add nsw i32 %.lcssa43, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i8], ptr @p, i64 %147
  store i32 1, ptr %148, align 4
  unreachable

.preheader25.1:                                   ; preds = %.preheader24.1
  store i32 1, ptr %2, align 4
  br label %.preheader24.preheader.1

.preheader24.preheader.1:                         ; preds = %.preheader25.1
  br label %.preheader24.144

.preheader24.144:                                 ; preds = %.preheader24.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %.preheader24.144
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit48, label %.preheader25.2

.preheader25.2:                                   ; preds = %.preheader24.1.1
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.1

.preheader24.preheader.2:                         ; preds = %.preheader25.2.4, %.preheader25.2.3, %.preheader25.2.2, %.preheader25.2.1, %.preheader25.2
  %.lcssa47 = phi i32 [ 0, %.preheader25.2 ], [ 1, %.preheader25.2.1 ], [ 2, %.preheader25.2.2 ], [ 3, %.preheader25.2.3 ], [ 4, %.preheader25.2.4 ]
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %.preheader24.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %.preheader24.2
  %149 = add nsw i32 %.lcssa47, 16
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [4 x i8], ptr @p, i64 %150
  store i32 1, ptr %151, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %143, label %152

152:                                              ; preds = %.preheader24.1.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  store i32 1, ptr %1, align 4
  br label %.preheader25.preheader.1

.preheader25.preheader.1:                         ; preds = %.preheader26.1
  br label %.preheader25.149

.preheader25.149:                                 ; preds = %.preheader25.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader24.preheader.150

.preheader24.preheader.150:                       ; preds = %.preheader25.149
  br label %.preheader24.151

.preheader24.151:                                 ; preds = %.preheader24.preheader.150
  store i32 0, ptr %3, align 4
  br label %.preheader24.1.152

.preheader24.1.152:                               ; preds = %.preheader24.151
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit48, label %.preheader25.1.1

.preheader25.1.1:                                 ; preds = %.preheader24.1.152
  store i32 1, ptr %2, align 4
  br label %.preheader24.preheader.1.1

.preheader24.preheader.1.1:                       ; preds = %.preheader25.1.1
  br label %.preheader24.144.1

.preheader24.144.1:                               ; preds = %.preheader24.preheader.1.1
  store i32 0, ptr %3, align 4
  br label %.preheader24.1.1.1

.preheader24.1.1.1:                               ; preds = %.preheader24.144.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit48, label %.preheader25.2.1

.preheader25.2.1:                                 ; preds = %.preheader24.1.1.1
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  store i32 2, ptr %1, align 4
  br label %.preheader25.preheader.2

.preheader25.preheader.2:                         ; preds = %.preheader26.2
  br label %.preheader25.253

.preheader25.253:                                 ; preds = %.preheader25.preheader.2
  store i32 0, ptr %2, align 4
  br label %.preheader24.preheader.254

.preheader24.preheader.254:                       ; preds = %.preheader25.253
  br label %.preheader24.255

.preheader24.255:                                 ; preds = %.preheader24.preheader.254
  store i32 0, ptr %3, align 4
  br label %.preheader24.1.256

.preheader24.1.256:                               ; preds = %.preheader24.255
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit48, label %.preheader25.1.2

.preheader25.1.2:                                 ; preds = %.preheader24.1.256
  store i32 1, ptr %2, align 4
  br label %.preheader24.preheader.1.2

.preheader24.preheader.1.2:                       ; preds = %.preheader25.1.2
  br label %.preheader24.144.2

.preheader24.144.2:                               ; preds = %.preheader24.preheader.1.2
  store i32 0, ptr %3, align 4
  br label %.preheader24.1.1.2

.preheader24.1.1.2:                               ; preds = %.preheader24.144.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit48, label %.preheader25.2.2

.preheader25.2.2:                                 ; preds = %.preheader24.1.1.2
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.3

.preheader26.3:                                   ; preds = %.preheader25.2.2
  store i32 3, ptr %1, align 4
  br label %.preheader25.preheader.3

.preheader25.preheader.3:                         ; preds = %.preheader26.3
  br label %.preheader25.3

.preheader25.3:                                   ; preds = %.preheader25.preheader.3
  store i32 0, ptr %2, align 4
  br label %.preheader24.preheader.3

.preheader24.preheader.3:                         ; preds = %.preheader25.3
  br label %.preheader24.3

.preheader24.3:                                   ; preds = %.preheader24.preheader.3
  store i32 0, ptr %3, align 4
  br label %.preheader24.1.3

.preheader24.1.3:                                 ; preds = %.preheader24.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit48, label %.preheader25.1.3

.preheader25.1.3:                                 ; preds = %.preheader24.1.3
  store i32 1, ptr %2, align 4
  br label %.preheader24.preheader.1.3

.preheader24.preheader.1.3:                       ; preds = %.preheader25.1.3
  br label %.preheader24.144.3

.preheader24.144.3:                               ; preds = %.preheader24.preheader.1.3
  store i32 0, ptr %3, align 4
  br label %.preheader24.1.1.3

.preheader24.1.1.3:                               ; preds = %.preheader24.144.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit48, label %.preheader25.2.3

.preheader25.2.3:                                 ; preds = %.preheader24.1.1.3
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.4

.preheader26.4:                                   ; preds = %.preheader25.2.3
  store i32 4, ptr %1, align 4
  br i1 false, label %.preheader25.preheader.4, label %154

.preheader25.preheader.4:                         ; preds = %.preheader26.4
  br label %.preheader25.4

.preheader25.4:                                   ; preds = %.preheader25.preheader.4
  store i32 0, ptr %2, align 4
  br label %.preheader24.preheader.4

.preheader24.preheader.4:                         ; preds = %.preheader25.4
  br label %.preheader24.4

.preheader24.4:                                   ; preds = %.preheader24.preheader.4
  store i32 0, ptr %3, align 4
  br label %.preheader24.1.4

.preheader24.1.4:                                 ; preds = %.preheader24.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit48, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader24.1.4
  store i32 1, ptr %2, align 4
  br label %.preheader24.preheader.1.4

.preheader24.preheader.1.4:                       ; preds = %.preheader25.1.4
  br label %.preheader24.144.4

.preheader24.144.4:                               ; preds = %.preheader24.preheader.1.4
  store i32 0, ptr %3, align 4
  br label %.preheader24.1.1.4

.preheader24.1.1.4:                               ; preds = %.preheader24.144.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit48, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader24.1.1.4
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader24.preheader.2, label %153

153:                                              ; preds = %.preheader25.2.4
  unreachable

154:                                              ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %155

155:                                              ; preds = %154
  store i32 0, ptr %1, align 4
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %155
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader22.1

.preheader22.1:                                   ; preds = %.preheader22
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader22.2

.preheader22.2:                                   ; preds = %.preheader22.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 2, ptr %3, align 4
  br label %.preheader22.3

.preheader22.3:                                   ; preds = %.preheader22.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 3, ptr %3, align 4
  br label %.preheader22.4

.preheader22.4:                                   ; preds = %.preheader22.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit65, label %.preheader23.1

.loopexit65:                                      ; preds = %.preheader22.4.2, %.preheader22.4.172, %.preheader22.4
  %.lcssa60.ph = phi i32 [ 0, %.preheader22.4 ], [ 1, %.preheader22.4.172 ], [ 2, %.preheader22.4.2 ]
  %.lcssa58.ph = phi i32 [ 0, %.preheader22.4 ], [ 0, %.preheader22.4.172 ], [ 0, %.preheader22.4.2 ]
  br label %156

156:                                              ; preds = %.loopexit65, %.preheader22.4.1
  %.lcssa60 = phi i32 [ %.lcssa63, %.preheader22.4.1 ], [ %.lcssa60.ph, %.loopexit65 ]
  %.lcssa58 = phi i32 [ 1, %.preheader22.4.1 ], [ %.lcssa58.ph, %.loopexit65 ]
  %157 = shl i32 %.lcssa58, 3
  %158 = add i32 256, %157
  %159 = add nsw i32 %.lcssa60, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %160
  store i32 1, ptr %161, align 4
  unreachable

.preheader23.1:                                   ; preds = %.preheader22.4
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader22.preheader.1, label %175

.preheader22.preheader.1:                         ; preds = %.preheader23.1.2, %.preheader23.1.1, %.preheader23.1
  %.lcssa63 = phi i32 [ 0, %.preheader23.1 ], [ 1, %.preheader23.1.1 ], [ 2, %.preheader23.1.2 ]
  br label %.preheader22.161

.preheader22.161:                                 ; preds = %.preheader22.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.161
  %162 = add nsw i32 %.lcssa63, 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %163
  store i32 1, ptr %164, align 4
  store i32 1, ptr %3, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %165 = add nsw i32 %.lcssa63, 72
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %166
  store i32 1, ptr %167, align 4
  store i32 2, ptr %3, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %168 = add nsw i32 %.lcssa63, 136
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %169
  store i32 1, ptr %170, align 4
  store i32 3, ptr %3, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %171 = add nsw i32 %.lcssa63, 200
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %172
  store i32 1, ptr %173, align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %156, label %174

174:                                              ; preds = %.preheader22.4.1
  unreachable

175:                                              ; preds = %.preheader23.1
  store i32 1, ptr %1, align 4
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %175
  br label %.preheader23.166

.preheader23.166:                                 ; preds = %.preheader23.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader22.preheader.167

.preheader22.preheader.167:                       ; preds = %.preheader23.166
  br label %.preheader22.168

.preheader22.168:                                 ; preds = %.preheader22.preheader.167
  store i32 0, ptr %3, align 4
  br label %.preheader22.1.169

.preheader22.1.169:                               ; preds = %.preheader22.168
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader22.2.170

.preheader22.2.170:                               ; preds = %.preheader22.1.169
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 2, ptr %3, align 4
  br label %.preheader22.3.171

.preheader22.3.171:                               ; preds = %.preheader22.2.170
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 3, ptr %3, align 4
  br label %.preheader22.4.172

.preheader22.4.172:                               ; preds = %.preheader22.3.171
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit65, label %.preheader23.1.1

.preheader23.1.1:                                 ; preds = %.preheader22.4.172
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader22.preheader.1, label %176

176:                                              ; preds = %.preheader23.1.1
  store i32 2, ptr %1, align 4
  br i1 false, label %.preheader23.preheader.2, label %178

.preheader23.preheader.2:                         ; preds = %176
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  store i32 0, ptr %2, align 4
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.273

.preheader22.273:                                 ; preds = %.preheader22.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.273
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader22.2.2

.preheader22.2.2:                                 ; preds = %.preheader22.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  store i32 2, ptr %3, align 4
  br label %.preheader22.3.2

.preheader22.3.2:                                 ; preds = %.preheader22.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  store i32 3, ptr %3, align 4
  br label %.preheader22.4.2

.preheader22.4.2:                                 ; preds = %.preheader22.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit65, label %.preheader23.1.2

.preheader23.1.2:                                 ; preds = %.preheader22.4.2
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader22.preheader.1, label %177

177:                                              ; preds = %.preheader23.1.2
  unreachable

178:                                              ; preds = %176
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %179

179:                                              ; preds = %178
  store i32 0, ptr %1, align 4
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %179
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader20.1

.preheader20.1:                                   ; preds = %.preheader20
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader20.2

.preheader20.2:                                   ; preds = %.preheader20.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit83, label %.preheader21.1

.loopexit83:                                      ; preds = %.preheader20.2.3.1, %.preheader20.2.2.1, %.preheader20.2.1.1, %.preheader20.2.188, %.preheader20.2, %.preheader20.2.1, %.preheader20.2.2, %.preheader20.2.3
  %.lcssa77.ph = phi i32 [ 0, %.preheader20.2.3 ], [ 0, %.preheader20.2.2 ], [ 0, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 1, %.preheader20.2.188 ], [ 1, %.preheader20.2.1.1 ], [ 1, %.preheader20.2.2.1 ], [ 1, %.preheader20.2.3.1 ]
  %.lcssa75.ph = phi i32 [ 3, %.preheader20.2.3 ], [ 2, %.preheader20.2.2 ], [ 1, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 0, %.preheader20.2.188 ], [ 1, %.preheader20.2.1.1 ], [ 2, %.preheader20.2.2.1 ], [ 3, %.preheader20.2.3.1 ]
  br label %180

180:                                              ; preds = %.loopexit83, %.preheader20.2.4
  %.lcssa77 = phi i32 [ %.lcssa82, %.preheader20.2.4 ], [ %.lcssa77.ph, %.loopexit83 ]
  %.lcssa75 = phi i32 [ 4, %.preheader20.2.4 ], [ %.lcssa75.ph, %.loopexit83 ]
  %181 = shl i32 %.lcssa75, 3
  %182 = add i32 128, %181
  %183 = add nsw i32 %.lcssa77, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %184
  store i32 1, ptr %185, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader20.2
  store i32 1, ptr %2, align 4
  br label %.preheader20.preheader.1

.preheader20.preheader.1:                         ; preds = %.preheader21.1
  br label %.preheader20.178

.preheader20.178:                                 ; preds = %.preheader20.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %.preheader20.178
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %.preheader20.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit83, label %.preheader21.2

.preheader21.2:                                   ; preds = %.preheader20.2.1
  store i32 2, ptr %2, align 4
  br label %.preheader20.preheader.2

.preheader20.preheader.2:                         ; preds = %.preheader21.2
  br label %.preheader20.279

.preheader20.279:                                 ; preds = %.preheader20.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader20.1.2

.preheader20.1.2:                                 ; preds = %.preheader20.279
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader20.2.2

.preheader20.2.2:                                 ; preds = %.preheader20.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit83, label %.preheader21.3

.preheader21.3:                                   ; preds = %.preheader20.2.2
  store i32 3, ptr %2, align 4
  br label %.preheader20.preheader.3

.preheader20.preheader.3:                         ; preds = %.preheader21.3
  br label %.preheader20.3

.preheader20.3:                                   ; preds = %.preheader20.preheader.3
  store i32 0, ptr %3, align 4
  br label %.preheader20.1.3

.preheader20.1.3:                                 ; preds = %.preheader20.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader20.2.3

.preheader20.2.3:                                 ; preds = %.preheader20.1.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit83, label %.preheader21.4

.preheader21.4:                                   ; preds = %.preheader20.2.3
  store i32 4, ptr %2, align 4
  br i1 false, label %.preheader20.preheader.4, label %193

.preheader20.preheader.4:                         ; preds = %.preheader21.4.1, %.preheader21.4
  %.lcssa82 = phi i32 [ 0, %.preheader21.4 ], [ 1, %.preheader21.4.1 ]
  br label %.preheader20.4

.preheader20.4:                                   ; preds = %.preheader20.preheader.4
  store i32 0, ptr %3, align 4
  br label %.preheader20.1.4

.preheader20.1.4:                                 ; preds = %.preheader20.4
  %186 = add nsw i32 %.lcssa82, 32
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %187
  store i32 1, ptr %188, align 4
  store i32 1, ptr %3, align 4
  br label %.preheader20.2.4

.preheader20.2.4:                                 ; preds = %.preheader20.1.4
  %189 = add nsw i32 %.lcssa82, 96
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %190
  store i32 1, ptr %191, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %180, label %192

192:                                              ; preds = %.preheader20.2.4
  unreachable

193:                                              ; preds = %.preheader21.4
  store i32 1, ptr %1, align 4
  br i1 false, label %.preheader21.preheader.1, label %195

.preheader21.preheader.1:                         ; preds = %193
  br label %.preheader21.184

.preheader21.184:                                 ; preds = %.preheader21.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader20.preheader.185

.preheader20.preheader.185:                       ; preds = %.preheader21.184
  br label %.preheader20.186

.preheader20.186:                                 ; preds = %.preheader20.preheader.185
  store i32 0, ptr %3, align 4
  br label %.preheader20.1.187

.preheader20.1.187:                               ; preds = %.preheader20.186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader20.2.188

.preheader20.2.188:                               ; preds = %.preheader20.1.187
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit83, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.188
  store i32 1, ptr %2, align 4
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.178.1

.preheader20.178.1:                               ; preds = %.preheader20.preheader.1.1
  store i32 0, ptr %3, align 4
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.178.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit83, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  store i32 2, ptr %2, align 4
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.279.1

.preheader20.279.1:                               ; preds = %.preheader20.preheader.2.1
  store i32 0, ptr %3, align 4
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.279.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit83, label %.preheader21.3.1

.preheader21.3.1:                                 ; preds = %.preheader20.2.2.1
  store i32 3, ptr %2, align 4
  br label %.preheader20.preheader.3.1

.preheader20.preheader.3.1:                       ; preds = %.preheader21.3.1
  br label %.preheader20.3.1

.preheader20.3.1:                                 ; preds = %.preheader20.preheader.3.1
  store i32 0, ptr %3, align 4
  br label %.preheader20.1.3.1

.preheader20.1.3.1:                               ; preds = %.preheader20.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4196), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader20.2.3.1

.preheader20.2.3.1:                               ; preds = %.preheader20.1.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4452), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit83, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  store i32 4, ptr %2, align 4
  br i1 false, label %.preheader20.preheader.4, label %194

194:                                              ; preds = %.preheader21.4.1
  unreachable

195:                                              ; preds = %193
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %196

196:                                              ; preds = %195
  store i32 0, ptr %1, align 4
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %196
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %.preheader18
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.1

.loopexit97:                                      ; preds = %.preheader18.1.3.2, %.preheader18.1.2.2, %.preheader18.1.1.2, %.preheader18.1.2105, %.preheader18.1.3.1, %.preheader18.1.2.1, %.preheader18.1.1.1, %.preheader18.1.1101, %.preheader18.1, %.preheader18.1.1, %.preheader18.1.2, %.preheader18.1.3
  %.lcssa92.ph = phi i32 [ 0, %.preheader18.1.3 ], [ 0, %.preheader18.1.2 ], [ 0, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 1, %.preheader18.1.1101 ], [ 1, %.preheader18.1.1.1 ], [ 1, %.preheader18.1.2.1 ], [ 1, %.preheader18.1.3.1 ], [ 2, %.preheader18.1.2105 ], [ 2, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 2, %.preheader18.1.3.2 ]
  %.lcssa90.ph = phi i32 [ 3, %.preheader18.1.3 ], [ 2, %.preheader18.1.2 ], [ 1, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 0, %.preheader18.1.1101 ], [ 1, %.preheader18.1.1.1 ], [ 2, %.preheader18.1.2.1 ], [ 3, %.preheader18.1.3.1 ], [ 0, %.preheader18.1.2105 ], [ 1, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 3, %.preheader18.1.3.2 ]
  br label %197

197:                                              ; preds = %.loopexit97, %.preheader18.1.4
  %.lcssa92 = phi i32 [ %.lcssa96, %.preheader18.1.4 ], [ %.lcssa92.ph, %.loopexit97 ]
  %.lcssa90 = phi i32 [ 4, %.preheader18.1.4 ], [ %.lcssa90.ph, %.loopexit97 ]
  %198 = shl i32 %.lcssa90, 3
  %199 = add i32 64, %198
  %200 = add nsw i32 %.lcssa92, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %201
  store i32 1, ptr %202, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader18.1
  store i32 1, ptr %2, align 4
  br label %.preheader18.preheader.1

.preheader18.preheader.1:                         ; preds = %.preheader19.1
  br label %.preheader18.193

.preheader18.193:                                 ; preds = %.preheader18.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %.preheader18.193
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.2

.preheader19.2:                                   ; preds = %.preheader18.1.1
  store i32 2, ptr %2, align 4
  br label %.preheader18.preheader.2

.preheader18.preheader.2:                         ; preds = %.preheader19.2
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %.preheader18.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %.preheader18.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.3

.preheader19.3:                                   ; preds = %.preheader18.1.2
  store i32 3, ptr %2, align 4
  br label %.preheader18.preheader.3

.preheader18.preheader.3:                         ; preds = %.preheader19.3
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %.preheader18.preheader.3
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.3

.preheader18.1.3:                                 ; preds = %.preheader18.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.4

.preheader19.4:                                   ; preds = %.preheader18.1.3
  store i32 4, ptr %2, align 4
  br i1 false, label %.preheader18.preheader.4, label %207

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %.lcssa96 = phi i32 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  %203 = add nsw i32 %.lcssa96, 32
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %204
  store i32 1, ptr %205, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %197, label %206

206:                                              ; preds = %.preheader18.1.4
  unreachable

207:                                              ; preds = %.preheader19.4
  store i32 1, ptr %1, align 4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %207
  br label %.preheader19.198

.preheader19.198:                                 ; preds = %.preheader19.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader18.preheader.199

.preheader18.preheader.199:                       ; preds = %.preheader19.198
  br label %.preheader18.1100

.preheader18.1100:                                ; preds = %.preheader18.preheader.199
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.1101

.preheader18.1.1101:                              ; preds = %.preheader18.1100
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %.preheader18.1.1101
  store i32 1, ptr %2, align 4
  br label %.preheader18.preheader.1.1

.preheader18.preheader.1.1:                       ; preds = %.preheader19.1.1
  br label %.preheader18.193.1

.preheader18.193.1:                               ; preds = %.preheader18.preheader.1.1
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.1.1

.preheader18.1.1.1:                               ; preds = %.preheader18.193.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.2.1

.preheader19.2.1:                                 ; preds = %.preheader18.1.1.1
  store i32 2, ptr %2, align 4
  br label %.preheader18.preheader.2.1

.preheader18.preheader.2.1:                       ; preds = %.preheader19.2.1
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %.preheader18.preheader.2.1
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.2.1

.preheader18.1.2.1:                               ; preds = %.preheader18.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.3.1

.preheader19.3.1:                                 ; preds = %.preheader18.1.2.1
  store i32 3, ptr %2, align 4
  br label %.preheader18.preheader.3.1

.preheader18.preheader.3.1:                       ; preds = %.preheader19.3.1
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %.preheader18.preheader.3.1
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.3.1

.preheader18.1.3.1:                               ; preds = %.preheader18.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.4.1

.preheader19.4.1:                                 ; preds = %.preheader18.1.3.1
  store i32 4, ptr %2, align 4
  br i1 false, label %.preheader18.preheader.4, label %208

208:                                              ; preds = %.preheader19.4.1
  store i32 2, ptr %1, align 4
  br i1 false, label %.preheader19.preheader.2, label %210

.preheader19.preheader.2:                         ; preds = %208
  br label %.preheader19.2102

.preheader19.2102:                                ; preds = %.preheader19.preheader.2
  store i32 0, ptr %2, align 4
  br label %.preheader18.preheader.2103

.preheader18.preheader.2103:                      ; preds = %.preheader19.2102
  br label %.preheader18.2104

.preheader18.2104:                                ; preds = %.preheader18.preheader.2103
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.2105

.preheader18.1.2105:                              ; preds = %.preheader18.2104
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.2105
  store i32 1, ptr %2, align 4
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.193.2

.preheader18.193.2:                               ; preds = %.preheader18.preheader.1.2
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.193.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  store i32 2, ptr %2, align 4
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  store i32 3, ptr %2, align 4
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  store i32 0, ptr %3, align 4
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit97, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  store i32 4, ptr %2, align 4
  br i1 false, label %.preheader18.preheader.4, label %209

209:                                              ; preds = %.preheader19.4.2
  unreachable

210:                                              ; preds = %208
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %211

211:                                              ; preds = %210
  store i32 0, ptr %1, align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %211
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader16.1

.preheader16.1:                                   ; preds = %.preheader16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader16.2

.preheader16.2:                                   ; preds = %.preheader16.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit114, label %.preheader17.1

.loopexit114:                                     ; preds = %.preheader16.2.4, %.preheader16.2.3, %.preheader16.2.2, %.preheader16.2.1119, %.preheader16.2
  %.lcssa109.ph = phi i32 [ 0, %.preheader16.2 ], [ 1, %.preheader16.2.1119 ], [ 2, %.preheader16.2.2 ], [ 3, %.preheader16.2.3 ], [ 4, %.preheader16.2.4 ]
  %.lcssa107.ph = phi i32 [ 0, %.preheader16.2 ], [ 0, %.preheader16.2.1119 ], [ 0, %.preheader16.2.2 ], [ 0, %.preheader16.2.3 ], [ 0, %.preheader16.2.4 ]
  br label %212

212:                                              ; preds = %.loopexit114, %.preheader16.2.1
  %.lcssa109 = phi i32 [ %.lcssa112, %.preheader16.2.1 ], [ %.lcssa109.ph, %.loopexit114 ]
  %.lcssa107 = phi i32 [ 1, %.preheader16.2.1 ], [ %.lcssa107.ph, %.loopexit114 ]
  %213 = shl i32 %.lcssa107, 3
  %214 = add i32 128, %213
  %215 = add nsw i32 %.lcssa109, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %216
  store i32 1, ptr %217, align 4
  unreachable

.preheader17.1:                                   ; preds = %.preheader16.2
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader16.preheader.1, label %225

.preheader16.preheader.1:                         ; preds = %.preheader17.1.4, %.preheader17.1.3, %.preheader17.1.2, %.preheader17.1.1, %.preheader17.1
  %.lcssa112 = phi i32 [ 0, %.preheader17.1 ], [ 1, %.preheader17.1.1 ], [ 2, %.preheader17.1.2 ], [ 3, %.preheader17.1.3 ], [ 4, %.preheader17.1.4 ]
  br label %.preheader16.1110

.preheader16.1110:                                ; preds = %.preheader16.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.1110
  %218 = add nsw i32 %.lcssa112, 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %219
  store i32 1, ptr %220, align 4
  store i32 1, ptr %3, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %221 = add nsw i32 %.lcssa112, 72
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %222
  store i32 1, ptr %223, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %212, label %224

224:                                              ; preds = %.preheader16.2.1
  unreachable

225:                                              ; preds = %.preheader17.1
  store i32 1, ptr %1, align 4
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %225
  br label %.preheader17.1115

.preheader17.1115:                                ; preds = %.preheader17.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader16.preheader.1116

.preheader16.preheader.1116:                      ; preds = %.preheader17.1115
  br label %.preheader16.1117

.preheader16.1117:                                ; preds = %.preheader16.preheader.1116
  store i32 0, ptr %3, align 4
  br label %.preheader16.1.1118

.preheader16.1.1118:                              ; preds = %.preheader16.1117
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader16.2.1119

.preheader16.2.1119:                              ; preds = %.preheader16.1.1118
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit114, label %.preheader17.1.1

.preheader17.1.1:                                 ; preds = %.preheader16.2.1119
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader16.preheader.1, label %226

226:                                              ; preds = %.preheader17.1.1
  store i32 2, ptr %1, align 4
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %226
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %.preheader17.preheader.2
  store i32 0, ptr %2, align 4
  br label %.preheader16.preheader.2

.preheader16.preheader.2:                         ; preds = %.preheader17.2
  br label %.preheader16.2120

.preheader16.2120:                                ; preds = %.preheader16.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader16.1.2

.preheader16.1.2:                                 ; preds = %.preheader16.2120
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader16.2.2

.preheader16.2.2:                                 ; preds = %.preheader16.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit114, label %.preheader17.1.2

.preheader17.1.2:                                 ; preds = %.preheader16.2.2
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader16.preheader.1, label %227

227:                                              ; preds = %.preheader17.1.2
  store i32 3, ptr %1, align 4
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %227
  br label %.preheader17.3

.preheader17.3:                                   ; preds = %.preheader17.preheader.3
  store i32 0, ptr %2, align 4
  br label %.preheader16.preheader.3

.preheader16.preheader.3:                         ; preds = %.preheader17.3
  br label %.preheader16.3

.preheader16.3:                                   ; preds = %.preheader16.preheader.3
  store i32 0, ptr %3, align 4
  br label %.preheader16.1.3

.preheader16.1.3:                                 ; preds = %.preheader16.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader16.2.3

.preheader16.2.3:                                 ; preds = %.preheader16.1.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit114, label %.preheader17.1.3

.preheader17.1.3:                                 ; preds = %.preheader16.2.3
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader16.preheader.1, label %228

228:                                              ; preds = %.preheader17.1.3
  store i32 4, ptr %1, align 4
  br i1 false, label %.preheader17.preheader.4, label %230

.preheader17.preheader.4:                         ; preds = %228
  br label %.preheader17.4

.preheader17.4:                                   ; preds = %.preheader17.preheader.4
  store i32 0, ptr %2, align 4
  br label %.preheader16.preheader.4

.preheader16.preheader.4:                         ; preds = %.preheader17.4
  br label %.preheader16.4

.preheader16.4:                                   ; preds = %.preheader16.preheader.4
  store i32 0, ptr %3, align 4
  br label %.preheader16.1.4

.preheader16.1.4:                                 ; preds = %.preheader16.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader16.2.4

.preheader16.2.4:                                 ; preds = %.preheader16.1.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit114, label %.preheader17.1.4

.preheader17.1.4:                                 ; preds = %.preheader16.2.4
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader16.preheader.1, label %229

229:                                              ; preds = %.preheader17.1.4
  unreachable

230:                                              ; preds = %228
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %231

231:                                              ; preds = %230
  store i32 0, ptr %1, align 4
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %231
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %.preheader14
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %.preheader14.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 2, ptr %3, align 4
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %.preheader14.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 3, ptr %3, align 4
  br label %.preheader14.4

.preheader14.4:                                   ; preds = %.preheader14.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit130, label %.preheader15.1

.loopexit130:                                     ; preds = %.preheader14.4.1.1, %.preheader14.4.1137, %.preheader14.4, %.preheader14.4.1
  %.lcssa124.ph = phi i32 [ 0, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 1, %.preheader14.4.1137 ], [ 1, %.preheader14.4.1.1 ]
  %.lcssa122.ph = phi i32 [ 1, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 0, %.preheader14.4.1137 ], [ 1, %.preheader14.4.1.1 ]
  br label %232

232:                                              ; preds = %.loopexit130, %.preheader14.4.2
  %.lcssa124 = phi i32 [ %.lcssa129, %.preheader14.4.2 ], [ %.lcssa124.ph, %.loopexit130 ]
  %.lcssa122 = phi i32 [ 2, %.preheader14.4.2 ], [ %.lcssa122.ph, %.loopexit130 ]
  %233 = shl i32 %.lcssa122, 3
  %234 = add i32 256, %233
  %235 = add nsw i32 %.lcssa124, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %236
  store i32 1, ptr %237, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader14.4
  store i32 1, ptr %2, align 4
  br label %.preheader14.preheader.1

.preheader14.preheader.1:                         ; preds = %.preheader15.1
  br label %.preheader14.1125

.preheader14.1125:                                ; preds = %.preheader14.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %.preheader14.1125
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader14.2.1

.preheader14.2.1:                                 ; preds = %.preheader14.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 2, ptr %3, align 4
  br label %.preheader14.3.1

.preheader14.3.1:                                 ; preds = %.preheader14.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 3, ptr %3, align 4
  br label %.preheader14.4.1

.preheader14.4.1:                                 ; preds = %.preheader14.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit130, label %.preheader15.2

.preheader15.2:                                   ; preds = %.preheader14.4.1
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader14.preheader.2, label %251

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  %.lcssa129 = phi i32 [ 0, %.preheader15.2 ], [ 1, %.preheader15.2.1 ]
  br label %.preheader14.2126

.preheader14.2126:                                ; preds = %.preheader14.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.2126
  %238 = add nsw i32 %.lcssa129, 16
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %239
  store i32 1, ptr %240, align 4
  store i32 1, ptr %3, align 4
  br label %.preheader14.2.2

.preheader14.2.2:                                 ; preds = %.preheader14.1.2
  %241 = add nsw i32 %.lcssa129, 80
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %242
  store i32 1, ptr %243, align 4
  store i32 2, ptr %3, align 4
  br label %.preheader14.3.2

.preheader14.3.2:                                 ; preds = %.preheader14.2.2
  %244 = add nsw i32 %.lcssa129, 144
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %245
  store i32 1, ptr %246, align 4
  store i32 3, ptr %3, align 4
  br label %.preheader14.4.2

.preheader14.4.2:                                 ; preds = %.preheader14.3.2
  %247 = add nsw i32 %.lcssa129, 208
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %248
  store i32 1, ptr %249, align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %232, label %250

250:                                              ; preds = %.preheader14.4.2
  unreachable

251:                                              ; preds = %.preheader15.2
  store i32 1, ptr %1, align 4
  br i1 false, label %.preheader15.preheader.1, label %253

.preheader15.preheader.1:                         ; preds = %251
  br label %.preheader15.1131

.preheader15.1131:                                ; preds = %.preheader15.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader14.preheader.1132

.preheader14.preheader.1132:                      ; preds = %.preheader15.1131
  br label %.preheader14.1133

.preheader14.1133:                                ; preds = %.preheader14.preheader.1132
  store i32 0, ptr %3, align 4
  br label %.preheader14.1.1134

.preheader14.1.1134:                              ; preds = %.preheader14.1133
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader14.2.1135

.preheader14.2.1135:                              ; preds = %.preheader14.1.1134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  store i32 2, ptr %3, align 4
  br label %.preheader14.3.1136

.preheader14.3.1136:                              ; preds = %.preheader14.2.1135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  store i32 3, ptr %3, align 4
  br label %.preheader14.4.1137

.preheader14.4.1137:                              ; preds = %.preheader14.3.1136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit130, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.1137
  store i32 1, ptr %2, align 4
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.1125.1

.preheader14.1125.1:                              ; preds = %.preheader14.preheader.1.1
  store i32 0, ptr %3, align 4
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.1125.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10276), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader14.2.1.1

.preheader14.2.1.1:                               ; preds = %.preheader14.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10532), align 4
  store i32 2, ptr %3, align 4
  br label %.preheader14.3.1.1

.preheader14.3.1.1:                               ; preds = %.preheader14.2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10788), align 4
  store i32 3, ptr %3, align 4
  br label %.preheader14.4.1.1

.preheader14.4.1.1:                               ; preds = %.preheader14.3.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11044), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit130, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader14.preheader.2, label %252

252:                                              ; preds = %.preheader15.2.1
  unreachable

253:                                              ; preds = %251
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %254

254:                                              ; preds = %253
  store i32 0, ptr %1, align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %254
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader12.1

.preheader12.1:                                   ; preds = %.preheader12
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit146, label %.preheader13.1

.loopexit146:                                     ; preds = %.preheader12.1.3, %.preheader12.1.2, %.preheader12.1.1150, %.preheader12.1
  %.lcssa141.ph = phi i32 [ 0, %.preheader12.1 ], [ 1, %.preheader12.1.1150 ], [ 2, %.preheader12.1.2 ], [ 3, %.preheader12.1.3 ]
  %.lcssa139.ph = phi i32 [ 0, %.preheader12.1 ], [ 0, %.preheader12.1.1150 ], [ 0, %.preheader12.1.2 ], [ 0, %.preheader12.1.3 ]
  br label %255

255:                                              ; preds = %.loopexit146, %.preheader12.1.1
  %.lcssa141 = phi i32 [ %.lcssa144, %.preheader12.1.1 ], [ %.lcssa141.ph, %.loopexit146 ]
  %.lcssa139 = phi i32 [ 1, %.preheader12.1.1 ], [ %.lcssa139.ph, %.loopexit146 ]
  %256 = shl i32 %.lcssa139, 3
  %257 = add i32 64, %256
  %258 = add nsw i32 %.lcssa141, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %259
  store i32 1, ptr %260, align 4
  unreachable

.preheader13.1:                                   ; preds = %.preheader12.1
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader12.preheader.1, label %265

.preheader12.preheader.1:                         ; preds = %.preheader13.1.3, %.preheader13.1.2, %.preheader13.1.1, %.preheader13.1
  %.lcssa144 = phi i32 [ 0, %.preheader13.1 ], [ 1, %.preheader13.1.1 ], [ 2, %.preheader13.1.2 ], [ 3, %.preheader13.1.3 ]
  br label %.preheader12.1142

.preheader12.1142:                                ; preds = %.preheader12.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.1142
  %261 = add nsw i32 %.lcssa144, 8
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %262
  store i32 1, ptr %263, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %255, label %264

264:                                              ; preds = %.preheader12.1.1
  unreachable

265:                                              ; preds = %.preheader13.1
  store i32 1, ptr %1, align 4
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %265
  br label %.preheader13.1147

.preheader13.1147:                                ; preds = %.preheader13.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader12.preheader.1148

.preheader12.preheader.1148:                      ; preds = %.preheader13.1147
  br label %.preheader12.1149

.preheader12.1149:                                ; preds = %.preheader12.preheader.1148
  store i32 0, ptr %3, align 4
  br label %.preheader12.1.1150

.preheader12.1.1150:                              ; preds = %.preheader12.1149
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit146, label %.preheader13.1.1

.preheader13.1.1:                                 ; preds = %.preheader12.1.1150
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader12.preheader.1, label %266

266:                                              ; preds = %.preheader13.1.1
  store i32 2, ptr %1, align 4
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %266
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %.preheader13.preheader.2
  store i32 0, ptr %2, align 4
  br label %.preheader12.preheader.2

.preheader12.preheader.2:                         ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %.preheader12.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader12.1.2

.preheader12.1.2:                                 ; preds = %.preheader12.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit146, label %.preheader13.1.2

.preheader13.1.2:                                 ; preds = %.preheader12.1.2
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader12.preheader.1, label %267

267:                                              ; preds = %.preheader13.1.2
  store i32 3, ptr %1, align 4
  br i1 false, label %.preheader13.preheader.3, label %269

.preheader13.preheader.3:                         ; preds = %267
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  store i32 0, ptr %2, align 4
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  store i32 0, ptr %3, align 4
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit146, label %.preheader13.1.3

.preheader13.1.3:                                 ; preds = %.preheader12.1.3
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader12.preheader.1, label %268

268:                                              ; preds = %.preheader13.1.3
  unreachable

269:                                              ; preds = %267
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %270

270:                                              ; preds = %269
  store i32 0, ptr %1, align 4
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %270
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %.preheader10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit159, label %.preheader11.1

.loopexit159:                                     ; preds = %.preheader10.1.2.1, %.preheader10.1.1.1, %.preheader10.1.1163, %.preheader10.1, %.preheader10.1.1, %.preheader10.1.2
  %.lcssa154.ph = phi i32 [ 0, %.preheader10.1.2 ], [ 0, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 1, %.preheader10.1.1163 ], [ 1, %.preheader10.1.1.1 ], [ 1, %.preheader10.1.2.1 ]
  %.lcssa152.ph = phi i32 [ 2, %.preheader10.1.2 ], [ 1, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 0, %.preheader10.1.1163 ], [ 1, %.preheader10.1.1.1 ], [ 2, %.preheader10.1.2.1 ]
  br label %271

271:                                              ; preds = %.loopexit159, %.preheader10.1.3
  %.lcssa154 = phi i32 [ %.lcssa158, %.preheader10.1.3 ], [ %.lcssa154.ph, %.loopexit159 ]
  %.lcssa152 = phi i32 [ 3, %.preheader10.1.3 ], [ %.lcssa152.ph, %.loopexit159 ]
  %272 = shl i32 %.lcssa152, 3
  %273 = add i32 64, %272
  %274 = add nsw i32 %.lcssa154, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %275
  store i32 1, ptr %276, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader10.1
  store i32 1, ptr %2, align 4
  br label %.preheader10.preheader.1

.preheader10.preheader.1:                         ; preds = %.preheader11.1
  br label %.preheader10.1155

.preheader10.1155:                                ; preds = %.preheader10.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %.preheader10.1155
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit159, label %.preheader11.2

.preheader11.2:                                   ; preds = %.preheader10.1.1
  store i32 2, ptr %2, align 4
  br label %.preheader10.preheader.2

.preheader10.preheader.2:                         ; preds = %.preheader11.2
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %.preheader10.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader10.1.2

.preheader10.1.2:                                 ; preds = %.preheader10.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit159, label %.preheader11.3

.preheader11.3:                                   ; preds = %.preheader10.1.2
  store i32 3, ptr %2, align 4
  br i1 false, label %.preheader10.preheader.3, label %281

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  %.lcssa158 = phi i32 [ 0, %.preheader11.3 ], [ 1, %.preheader11.3.1 ]
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  store i32 0, ptr %3, align 4
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  %277 = add nsw i32 %.lcssa158, 24
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %278
  store i32 1, ptr %279, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %271, label %280

280:                                              ; preds = %.preheader10.1.3
  unreachable

281:                                              ; preds = %.preheader11.3
  store i32 1, ptr %1, align 4
  br i1 false, label %.preheader11.preheader.1, label %283

.preheader11.preheader.1:                         ; preds = %281
  br label %.preheader11.1160

.preheader11.1160:                                ; preds = %.preheader11.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader10.preheader.1161

.preheader10.preheader.1161:                      ; preds = %.preheader11.1160
  br label %.preheader10.1162

.preheader10.1162:                                ; preds = %.preheader10.preheader.1161
  store i32 0, ptr %3, align 4
  br label %.preheader10.1.1163

.preheader10.1.1163:                              ; preds = %.preheader10.1162
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit159, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.1163
  store i32 1, ptr %2, align 4
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.1155.1

.preheader10.1155.1:                              ; preds = %.preheader10.preheader.1.1
  store i32 0, ptr %3, align 4
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.1155.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit159, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  store i32 2, ptr %2, align 4
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  store i32 0, ptr %3, align 4
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit159, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  store i32 3, ptr %2, align 4
  br i1 false, label %.preheader10.preheader.3, label %282

282:                                              ; preds = %.preheader11.3.1
  unreachable

283:                                              ; preds = %281
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %284

284:                                              ; preds = %283
  store i32 0, ptr %1, align 4
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %284
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader9.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader8.1

.preheader8.1:                                    ; preds = %.preheader8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader8.2

.preheader8.2:                                    ; preds = %.preheader8.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 2, ptr %3, align 4
  br label %.preheader8.3

.preheader8.3:                                    ; preds = %.preheader8.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  store i32 3, ptr %3, align 4
  br i1 false, label %.loopexit172, label %.preheader9.1

.loopexit172:                                     ; preds = %.preheader8.3.1178, %.preheader8.3
  %.lcssa167.ph = phi i32 [ 0, %.preheader8.3 ], [ 1, %.preheader8.3.1178 ]
  %.lcssa165.ph = phi i32 [ 0, %.preheader8.3 ], [ 0, %.preheader8.3.1178 ]
  br label %285

285:                                              ; preds = %.loopexit172, %.preheader8.3.1
  %.lcssa167 = phi i32 [ %.lcssa170, %.preheader8.3.1 ], [ %.lcssa167.ph, %.loopexit172 ]
  %.lcssa165 = phi i32 [ 1, %.preheader8.3.1 ], [ %.lcssa165.ph, %.loopexit172 ]
  %286 = shl i32 %.lcssa165, 3
  %287 = add i32 192, %286
  %288 = add nsw i32 %.lcssa167, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %289
  store i32 1, ptr %290, align 4
  unreachable

.preheader9.1:                                    ; preds = %.preheader8.3
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader8.preheader.1, label %301

.preheader8.preheader.1:                          ; preds = %.preheader9.1.1, %.preheader9.1
  %.lcssa170 = phi i32 [ 0, %.preheader9.1 ], [ 1, %.preheader9.1.1 ]
  br label %.preheader8.1168

.preheader8.1168:                                 ; preds = %.preheader8.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1168
  %291 = add nsw i32 %.lcssa170, 8
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %292
  store i32 1, ptr %293, align 4
  store i32 1, ptr %3, align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  %294 = add nsw i32 %.lcssa170, 72
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %295
  store i32 1, ptr %296, align 4
  store i32 2, ptr %3, align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  %297 = add nsw i32 %.lcssa170, 136
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %298
  store i32 1, ptr %299, align 4
  store i32 3, ptr %3, align 4
  br i1 false, label %285, label %300

300:                                              ; preds = %.preheader8.3.1
  unreachable

301:                                              ; preds = %.preheader9.1
  store i32 1, ptr %1, align 4
  br i1 false, label %.preheader9.preheader.1, label %303

.preheader9.preheader.1:                          ; preds = %301
  br label %.preheader9.1173

.preheader9.1173:                                 ; preds = %.preheader9.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader8.preheader.1174

.preheader8.preheader.1174:                       ; preds = %.preheader9.1173
  br label %.preheader8.1175

.preheader8.1175:                                 ; preds = %.preheader8.preheader.1174
  store i32 0, ptr %3, align 4
  br label %.preheader8.1.1176

.preheader8.1.1176:                               ; preds = %.preheader8.1175
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader8.2.1177

.preheader8.2.1177:                               ; preds = %.preheader8.1.1176
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  store i32 2, ptr %3, align 4
  br label %.preheader8.3.1178

.preheader8.3.1178:                               ; preds = %.preheader8.2.1177
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  store i32 3, ptr %3, align 4
  br i1 false, label %.loopexit172, label %.preheader9.1.1

.preheader9.1.1:                                  ; preds = %.preheader8.3.1178
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader8.preheader.1, label %302

302:                                              ; preds = %.preheader9.1.1
  unreachable

303:                                              ; preds = %301
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %304

304:                                              ; preds = %303
  store i32 0, ptr %1, align 4
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %304
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit187, label %.preheader7.1

.loopexit187:                                     ; preds = %.preheader6.1.1.2, %.preheader6.1.2195, %.preheader6.1.1.1, %.preheader6.1.1191, %.preheader6.1, %.preheader6.1.1
  %.lcssa182.ph = phi i32 [ 0, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 1, %.preheader6.1.1191 ], [ 1, %.preheader6.1.1.1 ], [ 2, %.preheader6.1.2195 ], [ 2, %.preheader6.1.1.2 ]
  %.lcssa180.ph = phi i32 [ 1, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 0, %.preheader6.1.1191 ], [ 1, %.preheader6.1.1.1 ], [ 0, %.preheader6.1.2195 ], [ 1, %.preheader6.1.1.2 ]
  br label %305

305:                                              ; preds = %.loopexit187, %.preheader6.1.2
  %.lcssa182 = phi i32 [ %.lcssa186, %.preheader6.1.2 ], [ %.lcssa182.ph, %.loopexit187 ]
  %.lcssa180 = phi i32 [ 2, %.preheader6.1.2 ], [ %.lcssa180.ph, %.loopexit187 ]
  %306 = shl i32 %.lcssa180, 3
  %307 = add i32 64, %306
  %308 = add nsw i32 %.lcssa182, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %309
  store i32 1, ptr %310, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader6.1
  store i32 1, ptr %2, align 4
  br label %.preheader6.preheader.1

.preheader6.preheader.1:                          ; preds = %.preheader7.1
  br label %.preheader6.1183

.preheader6.1183:                                 ; preds = %.preheader6.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %.preheader6.1183
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit187, label %.preheader7.2

.preheader7.2:                                    ; preds = %.preheader6.1.1
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader6.preheader.2, label %315

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %.lcssa186 = phi i32 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  %311 = add nsw i32 %.lcssa186, 16
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %312
  store i32 1, ptr %313, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %305, label %314

314:                                              ; preds = %.preheader6.1.2
  unreachable

315:                                              ; preds = %.preheader7.2
  store i32 1, ptr %1, align 4
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %315
  br label %.preheader7.1188

.preheader7.1188:                                 ; preds = %.preheader7.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader6.preheader.1189

.preheader6.preheader.1189:                       ; preds = %.preheader7.1188
  br label %.preheader6.1190

.preheader6.1190:                                 ; preds = %.preheader6.preheader.1189
  store i32 0, ptr %3, align 4
  br label %.preheader6.1.1191

.preheader6.1.1191:                               ; preds = %.preheader6.1190
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit187, label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %.preheader6.1.1191
  store i32 1, ptr %2, align 4
  br label %.preheader6.preheader.1.1

.preheader6.preheader.1.1:                        ; preds = %.preheader7.1.1
  br label %.preheader6.1183.1

.preheader6.1183.1:                               ; preds = %.preheader6.preheader.1.1
  store i32 0, ptr %3, align 4
  br label %.preheader6.1.1.1

.preheader6.1.1.1:                                ; preds = %.preheader6.1183.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit187, label %.preheader7.2.1

.preheader7.2.1:                                  ; preds = %.preheader6.1.1.1
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader6.preheader.2, label %316

316:                                              ; preds = %.preheader7.2.1
  store i32 2, ptr %1, align 4
  br i1 false, label %.preheader7.preheader.2, label %318

.preheader7.preheader.2:                          ; preds = %316
  br label %.preheader7.2192

.preheader7.2192:                                 ; preds = %.preheader7.preheader.2
  store i32 0, ptr %2, align 4
  br label %.preheader6.preheader.2193

.preheader6.preheader.2193:                       ; preds = %.preheader7.2192
  br label %.preheader6.2194

.preheader6.2194:                                 ; preds = %.preheader6.preheader.2193
  store i32 0, ptr %3, align 4
  br label %.preheader6.1.2195

.preheader6.1.2195:                               ; preds = %.preheader6.2194
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit187, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2195
  store i32 1, ptr %2, align 4
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1183.2

.preheader6.1183.2:                               ; preds = %.preheader6.preheader.1.2
  store i32 0, ptr %3, align 4
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1183.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit187, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader6.preheader.2, label %317

317:                                              ; preds = %.preheader7.2.2
  unreachable

318:                                              ; preds = %316
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %319

319:                                              ; preds = %318
  store i32 0, ptr %1, align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %319
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader4.1

.preheader4.1:                                    ; preds = %.preheader4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader4.2

.preheader4.2:                                    ; preds = %.preheader4.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit204, label %.preheader5.1

.loopexit204:                                     ; preds = %.preheader4.2.2, %.preheader4.2.1209, %.preheader4.2
  %.lcssa199.ph = phi i32 [ 0, %.preheader4.2 ], [ 1, %.preheader4.2.1209 ], [ 2, %.preheader4.2.2 ]
  %.lcssa197.ph = phi i32 [ 0, %.preheader4.2 ], [ 0, %.preheader4.2.1209 ], [ 0, %.preheader4.2.2 ]
  br label %320

320:                                              ; preds = %.loopexit204, %.preheader4.2.1
  %.lcssa199 = phi i32 [ %.lcssa202, %.preheader4.2.1 ], [ %.lcssa199.ph, %.loopexit204 ]
  %.lcssa197 = phi i32 [ 1, %.preheader4.2.1 ], [ %.lcssa197.ph, %.loopexit204 ]
  %321 = shl i32 %.lcssa197, 3
  %322 = add i32 128, %321
  %323 = add nsw i32 %.lcssa199, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %324
  store i32 1, ptr %325, align 4
  unreachable

.preheader5.1:                                    ; preds = %.preheader4.2
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader4.preheader.1, label %333

.preheader4.preheader.1:                          ; preds = %.preheader5.1.2, %.preheader5.1.1, %.preheader5.1
  %.lcssa202 = phi i32 [ 0, %.preheader5.1 ], [ 1, %.preheader5.1.1 ], [ 2, %.preheader5.1.2 ]
  br label %.preheader4.1200

.preheader4.1200:                                 ; preds = %.preheader4.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1200
  %326 = add nsw i32 %.lcssa202, 8
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %327
  store i32 1, ptr %328, align 4
  store i32 1, ptr %3, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %329 = add nsw i32 %.lcssa202, 72
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %330
  store i32 1, ptr %331, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %320, label %332

332:                                              ; preds = %.preheader4.2.1
  unreachable

333:                                              ; preds = %.preheader5.1
  store i32 1, ptr %1, align 4
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %333
  br label %.preheader5.1205

.preheader5.1205:                                 ; preds = %.preheader5.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader4.preheader.1206

.preheader4.preheader.1206:                       ; preds = %.preheader5.1205
  br label %.preheader4.1207

.preheader4.1207:                                 ; preds = %.preheader4.preheader.1206
  store i32 0, ptr %3, align 4
  br label %.preheader4.1.1208

.preheader4.1.1208:                               ; preds = %.preheader4.1207
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader4.2.1209

.preheader4.2.1209:                               ; preds = %.preheader4.1.1208
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit204, label %.preheader5.1.1

.preheader5.1.1:                                  ; preds = %.preheader4.2.1209
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader4.preheader.1, label %334

334:                                              ; preds = %.preheader5.1.1
  store i32 2, ptr %1, align 4
  br i1 false, label %.preheader5.preheader.2, label %336

.preheader5.preheader.2:                          ; preds = %334
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  store i32 0, ptr %2, align 4
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2210

.preheader4.2210:                                 ; preds = %.preheader4.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2210
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit204, label %.preheader5.1.2

.preheader5.1.2:                                  ; preds = %.preheader4.2.2
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader4.preheader.1, label %335

335:                                              ; preds = %.preheader5.1.2
  unreachable

336:                                              ; preds = %334
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %337

337:                                              ; preds = %336
  store i32 0, ptr %1, align 4
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %337
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader2.1

.preheader2.1:                                    ; preds = %.preheader2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader2.2

.preheader2.2:                                    ; preds = %.preheader2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit220, label %.preheader3.1

.loopexit220:                                     ; preds = %.preheader2.2.1.1, %.preheader2.2.1225, %.preheader2.2, %.preheader2.2.1
  %.lcssa214.ph = phi i32 [ 0, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 1, %.preheader2.2.1225 ], [ 1, %.preheader2.2.1.1 ]
  %.lcssa212.ph = phi i32 [ 1, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 0, %.preheader2.2.1225 ], [ 1, %.preheader2.2.1.1 ]
  br label %338

338:                                              ; preds = %.loopexit220, %.preheader2.2.2
  %.lcssa214 = phi i32 [ %.lcssa219, %.preheader2.2.2 ], [ %.lcssa214.ph, %.loopexit220 ]
  %.lcssa212 = phi i32 [ 2, %.preheader2.2.2 ], [ %.lcssa212.ph, %.loopexit220 ]
  %339 = shl i32 %.lcssa212, 3
  %340 = add i32 128, %339
  %341 = add nsw i32 %.lcssa214, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %342
  store i32 1, ptr %343, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader2.2
  store i32 1, ptr %2, align 4
  br label %.preheader2.preheader.1

.preheader2.preheader.1:                          ; preds = %.preheader3.1
  br label %.preheader2.1215

.preheader2.1215:                                 ; preds = %.preheader2.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %.preheader2.1215
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader2.2.1

.preheader2.2.1:                                  ; preds = %.preheader2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit220, label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader2.2.1
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader2.preheader.2, label %351

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  %.lcssa219 = phi i32 [ 0, %.preheader3.2 ], [ 1, %.preheader3.2.1 ]
  br label %.preheader2.2216

.preheader2.2216:                                 ; preds = %.preheader2.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2216
  %344 = add nsw i32 %.lcssa219, 16
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %345
  store i32 1, ptr %346, align 4
  store i32 1, ptr %3, align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  %347 = add nsw i32 %.lcssa219, 80
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %348
  store i32 1, ptr %349, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %338, label %350

350:                                              ; preds = %.preheader2.2.2
  unreachable

351:                                              ; preds = %.preheader3.2
  store i32 1, ptr %1, align 4
  br i1 false, label %.preheader3.preheader.1, label %353

.preheader3.preheader.1:                          ; preds = %351
  br label %.preheader3.1221

.preheader3.1221:                                 ; preds = %.preheader3.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader2.preheader.1222

.preheader2.preheader.1222:                       ; preds = %.preheader3.1221
  br label %.preheader2.1223

.preheader2.1223:                                 ; preds = %.preheader2.preheader.1222
  store i32 0, ptr %3, align 4
  br label %.preheader2.1.1224

.preheader2.1.1224:                               ; preds = %.preheader2.1223
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader2.2.1225

.preheader2.2.1225:                               ; preds = %.preheader2.1.1224
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit220, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1225
  store i32 1, ptr %2, align 4
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1215.1

.preheader2.1215.1:                               ; preds = %.preheader2.preheader.1.1
  store i32 0, ptr %3, align 4
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1215.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit220, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader2.preheader.2, label %352

352:                                              ; preds = %.preheader3.2.1
  unreachable

353:                                              ; preds = %351
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %354

354:                                              ; preds = %353
  store i32 0, ptr %1, align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %354
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader
  store i32 0, ptr %2, align 4
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  store i32 0, ptr %3, align 4
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit234, label %.preheader1.1

.loopexit234:                                     ; preds = %.preheader.2.1.2, %.preheader.2.2244, %.preheader.2.1.1, %.preheader.2.1239, %.preheader.2, %.preheader.2.1
  %.lcssa229.ph = phi i32 [ 0, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 1, %.preheader.2.1239 ], [ 1, %.preheader.2.1.1 ], [ 2, %.preheader.2.2244 ], [ 2, %.preheader.2.1.2 ]
  %.lcssa227.ph = phi i32 [ 1, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 0, %.preheader.2.1239 ], [ 1, %.preheader.2.1.1 ], [ 0, %.preheader.2.2244 ], [ 1, %.preheader.2.1.2 ]
  br label %355

355:                                              ; preds = %.loopexit234, %.preheader.2.2
  %.lcssa229 = phi i32 [ %.lcssa233, %.preheader.2.2 ], [ %.lcssa229.ph, %.loopexit234 ]
  %.lcssa227 = phi i32 [ 2, %.preheader.2.2 ], [ %.lcssa227.ph, %.loopexit234 ]
  %356 = shl i32 %.lcssa227, 3
  %357 = add i32 128, %356
  %358 = add nsw i32 %.lcssa229, %357
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %359
  store i32 1, ptr %360, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader.2
  store i32 1, ptr %2, align 4
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader1.1
  br label %.preheader.1230

.preheader.1230:                                  ; preds = %.preheader.preheader.1
  store i32 0, ptr %3, align 4
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1230
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %.preheader.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit234, label %.preheader1.2

.preheader1.2:                                    ; preds = %.preheader.2.1
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader.preheader.2, label %368

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %.lcssa233 = phi i32 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  br label %.preheader.2231

.preheader.2231:                                  ; preds = %.preheader.preheader.2
  store i32 0, ptr %3, align 4
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2231
  %361 = add nsw i32 %.lcssa233, 16
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %362
  store i32 1, ptr %363, align 4
  store i32 1, ptr %3, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %364 = add nsw i32 %.lcssa233, 80
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %365
  store i32 1, ptr %366, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %355, label %367

367:                                              ; preds = %.preheader.2.2
  unreachable

368:                                              ; preds = %.preheader1.2
  store i32 1, ptr %1, align 4
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %368
  br label %.preheader1.1235

.preheader1.1235:                                 ; preds = %.preheader1.preheader.1
  store i32 0, ptr %2, align 4
  br label %.preheader.preheader.1236

.preheader.preheader.1236:                        ; preds = %.preheader1.1235
  br label %.preheader.1237

.preheader.1237:                                  ; preds = %.preheader.preheader.1236
  store i32 0, ptr %3, align 4
  br label %.preheader.1.1238

.preheader.1.1238:                                ; preds = %.preheader.1237
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader.2.1239

.preheader.2.1239:                                ; preds = %.preheader.1.1238
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit234, label %.preheader1.1.1

.preheader1.1.1:                                  ; preds = %.preheader.2.1239
  store i32 1, ptr %2, align 4
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.preheader1.1.1
  br label %.preheader.1230.1

.preheader.1230.1:                                ; preds = %.preheader.preheader.1.1
  store i32 0, ptr %3, align 4
  br label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %.preheader.1230.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader.2.1.1

.preheader.2.1.1:                                 ; preds = %.preheader.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit234, label %.preheader1.2.1

.preheader1.2.1:                                  ; preds = %.preheader.2.1.1
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader.preheader.2, label %369

369:                                              ; preds = %.preheader1.2.1
  store i32 2, ptr %1, align 4
  br i1 false, label %.preheader1.preheader.2, label %371

.preheader1.preheader.2:                          ; preds = %369
  br label %.preheader1.2240

.preheader1.2240:                                 ; preds = %.preheader1.preheader.2
  store i32 0, ptr %2, align 4
  br label %.preheader.preheader.2241

.preheader.preheader.2241:                        ; preds = %.preheader1.2240
  br label %.preheader.2242

.preheader.2242:                                  ; preds = %.preheader.preheader.2241
  store i32 0, ptr %3, align 4
  br label %.preheader.1.2243

.preheader.1.2243:                                ; preds = %.preheader.2242
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader.2.2244

.preheader.2.2244:                                ; preds = %.preheader.1.2243
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit234, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2244
  store i32 1, ptr %2, align 4
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1230.2

.preheader.1230.2:                                ; preds = %.preheader.preheader.1.2
  store i32 0, ptr %3, align 4
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1230.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  store i32 1, ptr %3, align 4
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit234, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader.preheader.2, label %370

370:                                              ; preds = %.preheader1.2.2
  unreachable

371:                                              ; preds = %369
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %372 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %372, 0
  br i1 %.not, label %375, label %373

373:                                              ; preds = %371
  %374 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %374, ptr @n, align 4
  br label %376

375:                                              ; preds = %371
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %376

376:                                              ; preds = %375, %373
  %377 = phi i32 [ %.pre, %375 ], [ %374, %373 ]
  %378 = call i32 @Trial(i32 noundef %377)
  %.not16 = icmp eq i32 %378, 0
  br i1 %.not16, label %379, label %380

379:                                              ; preds = %376
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %383

380:                                              ; preds = %376
  %381 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %381, 2005
  br i1 %.not18, label %383, label %382

382:                                              ; preds = %380
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %383

383:                                              ; preds = %382, %380, %379
  %384 = load i32, ptr @n, align 4
  %385 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %384) #4
  %386 = load i32, ptr @kount, align 4
  %387 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %386) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %6, %5 ]
  store i32 %3, ptr %1, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Puzzle()
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !17

7:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
