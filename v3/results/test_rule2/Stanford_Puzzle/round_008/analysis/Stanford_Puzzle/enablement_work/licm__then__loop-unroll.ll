; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_007\output.ll'
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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %19, label %8

8:                                                ; preds = %7
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %17, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %19

17:                                               ; preds = %12, %8
  %18 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !7

19:                                               ; preds = %12, %7
  %storemerge1 = phi i32 [ 0, %12 ], [ 1, %7 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %18, label %8

8:                                                ; preds = %7
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !9

18:                                               ; preds = %7
  %.lcssa = phi i64 [ %3, %7 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %26

26:                                               ; preds = %32, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ %25, %18 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %29 = load i32, ptr %28, align 4
  %.not3 = icmp eq i32 %29, 0
  br i1 %.not3, label %30, label %32

30:                                               ; preds = %27
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv, %27 ]
  %31 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

32:                                               ; preds = %27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %18, label %8

8:                                                ; preds = %7
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !11

18:                                               ; preds = %7
  %.lcssa = phi i64 [ %3, %7 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %20, %1
  %storemerge = phi i32 [ 0, %1 ], [ %21, %20 ]
  %5 = icmp slt i32 %storemerge, 13
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr @class, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %20, label %13

13:                                               ; preds = %6
  %14 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %20, label %15

15:                                               ; preds = %13
  %16 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp ne i32 %17, 0
  %18 = icmp eq i32 %16, 0
  %or.cond = or i1 %.not3, %18
  br i1 %or.cond, label %22, label %19

19:                                               ; preds = %15
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %20

20:                                               ; preds = %19, %13, %6
  %21 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %15, %4
  %storemerge1 = phi i32 [ 1, %15 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %11, %0
  %storemerge = phi i32 [ 0, %0 ], [ %14, %11 ]
  br label %2

.preheader31.preheader:                           ; preds = %6
  br label %.preheader31

2:                                                ; preds = %1
  %3 = sext i32 %storemerge to i64
  %4 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  %5 = add nuw nsw i32 %storemerge, 1
  br label %6

6:                                                ; preds = %2
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nuw nsw i32 %storemerge, 2
  %10 = icmp samesign ult i32 %9, 512
  br i1 %10, label %11, label %.preheader31.preheader

11:                                               ; preds = %6
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  %14 = add nuw nsw i32 %storemerge, 3
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %80, %.preheader31.preheader
  %storemerge1 = phi i32 [ %81, %80 ], [ 1, %.preheader31.preheader ]
  %15 = icmp slt i32 %storemerge1, 6
  br i1 %15, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %.preheader30.preheader
  br label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %.preheader30
  %invariant.op = add i32 8, %storemerge1
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader
  br label %.preheader29.1

.preheader29.1:                                   ; preds = %.preheader29
  %.reass = add i32 64, %invariant.op
  %16 = sext i32 %.reass to i64
  %17 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %16
  store i32 0, ptr %17, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %.reass.1 = add i32 128, %invariant.op
  %18 = sext i32 %.reass.1 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %.reass.2 = add i32 192, %invariant.op
  %20 = sext i32 %.reass.2 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %.reass.3 = add i32 256, %invariant.op
  %22 = sext i32 %.reass.3 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %.reass.4 = add i32 320, %invariant.op
  %24 = sext i32 %.reass.4 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  br i1 false, label %.loopexit, label %.preheader30.1

.loopexit:                                        ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  %invariant.op.lcssa.ph = phi i32 [ %invariant.op.4, %.preheader29.5.4 ], [ %invariant.op.3, %.preheader29.5.3 ], [ %invariant.op.2, %.preheader29.5.2 ], [ %invariant.op.1, %.preheader29.5.1 ], [ %invariant.op, %.preheader29.5 ]
  br label %26

26:                                               ; preds = %.loopexit, %.preheader29.5.5
  %invariant.op.lcssa = phi i32 [ %invariant.op.5, %.preheader29.5.5 ], [ %invariant.op.lcssa.ph, %.loopexit ]
  %.reass.5 = add i32 384, %invariant.op.lcssa
  %27 = sext i32 %.reass.5 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  %invariant.op.1 = add i32 16, %storemerge1
  br label %.preheader29.127

.preheader29.127:                                 ; preds = %.preheader29.preheader.1
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.127
  %.reass.128 = add i32 64, %invariant.op.1
  %29 = sext i32 %.reass.128 to i64
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %.reass.1.1 = add i32 128, %invariant.op.1
  %31 = sext i32 %.reass.1.1 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %.reass.2.1 = add i32 192, %invariant.op.1
  %33 = sext i32 %.reass.2.1 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %.reass.3.1 = add i32 256, %invariant.op.1
  %35 = sext i32 %.reass.3.1 to i64
  %36 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %.reass.4.1 = add i32 320, %invariant.op.1
  %37 = sext i32 %.reass.4.1 to i64
  %38 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %37
  store i32 0, ptr %38, align 4
  br i1 false, label %.loopexit, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  %invariant.op.2 = add i32 24, %storemerge1
  br label %.preheader29.229

.preheader29.229:                                 ; preds = %.preheader29.preheader.2
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.229
  %.reass.230 = add i32 64, %invariant.op.2
  %39 = sext i32 %.reass.230 to i64
  %40 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %39
  store i32 0, ptr %40, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %.reass.1.2 = add i32 128, %invariant.op.2
  %41 = sext i32 %.reass.1.2 to i64
  %42 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %.reass.2.2 = add i32 192, %invariant.op.2
  %43 = sext i32 %.reass.2.2 to i64
  %44 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %.reass.3.2 = add i32 256, %invariant.op.2
  %45 = sext i32 %.reass.3.2 to i64
  %46 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %.reass.4.2 = add i32 320, %invariant.op.2
  %47 = sext i32 %.reass.4.2 to i64
  %48 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  br i1 false, label %.loopexit, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  %invariant.op.3 = add i32 32, %storemerge1
  br label %.preheader29.331

.preheader29.331:                                 ; preds = %.preheader29.preheader.3
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.331
  %.reass.332 = add i32 64, %invariant.op.3
  %49 = sext i32 %.reass.332 to i64
  %50 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %.reass.1.3 = add i32 128, %invariant.op.3
  %51 = sext i32 %.reass.1.3 to i64
  %52 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %.reass.2.3 = add i32 192, %invariant.op.3
  %53 = sext i32 %.reass.2.3 to i64
  %54 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %.reass.3.3 = add i32 256, %invariant.op.3
  %55 = sext i32 %.reass.3.3 to i64
  %56 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %.reass.4.3 = add i32 320, %invariant.op.3
  %57 = sext i32 %.reass.4.3 to i64
  %58 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %57
  store i32 0, ptr %58, align 4
  br i1 false, label %.loopexit, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  %invariant.op.4 = add i32 40, %storemerge1
  br label %.preheader29.433

.preheader29.433:                                 ; preds = %.preheader29.preheader.4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.433
  %.reass.434 = add i32 64, %invariant.op.4
  %59 = sext i32 %.reass.434 to i64
  %60 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %.reass.1.4 = add i32 128, %invariant.op.4
  %61 = sext i32 %.reass.1.4 to i64
  %62 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %.reass.2.4 = add i32 192, %invariant.op.4
  %63 = sext i32 %.reass.2.4 to i64
  %64 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %.reass.3.4 = add i32 256, %invariant.op.4
  %65 = sext i32 %.reass.3.4 to i64
  %66 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %.reass.4.4 = add i32 320, %invariant.op.4
  %67 = sext i32 %.reass.4.4 to i64
  %68 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  br i1 false, label %.loopexit, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  br i1 false, label %.preheader29.preheader.5, label %80

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %storemerge1.lcssa38 = phi i32 [ %storemerge1, %.preheader30.5 ]
  %invariant.op.5 = add i32 48, %storemerge1.lcssa38
  br label %.preheader29.535

.preheader29.535:                                 ; preds = %.preheader29.preheader.5
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.535
  %.reass.536 = add i32 64, %invariant.op.5
  %69 = sext i32 %.reass.536 to i64
  %70 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  %.reass.1.5 = add i32 128, %invariant.op.5
  %71 = sext i32 %.reass.1.5 to i64
  %72 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  %.reass.2.5 = add i32 192, %invariant.op.5
  %73 = sext i32 %.reass.2.5 to i64
  %74 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %73
  store i32 0, ptr %74, align 4
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  %.reass.3.5 = add i32 256, %invariant.op.5
  %75 = sext i32 %.reass.3.5 to i64
  %76 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %75
  store i32 0, ptr %76, align 4
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  %.reass.4.5 = add i32 320, %invariant.op.5
  %77 = sext i32 %.reass.4.5 to i64
  %78 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %77
  store i32 0, ptr %78, align 4
  br i1 false, label %26, label %79

79:                                               ; preds = %.preheader29.5.5
  unreachable

80:                                               ; preds = %.preheader30.5
  %81 = add nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %96, %.preheader28.preheader
  %storemerge2 = phi i32 [ %97, %96 ], [ 0, %.preheader28.preheader ]
  %82 = icmp slt i32 %storemerge2, 13
  br i1 %82, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %83 = sext i32 %storemerge2 to i64
  %84 = getelementptr inbounds [2048 x i8], ptr @p, i64 %83
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %92, %.preheader27.preheader
  %storemerge46 = phi i32 [ 0, %.preheader27.preheader ], [ %95, %92 ]
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %85 = sext i32 %storemerge46 to i64
  %86 = getelementptr inbounds [4 x i8], ptr %84, i64 %85
  store i32 0, ptr %86, align 4
  %87 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x i8], ptr %84, i64 %88
  store i32 0, ptr %89, align 4
  %90 = add nuw nsw i32 %storemerge46, 2
  %91 = icmp samesign ult i32 %90, 512
  br i1 %91, label %92, label %96

92:                                               ; preds = %.preheader27.2
  %93 = sext i32 %90 to i64
  %94 = getelementptr inbounds [4 x i8], ptr %84, i64 %93
  store i32 0, ptr %94, align 4
  %95 = add nuw nsw i32 %storemerge46, 3
  br label %.preheader27, !llvm.loop !15

96:                                               ; preds = %.preheader27.2
  %97 = add nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !16

.preheader26:                                     ; preds = %.preheader26.preheader
  br label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.preheader
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader
  br label %.preheader24.1

.preheader24.1:                                   ; preds = %.preheader24
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit42, label %.preheader25.1

.loopexit42:                                      ; preds = %.preheader24.1.1.4, %.preheader24.1.4, %.preheader24.1.1.3, %.preheader24.1.3, %.preheader24.1.1.2, %.preheader24.1.250, %.preheader24.1.1.1, %.preheader24.1.146, %.preheader24.1, %.preheader24.1.1
  %invariant.op1.lcssa.ph = phi i32 [ 8, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 1, %.preheader24.1.146 ], [ 9, %.preheader24.1.1.1 ], [ 2, %.preheader24.1.250 ], [ 10, %.preheader24.1.1.2 ], [ 3, %.preheader24.1.3 ], [ 11, %.preheader24.1.1.3 ], [ 4, %.preheader24.1.4 ], [ 12, %.preheader24.1.1.4 ]
  br label %98

98:                                               ; preds = %.loopexit42, %.preheader24.1.2
  %invariant.op1.lcssa = phi i32 [ %invariant.op1.2, %.preheader24.1.2 ], [ %invariant.op1.lcssa.ph, %.loopexit42 ]
  %.reass2.1 = add i32 64, %invariant.op1.lcssa
  %99 = sext i32 %.reass2.1 to i64
  %100 = getelementptr inbounds [4 x i8], ptr @p, i64 %99
  store i32 1, ptr %100, align 4
  unreachable

.preheader25.1:                                   ; preds = %.preheader24.1
  br label %.preheader24.preheader.1

.preheader24.preheader.1:                         ; preds = %.preheader25.1
  br label %.preheader24.139

.preheader24.139:                                 ; preds = %.preheader24.preheader.1
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %.preheader24.139
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit42, label %.preheader25.2

.preheader25.2:                                   ; preds = %.preheader24.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.1

.preheader24.preheader.2:                         ; preds = %.preheader25.2.4, %.preheader25.2.3, %.preheader25.2.2, %.preheader25.2.1, %.preheader25.2
  %storemerge3.lcssa41 = phi i32 [ 0, %.preheader25.2 ], [ 1, %.preheader25.2.1 ], [ 2, %.preheader25.2.2 ], [ 3, %.preheader25.2.3 ], [ 4, %.preheader25.2.4 ]
  %invariant.op1.2 = add i32 16, %storemerge3.lcssa41
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %.preheader24.preheader.2
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %.preheader24.2
  %101 = sext i32 %invariant.op1.2 to i64
  %102 = getelementptr inbounds [4 x i8], ptr @p, i64 %101
  store i32 1, ptr %102, align 4
  br i1 false, label %98, label %103

103:                                              ; preds = %.preheader24.1.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  br label %.preheader25.preheader.1

.preheader25.preheader.1:                         ; preds = %.preheader26.1
  br label %.preheader25.143

.preheader25.143:                                 ; preds = %.preheader25.preheader.1
  br label %.preheader24.preheader.144

.preheader24.preheader.144:                       ; preds = %.preheader25.143
  br label %.preheader24.145

.preheader24.145:                                 ; preds = %.preheader24.preheader.144
  br label %.preheader24.1.146

.preheader24.1.146:                               ; preds = %.preheader24.145
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit42, label %.preheader25.1.1

.preheader25.1.1:                                 ; preds = %.preheader24.1.146
  br label %.preheader24.preheader.1.1

.preheader24.preheader.1.1:                       ; preds = %.preheader25.1.1
  br label %.preheader24.139.1

.preheader24.139.1:                               ; preds = %.preheader24.preheader.1.1
  br label %.preheader24.1.1.1

.preheader24.1.1.1:                               ; preds = %.preheader24.139.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit42, label %.preheader25.2.1

.preheader25.2.1:                                 ; preds = %.preheader24.1.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  br label %.preheader25.preheader.2

.preheader25.preheader.2:                         ; preds = %.preheader26.2
  br label %.preheader25.247

.preheader25.247:                                 ; preds = %.preheader25.preheader.2
  br label %.preheader24.preheader.248

.preheader24.preheader.248:                       ; preds = %.preheader25.247
  br label %.preheader24.249

.preheader24.249:                                 ; preds = %.preheader24.preheader.248
  br label %.preheader24.1.250

.preheader24.1.250:                               ; preds = %.preheader24.249
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit42, label %.preheader25.1.2

.preheader25.1.2:                                 ; preds = %.preheader24.1.250
  br label %.preheader24.preheader.1.2

.preheader24.preheader.1.2:                       ; preds = %.preheader25.1.2
  br label %.preheader24.139.2

.preheader24.139.2:                               ; preds = %.preheader24.preheader.1.2
  br label %.preheader24.1.1.2

.preheader24.1.1.2:                               ; preds = %.preheader24.139.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit42, label %.preheader25.2.2

.preheader25.2.2:                                 ; preds = %.preheader24.1.1.2
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.3

.preheader26.3:                                   ; preds = %.preheader25.2.2
  br label %.preheader25.preheader.3

.preheader25.preheader.3:                         ; preds = %.preheader26.3
  br label %.preheader25.3

.preheader25.3:                                   ; preds = %.preheader25.preheader.3
  br label %.preheader24.preheader.3

.preheader24.preheader.3:                         ; preds = %.preheader25.3
  br label %.preheader24.3

.preheader24.3:                                   ; preds = %.preheader24.preheader.3
  br label %.preheader24.1.3

.preheader24.1.3:                                 ; preds = %.preheader24.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit42, label %.preheader25.1.3

.preheader25.1.3:                                 ; preds = %.preheader24.1.3
  br label %.preheader24.preheader.1.3

.preheader24.preheader.1.3:                       ; preds = %.preheader25.1.3
  br label %.preheader24.139.3

.preheader24.139.3:                               ; preds = %.preheader24.preheader.1.3
  br label %.preheader24.1.1.3

.preheader24.1.1.3:                               ; preds = %.preheader24.139.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit42, label %.preheader25.2.3

.preheader25.2.3:                                 ; preds = %.preheader24.1.1.3
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.4

.preheader26.4:                                   ; preds = %.preheader25.2.3
  br i1 false, label %.preheader25.preheader.4, label %105

.preheader25.preheader.4:                         ; preds = %.preheader26.4
  br label %.preheader25.4

.preheader25.4:                                   ; preds = %.preheader25.preheader.4
  br label %.preheader24.preheader.4

.preheader24.preheader.4:                         ; preds = %.preheader25.4
  br label %.preheader24.4

.preheader24.4:                                   ; preds = %.preheader24.preheader.4
  br label %.preheader24.1.4

.preheader24.1.4:                                 ; preds = %.preheader24.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit42, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader24.1.4
  br label %.preheader24.preheader.1.4

.preheader24.preheader.1.4:                       ; preds = %.preheader25.1.4
  br label %.preheader24.139.4

.preheader24.139.4:                               ; preds = %.preheader24.preheader.1.4
  br label %.preheader24.1.1.4

.preheader24.1.1.4:                               ; preds = %.preheader24.139.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit42, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader24.1.1.4
  br i1 false, label %.preheader24.preheader.2, label %104

104:                                              ; preds = %.preheader25.2.4
  unreachable

105:                                              ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %106

106:                                              ; preds = %105
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %106
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.preheader
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader
  br label %.preheader22.1

.preheader22.1:                                   ; preds = %.preheader22
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %.preheader22.2

.preheader22.2:                                   ; preds = %.preheader22.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %.preheader22.3

.preheader22.3:                                   ; preds = %.preheader22.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %.preheader22.4

.preheader22.4:                                   ; preds = %.preheader22.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit54, label %.preheader23.1

.loopexit54:                                      ; preds = %.preheader22.4.2, %.preheader22.4.164, %.preheader22.4
  %invariant.op3.lcssa.ph = phi i32 [ 0, %.preheader22.4 ], [ 1, %.preheader22.4.164 ], [ 2, %.preheader22.4.2 ]
  br label %107

107:                                              ; preds = %.loopexit54, %.preheader22.4.1
  %invariant.op3.lcssa = phi i32 [ %invariant.op3.1, %.preheader22.4.1 ], [ %invariant.op3.lcssa.ph, %.loopexit54 ]
  %.reass4.4 = add i32 256, %invariant.op3.lcssa
  %108 = sext i32 %.reass4.4 to i64
  %109 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %108
  store i32 1, ptr %109, align 4
  unreachable

.preheader23.1:                                   ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %119

.preheader22.preheader.1:                         ; preds = %.preheader23.1.2, %.preheader23.1.1, %.preheader23.1
  %storemerge4.lcssa52 = phi i32 [ 0, %.preheader23.1 ], [ 1, %.preheader23.1.1 ], [ 2, %.preheader23.1.2 ]
  %invariant.op3.1 = add i32 8, %storemerge4.lcssa52
  br label %.preheader22.151

.preheader22.151:                                 ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.151
  %110 = sext i32 %invariant.op3.1 to i64
  %111 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %110
  store i32 1, ptr %111, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %.reass4.1.1 = add i32 64, %invariant.op3.1
  %112 = sext i32 %.reass4.1.1 to i64
  %113 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %112
  store i32 1, ptr %113, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %.reass4.2.1 = add i32 128, %invariant.op3.1
  %114 = sext i32 %.reass4.2.1 to i64
  %115 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %114
  store i32 1, ptr %115, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %.reass4.3.1 = add i32 192, %invariant.op3.1
  %116 = sext i32 %.reass4.3.1 to i64
  %117 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %116
  store i32 1, ptr %117, align 4
  br i1 false, label %107, label %118

118:                                              ; preds = %.preheader22.4.1
  unreachable

119:                                              ; preds = %.preheader23.1
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %119
  br label %.preheader23.155

.preheader23.155:                                 ; preds = %.preheader23.preheader.1
  br label %.preheader22.preheader.156

.preheader22.preheader.156:                       ; preds = %.preheader23.155
  br label %.preheader22.157

.preheader22.157:                                 ; preds = %.preheader22.preheader.156
  br label %.preheader22.1.158

.preheader22.1.158:                               ; preds = %.preheader22.157
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %.preheader22.2.160

.preheader22.2.160:                               ; preds = %.preheader22.1.158
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %.preheader22.3.162

.preheader22.3.162:                               ; preds = %.preheader22.2.160
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %.preheader22.4.164

.preheader22.4.164:                               ; preds = %.preheader22.3.162
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit54, label %.preheader23.1.1

.preheader23.1.1:                                 ; preds = %.preheader22.4.164
  br i1 false, label %.preheader22.preheader.1, label %120

120:                                              ; preds = %.preheader23.1.1
  br i1 false, label %.preheader23.preheader.2, label %122

.preheader23.preheader.2:                         ; preds = %120
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.265

.preheader22.265:                                 ; preds = %.preheader22.preheader.2
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.265
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %.preheader22.2.2

.preheader22.2.2:                                 ; preds = %.preheader22.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %.preheader22.3.2

.preheader22.3.2:                                 ; preds = %.preheader22.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %.preheader22.4.2

.preheader22.4.2:                                 ; preds = %.preheader22.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit54, label %.preheader23.1.2

.preheader23.1.2:                                 ; preds = %.preheader22.4.2
  br i1 false, label %.preheader22.preheader.1, label %121

121:                                              ; preds = %.preheader23.1.2
  unreachable

122:                                              ; preds = %120
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %123

123:                                              ; preds = %122
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %123
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.preheader
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader
  br label %.preheader20.1

.preheader20.1:                                   ; preds = %.preheader20
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %.preheader20.2

.preheader20.2:                                   ; preds = %.preheader20.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit70, label %.preheader21.1

.loopexit70:                                      ; preds = %.preheader20.2.3.1, %.preheader20.2.2.1, %.preheader20.2.1.1, %.preheader20.2.176, %.preheader20.2, %.preheader20.2.1, %.preheader20.2.2, %.preheader20.2.3
  %invariant.op5.lcssa.ph = phi i32 [ 24, %.preheader20.2.3 ], [ 16, %.preheader20.2.2 ], [ 8, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 1, %.preheader20.2.176 ], [ 9, %.preheader20.2.1.1 ], [ 17, %.preheader20.2.2.1 ], [ 25, %.preheader20.2.3.1 ]
  br label %124

124:                                              ; preds = %.loopexit70, %.preheader20.2.4
  %invariant.op5.lcssa = phi i32 [ %invariant.op5.4, %.preheader20.2.4 ], [ %invariant.op5.lcssa.ph, %.loopexit70 ]
  %.reass6.2 = add i32 128, %invariant.op5.lcssa
  %125 = sext i32 %.reass6.2 to i64
  %126 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %125
  store i32 1, ptr %126, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader20.2
  br label %.preheader20.preheader.1

.preheader20.preheader.1:                         ; preds = %.preheader21.1
  br label %.preheader20.166

.preheader20.166:                                 ; preds = %.preheader20.preheader.1
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %.preheader20.166
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %.preheader20.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit70, label %.preheader21.2

.preheader21.2:                                   ; preds = %.preheader20.2.1
  br label %.preheader20.preheader.2

.preheader20.preheader.2:                         ; preds = %.preheader21.2
  br label %.preheader20.267

.preheader20.267:                                 ; preds = %.preheader20.preheader.2
  br label %.preheader20.1.2

.preheader20.1.2:                                 ; preds = %.preheader20.267
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2

.preheader20.2.2:                                 ; preds = %.preheader20.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit70, label %.preheader21.3

.preheader21.3:                                   ; preds = %.preheader20.2.2
  br label %.preheader20.preheader.3

.preheader20.preheader.3:                         ; preds = %.preheader21.3
  br label %.preheader20.3

.preheader20.3:                                   ; preds = %.preheader20.preheader.3
  br label %.preheader20.1.3

.preheader20.1.3:                                 ; preds = %.preheader20.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %.preheader20.2.3

.preheader20.2.3:                                 ; preds = %.preheader20.1.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit70, label %.preheader21.4

.preheader21.4:                                   ; preds = %.preheader20.2.3
  br i1 false, label %.preheader20.preheader.4, label %132

.preheader20.preheader.4:                         ; preds = %.preheader21.4.1, %.preheader21.4
  %storemerge5.lcssa69 = phi i32 [ 0, %.preheader21.4 ], [ 1, %.preheader21.4.1 ]
  %invariant.op5.4 = add i32 32, %storemerge5.lcssa69
  br label %.preheader20.4

.preheader20.4:                                   ; preds = %.preheader20.preheader.4
  br label %.preheader20.1.4

.preheader20.1.4:                                 ; preds = %.preheader20.4
  %127 = sext i32 %invariant.op5.4 to i64
  %128 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %127
  store i32 1, ptr %128, align 4
  br label %.preheader20.2.4

.preheader20.2.4:                                 ; preds = %.preheader20.1.4
  %.reass6.1.4 = add i32 64, %invariant.op5.4
  %129 = sext i32 %.reass6.1.4 to i64
  %130 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %129
  store i32 1, ptr %130, align 4
  br i1 false, label %124, label %131

131:                                              ; preds = %.preheader20.2.4
  unreachable

132:                                              ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %134

.preheader21.preheader.1:                         ; preds = %132
  br label %.preheader21.171

.preheader21.171:                                 ; preds = %.preheader21.preheader.1
  br label %.preheader20.preheader.172

.preheader20.preheader.172:                       ; preds = %.preheader21.171
  br label %.preheader20.173

.preheader20.173:                                 ; preds = %.preheader20.preheader.172
  br label %.preheader20.1.174

.preheader20.1.174:                               ; preds = %.preheader20.173
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  br label %.preheader20.2.176

.preheader20.2.176:                               ; preds = %.preheader20.1.174
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  br i1 false, label %.loopexit70, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.176
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.166.1

.preheader20.166.1:                               ; preds = %.preheader20.preheader.1.1
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.166.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  br i1 false, label %.loopexit70, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.267.1

.preheader20.267.1:                               ; preds = %.preheader20.preheader.2.1
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.267.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  br i1 false, label %.loopexit70, label %.preheader21.3.1

.preheader21.3.1:                                 ; preds = %.preheader20.2.2.1
  br label %.preheader20.preheader.3.1

.preheader20.preheader.3.1:                       ; preds = %.preheader21.3.1
  br label %.preheader20.3.1

.preheader20.3.1:                                 ; preds = %.preheader20.preheader.3.1
  br label %.preheader20.1.3.1

.preheader20.1.3.1:                               ; preds = %.preheader20.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4196), align 4
  br label %.preheader20.2.3.1

.preheader20.2.3.1:                               ; preds = %.preheader20.1.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4452), align 4
  br i1 false, label %.loopexit70, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  br i1 false, label %.preheader20.preheader.4, label %133

