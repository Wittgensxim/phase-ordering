; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_008\output.ll'
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
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
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
  %18 = add nuw nsw i32 %storemerge, 1
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
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
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
  %17 = add nuw nsw i32 %storemerge, 1
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
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
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
  %17 = add nuw nsw i32 %storemerge, 1
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
  %5 = icmp samesign ult i32 %storemerge, 13
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = zext nneg i32 %storemerge to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %7
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
  %21 = add nuw nsw i32 %storemerge, 1
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
  %3 = zext nneg i32 %storemerge to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  %5 = add nuw nsw i32 %storemerge, 1
  br label %6

6:                                                ; preds = %2
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nuw nsw i32 %storemerge, 2
  %10 = icmp samesign ult i32 %9, 512
  br i1 %10, label %11, label %.preheader31.preheader

11:                                               ; preds = %6
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  %14 = add nuw nsw i32 %storemerge, 3
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %.preheader31.preheader, %80
  %storemerge1 = phi i32 [ %81, %80 ], [ 1, %.preheader31.preheader ]
  %15 = icmp samesign ult i32 %storemerge1, 6
  br i1 %15, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %.preheader30.preheader
  br label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %.preheader30
  %invariant.op = or disjoint i32 8, %storemerge1
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader
  br label %.preheader29.1

.preheader29.1:                                   ; preds = %.preheader29
  %.reass = or disjoint i32 64, %invariant.op
  %16 = zext nneg i32 %.reass to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %16
  store i32 0, ptr %17, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %.reass.1 = or disjoint i32 128, %invariant.op
  %18 = zext nneg i32 %.reass.1 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %.reass.2 = or disjoint i32 192, %invariant.op
  %20 = zext nneg i32 %.reass.2 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %.reass.3 = or disjoint i32 256, %invariant.op
  %22 = zext nneg i32 %.reass.3 to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %.reass.4 = or disjoint i32 320, %invariant.op
  %24 = zext nneg i32 %.reass.4 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  br i1 false, label %.loopexit19, label %.preheader30.1

.loopexit19:                                      ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  %invariant.op.lcssa.ph = phi i32 [ %invariant.op.4, %.preheader29.5.4 ], [ %invariant.op.3, %.preheader29.5.3 ], [ %invariant.op.2, %.preheader29.5.2 ], [ %invariant.op.1, %.preheader29.5.1 ], [ %invariant.op, %.preheader29.5 ]
  br label %26

26:                                               ; preds = %.loopexit19, %.preheader29.5.5
  %invariant.op.lcssa = phi i32 [ %invariant.op.5, %.preheader29.5.5 ], [ %invariant.op.lcssa.ph, %.loopexit19 ]
  %.reass.5 = or disjoint i32 384, %invariant.op.lcssa
  %27 = zext nneg i32 %.reass.5 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  %invariant.op.1 = or disjoint i32 16, %storemerge1
  br label %.preheader29.17

.preheader29.17:                                  ; preds = %.preheader29.preheader.1
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.17
  %.reass.18 = or disjoint i32 64, %invariant.op.1
  %29 = zext nneg i32 %.reass.18 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %.reass.1.1 = or disjoint i32 128, %invariant.op.1
  %31 = zext nneg i32 %.reass.1.1 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %.reass.2.1 = or disjoint i32 192, %invariant.op.1
  %33 = zext nneg i32 %.reass.2.1 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %.reass.3.1 = or disjoint i32 256, %invariant.op.1
  %35 = zext nneg i32 %.reass.3.1 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %.reass.4.1 = or disjoint i32 320, %invariant.op.1
  %37 = zext nneg i32 %.reass.4.1 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %37
  store i32 0, ptr %38, align 4
  br i1 false, label %.loopexit19, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  %invariant.op.2 = or disjoint i32 24, %storemerge1
  br label %.preheader29.29

.preheader29.29:                                  ; preds = %.preheader29.preheader.2
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.29
  %.reass.210 = or disjoint i32 64, %invariant.op.2
  %39 = zext nneg i32 %.reass.210 to i64
  %40 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %39
  store i32 0, ptr %40, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %.reass.1.2 = or disjoint i32 128, %invariant.op.2
  %41 = zext nneg i32 %.reass.1.2 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %.reass.2.2 = or disjoint i32 192, %invariant.op.2
  %43 = zext nneg i32 %.reass.2.2 to i64
  %44 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %.reass.3.2 = or disjoint i32 256, %invariant.op.2
  %45 = zext nneg i32 %.reass.3.2 to i64
  %46 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %.reass.4.2 = or disjoint i32 320, %invariant.op.2
  %47 = zext nneg i32 %.reass.4.2 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  br i1 false, label %.loopexit19, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  %invariant.op.3 = or disjoint i32 32, %storemerge1
  br label %.preheader29.311

.preheader29.311:                                 ; preds = %.preheader29.preheader.3
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.311
  %.reass.312 = or disjoint i32 64, %invariant.op.3
  %49 = zext nneg i32 %.reass.312 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %.reass.1.3 = or disjoint i32 128, %invariant.op.3
  %51 = zext nneg i32 %.reass.1.3 to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %.reass.2.3 = or disjoint i32 192, %invariant.op.3
  %53 = zext nneg i32 %.reass.2.3 to i64
  %54 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %.reass.3.3 = or disjoint i32 256, %invariant.op.3
  %55 = zext nneg i32 %.reass.3.3 to i64
  %56 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %.reass.4.3 = or disjoint i32 320, %invariant.op.3
  %57 = zext nneg i32 %.reass.4.3 to i64
  %58 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %57
  store i32 0, ptr %58, align 4
  br i1 false, label %.loopexit19, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  %invariant.op.4 = or disjoint i32 40, %storemerge1
  br label %.preheader29.413

.preheader29.413:                                 ; preds = %.preheader29.preheader.4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.413
  %.reass.414 = or disjoint i32 64, %invariant.op.4
  %59 = zext nneg i32 %.reass.414 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %.reass.1.4 = or disjoint i32 128, %invariant.op.4
  %61 = zext nneg i32 %.reass.1.4 to i64
  %62 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %.reass.2.4 = or disjoint i32 192, %invariant.op.4
  %63 = zext nneg i32 %.reass.2.4 to i64
  %64 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %.reass.3.4 = or disjoint i32 256, %invariant.op.4
  %65 = zext nneg i32 %.reass.3.4 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %.reass.4.4 = or disjoint i32 320, %invariant.op.4
  %67 = zext nneg i32 %.reass.4.4 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  br i1 false, label %.loopexit19, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  br i1 false, label %.preheader29.preheader.5, label %80

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %storemerge1.lcssa18 = phi i32 [ %storemerge1, %.preheader30.5 ]
  %invariant.op.5 = or disjoint i32 48, %storemerge1.lcssa18
  br label %.preheader29.515