133:                                              ; preds = %.preheader21.4.1
  unreachable

134:                                              ; preds = %132
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %135

135:                                              ; preds = %134
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %135
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %.preheader18
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit80, label %.preheader19.1

.loopexit80:                                      ; preds = %.preheader18.1.3.2, %.preheader18.1.2.2, %.preheader18.1.1.2, %.preheader18.1.288, %.preheader18.1.3.1, %.preheader18.1.2.1, %.preheader18.1.1.1, %.preheader18.1.184, %.preheader18.1, %.preheader18.1.1, %.preheader18.1.2, %.preheader18.1.3
  %invariant.op7.lcssa.ph = phi i32 [ 24, %.preheader18.1.3 ], [ 16, %.preheader18.1.2 ], [ 8, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 1, %.preheader18.1.184 ], [ 9, %.preheader18.1.1.1 ], [ 17, %.preheader18.1.2.1 ], [ 25, %.preheader18.1.3.1 ], [ 2, %.preheader18.1.288 ], [ 10, %.preheader18.1.1.2 ], [ 18, %.preheader18.1.2.2 ], [ 26, %.preheader18.1.3.2 ]
  br label %136

136:                                              ; preds = %.loopexit80, %.preheader18.1.4
  %invariant.op7.lcssa = phi i32 [ %invariant.op7.4, %.preheader18.1.4 ], [ %invariant.op7.lcssa.ph, %.loopexit80 ]
  %.reass8.1 = add i32 64, %invariant.op7.lcssa
  %137 = sext i32 %.reass8.1 to i64
  %138 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %137
  store i32 1, ptr %138, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader18.1
  br label %.preheader18.preheader.1

.preheader18.preheader.1:                         ; preds = %.preheader19.1
  br label %.preheader18.177

.preheader18.177:                                 ; preds = %.preheader18.preheader.1
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %.preheader18.177
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit80, label %.preheader19.2

.preheader19.2:                                   ; preds = %.preheader18.1.1
  br label %.preheader18.preheader.2

.preheader18.preheader.2:                         ; preds = %.preheader19.2
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %.preheader18.preheader.2
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %.preheader18.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit80, label %.preheader19.3

.preheader19.3:                                   ; preds = %.preheader18.1.2
  br label %.preheader18.preheader.3

.preheader18.preheader.3:                         ; preds = %.preheader19.3
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %.preheader18.preheader.3
  br label %.preheader18.1.3

.preheader18.1.3:                                 ; preds = %.preheader18.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit80, label %.preheader19.4

.preheader19.4:                                   ; preds = %.preheader18.1.3
  br i1 false, label %.preheader18.preheader.4, label %142

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %storemerge6.lcssa79 = phi i32 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  %invariant.op7.4 = add i32 32, %storemerge6.lcssa79
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  %139 = sext i32 %invariant.op7.4 to i64
  %140 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %139
  store i32 1, ptr %140, align 4
  br i1 false, label %136, label %141

141:                                              ; preds = %.preheader18.1.4
  unreachable

142:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %142
  br label %.preheader19.181

.preheader19.181:                                 ; preds = %.preheader19.preheader.1
  br label %.preheader18.preheader.182

.preheader18.preheader.182:                       ; preds = %.preheader19.181
  br label %.preheader18.183

.preheader18.183:                                 ; preds = %.preheader18.preheader.182
  br label %.preheader18.1.184

.preheader18.1.184:                               ; preds = %.preheader18.183
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit80, label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %.preheader18.1.184
  br label %.preheader18.preheader.1.1

.preheader18.preheader.1.1:                       ; preds = %.preheader19.1.1
  br label %.preheader18.177.1

.preheader18.177.1:                               ; preds = %.preheader18.preheader.1.1
  br label %.preheader18.1.1.1

.preheader18.1.1.1:                               ; preds = %.preheader18.177.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit80, label %.preheader19.2.1

.preheader19.2.1:                                 ; preds = %.preheader18.1.1.1
  br label %.preheader18.preheader.2.1

.preheader18.preheader.2.1:                       ; preds = %.preheader19.2.1
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %.preheader18.preheader.2.1
  br label %.preheader18.1.2.1

.preheader18.1.2.1:                               ; preds = %.preheader18.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit80, label %.preheader19.3.1

.preheader19.3.1:                                 ; preds = %.preheader18.1.2.1
  br label %.preheader18.preheader.3.1

.preheader18.preheader.3.1:                       ; preds = %.preheader19.3.1
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %.preheader18.preheader.3.1
  br label %.preheader18.1.3.1

.preheader18.1.3.1:                               ; preds = %.preheader18.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit80, label %.preheader19.4.1

.preheader19.4.1:                                 ; preds = %.preheader18.1.3.1
  br i1 false, label %.preheader18.preheader.4, label %143

143:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %145

.preheader19.preheader.2:                         ; preds = %143
  br label %.preheader19.285

.preheader19.285:                                 ; preds = %.preheader19.preheader.2
  br label %.preheader18.preheader.286

.preheader18.preheader.286:                       ; preds = %.preheader19.285
  br label %.preheader18.287

.preheader18.287:                                 ; preds = %.preheader18.preheader.286
  br label %.preheader18.1.288

.preheader18.1.288:                               ; preds = %.preheader18.287
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit80, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.288
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.177.2

.preheader18.177.2:                               ; preds = %.preheader18.preheader.1.2
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.177.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit80, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit80, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit80, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  br i1 false, label %.preheader18.preheader.4, label %144

144:                                              ; preds = %.preheader19.4.2
  unreachable

145:                                              ; preds = %143
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %146

146:                                              ; preds = %145
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %146
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.preheader
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader
  br label %.preheader16.1

.preheader16.1:                                   ; preds = %.preheader16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %.preheader16.2

.preheader16.2:                                   ; preds = %.preheader16.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit92, label %.preheader17.1

.loopexit92:                                      ; preds = %.preheader16.2.4, %.preheader16.2.3, %.preheader16.2.2, %.preheader16.2.198, %.preheader16.2
  %invariant.op9.lcssa.ph = phi i32 [ 0, %.preheader16.2 ], [ 1, %.preheader16.2.198 ], [ 2, %.preheader16.2.2 ], [ 3, %.preheader16.2.3 ], [ 4, %.preheader16.2.4 ]
  br label %147