.preheader29.515:                                 ; preds = %.preheader29.preheader.5
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.515
  %.reass.516 = or disjoint i32 64, %invariant.op.5
  %69 = zext nneg i32 %.reass.516 to i64
  %70 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  %.reass.1.5 = or disjoint i32 128, %invariant.op.5
  %71 = zext nneg i32 %.reass.1.5 to i64
  %72 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  %.reass.2.5 = or disjoint i32 192, %invariant.op.5
  %73 = zext nneg i32 %.reass.2.5 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %73
  store i32 0, ptr %74, align 4
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  %.reass.3.5 = or disjoint i32 256, %invariant.op.5
  %75 = zext nneg i32 %.reass.3.5 to i64
  %76 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %75
  store i32 0, ptr %76, align 4
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  %.reass.4.5 = or disjoint i32 320, %invariant.op.5
  %77 = zext nneg i32 %.reass.4.5 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %77
  store i32 0, ptr %78, align 4
  br i1 false, label %26, label %79

79:                                               ; preds = %.preheader29.5.5
  unreachable

80:                                               ; preds = %.preheader30.5
  %81 = add nuw nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %.preheader28.preheader, %96
  %storemerge2 = phi i32 [ %97, %96 ], [ 0, %.preheader28.preheader ]
  %82 = icmp samesign ult i32 %storemerge2, 13
  br i1 %82, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %83 = zext nneg i32 %storemerge2 to i64
  %84 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %83
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %92, %.preheader27.preheader
  %storemerge46 = phi i32 [ 0, %.preheader27.preheader ], [ %95, %92 ]
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %85 = zext nneg i32 %storemerge46 to i64
  %86 = getelementptr inbounds nuw [4 x i8], ptr %84, i64 %85
  store i32 0, ptr %86, align 4
  %87 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr %84, i64 %88
  store i32 0, ptr %89, align 4
  %90 = add nuw nsw i32 %storemerge46, 2
  %91 = icmp samesign ult i32 %90, 512
  br i1 %91, label %92, label %96

92:                                               ; preds = %.preheader27.2
  %93 = zext nneg i32 %90 to i64
  %94 = getelementptr inbounds nuw [4 x i8], ptr %84, i64 %93
  store i32 0, ptr %94, align 4
  %95 = add nuw nsw i32 %storemerge46, 3
  br label %.preheader27, !llvm.loop !15

96:                                               ; preds = %.preheader27.2
  %97 = add nuw nsw i32 %storemerge2, 1
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
  br i1 false, label %.loopexit23, label %.preheader25.1

.loopexit23:                                      ; preds = %.preheader24.1.1.4, %.preheader24.1.4, %.preheader24.1.1.3, %.preheader24.1.3, %.preheader24.1.1.2, %.preheader24.1.231, %.preheader24.1.1.1, %.preheader24.1.127, %.preheader24.1, %.preheader24.1.1
  %.lcssa.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 32), %.preheader24.1.1 ], [ @p, %.preheader24.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 4), %.preheader24.1.127 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 36), %.preheader24.1.1.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 8), %.preheader24.1.231 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 40), %.preheader24.1.1.2 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12), %.preheader24.1.3 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 44), %.preheader24.1.1.3 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 16), %.preheader24.1.4 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 48), %.preheader24.1.1.4 ]
  br label %98

98:                                               ; preds = %.loopexit23, %.preheader24.1.2
  %.lcssa = phi ptr [ %101, %.preheader24.1.2 ], [ %.lcssa.ph, %.loopexit23 ]
  store i32 1, ptr %.lcssa, align 4
  unreachable

.preheader25.1:                                   ; preds = %.preheader24.1
  br label %.preheader24.preheader.1

.preheader24.preheader.1:                         ; preds = %.preheader25.1
  br label %.preheader24.120

.preheader24.120:                                 ; preds = %.preheader24.preheader.1
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %.preheader24.120
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit23, label %.preheader25.2

.preheader25.2:                                   ; preds = %.preheader24.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.1

.preheader24.preheader.2:                         ; preds = %.preheader25.2.4, %.preheader25.2.3, %.preheader25.2.2, %.preheader25.2.1, %.preheader25.2
  %storemerge3.lcssa22 = phi i32 [ 0, %.preheader25.2 ], [ 1, %.preheader25.2.1 ], [ 2, %.preheader25.2.2 ], [ 3, %.preheader25.2.3 ], [ 4, %.preheader25.2.4 ]
  %99 = or disjoint i32 %storemerge3.lcssa22, 16
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %100
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %.preheader24.preheader.2
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %.preheader24.2
  store i32 1, ptr %101, align 4
  br i1 false, label %98, label %102

102:                                              ; preds = %.preheader24.1.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  br label %.preheader25.preheader.1

.preheader25.preheader.1:                         ; preds = %.preheader26.1
  br label %.preheader25.124

.preheader25.124:                                 ; preds = %.preheader25.preheader.1
  br label %.preheader24.preheader.125

.preheader24.preheader.125:                       ; preds = %.preheader25.124
  br label %.preheader24.126

.preheader24.126:                                 ; preds = %.preheader24.preheader.125
  br label %.preheader24.1.127

.preheader24.1.127:                               ; preds = %.preheader24.126
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit23, label %.preheader25.1.1

.preheader25.1.1:                                 ; preds = %.preheader24.1.127
  br label %.preheader24.preheader.1.1

.preheader24.preheader.1.1:                       ; preds = %.preheader25.1.1
  br label %.preheader24.120.1

.preheader24.120.1:                               ; preds = %.preheader24.preheader.1.1
  br label %.preheader24.1.1.1

.preheader24.1.1.1:                               ; preds = %.preheader24.120.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit23, label %.preheader25.2.1

.preheader25.2.1:                                 ; preds = %.preheader24.1.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  br label %.preheader25.preheader.2

.preheader25.preheader.2:                         ; preds = %.preheader26.2
  br label %.preheader25.228

.preheader25.228:                                 ; preds = %.preheader25.preheader.2
  br label %.preheader24.preheader.229

.preheader24.preheader.229:                       ; preds = %.preheader25.228
  br label %.preheader24.230

.preheader24.230:                                 ; preds = %.preheader24.preheader.229
  br label %.preheader24.1.231

.preheader24.1.231:                               ; preds = %.preheader24.230
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit23, label %.preheader25.1.2

.preheader25.1.2:                                 ; preds = %.preheader24.1.231
  br label %.preheader24.preheader.1.2

.preheader24.preheader.1.2:                       ; preds = %.preheader25.1.2
  br label %.preheader24.120.2

.preheader24.120.2:                               ; preds = %.preheader24.preheader.1.2
  br label %.preheader24.1.1.2

.preheader24.1.1.2:                               ; preds = %.preheader24.120.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit23, label %.preheader25.2.2

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
  br i1 false, label %.loopexit23, label %.preheader25.1.3

.preheader25.1.3:                                 ; preds = %.preheader24.1.3
  br label %.preheader24.preheader.1.3

.preheader24.preheader.1.3:                       ; preds = %.preheader25.1.3
  br label %.preheader24.120.3

.preheader24.120.3:                               ; preds = %.preheader24.preheader.1.3
  br label %.preheader24.1.1.3

.preheader24.1.1.3:                               ; preds = %.preheader24.120.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit23, label %.preheader25.2.3