147:                                              ; preds = %.loopexit92, %.preheader16.2.1
  %invariant.op9.lcssa = phi i32 [ %invariant.op9.1, %.preheader16.2.1 ], [ %invariant.op9.lcssa.ph, %.loopexit92 ]
  %.reass10.2 = add i32 128, %invariant.op9.lcssa
  %148 = sext i32 %.reass10.2 to i64
  %149 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %148
  store i32 1, ptr %149, align 4
  unreachable

.preheader17.1:                                   ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %155

.preheader16.preheader.1:                         ; preds = %.preheader17.1.4, %.preheader17.1.3, %.preheader17.1.2, %.preheader17.1.1, %.preheader17.1
  %storemerge7.lcssa90 = phi i32 [ 0, %.preheader17.1 ], [ 1, %.preheader17.1.1 ], [ 2, %.preheader17.1.2 ], [ 3, %.preheader17.1.3 ], [ 4, %.preheader17.1.4 ]
  %invariant.op9.1 = add i32 8, %storemerge7.lcssa90
  br label %.preheader16.189

.preheader16.189:                                 ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.189
  %150 = sext i32 %invariant.op9.1 to i64
  %151 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %150
  store i32 1, ptr %151, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %.reass10.1.1 = add i32 64, %invariant.op9.1
  %152 = sext i32 %.reass10.1.1 to i64
  %153 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %152
  store i32 1, ptr %153, align 4
  br i1 false, label %147, label %154

154:                                              ; preds = %.preheader16.2.1
  unreachable

155:                                              ; preds = %.preheader17.1
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %155
  br label %.preheader17.193

.preheader17.193:                                 ; preds = %.preheader17.preheader.1
  br label %.preheader16.preheader.194

.preheader16.preheader.194:                       ; preds = %.preheader17.193
  br label %.preheader16.195

.preheader16.195:                                 ; preds = %.preheader16.preheader.194
  br label %.preheader16.1.196

.preheader16.1.196:                               ; preds = %.preheader16.195
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %.preheader16.2.198

.preheader16.2.198:                               ; preds = %.preheader16.1.196
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit92, label %.preheader17.1.1

.preheader17.1.1:                                 ; preds = %.preheader16.2.198
  br i1 false, label %.preheader16.preheader.1, label %156

156:                                              ; preds = %.preheader17.1.1
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %156
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %.preheader17.preheader.2
  br label %.preheader16.preheader.2

.preheader16.preheader.2:                         ; preds = %.preheader17.2
  br label %.preheader16.299

.preheader16.299:                                 ; preds = %.preheader16.preheader.2
  br label %.preheader16.1.2

.preheader16.1.2:                                 ; preds = %.preheader16.299
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %.preheader16.2.2

.preheader16.2.2:                                 ; preds = %.preheader16.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit92, label %.preheader17.1.2

.preheader17.1.2:                                 ; preds = %.preheader16.2.2
  br i1 false, label %.preheader16.preheader.1, label %157

157:                                              ; preds = %.preheader17.1.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %157
  br label %.preheader17.3

.preheader17.3:                                   ; preds = %.preheader17.preheader.3
  br label %.preheader16.preheader.3

.preheader16.preheader.3:                         ; preds = %.preheader17.3
  br label %.preheader16.3

.preheader16.3:                                   ; preds = %.preheader16.preheader.3
  br label %.preheader16.1.3

.preheader16.1.3:                                 ; preds = %.preheader16.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %.preheader16.2.3

.preheader16.2.3:                                 ; preds = %.preheader16.1.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit92, label %.preheader17.1.3

.preheader17.1.3:                                 ; preds = %.preheader16.2.3
  br i1 false, label %.preheader16.preheader.1, label %158

158:                                              ; preds = %.preheader17.1.3
  br i1 false, label %.preheader17.preheader.4, label %160

.preheader17.preheader.4:                         ; preds = %158
  br label %.preheader17.4

.preheader17.4:                                   ; preds = %.preheader17.preheader.4
  br label %.preheader16.preheader.4

.preheader16.preheader.4:                         ; preds = %.preheader17.4
  br label %.preheader16.4

.preheader16.4:                                   ; preds = %.preheader16.preheader.4
  br label %.preheader16.1.4

.preheader16.1.4:                                 ; preds = %.preheader16.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %.preheader16.2.4

.preheader16.2.4:                                 ; preds = %.preheader16.1.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit92, label %.preheader17.1.4

.preheader17.1.4:                                 ; preds = %.preheader16.2.4
  br i1 false, label %.preheader16.preheader.1, label %159

159:                                              ; preds = %.preheader17.1.4
  unreachable

160:                                              ; preds = %158
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %161

161:                                              ; preds = %160
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %161
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.preheader
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %.preheader14
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %.preheader14.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %.preheader14.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %.preheader14.4

.preheader14.4:                                   ; preds = %.preheader14.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit104, label %.preheader15.1

.loopexit104:                                     ; preds = %.preheader14.4.1.1, %.preheader14.4.1114, %.preheader14.4, %.preheader14.4.1
  %invariant.op11.lcssa.ph = phi i32 [ 8, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 1, %.preheader14.4.1114 ], [ 9, %.preheader14.4.1.1 ]
  br label %162

162:                                              ; preds = %.loopexit104, %.preheader14.4.2
  %invariant.op11.lcssa = phi i32 [ %invariant.op11.2, %.preheader14.4.2 ], [ %invariant.op11.lcssa.ph, %.loopexit104 ]
  %.reass12.4 = add i32 256, %invariant.op11.lcssa
  %163 = sext i32 %.reass12.4 to i64
  %164 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %163
  store i32 1, ptr %164, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader14.4
  br label %.preheader14.preheader.1

.preheader14.preheader.1:                         ; preds = %.preheader15.1
  br label %.preheader14.1100

.preheader14.1100:                                ; preds = %.preheader14.preheader.1
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %.preheader14.1100
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %.preheader14.2.1

.preheader14.2.1:                                 ; preds = %.preheader14.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %.preheader14.3.1

.preheader14.3.1:                                 ; preds = %.preheader14.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %.preheader14.4.1

.preheader14.4.1:                                 ; preds = %.preheader14.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit104, label %.preheader15.2

.preheader15.2:                                   ; preds = %.preheader14.4.1
  br i1 false, label %.preheader14.preheader.2, label %174

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  %storemerge8.lcssa103 = phi i32 [ 0, %.preheader15.2 ], [ 1, %.preheader15.2.1 ]
  %invariant.op11.2 = add i32 16, %storemerge8.lcssa103
  br label %.preheader14.2101

.preheader14.2101:                                ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.2101
  %165 = sext i32 %invariant.op11.2 to i64
  %166 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %165
  store i32 1, ptr %166, align 4
  br label %.preheader14.2.2

.preheader14.2.2:                                 ; preds = %.preheader14.1.2
  %.reass12.1.2 = add i32 64, %invariant.op11.2
  %167 = sext i32 %.reass12.1.2 to i64
  %168 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %167
  store i32 1, ptr %168, align 4
  br label %.preheader14.3.2

.preheader14.3.2:                                 ; preds = %.preheader14.2.2
  %.reass12.2.2 = add i32 128, %invariant.op11.2
  %169 = sext i32 %.reass12.2.2 to i64
  %170 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %169
  store i32 1, ptr %170, align 4
  br label %.preheader14.4.2

.preheader14.4.2:                                 ; preds = %.preheader14.3.2
  %.reass12.3.2 = add i32 192, %invariant.op11.2
  %171 = sext i32 %.reass12.3.2 to i64
  %172 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %171
  store i32 1, ptr %172, align 4
  br i1 false, label %162, label %173

173:                                              ; preds = %.preheader14.4.2
  unreachable

174:                                              ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %176

.preheader15.preheader.1:                         ; preds = %174
  br label %.preheader15.1105

.preheader15.1105:                                ; preds = %.preheader15.preheader.1
  br label %.preheader14.preheader.1106

.preheader14.preheader.1106:                      ; preds = %.preheader15.1105
  br label %.preheader14.1107

.preheader14.1107:                                ; preds = %.preheader14.preheader.1106
  br label %.preheader14.1.1108

.preheader14.1.1108:                              ; preds = %.preheader14.1107
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  br label %.preheader14.2.1110

.preheader14.2.1110:                              ; preds = %.preheader14.1.1108
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  br label %.preheader14.3.1112

.preheader14.3.1112:                              ; preds = %.preheader14.2.1110
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  br label %.preheader14.4.1114

.preheader14.4.1114:                              ; preds = %.preheader14.3.1112
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  br i1 false, label %.loopexit104, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.1114
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.1100.1

.preheader14.1100.1:                              ; preds = %.preheader14.preheader.1.1
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.1100.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10276), align 4
  br label %.preheader14.2.1.1

.preheader14.2.1.1:                               ; preds = %.preheader14.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10532), align 4
  br label %.preheader14.3.1.1

.preheader14.3.1.1:                               ; preds = %.preheader14.2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10788), align 4
  br label %.preheader14.4.1.1

.preheader14.4.1.1:                               ; preds = %.preheader14.3.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11044), align 4
  br i1 false, label %.loopexit104, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  br i1 false, label %.preheader14.preheader.2, label %175

175:                                              ; preds = %.preheader15.2.1
  unreachable

176:                                              ; preds = %174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %177

177:                                              ; preds = %176
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %177
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.preheader
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader
  br label %.preheader12.1

.preheader12.1:                                   ; preds = %.preheader12
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit118, label %.preheader13.1

.loopexit118:                                     ; preds = %.preheader12.1.3, %.preheader12.1.2, %.preheader12.1.1122, %.preheader12.1
  %invariant.op13.lcssa.ph = phi i32 [ 0, %.preheader12.1 ], [ 1, %.preheader12.1.1122 ], [ 2, %.preheader12.1.2 ], [ 3, %.preheader12.1.3 ]
  br label %178

178:                                              ; preds = %.loopexit118, %.preheader12.1.1
  %invariant.op13.lcssa = phi i32 [ %invariant.op13.1, %.preheader12.1.1 ], [ %invariant.op13.lcssa.ph, %.loopexit118 ]
  %.reass14.1 = add i32 64, %invariant.op13.lcssa
  %179 = sext i32 %.reass14.1 to i64
  %180 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %179
  store i32 1, ptr %180, align 4
  unreachable

.preheader13.1:                                   ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %184

.preheader12.preheader.1:                         ; preds = %.preheader13.1.3, %.preheader13.1.2, %.preheader13.1.1, %.preheader13.1
  %storemerge9.lcssa116 = phi i32 [ 0, %.preheader13.1 ], [ 1, %.preheader13.1.1 ], [ 2, %.preheader13.1.2 ], [ 3, %.preheader13.1.3 ]
  %invariant.op13.1 = add i32 8, %storemerge9.lcssa116
  br label %.preheader12.1115

.preheader12.1115:                                ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.1115
  %181 = sext i32 %invariant.op13.1 to i64
  %182 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %181
  store i32 1, ptr %182, align 4
  br i1 false, label %178, label %183

183:                                              ; preds = %.preheader12.1.1
  unreachable

184:                                              ; preds = %.preheader13.1
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %184
  br label %.preheader13.1119

.preheader13.1119:                                ; preds = %.preheader13.preheader.1
  br label %.preheader12.preheader.1120

.preheader12.preheader.1120:                      ; preds = %.preheader13.1119
  br label %.preheader12.1121

.preheader12.1121:                                ; preds = %.preheader12.preheader.1120
  br label %.preheader12.1.1122

.preheader12.1.1122:                              ; preds = %.preheader12.1121
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit118, label %.preheader13.1.1

.preheader13.1.1:                                 ; preds = %.preheader12.1.1122
  br i1 false, label %.preheader12.preheader.1, label %185

185:                                              ; preds = %.preheader13.1.1
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %185
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %.preheader13.preheader.2
  br label %.preheader12.preheader.2

.preheader12.preheader.2:                         ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %.preheader12.preheader.2
  br label %.preheader12.1.2

.preheader12.1.2:                                 ; preds = %.preheader12.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit118, label %.preheader13.1.2

.preheader13.1.2:                                 ; preds = %.preheader12.1.2
  br i1 false, label %.preheader12.preheader.1, label %186

186:                                              ; preds = %.preheader13.1.2
  br i1 false, label %.preheader13.preheader.3, label %188

.preheader13.preheader.3:                         ; preds = %186
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit118, label %.preheader13.1.3

.preheader13.1.3:                                 ; preds = %.preheader12.1.3
  br i1 false, label %.preheader12.preheader.1, label %187

187:                                              ; preds = %.preheader13.1.3
  unreachable

188:                                              ; preds = %186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %189

189:                                              ; preds = %188
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %189
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %.preheader10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit126, label %.preheader11.1

.loopexit126:                                     ; preds = %.preheader10.1.2.1, %.preheader10.1.1.1, %.preheader10.1.1130, %.preheader10.1, %.preheader10.1.1, %.preheader10.1.2
  %invariant.op15.lcssa.ph = phi i32 [ 16, %.preheader10.1.2 ], [ 8, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 1, %.preheader10.1.1130 ], [ 9, %.preheader10.1.1.1 ], [ 17, %.preheader10.1.2.1 ]
  br label %190

190:                                              ; preds = %.loopexit126, %.preheader10.1.3
  %invariant.op15.lcssa = phi i32 [ %invariant.op15.3, %.preheader10.1.3 ], [ %invariant.op15.lcssa.ph, %.loopexit126 ]
  %.reass16.1 = add i32 64, %invariant.op15.lcssa
  %191 = sext i32 %.reass16.1 to i64
  %192 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %191
  store i32 1, ptr %192, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader10.1
  br label %.preheader10.preheader.1

.preheader10.preheader.1:                         ; preds = %.preheader11.1
  br label %.preheader10.1123

.preheader10.1123:                                ; preds = %.preheader10.preheader.1
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %.preheader10.1123
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit126, label %.preheader11.2

.preheader11.2:                                   ; preds = %.preheader10.1.1
  br label %.preheader10.preheader.2

.preheader10.preheader.2:                         ; preds = %.preheader11.2
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %.preheader10.preheader.2
  br label %.preheader10.1.2

.preheader10.1.2:                                 ; preds = %.preheader10.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit126, label %.preheader11.3

.preheader11.3:                                   ; preds = %.preheader10.1.2
  br i1 false, label %.preheader10.preheader.3, label %196

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  %storemerge10.lcssa125 = phi i32 [ 0, %.preheader11.3 ], [ 1, %.preheader11.3.1 ]
  %invariant.op15.3 = add i32 24, %storemerge10.lcssa125
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  %193 = sext i32 %invariant.op15.3 to i64
  %194 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %193
  store i32 1, ptr %194, align 4
  br i1 false, label %190, label %195

195:                                              ; preds = %.preheader10.1.3
  unreachable

196:                                              ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %198

.preheader11.preheader.1:                         ; preds = %196
  br label %.preheader11.1127

.preheader11.1127:                                ; preds = %.preheader11.preheader.1
  br label %.preheader10.preheader.1128

.preheader10.preheader.1128:                      ; preds = %.preheader11.1127
  br label %.preheader10.1129

.preheader10.1129:                                ; preds = %.preheader10.preheader.1128
  br label %.preheader10.1.1130

.preheader10.1.1130:                              ; preds = %.preheader10.1129
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  br i1 false, label %.loopexit126, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.1130
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.1123.1

.preheader10.1123.1:                              ; preds = %.preheader10.preheader.1.1
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.1123.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  br i1 false, label %.loopexit126, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  br i1 false, label %.loopexit126, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  br i1 false, label %.preheader10.preheader.3, label %197

197:                                              ; preds = %.preheader11.3.1
  unreachable

198:                                              ; preds = %196
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %199

199:                                              ; preds = %198
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %199
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader9.preheader
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader
  br label %.preheader8.1

.preheader8.1:                                    ; preds = %.preheader8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2

.preheader8.2:                                    ; preds = %.preheader8.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3

.preheader8.3:                                    ; preds = %.preheader8.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit134, label %.preheader9.1

.loopexit134:                                     ; preds = %.preheader8.3.1142, %.preheader8.3
  %invariant.op17.lcssa.ph = phi i32 [ 0, %.preheader8.3 ], [ 1, %.preheader8.3.1142 ]
  br label %200

200:                                              ; preds = %.loopexit134, %.preheader8.3.1
  %invariant.op17.lcssa = phi i32 [ %invariant.op17.1, %.preheader8.3.1 ], [ %invariant.op17.lcssa.ph, %.loopexit134 ]
  %.reass18.3 = add i32 192, %invariant.op17.lcssa
  %201 = sext i32 %.reass18.3 to i64
  %202 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %201
  store i32 1, ptr %202, align 4
  unreachable

.preheader9.1:                                    ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %210