.preheader25.2.3:                                 ; preds = %.preheader24.1.1.3
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.4

.preheader26.4:                                   ; preds = %.preheader25.2.3
  br i1 false, label %.preheader25.preheader.4, label %104

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
  br i1 false, label %.loopexit23, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader24.1.4
  br label %.preheader24.preheader.1.4

.preheader24.preheader.1.4:                       ; preds = %.preheader25.1.4
  br label %.preheader24.120.4

.preheader24.120.4:                               ; preds = %.preheader24.preheader.1.4
  br label %.preheader24.1.1.4

.preheader24.1.1.4:                               ; preds = %.preheader24.120.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit23, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader24.1.1.4
  br i1 false, label %.preheader24.preheader.2, label %103

103:                                              ; preds = %.preheader25.2.4
  unreachable

104:                                              ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %105

105:                                              ; preds = %104
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %105
  br label %.preheader23

.preheader23.loopexit:                            ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %121

.preheader22.preheader.1:                         ; preds = %.preheader23.loopexit.2, %.preheader23.loopexit.143, %.preheader23.loopexit
  %storemerge4.lcssa34 = phi i32 [ 0, %.preheader23.loopexit ], [ 1, %.preheader23.loopexit.143 ], [ 2, %.preheader23.loopexit.2 ]
  br label %.preheader22.133

.preheader22.133:                                 ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.133
  %106 = zext nneg i32 %storemerge4.lcssa34 to i64
  %107 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %106
  store i32 1, ptr %107, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %108 = or disjoint i32 %storemerge4.lcssa34, 64
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %109
  store i32 1, ptr %110, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %111 = or disjoint i32 %storemerge4.lcssa34, 128
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %112
  store i32 1, ptr %113, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %114 = or disjoint i32 %storemerge4.lcssa34, 192
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %115
  store i32 1, ptr %116, align 4
  br i1 false, label %117, label %.preheader23.loopexit.1

.preheader23.loopexit.1:                          ; preds = %.preheader22.4.1
  unreachable

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
  br i1 false, label %.loopexit36, label %.preheader23.loopexit

.loopexit36:                                      ; preds = %.preheader22.4.2, %.preheader22.4.142, %.preheader22.4
  %storemerge4.lcssa32.ph = phi i32 [ 0, %.preheader22.4 ], [ 1, %.preheader22.4.142 ], [ 2, %.preheader22.4.2 ]
  br label %117

117:                                              ; preds = %.loopexit36, %.preheader22.4.1
  %storemerge4.lcssa32 = phi i32 [ %storemerge4.lcssa34, %.preheader22.4.1 ], [ %storemerge4.lcssa32.ph, %.loopexit36 ]
  %118 = or disjoint i32 %storemerge4.lcssa32, 256
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %119
  store i32 1, ptr %120, align 4
  unreachable

121:                                              ; preds = %.preheader23.loopexit
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %121
  br label %.preheader23.1

.preheader23.1:                                   ; preds = %.preheader23.preheader.1
  br label %.preheader22.preheader.137

.preheader22.preheader.137:                       ; preds = %.preheader23.1
  br label %.preheader22.138

.preheader22.138:                                 ; preds = %.preheader22.preheader.137
  br label %.preheader22.1.139

.preheader22.1.139:                               ; preds = %.preheader22.138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %.preheader22.2.140

.preheader22.2.140:                               ; preds = %.preheader22.1.139
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %.preheader22.3.141

.preheader22.3.141:                               ; preds = %.preheader22.2.140
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %.preheader22.4.142

.preheader22.4.142:                               ; preds = %.preheader22.3.141
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit36, label %.preheader23.loopexit.143

.preheader23.loopexit.143:                        ; preds = %.preheader22.4.142
  br i1 false, label %.preheader22.preheader.1, label %122

122:                                              ; preds = %.preheader23.loopexit.143
  br i1 false, label %.preheader23.preheader.2, label %124

.preheader23.preheader.2:                         ; preds = %122
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.244

.preheader22.244:                                 ; preds = %.preheader22.preheader.2
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.244
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
  br i1 false, label %.loopexit36, label %.preheader23.loopexit.2

.preheader23.loopexit.2:                          ; preds = %.preheader22.4.2
  br i1 false, label %.preheader22.preheader.1, label %123

123:                                              ; preds = %.preheader23.loopexit.2
  unreachable

124:                                              ; preds = %122
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %125

.loopexit4:                                       ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %131

.preheader21.preheader.1:                         ; preds = %.loopexit4
  br label %.preheader21.149

.preheader21.149:                                 ; preds = %.preheader21.preheader.1
  br label %.preheader20.preheader.150

.preheader20.preheader.150:                       ; preds = %.preheader21.149
  br label %.preheader20.151

.preheader20.151:                                 ; preds = %.preheader20.preheader.150
  br label %.preheader20.1.152

.preheader20.1.152:                               ; preds = %.preheader20.151
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %.preheader20.2.153

.preheader20.2.153:                               ; preds = %.preheader20.1.152
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit48, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.153
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.146.1

.preheader20.146.1:                               ; preds = %.preheader20.preheader.1.1
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.146.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit48, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.247.1

.preheader20.247.1:                               ; preds = %.preheader20.preheader.2.1
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.247.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit48, label %.preheader21.3.1

.preheader21.3.1:                                 ; preds = %.preheader20.2.2.1
  br label %.preheader20.preheader.3.1

.preheader20.preheader.3.1:                       ; preds = %.preheader21.3.1
  br label %.preheader20.3.1

.preheader20.3.1:                                 ; preds = %.preheader20.preheader.3.1
  br label %.preheader20.1.3.1

.preheader20.1.3.1:                               ; preds = %.preheader20.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %.preheader20.2.3.1

.preheader20.2.3.1:                               ; preds = %.preheader20.1.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit48, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  br i1 false, label %.preheader20.preheader.4, label %.loopexit4.1

.loopexit4.1:                                     ; preds = %.preheader21.4.1
  unreachable

125:                                              ; preds = %124
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %125
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
  br i1 false, label %.loopexit48, label %.preheader21.1

.loopexit48:                                      ; preds = %.preheader20.2.3.1, %.preheader20.2.2.1, %.preheader20.2.1.1, %.preheader20.2.153, %.preheader20.2, %.preheader20.2.1, %.preheader20.2.2, %.preheader20.2.3
  %.lcssa45.ph = phi i32 [ 24, %.preheader20.2.3 ], [ 16, %.preheader20.2.2 ], [ 8, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 0, %.preheader20.2.153 ], [ 8, %.preheader20.2.1.1 ], [ 16, %.preheader20.2.2.1 ], [ 24, %.preheader20.2.3.1 ]
  br label %126

126:                                              ; preds = %.loopexit48, %.preheader20.2.4
  %.lcssa45 = phi i32 [ 32, %.preheader20.2.4 ], [ %.lcssa45.ph, %.loopexit48 ]
  %127 = or disjoint i32 128, %.lcssa45
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %128
  store i32 1, ptr %129, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader20.2
  br label %.preheader20.preheader.1

.preheader20.preheader.1:                         ; preds = %.preheader21.1
  br label %.preheader20.146