.preheader8.preheader.1:                          ; preds = %.preheader9.1.1, %.preheader9.1
  %storemerge11.lcssa132 = phi i32 [ 0, %.preheader9.1 ], [ 1, %.preheader9.1.1 ]
  %invariant.op17.1 = add i32 8, %storemerge11.lcssa132
  br label %.preheader8.1131

.preheader8.1131:                                 ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1131
  %203 = sext i32 %invariant.op17.1 to i64
  %204 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %203
  store i32 1, ptr %204, align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  %.reass18.1.1 = add i32 64, %invariant.op17.1
  %205 = sext i32 %.reass18.1.1 to i64
  %206 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %205
  store i32 1, ptr %206, align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  %.reass18.2.1 = add i32 128, %invariant.op17.1
  %207 = sext i32 %.reass18.2.1 to i64
  %208 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %207
  store i32 1, ptr %208, align 4
  br i1 false, label %200, label %209

209:                                              ; preds = %.preheader8.3.1
  unreachable

210:                                              ; preds = %.preheader9.1
  br i1 false, label %.preheader9.preheader.1, label %212

.preheader9.preheader.1:                          ; preds = %210
  br label %.preheader9.1135

.preheader9.1135:                                 ; preds = %.preheader9.preheader.1
  br label %.preheader8.preheader.1136

.preheader8.preheader.1136:                       ; preds = %.preheader9.1135
  br label %.preheader8.1137

.preheader8.1137:                                 ; preds = %.preheader8.preheader.1136
  br label %.preheader8.1.1138

.preheader8.1.1138:                               ; preds = %.preheader8.1137
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  br label %.preheader8.2.1140

.preheader8.2.1140:                               ; preds = %.preheader8.1.1138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  br label %.preheader8.3.1142

.preheader8.3.1142:                               ; preds = %.preheader8.2.1140
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  br i1 false, label %.loopexit134, label %.preheader9.1.1

.preheader9.1.1:                                  ; preds = %.preheader8.3.1142
  br i1 false, label %.preheader8.preheader.1, label %211

211:                                              ; preds = %.preheader9.1.1
  unreachable

212:                                              ; preds = %210
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %213

213:                                              ; preds = %212
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %213
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit146, label %.preheader7.1

.loopexit146:                                     ; preds = %.preheader6.1.1.2, %.preheader6.1.2154, %.preheader6.1.1.1, %.preheader6.1.1150, %.preheader6.1, %.preheader6.1.1
  %invariant.op19.lcssa.ph = phi i32 [ 8, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 1, %.preheader6.1.1150 ], [ 9, %.preheader6.1.1.1 ], [ 2, %.preheader6.1.2154 ], [ 10, %.preheader6.1.1.2 ]
  br label %214

214:                                              ; preds = %.loopexit146, %.preheader6.1.2
  %invariant.op19.lcssa = phi i32 [ %invariant.op19.2, %.preheader6.1.2 ], [ %invariant.op19.lcssa.ph, %.loopexit146 ]
  %.reass20.1 = add i32 64, %invariant.op19.lcssa
  %215 = sext i32 %.reass20.1 to i64
  %216 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %215
  store i32 1, ptr %216, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader6.1
  br label %.preheader6.preheader.1

.preheader6.preheader.1:                          ; preds = %.preheader7.1
  br label %.preheader6.1143

.preheader6.1143:                                 ; preds = %.preheader6.preheader.1
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %.preheader6.1143
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit146, label %.preheader7.2

.preheader7.2:                                    ; preds = %.preheader6.1.1
  br i1 false, label %.preheader6.preheader.2, label %220

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %storemerge12.lcssa145 = phi i32 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  %invariant.op19.2 = add i32 16, %storemerge12.lcssa145
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  %217 = sext i32 %invariant.op19.2 to i64
  %218 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %217
  store i32 1, ptr %218, align 4
  br i1 false, label %214, label %219

219:                                              ; preds = %.preheader6.1.2
  unreachable

220:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %220
  br label %.preheader7.1147

.preheader7.1147:                                 ; preds = %.preheader7.preheader.1
  br label %.preheader6.preheader.1148

.preheader6.preheader.1148:                       ; preds = %.preheader7.1147
  br label %.preheader6.1149

.preheader6.1149:                                 ; preds = %.preheader6.preheader.1148
  br label %.preheader6.1.1150

.preheader6.1.1150:                               ; preds = %.preheader6.1149
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit146, label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %.preheader6.1.1150
  br label %.preheader6.preheader.1.1

.preheader6.preheader.1.1:                        ; preds = %.preheader7.1.1
  br label %.preheader6.1143.1

.preheader6.1143.1:                               ; preds = %.preheader6.preheader.1.1
  br label %.preheader6.1.1.1

.preheader6.1.1.1:                                ; preds = %.preheader6.1143.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit146, label %.preheader7.2.1

.preheader7.2.1:                                  ; preds = %.preheader6.1.1.1
  br i1 false, label %.preheader6.preheader.2, label %221

221:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %223

.preheader7.preheader.2:                          ; preds = %221
  br label %.preheader7.2151

.preheader7.2151:                                 ; preds = %.preheader7.preheader.2
  br label %.preheader6.preheader.2152

.preheader6.preheader.2152:                       ; preds = %.preheader7.2151
  br label %.preheader6.2153

.preheader6.2153:                                 ; preds = %.preheader6.preheader.2152
  br label %.preheader6.1.2154

.preheader6.1.2154:                               ; preds = %.preheader6.2153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit146, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2154
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1143.2

.preheader6.1143.2:                               ; preds = %.preheader6.preheader.1.2
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1143.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit146, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  br i1 false, label %.preheader6.preheader.2, label %222

222:                                              ; preds = %.preheader7.2.2
  unreachable

223:                                              ; preds = %221
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %224

224:                                              ; preds = %223
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %224
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.preheader
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader
  br label %.preheader4.1

.preheader4.1:                                    ; preds = %.preheader4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %.preheader4.2

.preheader4.2:                                    ; preds = %.preheader4.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit158, label %.preheader5.1

.loopexit158:                                     ; preds = %.preheader4.2.2, %.preheader4.2.1164, %.preheader4.2
  %invariant.op21.lcssa.ph = phi i32 [ 0, %.preheader4.2 ], [ 1, %.preheader4.2.1164 ], [ 2, %.preheader4.2.2 ]
  br label %225

225:                                              ; preds = %.loopexit158, %.preheader4.2.1
  %invariant.op21.lcssa = phi i32 [ %invariant.op21.1, %.preheader4.2.1 ], [ %invariant.op21.lcssa.ph, %.loopexit158 ]
  %.reass22.2 = add i32 128, %invariant.op21.lcssa
  %226 = sext i32 %.reass22.2 to i64
  %227 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %226
  store i32 1, ptr %227, align 4
  unreachable

.preheader5.1:                                    ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %233

.preheader4.preheader.1:                          ; preds = %.preheader5.1.2, %.preheader5.1.1, %.preheader5.1
  %storemerge13.lcssa156 = phi i32 [ 0, %.preheader5.1 ], [ 1, %.preheader5.1.1 ], [ 2, %.preheader5.1.2 ]
  %invariant.op21.1 = add i32 8, %storemerge13.lcssa156
  br label %.preheader4.1155

.preheader4.1155:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1155
  %228 = sext i32 %invariant.op21.1 to i64
  %229 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %228
  store i32 1, ptr %229, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %.reass22.1.1 = add i32 64, %invariant.op21.1
  %230 = sext i32 %.reass22.1.1 to i64
  %231 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %230
  store i32 1, ptr %231, align 4
  br i1 false, label %225, label %232

232:                                              ; preds = %.preheader4.2.1
  unreachable

233:                                              ; preds = %.preheader5.1
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %233
  br label %.preheader5.1159

.preheader5.1159:                                 ; preds = %.preheader5.preheader.1
  br label %.preheader4.preheader.1160

.preheader4.preheader.1160:                       ; preds = %.preheader5.1159
  br label %.preheader4.1161

.preheader4.1161:                                 ; preds = %.preheader4.preheader.1160
  br label %.preheader4.1.1162

.preheader4.1.1162:                               ; preds = %.preheader4.1161
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %.preheader4.2.1164

.preheader4.2.1164:                               ; preds = %.preheader4.1.1162
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit158, label %.preheader5.1.1

.preheader5.1.1:                                  ; preds = %.preheader4.2.1164
  br i1 false, label %.preheader4.preheader.1, label %234