.preheader20.146:                                 ; preds = %.preheader20.preheader.1
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %.preheader20.146
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %.preheader20.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit48, label %.preheader21.2

.preheader21.2:                                   ; preds = %.preheader20.2.1
  br label %.preheader20.preheader.2

.preheader20.preheader.2:                         ; preds = %.preheader21.2
  br label %.preheader20.247

.preheader20.247:                                 ; preds = %.preheader20.preheader.2
  br label %.preheader20.1.2

.preheader20.1.2:                                 ; preds = %.preheader20.247
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2

.preheader20.2.2:                                 ; preds = %.preheader20.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit48, label %.preheader21.3

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
  br i1 false, label %.loopexit48, label %.preheader21.4

.preheader21.4:                                   ; preds = %.preheader20.2.3
  br i1 false, label %.preheader20.preheader.4, label %.loopexit4

.preheader20.preheader.4:                         ; preds = %.preheader21.4.1, %.preheader21.4
  br label %.preheader20.4

.preheader20.4:                                   ; preds = %.preheader20.preheader.4
  br label %.preheader20.1.4

.preheader20.1.4:                                 ; preds = %.preheader20.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  br label %.preheader20.2.4

.preheader20.2.4:                                 ; preds = %.preheader20.1.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %126, label %130

130:                                              ; preds = %.preheader20.2.4
  unreachable

131:                                              ; preds = %.loopexit4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %132

132:                                              ; preds = %131
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %132
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %.preheader18
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit58, label %.preheader19.1

.loopexit58:                                      ; preds = %.preheader18.1.3.2, %.preheader18.1.2.2, %.preheader18.1.1.2, %.preheader18.1.266, %.preheader18.1.3.1, %.preheader18.1.2.1, %.preheader18.1.1.1, %.preheader18.1.162, %.preheader18.1, %.preheader18.1.1, %.preheader18.1.2, %.preheader18.1.3
  %.lcssa54.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 6240), %.preheader18.1.3 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6208), %.preheader18.1.2 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6176), %.preheader18.1.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6144), %.preheader18.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6148), %.preheader18.1.162 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6180), %.preheader18.1.1.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6212), %.preheader18.1.2.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6244), %.preheader18.1.3.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6152), %.preheader18.1.266 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6184), %.preheader18.1.1.2 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6216), %.preheader18.1.2.2 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6248), %.preheader18.1.3.2 ]
  br label %133

133:                                              ; preds = %.loopexit58, %.preheader18.1.4
  %.lcssa54 = phi ptr [ %136, %.preheader18.1.4 ], [ %.lcssa54.ph, %.loopexit58 ]
  store i32 1, ptr %.lcssa54, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader18.1
  br label %.preheader18.preheader.1

.preheader18.preheader.1:                         ; preds = %.preheader19.1
  br label %.preheader18.155

.preheader18.155:                                 ; preds = %.preheader18.preheader.1
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %.preheader18.155
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit58, label %.preheader19.2

.preheader19.2:                                   ; preds = %.preheader18.1.1
  br label %.preheader18.preheader.2

.preheader18.preheader.2:                         ; preds = %.preheader19.2
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %.preheader18.preheader.2
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %.preheader18.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit58, label %.preheader19.3

.preheader19.3:                                   ; preds = %.preheader18.1.2
  br label %.preheader18.preheader.3

.preheader18.preheader.3:                         ; preds = %.preheader19.3
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %.preheader18.preheader.3
  br label %.preheader18.1.3

.preheader18.1.3:                                 ; preds = %.preheader18.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit58, label %.preheader19.4

.preheader19.4:                                   ; preds = %.preheader18.1.3
  br i1 false, label %.preheader18.preheader.4, label %138

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %storemerge6.lcssa57 = phi i32 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  %134 = or disjoint i32 %storemerge6.lcssa57, 32
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %135
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  store i32 1, ptr %136, align 4
  br i1 false, label %133, label %137

137:                                              ; preds = %.preheader18.1.4
  unreachable

138:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %138
  br label %.preheader19.159

.preheader19.159:                                 ; preds = %.preheader19.preheader.1
  br label %.preheader18.preheader.160

.preheader18.preheader.160:                       ; preds = %.preheader19.159
  br label %.preheader18.161

.preheader18.161:                                 ; preds = %.preheader18.preheader.160
  br label %.preheader18.1.162

.preheader18.1.162:                               ; preds = %.preheader18.161
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit58, label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %.preheader18.1.162
  br label %.preheader18.preheader.1.1

.preheader18.preheader.1.1:                       ; preds = %.preheader19.1.1
  br label %.preheader18.155.1

.preheader18.155.1:                               ; preds = %.preheader18.preheader.1.1
  br label %.preheader18.1.1.1

.preheader18.1.1.1:                               ; preds = %.preheader18.155.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit58, label %.preheader19.2.1

.preheader19.2.1:                                 ; preds = %.preheader18.1.1.1
  br label %.preheader18.preheader.2.1

.preheader18.preheader.2.1:                       ; preds = %.preheader19.2.1
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %.preheader18.preheader.2.1
  br label %.preheader18.1.2.1

.preheader18.1.2.1:                               ; preds = %.preheader18.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit58, label %.preheader19.3.1

.preheader19.3.1:                                 ; preds = %.preheader18.1.2.1
  br label %.preheader18.preheader.3.1

.preheader18.preheader.3.1:                       ; preds = %.preheader19.3.1
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %.preheader18.preheader.3.1
  br label %.preheader18.1.3.1

.preheader18.1.3.1:                               ; preds = %.preheader18.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit58, label %.preheader19.4.1

.preheader19.4.1:                                 ; preds = %.preheader18.1.3.1
  br i1 false, label %.preheader18.preheader.4, label %139

139:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %141

.preheader19.preheader.2:                         ; preds = %139
  br label %.preheader19.263

.preheader19.263:                                 ; preds = %.preheader19.preheader.2
  br label %.preheader18.preheader.264

.preheader18.preheader.264:                       ; preds = %.preheader19.263
  br label %.preheader18.265

.preheader18.265:                                 ; preds = %.preheader18.preheader.264
  br label %.preheader18.1.266

.preheader18.1.266:                               ; preds = %.preheader18.265
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit58, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.266
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.155.2

.preheader18.155.2:                               ; preds = %.preheader18.preheader.1.2
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.155.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit58, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit58, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit58, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  br i1 false, label %.preheader18.preheader.4, label %140

140:                                              ; preds = %.preheader19.4.2
  unreachable

141:                                              ; preds = %139
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %142

142:                                              ; preds = %141
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %142
  br label %.preheader17

.preheader17.loopexit:                            ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %152

.preheader16.preheader.1:                         ; preds = %.preheader17.loopexit.4, %.preheader17.loopexit.3, %.preheader17.loopexit.2, %.preheader17.loopexit.176, %.preheader17.loopexit
  %storemerge7.lcssa69 = phi i32 [ 0, %.preheader17.loopexit ], [ 1, %.preheader17.loopexit.176 ], [ 2, %.preheader17.loopexit.2 ], [ 3, %.preheader17.loopexit.3 ], [ 4, %.preheader17.loopexit.4 ]
  br label %.preheader16.168

.preheader16.168:                                 ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.168
  %143 = zext nneg i32 %storemerge7.lcssa69 to i64
  %144 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %143
  store i32 1, ptr %144, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %145 = or disjoint i32 %storemerge7.lcssa69, 64
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %146
  store i32 1, ptr %147, align 4
  br i1 false, label %148, label %.preheader17.loopexit.1

.preheader17.loopexit.1:                          ; preds = %.preheader16.2.1
  unreachable

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
  br i1 false, label %.loopexit71, label %.preheader17.loopexit

.loopexit71:                                      ; preds = %.preheader16.2.4, %.preheader16.2.3, %.preheader16.2.2, %.preheader16.2.175, %.preheader16.2
  %storemerge7.lcssa67.ph = phi i32 [ 0, %.preheader16.2 ], [ 1, %.preheader16.2.175 ], [ 2, %.preheader16.2.2 ], [ 3, %.preheader16.2.3 ], [ 4, %.preheader16.2.4 ]
  br label %148

148:                                              ; preds = %.loopexit71, %.preheader16.2.1
  %storemerge7.lcssa67 = phi i32 [ %storemerge7.lcssa69, %.preheader16.2.1 ], [ %storemerge7.lcssa67.ph, %.loopexit71 ]
  %149 = or disjoint i32 %storemerge7.lcssa67, 128
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %150
  store i32 1, ptr %151, align 4
  unreachable

152:                                              ; preds = %.preheader17.loopexit
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %152
  br label %.preheader17.1

.preheader17.1:                                   ; preds = %.preheader17.preheader.1
  br label %.preheader16.preheader.172

.preheader16.preheader.172:                       ; preds = %.preheader17.1
  br label %.preheader16.173

.preheader16.173:                                 ; preds = %.preheader16.preheader.172
  br label %.preheader16.1.174

.preheader16.1.174:                               ; preds = %.preheader16.173
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %.preheader16.2.175

.preheader16.2.175:                               ; preds = %.preheader16.1.174
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit71, label %.preheader17.loopexit.176

.preheader17.loopexit.176:                        ; preds = %.preheader16.2.175
  br i1 false, label %.preheader16.preheader.1, label %153

153:                                              ; preds = %.preheader17.loopexit.176
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %153
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %.preheader17.preheader.2
  br label %.preheader16.preheader.2

.preheader16.preheader.2:                         ; preds = %.preheader17.2
  br label %.preheader16.277

.preheader16.277:                                 ; preds = %.preheader16.preheader.2
  br label %.preheader16.1.2

.preheader16.1.2:                                 ; preds = %.preheader16.277
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %.preheader16.2.2

.preheader16.2.2:                                 ; preds = %.preheader16.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit71, label %.preheader17.loopexit.2

.preheader17.loopexit.2:                          ; preds = %.preheader16.2.2
  br i1 false, label %.preheader16.preheader.1, label %154

154:                                              ; preds = %.preheader17.loopexit.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %154
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
  br i1 false, label %.loopexit71, label %.preheader17.loopexit.3

.preheader17.loopexit.3:                          ; preds = %.preheader16.2.3
  br i1 false, label %.preheader16.preheader.1, label %155

155:                                              ; preds = %.preheader17.loopexit.3
  br i1 false, label %.preheader17.preheader.4, label %157

.preheader17.preheader.4:                         ; preds = %155
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
  br i1 false, label %.loopexit71, label %.preheader17.loopexit.4

.preheader17.loopexit.4:                          ; preds = %.preheader16.2.4
  br i1 false, label %.preheader16.preheader.1, label %156

156:                                              ; preds = %.preheader17.loopexit.4
  unreachable

157:                                              ; preds = %155
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %158

.loopexit3:                                       ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %164

.preheader15.preheader.1:                         ; preds = %.loopexit3
  br label %.preheader15.182

.preheader15.182:                                 ; preds = %.preheader15.preheader.1
  br label %.preheader14.preheader.183

.preheader14.preheader.183:                       ; preds = %.preheader15.182
  br label %.preheader14.184

.preheader14.184:                                 ; preds = %.preheader14.preheader.183
  br label %.preheader14.1.185

.preheader14.1.185:                               ; preds = %.preheader14.184
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %.preheader14.2.186

.preheader14.2.186:                               ; preds = %.preheader14.1.185
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %.preheader14.3.187

.preheader14.3.187:                               ; preds = %.preheader14.2.186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %.preheader14.4.188

.preheader14.4.188:                               ; preds = %.preheader14.3.187
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit81, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.188
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.179.1

.preheader14.179.1:                               ; preds = %.preheader14.preheader.1.1
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.179.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %.preheader14.2.1.1

.preheader14.2.1.1:                               ; preds = %.preheader14.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %.preheader14.3.1.1

.preheader14.3.1.1:                               ; preds = %.preheader14.2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %.preheader14.4.1.1

.preheader14.4.1.1:                               ; preds = %.preheader14.3.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit81, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  br i1 false, label %.preheader14.preheader.2, label %.loopexit3.1

.loopexit3.1:                                     ; preds = %.preheader15.2.1
  unreachable

158:                                              ; preds = %157
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %158
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
  br i1 false, label %.loopexit81, label %.preheader15.1

.loopexit81:                                      ; preds = %.preheader14.4.1.1, %.preheader14.4.188, %.preheader14.4, %.preheader14.4.1
  %.lcssa78.ph = phi i32 [ 8, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 0, %.preheader14.4.188 ], [ 8, %.preheader14.4.1.1 ]
  br label %159

159:                                              ; preds = %.loopexit81, %.preheader14.4.2
  %.lcssa78 = phi i32 [ 16, %.preheader14.4.2 ], [ %.lcssa78.ph, %.loopexit81 ]
  %160 = or disjoint i32 256, %.lcssa78
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %161
  store i32 1, ptr %162, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader14.4
  br label %.preheader14.preheader.1

.preheader14.preheader.1:                         ; preds = %.preheader15.1
  br label %.preheader14.179

.preheader14.179:                                 ; preds = %.preheader14.preheader.1
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %.preheader14.179
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
  br i1 false, label %.loopexit81, label %.preheader15.2

.preheader15.2:                                   ; preds = %.preheader14.4.1
  br i1 false, label %.preheader14.preheader.2, label %.loopexit3

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  br label %.preheader14.280

.preheader14.280:                                 ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.280
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10304), align 4
  br label %.preheader14.2.2

.preheader14.2.2:                                 ; preds = %.preheader14.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10560), align 4
  br label %.preheader14.3.2

.preheader14.3.2:                                 ; preds = %.preheader14.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10816), align 4
  br label %.preheader14.4.2

.preheader14.4.2:                                 ; preds = %.preheader14.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11072), align 4
  br i1 false, label %159, label %163

163:                                              ; preds = %.preheader14.4.2
  unreachable

164:                                              ; preds = %.loopexit3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %165

165:                                              ; preds = %164
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %165
  br label %.preheader13