234:                                              ; preds = %.preheader5.1.1
  br i1 false, label %.preheader5.preheader.2, label %236

.preheader5.preheader.2:                          ; preds = %234
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2165

.preheader4.2165:                                 ; preds = %.preheader4.preheader.2
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit158, label %.preheader5.1.2

.preheader5.1.2:                                  ; preds = %.preheader4.2.2
  br i1 false, label %.preheader4.preheader.1, label %235

235:                                              ; preds = %.preheader5.1.2
  unreachable

236:                                              ; preds = %234
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %237

237:                                              ; preds = %236
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %237
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader
  br label %.preheader2.1

.preheader2.1:                                    ; preds = %.preheader2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %.preheader2.2

.preheader2.2:                                    ; preds = %.preheader2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit170, label %.preheader3.1

.loopexit170:                                     ; preds = %.preheader2.2.1.1, %.preheader2.2.1176, %.preheader2.2, %.preheader2.2.1
  %invariant.op23.lcssa.ph = phi i32 [ 8, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 1, %.preheader2.2.1176 ], [ 9, %.preheader2.2.1.1 ]
  br label %238

238:                                              ; preds = %.loopexit170, %.preheader2.2.2
  %invariant.op23.lcssa = phi i32 [ %invariant.op23.2, %.preheader2.2.2 ], [ %invariant.op23.lcssa.ph, %.loopexit170 ]
  %.reass24.2 = add i32 128, %invariant.op23.lcssa
  %239 = sext i32 %.reass24.2 to i64
  %240 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %239
  store i32 1, ptr %240, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader2.2
  br label %.preheader2.preheader.1

.preheader2.preheader.1:                          ; preds = %.preheader3.1
  br label %.preheader2.1166

.preheader2.1166:                                 ; preds = %.preheader2.preheader.1
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %.preheader2.1166
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1

.preheader2.2.1:                                  ; preds = %.preheader2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit170, label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader2.2.1
  br i1 false, label %.preheader2.preheader.2, label %246

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  %storemerge14.lcssa169 = phi i32 [ 0, %.preheader3.2 ], [ 1, %.preheader3.2.1 ]
  %invariant.op23.2 = add i32 16, %storemerge14.lcssa169
  br label %.preheader2.2167

.preheader2.2167:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2167
  %241 = sext i32 %invariant.op23.2 to i64
  %242 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %241
  store i32 1, ptr %242, align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  %.reass24.1.2 = add i32 64, %invariant.op23.2
  %243 = sext i32 %.reass24.1.2 to i64
  %244 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %243
  store i32 1, ptr %244, align 4
  br i1 false, label %238, label %245

245:                                              ; preds = %.preheader2.2.2
  unreachable

246:                                              ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %248

.preheader3.preheader.1:                          ; preds = %246
  br label %.preheader3.1171

.preheader3.1171:                                 ; preds = %.preheader3.preheader.1
  br label %.preheader2.preheader.1172

.preheader2.preheader.1172:                       ; preds = %.preheader3.1171
  br label %.preheader2.1173

.preheader2.1173:                                 ; preds = %.preheader2.preheader.1172
  br label %.preheader2.1.1174

.preheader2.1.1174:                               ; preds = %.preheader2.1173
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  br label %.preheader2.2.1176

.preheader2.2.1176:                               ; preds = %.preheader2.1.1174
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  br i1 false, label %.loopexit170, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1176
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1166.1

.preheader2.1166.1:                               ; preds = %.preheader2.preheader.1.1
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1166.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  br i1 false, label %.loopexit170, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  br i1 false, label %.preheader2.preheader.2, label %247

247:                                              ; preds = %.preheader3.2.1
  unreachable

248:                                              ; preds = %246
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %249

249:                                              ; preds = %248
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %249
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit181, label %.preheader1.1

.loopexit181:                                     ; preds = %.preheader.2.1.2, %.preheader.2.2193, %.preheader.2.1.1, %.preheader.2.1187, %.preheader.2, %.preheader.2.1
  %invariant.op25.lcssa.ph = phi i32 [ 8, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 1, %.preheader.2.1187 ], [ 9, %.preheader.2.1.1 ], [ 2, %.preheader.2.2193 ], [ 10, %.preheader.2.1.2 ]
  br label %250

250:                                              ; preds = %.loopexit181, %.preheader.2.2
  %invariant.op25.lcssa = phi i32 [ %invariant.op25.2, %.preheader.2.2 ], [ %invariant.op25.lcssa.ph, %.loopexit181 ]
  %.reass26.2 = add i32 128, %invariant.op25.lcssa
  %251 = sext i32 %.reass26.2 to i64
  %252 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %251
  store i32 1, ptr %252, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader.2
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader1.1
  br label %.preheader.1177

.preheader.1177:                                  ; preds = %.preheader.preheader.1
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1177
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %.preheader.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit181, label %.preheader1.2

.preheader1.2:                                    ; preds = %.preheader.2.1
  br i1 false, label %.preheader.preheader.2, label %258

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %storemerge15.lcssa180 = phi i32 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  %invariant.op25.2 = add i32 16, %storemerge15.lcssa180
  br label %.preheader.2178

.preheader.2178:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2178
  %253 = sext i32 %invariant.op25.2 to i64
  %254 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %253
  store i32 1, ptr %254, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %.reass26.1.2 = add i32 64, %invariant.op25.2
  %255 = sext i32 %.reass26.1.2 to i64
  %256 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %255
  store i32 1, ptr %256, align 4
  br i1 false, label %250, label %257

257:                                              ; preds = %.preheader.2.2
  unreachable

258:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %258
  br label %.preheader1.1182

.preheader1.1182:                                 ; preds = %.preheader1.preheader.1
  br label %.preheader.preheader.1183

.preheader.preheader.1183:                        ; preds = %.preheader1.1182
  br label %.preheader.1184

.preheader.1184:                                  ; preds = %.preheader.preheader.1183
  br label %.preheader.1.1185

.preheader.1.1185:                                ; preds = %.preheader.1184
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %.preheader.2.1187

.preheader.2.1187:                                ; preds = %.preheader.1.1185
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit181, label %.preheader1.1.1

.preheader1.1.1:                                  ; preds = %.preheader.2.1187
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.preheader1.1.1
  br label %.preheader.1177.1

.preheader.1177.1:                                ; preds = %.preheader.preheader.1.1
  br label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %.preheader.1177.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %.preheader.2.1.1

.preheader.2.1.1:                                 ; preds = %.preheader.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit181, label %.preheader1.2.1

.preheader1.2.1:                                  ; preds = %.preheader.2.1.1
  br i1 false, label %.preheader.preheader.2, label %259

259:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %261

.preheader1.preheader.2:                          ; preds = %259
  br label %.preheader1.2188

.preheader1.2188:                                 ; preds = %.preheader1.preheader.2
  br label %.preheader.preheader.2189

.preheader.preheader.2189:                        ; preds = %.preheader1.2188
  br label %.preheader.2190

.preheader.2190:                                  ; preds = %.preheader.preheader.2189
  br label %.preheader.1.2191

.preheader.1.2191:                                ; preds = %.preheader.2190
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %.preheader.2.2193

.preheader.2.2193:                                ; preds = %.preheader.1.2191
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit181, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2193
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1177.2

.preheader.1177.2:                                ; preds = %.preheader.preheader.1.2
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1177.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit181, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  br i1 false, label %.preheader.preheader.2, label %260

260:                                              ; preds = %.preheader1.2.2
  unreachable

261:                                              ; preds = %259
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %262 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %262, 0
  br i1 %.not, label %265, label %263

263:                                              ; preds = %261
  %264 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %264, ptr @n, align 4
  br label %266

265:                                              ; preds = %261
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %266

266:                                              ; preds = %265, %263
  %267 = load i32, ptr @n, align 4
  %268 = call i32 @Trial(i32 noundef %267)
  %.not16 = icmp eq i32 %268, 0
  br i1 %.not16, label %269, label %270

269:                                              ; preds = %266
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %273

270:                                              ; preds = %266
  %271 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %271, 2005
  br i1 %.not18, label %273, label %272

272:                                              ; preds = %270
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %273

273:                                              ; preds = %272, %270, %269
  %274 = load i32, ptr @n, align 4
  %275 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %274) #4
  %276 = load i32, ptr @kount, align 4
  %277 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %276) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %storemerge, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !17

5:                                                ; preds = %1
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