.preheader13.loopexit:                            ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %167

.preheader12.preheader.1:                         ; preds = %.preheader13.loopexit.3, %.preheader13.loopexit.2, %.preheader13.loopexit.197, %.preheader13.loopexit
  %.lcssa92 = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 12288), %.preheader13.loopexit ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12292), %.preheader13.loopexit.197 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12296), %.preheader13.loopexit.2 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12300), %.preheader13.loopexit.3 ]
  br label %.preheader12.190

.preheader12.190:                                 ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.190
  store i32 1, ptr %.lcssa92, align 4
  br i1 false, label %166, label %.preheader13.loopexit.1

.preheader13.loopexit.1:                          ; preds = %.preheader12.1.1
  unreachable

.preheader13:                                     ; preds = %.preheader13.preheader
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader
  br label %.preheader12.1

.preheader12.1:                                   ; preds = %.preheader12
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit93, label %.preheader13.loopexit

.loopexit93:                                      ; preds = %.preheader12.1.3, %.preheader12.1.2, %.preheader12.1.196, %.preheader12.1
  %.lcssa89.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 12288), %.preheader12.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12292), %.preheader12.1.196 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12296), %.preheader12.1.2 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12300), %.preheader12.1.3 ]
  br label %166

166:                                              ; preds = %.loopexit93, %.preheader12.1.1
  %.lcssa89 = phi ptr [ %.lcssa92, %.preheader12.1.1 ], [ %.lcssa89.ph, %.loopexit93 ]
  store i32 1, ptr %.lcssa89, align 4
  unreachable

167:                                              ; preds = %.preheader13.loopexit
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %167
  br label %.preheader13.1

.preheader13.1:                                   ; preds = %.preheader13.preheader.1
  br label %.preheader12.preheader.194

.preheader12.preheader.194:                       ; preds = %.preheader13.1
  br label %.preheader12.195

.preheader12.195:                                 ; preds = %.preheader12.preheader.194
  br label %.preheader12.1.196

.preheader12.1.196:                               ; preds = %.preheader12.195
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit93, label %.preheader13.loopexit.197

.preheader13.loopexit.197:                        ; preds = %.preheader12.1.196
  br i1 false, label %.preheader12.preheader.1, label %168

168:                                              ; preds = %.preheader13.loopexit.197
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %168
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %.preheader13.preheader.2
  br label %.preheader12.preheader.2

.preheader12.preheader.2:                         ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %.preheader12.preheader.2
  br label %.preheader12.1.2

.preheader12.1.2:                                 ; preds = %.preheader12.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit93, label %.preheader13.loopexit.2

.preheader13.loopexit.2:                          ; preds = %.preheader12.1.2
  br i1 false, label %.preheader12.preheader.1, label %169

169:                                              ; preds = %.preheader13.loopexit.2
  br i1 false, label %.preheader13.preheader.3, label %171

.preheader13.preheader.3:                         ; preds = %169
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit93, label %.preheader13.loopexit.3

.preheader13.loopexit.3:                          ; preds = %.preheader12.1.3
  br i1 false, label %.preheader12.preheader.1, label %170

170:                                              ; preds = %.preheader13.loopexit.3
  unreachable

171:                                              ; preds = %169
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %172

.loopexit2:                                       ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %175

.preheader11.preheader.1:                         ; preds = %.loopexit2
  br label %.preheader11.1101

.preheader11.1101:                                ; preds = %.preheader11.preheader.1
  br label %.preheader10.preheader.1102

.preheader10.preheader.1102:                      ; preds = %.preheader11.1101
  br label %.preheader10.1103

.preheader10.1103:                                ; preds = %.preheader10.preheader.1102
  br label %.preheader10.1.1104

.preheader10.1.1104:                              ; preds = %.preheader10.1103
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit100, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.1104
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.199.1

.preheader10.199.1:                               ; preds = %.preheader10.preheader.1.1
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.199.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit100, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit100, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  br i1 false, label %.preheader10.preheader.3, label %.loopexit2.1

.loopexit2.1:                                     ; preds = %.preheader11.3.1
  unreachable

172:                                              ; preds = %171
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %172
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %.preheader10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit100, label %.preheader11.1

.loopexit100:                                     ; preds = %.preheader10.1.2.1, %.preheader10.1.1.1, %.preheader10.1.1104, %.preheader10.1, %.preheader10.1.1, %.preheader10.1.2
  %.lcssa98.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 14400), %.preheader10.1.2 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 14368), %.preheader10.1.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 14336), %.preheader10.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 14336), %.preheader10.1.1104 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 14368), %.preheader10.1.1.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 14400), %.preheader10.1.2.1 ]
  br label %173

173:                                              ; preds = %.loopexit100, %.preheader10.1.3
  %.lcssa98 = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 14432), %.preheader10.1.3 ], [ %.lcssa98.ph, %.loopexit100 ]
  store i32 1, ptr %.lcssa98, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader10.1
  br label %.preheader10.preheader.1

.preheader10.preheader.1:                         ; preds = %.preheader11.1
  br label %.preheader10.199

.preheader10.199:                                 ; preds = %.preheader10.preheader.1
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %.preheader10.199
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit100, label %.preheader11.2

.preheader11.2:                                   ; preds = %.preheader10.1.1
  br label %.preheader10.preheader.2

.preheader10.preheader.2:                         ; preds = %.preheader11.2
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %.preheader10.preheader.2
  br label %.preheader10.1.2

.preheader10.1.2:                                 ; preds = %.preheader10.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit100, label %.preheader11.3

.preheader11.3:                                   ; preds = %.preheader10.1.2
  br i1 false, label %.preheader10.preheader.3, label %.loopexit2

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %173, label %174

174:                                              ; preds = %.preheader10.1.3
  unreachable

175:                                              ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %176

.loopexit1:                                       ; preds = %.preheader9.loopexit
  br i1 false, label %.preheader9.preheader.1, label %178

.preheader9.preheader.1:                          ; preds = %.loopexit1
  br label %.preheader9.1

.preheader9.1:                                    ; preds = %.preheader9.preheader.1
  br label %.preheader8.preheader.1107

.preheader8.preheader.1107:                       ; preds = %.preheader9.1
  br label %.preheader8.1108

.preheader8.1108:                                 ; preds = %.preheader8.preheader.1107
  br label %.preheader8.1.1109

.preheader8.1.1109:                               ; preds = %.preheader8.1108
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2.1110

.preheader8.2.1110:                               ; preds = %.preheader8.1.1109
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3.1111

.preheader8.3.1111:                               ; preds = %.preheader8.2.1110
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit106, label %.preheader9.loopexit.1112

.preheader9.loopexit.1112:                        ; preds = %.preheader8.3.1111
  br i1 false, label %.preheader8.preheader.1, label %.loopexit1.1

.loopexit1.1:                                     ; preds = %.preheader9.loopexit.1112
  unreachable

176:                                              ; preds = %175
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %176
  br label %.preheader9

.preheader9.loopexit:                             ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %.loopexit1

.preheader8.preheader.1:                          ; preds = %.preheader9.loopexit.1112, %.preheader9.loopexit
  br label %.preheader8.1105

.preheader8.1105:                                 ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1105
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %177, label %.preheader9.loopexit.1

.preheader9.loopexit.1:                           ; preds = %.preheader8.3.1
  unreachable

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
  br i1 false, label %.loopexit106, label %.preheader9.loopexit

.loopexit106:                                     ; preds = %.preheader8.3.1111, %.preheader8.3
  br label %177

177:                                              ; preds = %.loopexit106, %.preheader8.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

178:                                              ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %179

179:                                              ; preds = %178
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %179
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit117, label %.preheader7.1

.loopexit117:                                     ; preds = %.preheader6.1.1.2, %.preheader6.1.2125, %.preheader6.1.1.1, %.preheader6.1.1121, %.preheader6.1, %.preheader6.1.1
  %.lcssa113.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 18464), %.preheader6.1.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 18432), %.preheader6.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 18436), %.preheader6.1.1121 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 18468), %.preheader6.1.1.1 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 18440), %.preheader6.1.2125 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 18472), %.preheader6.1.1.2 ]
  br label %180

180:                                              ; preds = %.loopexit117, %.preheader6.1.2
  %.lcssa113 = phi ptr [ %183, %.preheader6.1.2 ], [ %.lcssa113.ph, %.loopexit117 ]
  store i32 1, ptr %.lcssa113, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader6.1
  br label %.preheader6.preheader.1

.preheader6.preheader.1:                          ; preds = %.preheader7.1
  br label %.preheader6.1114

.preheader6.1114:                                 ; preds = %.preheader6.preheader.1
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %.preheader6.1114
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit117, label %.preheader7.2

.preheader7.2:                                    ; preds = %.preheader6.1.1
  br i1 false, label %.preheader6.preheader.2, label %185

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %storemerge12.lcssa116 = phi i32 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  %181 = or disjoint i32 %storemerge12.lcssa116, 16
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %182
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  store i32 1, ptr %183, align 4
  br i1 false, label %180, label %184

184:                                              ; preds = %.preheader6.1.2
  unreachable

185:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %185
  br label %.preheader7.1118

.preheader7.1118:                                 ; preds = %.preheader7.preheader.1
  br label %.preheader6.preheader.1119

.preheader6.preheader.1119:                       ; preds = %.preheader7.1118
  br label %.preheader6.1120

.preheader6.1120:                                 ; preds = %.preheader6.preheader.1119
  br label %.preheader6.1.1121

.preheader6.1.1121:                               ; preds = %.preheader6.1120
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit117, label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %.preheader6.1.1121
  br label %.preheader6.preheader.1.1

.preheader6.preheader.1.1:                        ; preds = %.preheader7.1.1
  br label %.preheader6.1114.1

.preheader6.1114.1:                               ; preds = %.preheader6.preheader.1.1
  br label %.preheader6.1.1.1

.preheader6.1.1.1:                                ; preds = %.preheader6.1114.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit117, label %.preheader7.2.1

.preheader7.2.1:                                  ; preds = %.preheader6.1.1.1
  br i1 false, label %.preheader6.preheader.2, label %186

186:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %188

.preheader7.preheader.2:                          ; preds = %186
  br label %.preheader7.2122

.preheader7.2122:                                 ; preds = %.preheader7.preheader.2
  br label %.preheader6.preheader.2123

.preheader6.preheader.2123:                       ; preds = %.preheader7.2122
  br label %.preheader6.2124

.preheader6.2124:                                 ; preds = %.preheader6.preheader.2123
  br label %.preheader6.1.2125

.preheader6.1.2125:                               ; preds = %.preheader6.2124
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit117, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2125
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1114.2

.preheader6.1114.2:                               ; preds = %.preheader6.preheader.1.2
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1114.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit117, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  br i1 false, label %.preheader6.preheader.2, label %187

187:                                              ; preds = %.preheader7.2.2
  unreachable

188:                                              ; preds = %186
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %189

189:                                              ; preds = %188
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %189
  br label %.preheader5

.preheader5.loopexit:                             ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %199

.preheader4.preheader.1:                          ; preds = %.preheader5.loopexit.2, %.preheader5.loopexit.1135, %.preheader5.loopexit
  %storemerge13.lcssa128 = phi i32 [ 0, %.preheader5.loopexit ], [ 1, %.preheader5.loopexit.1135 ], [ 2, %.preheader5.loopexit.2 ]
  br label %.preheader4.1127

.preheader4.1127:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1127
  %190 = zext nneg i32 %storemerge13.lcssa128 to i64
  %191 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %190
  store i32 1, ptr %191, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %192 = or disjoint i32 %storemerge13.lcssa128, 64
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %193
  store i32 1, ptr %194, align 4
  br i1 false, label %195, label %.preheader5.loopexit.1

.preheader5.loopexit.1:                           ; preds = %.preheader4.2.1
  unreachable

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
  br i1 false, label %.loopexit130, label %.preheader5.loopexit

.loopexit130:                                     ; preds = %.preheader4.2.2, %.preheader4.2.1134, %.preheader4.2
  %storemerge13.lcssa126.ph = phi i32 [ 0, %.preheader4.2 ], [ 1, %.preheader4.2.1134 ], [ 2, %.preheader4.2.2 ]
  br label %195

195:                                              ; preds = %.loopexit130, %.preheader4.2.1
  %storemerge13.lcssa126 = phi i32 [ %storemerge13.lcssa128, %.preheader4.2.1 ], [ %storemerge13.lcssa126.ph, %.loopexit130 ]
  %196 = or disjoint i32 %storemerge13.lcssa126, 128
  %197 = zext nneg i32 %196 to i64
  %198 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %197
  store i32 1, ptr %198, align 4
  unreachable

199:                                              ; preds = %.preheader5.loopexit
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %199
  br label %.preheader5.1

.preheader5.1:                                    ; preds = %.preheader5.preheader.1
  br label %.preheader4.preheader.1131

.preheader4.preheader.1131:                       ; preds = %.preheader5.1
  br label %.preheader4.1132

.preheader4.1132:                                 ; preds = %.preheader4.preheader.1131
  br label %.preheader4.1.1133

.preheader4.1.1133:                               ; preds = %.preheader4.1132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %.preheader4.2.1134

.preheader4.2.1134:                               ; preds = %.preheader4.1.1133
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit130, label %.preheader5.loopexit.1135

.preheader5.loopexit.1135:                        ; preds = %.preheader4.2.1134
  br i1 false, label %.preheader4.preheader.1, label %200

200:                                              ; preds = %.preheader5.loopexit.1135
  br i1 false, label %.preheader5.preheader.2, label %202

.preheader5.preheader.2:                          ; preds = %200
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2136

.preheader4.2136:                                 ; preds = %.preheader4.preheader.2
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit130, label %.preheader5.loopexit.2

.preheader5.loopexit.2:                           ; preds = %.preheader4.2.2
  br i1 false, label %.preheader4.preheader.1, label %201

201:                                              ; preds = %.preheader5.loopexit.2
  unreachable

202:                                              ; preds = %200
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %203

.loopexit:                                        ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %209

.preheader3.preheader.1:                          ; preds = %.loopexit
  br label %.preheader3.1141

.preheader3.1141:                                 ; preds = %.preheader3.preheader.1
  br label %.preheader2.preheader.1142

.preheader2.preheader.1142:                       ; preds = %.preheader3.1141
  br label %.preheader2.1143

.preheader2.1143:                                 ; preds = %.preheader2.preheader.1142
  br label %.preheader2.1.1144

.preheader2.1.1144:                               ; preds = %.preheader2.1143
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %.preheader2.2.1145

.preheader2.2.1145:                               ; preds = %.preheader2.1.1144
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit140, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1145
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1138.1

.preheader2.1138.1:                               ; preds = %.preheader2.preheader.1.1
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1138.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit140, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  br i1 false, label %.preheader2.preheader.2, label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader3.2.1
  unreachable

203:                                              ; preds = %202
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %203
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
  br i1 false, label %.loopexit140, label %.preheader3.1

.loopexit140:                                     ; preds = %.preheader2.2.1.1, %.preheader2.2.1145, %.preheader2.2, %.preheader2.2.1
  %.lcssa137.ph = phi i32 [ 8, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 0, %.preheader2.2.1145 ], [ 8, %.preheader2.2.1.1 ]
  br label %204

204:                                              ; preds = %.loopexit140, %.preheader2.2.2
  %.lcssa137 = phi i32 [ 16, %.preheader2.2.2 ], [ %.lcssa137.ph, %.loopexit140 ]
  %205 = or disjoint i32 128, %.lcssa137
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %206
  store i32 1, ptr %207, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader2.2
  br label %.preheader2.preheader.1

.preheader2.preheader.1:                          ; preds = %.preheader3.1
  br label %.preheader2.1138

.preheader2.1138:                                 ; preds = %.preheader2.preheader.1
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %.preheader2.1138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1

.preheader2.2.1:                                  ; preds = %.preheader2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit140, label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader2.2.1
  br i1 false, label %.preheader2.preheader.2, label %.loopexit

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  br label %.preheader2.2139

.preheader2.2139:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2139
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %204, label %208

208:                                              ; preds = %.preheader2.2.2
  unreachable

209:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %210

210:                                              ; preds = %209
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %210
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
  br i1 false, label %.loopexit150, label %.preheader1.1

.loopexit150:                                     ; preds = %.preheader.2.1.2, %.preheader.2.2162, %.preheader.2.1.1, %.preheader.2.1156, %.preheader.2, %.preheader.2.1
  %invariant.op5.lcssa.ph = phi i32 [ 8, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 1, %.preheader.2.1156 ], [ 9, %.preheader.2.1.1 ], [ 2, %.preheader.2.2162 ], [ 10, %.preheader.2.1.2 ]
  br label %211

211:                                              ; preds = %.loopexit150, %.preheader.2.2
  %invariant.op5.lcssa = phi i32 [ %invariant.op5.2, %.preheader.2.2 ], [ %invariant.op5.lcssa.ph, %.loopexit150 ]
  %.reass6.2 = or disjoint i32 128, %invariant.op5.lcssa
  %212 = zext nneg i32 %.reass6.2 to i64
  %213 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %212
  store i32 1, ptr %213, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader.2
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader1.1
  br label %.preheader.1146

.preheader.1146:                                  ; preds = %.preheader.preheader.1
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1146
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %.preheader.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit150, label %.preheader1.2

.preheader1.2:                                    ; preds = %.preheader.2.1
  br i1 false, label %.preheader.preheader.2, label %219

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %storemerge15.lcssa149 = phi i32 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  %invariant.op5.2 = or disjoint i32 16, %storemerge15.lcssa149
  br label %.preheader.2147

.preheader.2147:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2147
  %214 = zext nneg i32 %invariant.op5.2 to i64
  %215 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %214
  store i32 1, ptr %215, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %.reass6.1.2 = or disjoint i32 64, %invariant.op5.2
  %216 = zext nneg i32 %.reass6.1.2 to i64
  %217 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %216
  store i32 1, ptr %217, align 4
  br i1 false, label %211, label %218

218:                                              ; preds = %.preheader.2.2
  unreachable

219:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %219
  br label %.preheader1.1151

.preheader1.1151:                                 ; preds = %.preheader1.preheader.1
  br label %.preheader.preheader.1152

.preheader.preheader.1152:                        ; preds = %.preheader1.1151
  br label %.preheader.1153

.preheader.1153:                                  ; preds = %.preheader.preheader.1152
  br label %.preheader.1.1154

.preheader.1.1154:                                ; preds = %.preheader.1153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %.preheader.2.1156

.preheader.2.1156:                                ; preds = %.preheader.1.1154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit150, label %.preheader1.1.1

.preheader1.1.1:                                  ; preds = %.preheader.2.1156
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.preheader1.1.1
  br label %.preheader.1146.1

.preheader.1146.1:                                ; preds = %.preheader.preheader.1.1
  br label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %.preheader.1146.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %.preheader.2.1.1

.preheader.2.1.1:                                 ; preds = %.preheader.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit150, label %.preheader1.2.1

.preheader1.2.1:                                  ; preds = %.preheader.2.1.1
  br i1 false, label %.preheader.preheader.2, label %220

220:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %222

.preheader1.preheader.2:                          ; preds = %220
  br label %.preheader1.2157

.preheader1.2157:                                 ; preds = %.preheader1.preheader.2
  br label %.preheader.preheader.2158

.preheader.preheader.2158:                        ; preds = %.preheader1.2157
  br label %.preheader.2159

.preheader.2159:                                  ; preds = %.preheader.preheader.2158
  br label %.preheader.1.2160

.preheader.1.2160:                                ; preds = %.preheader.2159
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %.preheader.2.2162

.preheader.2.2162:                                ; preds = %.preheader.1.2160
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit150, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2162
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1146.2

.preheader.1146.2:                                ; preds = %.preheader.preheader.1.2
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1146.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit150, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  br i1 false, label %.preheader.preheader.2, label %221

221:                                              ; preds = %.preheader1.2.2
  unreachable

222:                                              ; preds = %220
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %223 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %223, 0
  br i1 %.not, label %226, label %224

224:                                              ; preds = %222
  %225 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %225, ptr @n, align 4
  br label %227

226:                                              ; preds = %222
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %227

227:                                              ; preds = %226, %224
  %228 = load i32, ptr @n, align 4
  %229 = call i32 @Trial(i32 noundef %228)
  %.not16 = icmp eq i32 %229, 0
  br i1 %.not16, label %230, label %231

230:                                              ; preds = %227
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %234

231:                                              ; preds = %227
  %232 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %232, 2005
  br i1 %.not18, label %234, label %233

233:                                              ; preds = %231
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %234

234:                                              ; preds = %233, %231, %230
  %235 = load i32, ptr @n, align 4
  %236 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %235) #4
  %237 = load i32, ptr @kount, align 4
  %238 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %237) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp samesign ult i32 %storemerge, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nuw nsw i32 %storemerge, 1
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
