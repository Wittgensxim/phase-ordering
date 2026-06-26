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
  br label %3

3:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %17, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %19

17:                                               ; preds = %12, %7
  %18 = add nuw nsw i32 %storemerge, 1
  br label %3, !llvm.loop !7

19:                                               ; preds = %12, %3
  %storemerge1 = phi i32 [ 0, %12 ], [ 1, %3 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nuw nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

18:                                               ; preds = %3
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %4
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
  %31 = trunc nsw i64 %indvars.iv to i32
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
  br label %3

3:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nuw nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

18:                                               ; preds = %3
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %4
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

1:                                                ; preds = %10, %0
  %storemerge = phi i32 [ 0, %0 ], [ %14, %10 ]
  br label %2

.preheader31.preheader:                           ; preds = %5
  br label %.preheader31

2:                                                ; preds = %1
  %3 = zext nneg i32 %storemerge to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  br label %5

5:                                                ; preds = %2
  %6 = zext nneg i32 %storemerge to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 1, ptr %8, align 4
  %9 = icmp samesign ult i32 %storemerge, 510
  br i1 %9, label %10, label %.preheader31.preheader

10:                                               ; preds = %5
  %11 = zext nneg i32 %storemerge to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 1, ptr %13, align 4
  %14 = add nuw nsw i32 %storemerge, 3
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %93, %.preheader31.preheader
  %storemerge1 = phi i32 [ %94, %93 ], [ 1, %.preheader31.preheader ]
  %15 = icmp samesign ult i32 %storemerge1, 6
  br i1 %15, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %.preheader30.preheader
  br label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader
  br label %.preheader29.1

.preheader29.1:                                   ; preds = %.preheader29
  %16 = zext nneg i32 %storemerge1 to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 288
  store i32 0, ptr %18, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %19 = zext nneg i32 %storemerge1 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 544
  store i32 0, ptr %21, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %22 = zext nneg i32 %storemerge1 to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 800
  store i32 0, ptr %24, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %25 = zext nneg i32 %storemerge1 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 1056
  store i32 0, ptr %27, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %28 = zext nneg i32 %storemerge1 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 1312
  store i32 0, ptr %30, align 4
  br i1 false, label %.loopexit, label %.preheader30.1

.loopexit:                                        ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  br label %31

31:                                               ; preds = %.loopexit, %.preheader29.5.5
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  br label %.preheader29.13

.preheader29.13:                                  ; preds = %.preheader29.preheader.1
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.13
  %32 = zext nneg i32 %storemerge1 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 320
  store i32 0, ptr %34, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %35 = zext nneg i32 %storemerge1 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 576
  store i32 0, ptr %37, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %38 = zext nneg i32 %storemerge1 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 832
  store i32 0, ptr %40, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %41 = zext nneg i32 %storemerge1 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 1088
  store i32 0, ptr %43, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %44 = zext nneg i32 %storemerge1 to i64
  %45 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 1344
  store i32 0, ptr %46, align 4
  br i1 false, label %.loopexit, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  br label %.preheader29.24

.preheader29.24:                                  ; preds = %.preheader29.preheader.2
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.24
  %47 = zext nneg i32 %storemerge1 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 352
  store i32 0, ptr %49, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %50 = zext nneg i32 %storemerge1 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %50
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 608
  store i32 0, ptr %52, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %53 = zext nneg i32 %storemerge1 to i64
  %54 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %53
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 864
  store i32 0, ptr %55, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %56 = zext nneg i32 %storemerge1 to i64
  %57 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %56
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 1120
  store i32 0, ptr %58, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %59 = zext nneg i32 %storemerge1 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 1376
  store i32 0, ptr %61, align 4
  br i1 false, label %.loopexit, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  br label %.preheader29.35

.preheader29.35:                                  ; preds = %.preheader29.preheader.3
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.35
  %62 = zext nneg i32 %storemerge1 to i64
  %63 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %62
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 384
  store i32 0, ptr %64, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %65 = zext nneg i32 %storemerge1 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %65
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 640
  store i32 0, ptr %67, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %68 = zext nneg i32 %storemerge1 to i64
  %69 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %68
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 896
  store i32 0, ptr %70, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %71 = zext nneg i32 %storemerge1 to i64
  %72 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %71
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 1152
  store i32 0, ptr %73, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %74 = zext nneg i32 %storemerge1 to i64
  %75 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %74
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 1408
  store i32 0, ptr %76, align 4
  br i1 false, label %.loopexit, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  br label %.preheader29.46

.preheader29.46:                                  ; preds = %.preheader29.preheader.4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.46
  %77 = zext nneg i32 %storemerge1 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %77
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 416
  store i32 0, ptr %79, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %80 = zext nneg i32 %storemerge1 to i64
  %81 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 672
  store i32 0, ptr %82, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %83 = zext nneg i32 %storemerge1 to i64
  %84 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %83
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 928
  store i32 0, ptr %85, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %86 = zext nneg i32 %storemerge1 to i64
  %87 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %86
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 1184
  store i32 0, ptr %88, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %89 = zext nneg i32 %storemerge1 to i64
  %90 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 1440
  store i32 0, ptr %91, align 4
  br i1 false, label %.loopexit, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  br i1 false, label %.preheader29.preheader.5, label %93

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  br label %.preheader29.57

.preheader29.57:                                  ; preds = %.preheader29.preheader.5
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.57
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  br i1 false, label %31, label %92

92:                                               ; preds = %.preheader29.5.5
  unreachable

93:                                               ; preds = %.preheader30.5
  %94 = add nuw nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %113, %.preheader28.preheader
  %storemerge2 = phi i32 [ %114, %113 ], [ 0, %.preheader28.preheader ]
  %95 = icmp samesign ult i32 %storemerge2, 13
  br i1 %95, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %96 = zext nneg i32 %storemerge2 to i64
  %97 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %96
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %106, %.preheader27.preheader
  %storemerge46 = phi i32 [ 0, %.preheader27.preheader ], [ %112, %106 ]
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %98 = zext nneg i32 %storemerge2 to i64
  %99 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %98
  %100 = zext nneg i32 %storemerge46 to i64
  %101 = getelementptr inbounds nuw [4 x i8], ptr %99, i64 %100
  store i32 0, ptr %101, align 4
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %102 = zext nneg i32 %storemerge46 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr %97, i64 %102
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 4
  store i32 0, ptr %104, align 4
  %105 = icmp samesign ult i32 %storemerge46, 510
  br i1 %105, label %106, label %113

106:                                              ; preds = %.preheader27.2
  %107 = zext nneg i32 %storemerge2 to i64
  %108 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %107
  %109 = zext nneg i32 %storemerge46 to i64
  %110 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %109
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 8
  store i32 0, ptr %111, align 4
  %112 = add nuw nsw i32 %storemerge46, 3
  br label %.preheader27, !llvm.loop !15

113:                                              ; preds = %.preheader27.2
  %114 = add nuw nsw i32 %storemerge2, 1
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
  br i1 false, label %.loopexit15, label %.preheader25.1

.loopexit15:                                      ; preds = %.preheader24.1.1.4, %.preheader24.1.4, %.preheader24.1.1.3, %.preheader24.1.3, %.preheader24.1.1.2, %.preheader24.1.223, %.preheader24.1.1.1, %.preheader24.1.119, %.preheader24.1, %.preheader24.1.1
  br label %115

115:                                              ; preds = %.loopexit15, %.preheader24.1.2
  unreachable

.preheader25.1:                                   ; preds = %.preheader24.1
  br label %.preheader24.preheader.1

.preheader24.preheader.1:                         ; preds = %.preheader25.1
  br label %.preheader24.112

.preheader24.112:                                 ; preds = %.preheader24.preheader.1
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %.preheader24.112
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit15, label %.preheader25.2

.preheader25.2:                                   ; preds = %.preheader24.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.1

.preheader24.preheader.2:                         ; preds = %.preheader25.2.4, %.preheader25.2.3, %.preheader25.2.2, %.preheader25.2.1, %.preheader25.2
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %.preheader24.preheader.2
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %.preheader24.2
  br i1 false, label %115, label %116

116:                                              ; preds = %.preheader24.1.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  br label %.preheader25.preheader.1

.preheader25.preheader.1:                         ; preds = %.preheader26.1
  br label %.preheader25.116

.preheader25.116:                                 ; preds = %.preheader25.preheader.1
  br label %.preheader24.preheader.117

.preheader24.preheader.117:                       ; preds = %.preheader25.116
  br label %.preheader24.118

.preheader24.118:                                 ; preds = %.preheader24.preheader.117
  br label %.preheader24.1.119

.preheader24.1.119:                               ; preds = %.preheader24.118
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit15, label %.preheader25.1.1

.preheader25.1.1:                                 ; preds = %.preheader24.1.119
  br label %.preheader24.preheader.1.1

.preheader24.preheader.1.1:                       ; preds = %.preheader25.1.1
  br label %.preheader24.112.1

.preheader24.112.1:                               ; preds = %.preheader24.preheader.1.1
  br label %.preheader24.1.1.1

.preheader24.1.1.1:                               ; preds = %.preheader24.112.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit15, label %.preheader25.2.1

.preheader25.2.1:                                 ; preds = %.preheader24.1.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  br label %.preheader25.preheader.2

.preheader25.preheader.2:                         ; preds = %.preheader26.2
  br label %.preheader25.220

.preheader25.220:                                 ; preds = %.preheader25.preheader.2
  br label %.preheader24.preheader.221

.preheader24.preheader.221:                       ; preds = %.preheader25.220
  br label %.preheader24.222

.preheader24.222:                                 ; preds = %.preheader24.preheader.221
  br label %.preheader24.1.223

.preheader24.1.223:                               ; preds = %.preheader24.222
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit15, label %.preheader25.1.2

.preheader25.1.2:                                 ; preds = %.preheader24.1.223
  br label %.preheader24.preheader.1.2

.preheader24.preheader.1.2:                       ; preds = %.preheader25.1.2
  br label %.preheader24.112.2

.preheader24.112.2:                               ; preds = %.preheader24.preheader.1.2
  br label %.preheader24.1.1.2

.preheader24.1.1.2:                               ; preds = %.preheader24.112.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit15, label %.preheader25.2.2

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
  br i1 false, label %.loopexit15, label %.preheader25.1.3

.preheader25.1.3:                                 ; preds = %.preheader24.1.3
  br label %.preheader24.preheader.1.3

.preheader24.preheader.1.3:                       ; preds = %.preheader25.1.3
  br label %.preheader24.112.3

.preheader24.112.3:                               ; preds = %.preheader24.preheader.1.3
  br label %.preheader24.1.1.3

.preheader24.1.1.3:                               ; preds = %.preheader24.112.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit15, label %.preheader25.2.3

.preheader25.2.3:                                 ; preds = %.preheader24.1.1.3
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.4

.preheader26.4:                                   ; preds = %.preheader25.2.3
  br i1 false, label %.preheader25.preheader.4, label %118

.preheader25.preheader.4:                         ; preds = %.preheader26.4
  br label %.preheader25.4

.preheader25.4:                                   ; preds = %.preheader25.preheader.4
  br label %.preheader24.preheader.4

.preheader24.preheader.4:                         ; preds = %.preheader25.4
  br label %.preheader24.4

.preheader24.4:                                   ; preds = %.preheader24.preheader.4
  br label %.preheader24.1.4

.preheader24.1.4:                                 ; preds = %.preheader24.4
  br i1 false, label %.loopexit15, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader24.1.4
  br label %.preheader24.preheader.1.4

.preheader24.preheader.1.4:                       ; preds = %.preheader25.1.4
  br label %.preheader24.112.4

.preheader24.112.4:                               ; preds = %.preheader24.preheader.1.4
  br label %.preheader24.1.1.4

.preheader24.1.1.4:                               ; preds = %.preheader24.112.4
  br i1 false, label %.loopexit15, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader24.1.1.4
  br i1 false, label %.preheader24.preheader.2, label %117

117:                                              ; preds = %.preheader25.2.4
  unreachable

118:                                              ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %119

119:                                              ; preds = %118
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %119
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
  br i1 false, label %.loopexit29, label %.preheader23.1

.loopexit29:                                      ; preds = %.preheader22.4.2, %.preheader22.4.136, %.preheader22.4
  br label %120

120:                                              ; preds = %.loopexit29, %.preheader22.4.1
  unreachable

.preheader23.1:                                   ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %122

.preheader22.preheader.1:                         ; preds = %.preheader23.1.2, %.preheader23.1.1, %.preheader23.1
  br label %.preheader22.126

.preheader22.126:                                 ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.126
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  br i1 false, label %120, label %121

121:                                              ; preds = %.preheader22.4.1
  unreachable

122:                                              ; preds = %.preheader23.1
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %122
  br label %.preheader23.130

.preheader23.130:                                 ; preds = %.preheader23.preheader.1
  br label %.preheader22.preheader.131

.preheader22.preheader.131:                       ; preds = %.preheader23.130
  br label %.preheader22.132

.preheader22.132:                                 ; preds = %.preheader22.preheader.131
  br label %.preheader22.1.133

.preheader22.1.133:                               ; preds = %.preheader22.132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %.preheader22.2.134

.preheader22.2.134:                               ; preds = %.preheader22.1.133
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %.preheader22.3.135

.preheader22.3.135:                               ; preds = %.preheader22.2.134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %.preheader22.4.136

.preheader22.4.136:                               ; preds = %.preheader22.3.135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit29, label %.preheader23.1.1

.preheader23.1.1:                                 ; preds = %.preheader22.4.136
  br i1 false, label %.preheader22.preheader.1, label %123

123:                                              ; preds = %.preheader23.1.1
  br i1 false, label %.preheader23.preheader.2, label %125

.preheader23.preheader.2:                         ; preds = %123
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.237

.preheader22.237:                                 ; preds = %.preheader22.preheader.2
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.237
  br label %.preheader22.2.2

.preheader22.2.2:                                 ; preds = %.preheader22.1.2
  br label %.preheader22.3.2

.preheader22.3.2:                                 ; preds = %.preheader22.2.2
  br label %.preheader22.4.2

.preheader22.4.2:                                 ; preds = %.preheader22.3.2
  br i1 false, label %.loopexit29, label %.preheader23.1.2

.preheader23.1.2:                                 ; preds = %.preheader22.4.2
  br i1 false, label %.preheader22.preheader.1, label %124

124:                                              ; preds = %.preheader23.1.2
  unreachable

125:                                              ; preds = %123
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %126

126:                                              ; preds = %125
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %126
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
  br i1 false, label %.loopexit44, label %.preheader21.1

.loopexit44:                                      ; preds = %.preheader20.2.3.1, %.preheader20.2.2.1, %.preheader20.2.1.1, %.preheader20.2.149, %.preheader20.2, %.preheader20.2.1, %.preheader20.2.2, %.preheader20.2.3
  br label %127

127:                                              ; preds = %.loopexit44, %.preheader20.2.4
  unreachable

.preheader21.1:                                   ; preds = %.preheader20.2
  br label %.preheader20.preheader.1

.preheader20.preheader.1:                         ; preds = %.preheader21.1
  br label %.preheader20.140

.preheader20.140:                                 ; preds = %.preheader20.preheader.1
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %.preheader20.140
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %.preheader20.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit44, label %.preheader21.2

.preheader21.2:                                   ; preds = %.preheader20.2.1
  br label %.preheader20.preheader.2

.preheader20.preheader.2:                         ; preds = %.preheader21.2
  br label %.preheader20.241

.preheader20.241:                                 ; preds = %.preheader20.preheader.2
  br label %.preheader20.1.2

.preheader20.1.2:                                 ; preds = %.preheader20.241
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2

.preheader20.2.2:                                 ; preds = %.preheader20.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit44, label %.preheader21.3

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
  br i1 false, label %.loopexit44, label %.preheader21.4

.preheader21.4:                                   ; preds = %.preheader20.2.3
  br i1 false, label %.preheader20.preheader.4, label %129

.preheader20.preheader.4:                         ; preds = %.preheader21.4.1, %.preheader21.4
  br label %.preheader20.4

.preheader20.4:                                   ; preds = %.preheader20.preheader.4
  br label %.preheader20.1.4

.preheader20.1.4:                                 ; preds = %.preheader20.4
  br label %.preheader20.2.4

.preheader20.2.4:                                 ; preds = %.preheader20.1.4
  br i1 false, label %127, label %128

128:                                              ; preds = %.preheader20.2.4
  unreachable

129:                                              ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %131

.preheader21.preheader.1:                         ; preds = %129
  br label %.preheader21.145

.preheader21.145:                                 ; preds = %.preheader21.preheader.1
  br label %.preheader20.preheader.146

.preheader20.preheader.146:                       ; preds = %.preheader21.145
  br label %.preheader20.147

.preheader20.147:                                 ; preds = %.preheader20.preheader.146
  br label %.preheader20.1.148

.preheader20.1.148:                               ; preds = %.preheader20.147
  br label %.preheader20.2.149

.preheader20.2.149:                               ; preds = %.preheader20.1.148
  br i1 false, label %.loopexit44, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.149
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.140.1

.preheader20.140.1:                               ; preds = %.preheader20.preheader.1.1
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.140.1
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  br i1 false, label %.loopexit44, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.241.1

.preheader20.241.1:                               ; preds = %.preheader20.preheader.2.1
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.241.1
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  br i1 false, label %.loopexit44, label %.preheader21.3.1

.preheader21.3.1:                                 ; preds = %.preheader20.2.2.1
  br label %.preheader20.preheader.3.1

.preheader20.preheader.3.1:                       ; preds = %.preheader21.3.1
  br label %.preheader20.3.1

.preheader20.3.1:                                 ; preds = %.preheader20.preheader.3.1
  br label %.preheader20.1.3.1

.preheader20.1.3.1:                               ; preds = %.preheader20.3.1
  br label %.preheader20.2.3.1

.preheader20.2.3.1:                               ; preds = %.preheader20.1.3.1
  br i1 false, label %.loopexit44, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  br i1 false, label %.preheader20.preheader.4, label %130

130:                                              ; preds = %.preheader21.4.1
  unreachable

131:                                              ; preds = %129
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
  br i1 false, label %.loopexit55, label %.preheader19.1

.loopexit55:                                      ; preds = %.preheader18.1.3.2, %.preheader18.1.2.2, %.preheader18.1.1.2, %.preheader18.1.263, %.preheader18.1.3.1, %.preheader18.1.2.1, %.preheader18.1.1.1, %.preheader18.1.159, %.preheader18.1, %.preheader18.1.1, %.preheader18.1.2, %.preheader18.1.3
  br label %133

133:                                              ; preds = %.loopexit55, %.preheader18.1.4
  unreachable

.preheader19.1:                                   ; preds = %.preheader18.1
  br label %.preheader18.preheader.1

.preheader18.preheader.1:                         ; preds = %.preheader19.1
  br label %.preheader18.152

.preheader18.152:                                 ; preds = %.preheader18.preheader.1
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %.preheader18.152
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit55, label %.preheader19.2

.preheader19.2:                                   ; preds = %.preheader18.1.1
  br label %.preheader18.preheader.2

.preheader18.preheader.2:                         ; preds = %.preheader19.2
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %.preheader18.preheader.2
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %.preheader18.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit55, label %.preheader19.3

.preheader19.3:                                   ; preds = %.preheader18.1.2
  br label %.preheader18.preheader.3

.preheader18.preheader.3:                         ; preds = %.preheader19.3
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %.preheader18.preheader.3
  br label %.preheader18.1.3

.preheader18.1.3:                                 ; preds = %.preheader18.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit55, label %.preheader19.4

.preheader19.4:                                   ; preds = %.preheader18.1.3
  br i1 false, label %.preheader18.preheader.4, label %135

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  br i1 false, label %133, label %134

134:                                              ; preds = %.preheader18.1.4
  unreachable

135:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %135
  br label %.preheader19.156

.preheader19.156:                                 ; preds = %.preheader19.preheader.1
  br label %.preheader18.preheader.157

.preheader18.preheader.157:                       ; preds = %.preheader19.156
  br label %.preheader18.158

.preheader18.158:                                 ; preds = %.preheader18.preheader.157
  br label %.preheader18.1.159

.preheader18.1.159:                               ; preds = %.preheader18.158
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit55, label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %.preheader18.1.159
  br label %.preheader18.preheader.1.1

.preheader18.preheader.1.1:                       ; preds = %.preheader19.1.1
  br label %.preheader18.152.1

.preheader18.152.1:                               ; preds = %.preheader18.preheader.1.1
  br label %.preheader18.1.1.1

.preheader18.1.1.1:                               ; preds = %.preheader18.152.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit55, label %.preheader19.2.1

.preheader19.2.1:                                 ; preds = %.preheader18.1.1.1
  br label %.preheader18.preheader.2.1

.preheader18.preheader.2.1:                       ; preds = %.preheader19.2.1
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %.preheader18.preheader.2.1
  br label %.preheader18.1.2.1

.preheader18.1.2.1:                               ; preds = %.preheader18.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit55, label %.preheader19.3.1

.preheader19.3.1:                                 ; preds = %.preheader18.1.2.1
  br label %.preheader18.preheader.3.1

.preheader18.preheader.3.1:                       ; preds = %.preheader19.3.1
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %.preheader18.preheader.3.1
  br label %.preheader18.1.3.1

.preheader18.1.3.1:                               ; preds = %.preheader18.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit55, label %.preheader19.4.1

.preheader19.4.1:                                 ; preds = %.preheader18.1.3.1
  br i1 false, label %.preheader18.preheader.4, label %136

136:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %138

.preheader19.preheader.2:                         ; preds = %136
  br label %.preheader19.260

.preheader19.260:                                 ; preds = %.preheader19.preheader.2
  br label %.preheader18.preheader.261

.preheader18.preheader.261:                       ; preds = %.preheader19.260
  br label %.preheader18.262

.preheader18.262:                                 ; preds = %.preheader18.preheader.261
  br label %.preheader18.1.263

.preheader18.1.263:                               ; preds = %.preheader18.262
  br i1 false, label %.loopexit55, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.263
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.152.2

.preheader18.152.2:                               ; preds = %.preheader18.preheader.1.2
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.152.2
  br i1 false, label %.loopexit55, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  br i1 false, label %.loopexit55, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  br i1 false, label %.loopexit55, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  br i1 false, label %.preheader18.preheader.4, label %137

137:                                              ; preds = %.preheader19.4.2
  unreachable

138:                                              ; preds = %136
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %139

139:                                              ; preds = %138
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %139
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
  br i1 false, label %.loopexit69, label %.preheader17.1

.loopexit69:                                      ; preds = %.preheader16.2.4, %.preheader16.2.3, %.preheader16.2.2, %.preheader16.2.174, %.preheader16.2
  br label %140

140:                                              ; preds = %.loopexit69, %.preheader16.2.1
  unreachable

.preheader17.1:                                   ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %142

.preheader16.preheader.1:                         ; preds = %.preheader17.1.4, %.preheader17.1.3, %.preheader17.1.2, %.preheader17.1.1, %.preheader17.1
  br label %.preheader16.166

.preheader16.166:                                 ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.166
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  br i1 false, label %140, label %141

141:                                              ; preds = %.preheader16.2.1
  unreachable

142:                                              ; preds = %.preheader17.1
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %142
  br label %.preheader17.170

.preheader17.170:                                 ; preds = %.preheader17.preheader.1
  br label %.preheader16.preheader.171

.preheader16.preheader.171:                       ; preds = %.preheader17.170
  br label %.preheader16.172

.preheader16.172:                                 ; preds = %.preheader16.preheader.171
  br label %.preheader16.1.173

.preheader16.1.173:                               ; preds = %.preheader16.172
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %.preheader16.2.174

.preheader16.2.174:                               ; preds = %.preheader16.1.173
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit69, label %.preheader17.1.1

.preheader17.1.1:                                 ; preds = %.preheader16.2.174
  br i1 false, label %.preheader16.preheader.1, label %143

143:                                              ; preds = %.preheader17.1.1
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %143
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %.preheader17.preheader.2
  br label %.preheader16.preheader.2

.preheader16.preheader.2:                         ; preds = %.preheader17.2
  br label %.preheader16.275

.preheader16.275:                                 ; preds = %.preheader16.preheader.2
  br label %.preheader16.1.2

.preheader16.1.2:                                 ; preds = %.preheader16.275
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %.preheader16.2.2

.preheader16.2.2:                                 ; preds = %.preheader16.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit69, label %.preheader17.1.2

.preheader17.1.2:                                 ; preds = %.preheader16.2.2
  br i1 false, label %.preheader16.preheader.1, label %144

144:                                              ; preds = %.preheader17.1.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %144
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
  br i1 false, label %.loopexit69, label %.preheader17.1.3

.preheader17.1.3:                                 ; preds = %.preheader16.2.3
  br i1 false, label %.preheader16.preheader.1, label %145

145:                                              ; preds = %.preheader17.1.3
  br i1 false, label %.preheader17.preheader.4, label %147

.preheader17.preheader.4:                         ; preds = %145
  br label %.preheader17.4

.preheader17.4:                                   ; preds = %.preheader17.preheader.4
  br label %.preheader16.preheader.4

.preheader16.preheader.4:                         ; preds = %.preheader17.4
  br label %.preheader16.4

.preheader16.4:                                   ; preds = %.preheader16.preheader.4
  br label %.preheader16.1.4

.preheader16.1.4:                                 ; preds = %.preheader16.4
  br label %.preheader16.2.4

.preheader16.2.4:                                 ; preds = %.preheader16.1.4
  br i1 false, label %.loopexit69, label %.preheader17.1.4

.preheader17.1.4:                                 ; preds = %.preheader16.2.4
  br i1 false, label %.preheader16.preheader.1, label %146

146:                                              ; preds = %.preheader17.1.4
  unreachable

147:                                              ; preds = %145
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %148

148:                                              ; preds = %147
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %148
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
  br i1 false, label %.loopexit82, label %.preheader15.1

.loopexit82:                                      ; preds = %.preheader14.4.1.1, %.preheader14.4.189, %.preheader14.4, %.preheader14.4.1
  br label %149

149:                                              ; preds = %.loopexit82, %.preheader14.4.2
  unreachable

.preheader15.1:                                   ; preds = %.preheader14.4
  br label %.preheader14.preheader.1

.preheader14.preheader.1:                         ; preds = %.preheader15.1
  br label %.preheader14.178

.preheader14.178:                                 ; preds = %.preheader14.preheader.1
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %.preheader14.178
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
  br i1 false, label %.loopexit82, label %.preheader15.2

.preheader15.2:                                   ; preds = %.preheader14.4.1
  br i1 false, label %.preheader14.preheader.2, label %151

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  br label %.preheader14.279

.preheader14.279:                                 ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.279
  br label %.preheader14.2.2

.preheader14.2.2:                                 ; preds = %.preheader14.1.2
  br label %.preheader14.3.2

.preheader14.3.2:                                 ; preds = %.preheader14.2.2
  br label %.preheader14.4.2

.preheader14.4.2:                                 ; preds = %.preheader14.3.2
  br i1 false, label %149, label %150

150:                                              ; preds = %.preheader14.4.2
  unreachable

151:                                              ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %153

.preheader15.preheader.1:                         ; preds = %151
  br label %.preheader15.183

.preheader15.183:                                 ; preds = %.preheader15.preheader.1
  br label %.preheader14.preheader.184

.preheader14.preheader.184:                       ; preds = %.preheader15.183
  br label %.preheader14.185

.preheader14.185:                                 ; preds = %.preheader14.preheader.184
  br label %.preheader14.1.186

.preheader14.1.186:                               ; preds = %.preheader14.185
  br label %.preheader14.2.187

.preheader14.2.187:                               ; preds = %.preheader14.1.186
  br label %.preheader14.3.188

.preheader14.3.188:                               ; preds = %.preheader14.2.187
  br label %.preheader14.4.189

.preheader14.4.189:                               ; preds = %.preheader14.3.188
  br i1 false, label %.loopexit82, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.189
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.178.1

.preheader14.178.1:                               ; preds = %.preheader14.preheader.1.1
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.178.1
  br label %.preheader14.2.1.1

.preheader14.2.1.1:                               ; preds = %.preheader14.1.1.1
  br label %.preheader14.3.1.1

.preheader14.3.1.1:                               ; preds = %.preheader14.2.1.1
  br label %.preheader14.4.1.1

.preheader14.4.1.1:                               ; preds = %.preheader14.3.1.1
  br i1 false, label %.loopexit82, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  br i1 false, label %.preheader14.preheader.2, label %152

152:                                              ; preds = %.preheader15.2.1
  unreachable

153:                                              ; preds = %151
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %154

154:                                              ; preds = %153
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %154
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.preheader
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader
  br label %.preheader12.1

.preheader12.1:                                   ; preds = %.preheader12
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit95, label %.preheader13.1

.loopexit95:                                      ; preds = %.preheader12.1.3, %.preheader12.1.2, %.preheader12.1.199, %.preheader12.1
  br label %155

155:                                              ; preds = %.loopexit95, %.preheader12.1.1
  unreachable

.preheader13.1:                                   ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %157

.preheader12.preheader.1:                         ; preds = %.preheader13.1.3, %.preheader13.1.2, %.preheader13.1.1, %.preheader13.1
  br label %.preheader12.192

.preheader12.192:                                 ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.192
  br i1 false, label %155, label %156

156:                                              ; preds = %.preheader12.1.1
  unreachable

157:                                              ; preds = %.preheader13.1
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %157
  br label %.preheader13.196

.preheader13.196:                                 ; preds = %.preheader13.preheader.1
  br label %.preheader12.preheader.197

.preheader12.preheader.197:                       ; preds = %.preheader13.196
  br label %.preheader12.198

.preheader12.198:                                 ; preds = %.preheader12.preheader.197
  br label %.preheader12.1.199

.preheader12.1.199:                               ; preds = %.preheader12.198
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit95, label %.preheader13.1.1

.preheader13.1.1:                                 ; preds = %.preheader12.1.199
  br i1 false, label %.preheader12.preheader.1, label %158

158:                                              ; preds = %.preheader13.1.1
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %158
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %.preheader13.preheader.2
  br label %.preheader12.preheader.2

.preheader12.preheader.2:                         ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %.preheader12.preheader.2
  br label %.preheader12.1.2

.preheader12.1.2:                                 ; preds = %.preheader12.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit95, label %.preheader13.1.2

.preheader13.1.2:                                 ; preds = %.preheader12.1.2
  br i1 false, label %.preheader12.preheader.1, label %159

159:                                              ; preds = %.preheader13.1.2
  br i1 false, label %.preheader13.preheader.3, label %161

.preheader13.preheader.3:                         ; preds = %159
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  br i1 false, label %.loopexit95, label %.preheader13.1.3

.preheader13.1.3:                                 ; preds = %.preheader12.1.3
  br i1 false, label %.preheader12.preheader.1, label %160

160:                                              ; preds = %.preheader13.1.3
  unreachable

161:                                              ; preds = %159
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %162

162:                                              ; preds = %161
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %162
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %.preheader10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit105, label %.preheader11.1

.loopexit105:                                     ; preds = %.preheader10.1.2.1, %.preheader10.1.1.1, %.preheader10.1.1109, %.preheader10.1, %.preheader10.1.1, %.preheader10.1.2
  br label %163

163:                                              ; preds = %.loopexit105, %.preheader10.1.3
  unreachable

.preheader11.1:                                   ; preds = %.preheader10.1
  br label %.preheader10.preheader.1

.preheader10.preheader.1:                         ; preds = %.preheader11.1
  br label %.preheader10.1102

.preheader10.1102:                                ; preds = %.preheader10.preheader.1
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %.preheader10.1102
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit105, label %.preheader11.2

.preheader11.2:                                   ; preds = %.preheader10.1.1
  br label %.preheader10.preheader.2

.preheader10.preheader.2:                         ; preds = %.preheader11.2
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %.preheader10.preheader.2
  br label %.preheader10.1.2

.preheader10.1.2:                                 ; preds = %.preheader10.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit105, label %.preheader11.3

.preheader11.3:                                   ; preds = %.preheader10.1.2
  br i1 false, label %.preheader10.preheader.3, label %165

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  br i1 false, label %163, label %164

164:                                              ; preds = %.preheader10.1.3
  unreachable

165:                                              ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %167

.preheader11.preheader.1:                         ; preds = %165
  br label %.preheader11.1106

.preheader11.1106:                                ; preds = %.preheader11.preheader.1
  br label %.preheader10.preheader.1107

.preheader10.preheader.1107:                      ; preds = %.preheader11.1106
  br label %.preheader10.1108

.preheader10.1108:                                ; preds = %.preheader10.preheader.1107
  br label %.preheader10.1.1109

.preheader10.1.1109:                              ; preds = %.preheader10.1108
  br i1 false, label %.loopexit105, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.1109
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.1102.1

.preheader10.1102.1:                              ; preds = %.preheader10.preheader.1.1
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.1102.1
  br i1 false, label %.loopexit105, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  br i1 false, label %.loopexit105, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  br i1 false, label %.preheader10.preheader.3, label %166

166:                                              ; preds = %.preheader11.3.1
  unreachable

167:                                              ; preds = %165
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %168

168:                                              ; preds = %167
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %168
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
  br i1 false, label %.loopexit115, label %.preheader9.1

.loopexit115:                                     ; preds = %.preheader8.3.1121, %.preheader8.3
  br label %169

169:                                              ; preds = %.loopexit115, %.preheader8.3.1
  unreachable

.preheader9.1:                                    ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %171

.preheader8.preheader.1:                          ; preds = %.preheader9.1.1, %.preheader9.1
  br label %.preheader8.1112

.preheader8.1112:                                 ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1112
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  br i1 false, label %169, label %170

170:                                              ; preds = %.preheader8.3.1
  unreachable

171:                                              ; preds = %.preheader9.1
  br i1 false, label %.preheader9.preheader.1, label %173

.preheader9.preheader.1:                          ; preds = %171
  br label %.preheader9.1116

.preheader9.1116:                                 ; preds = %.preheader9.preheader.1
  br label %.preheader8.preheader.1117

.preheader8.preheader.1117:                       ; preds = %.preheader9.1116
  br label %.preheader8.1118

.preheader8.1118:                                 ; preds = %.preheader8.preheader.1117
  br label %.preheader8.1.1119

.preheader8.1.1119:                               ; preds = %.preheader8.1118
  br label %.preheader8.2.1120

.preheader8.2.1120:                               ; preds = %.preheader8.1.1119
  br label %.preheader8.3.1121

.preheader8.3.1121:                               ; preds = %.preheader8.2.1120
  br i1 false, label %.loopexit115, label %.preheader9.1.1

.preheader9.1.1:                                  ; preds = %.preheader8.3.1121
  br i1 false, label %.preheader8.preheader.1, label %172

172:                                              ; preds = %.preheader9.1.1
  unreachable

173:                                              ; preds = %171
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %174

174:                                              ; preds = %173
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %174
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit127, label %.preheader7.1

.loopexit127:                                     ; preds = %.preheader6.1.1.2, %.preheader6.1.2135, %.preheader6.1.1.1, %.preheader6.1.1131, %.preheader6.1, %.preheader6.1.1
  br label %175

175:                                              ; preds = %.loopexit127, %.preheader6.1.2
  unreachable

.preheader7.1:                                    ; preds = %.preheader6.1
  br label %.preheader6.preheader.1

.preheader6.preheader.1:                          ; preds = %.preheader7.1
  br label %.preheader6.1124

.preheader6.1124:                                 ; preds = %.preheader6.preheader.1
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %.preheader6.1124
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit127, label %.preheader7.2

.preheader7.2:                                    ; preds = %.preheader6.1.1
  br i1 false, label %.preheader6.preheader.2, label %177

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  br i1 false, label %175, label %176

176:                                              ; preds = %.preheader6.1.2
  unreachable

177:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %177
  br label %.preheader7.1128

.preheader7.1128:                                 ; preds = %.preheader7.preheader.1
  br label %.preheader6.preheader.1129

.preheader6.preheader.1129:                       ; preds = %.preheader7.1128
  br label %.preheader6.1130

.preheader6.1130:                                 ; preds = %.preheader6.preheader.1129
  br label %.preheader6.1.1131

.preheader6.1.1131:                               ; preds = %.preheader6.1130
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit127, label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %.preheader6.1.1131
  br label %.preheader6.preheader.1.1

.preheader6.preheader.1.1:                        ; preds = %.preheader7.1.1
  br label %.preheader6.1124.1

.preheader6.1124.1:                               ; preds = %.preheader6.preheader.1.1
  br label %.preheader6.1.1.1

.preheader6.1.1.1:                                ; preds = %.preheader6.1124.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit127, label %.preheader7.2.1

.preheader7.2.1:                                  ; preds = %.preheader6.1.1.1
  br i1 false, label %.preheader6.preheader.2, label %178

178:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %180

.preheader7.preheader.2:                          ; preds = %178
  br label %.preheader7.2132

.preheader7.2132:                                 ; preds = %.preheader7.preheader.2
  br label %.preheader6.preheader.2133

.preheader6.preheader.2133:                       ; preds = %.preheader7.2132
  br label %.preheader6.2134

.preheader6.2134:                                 ; preds = %.preheader6.preheader.2133
  br label %.preheader6.1.2135

.preheader6.1.2135:                               ; preds = %.preheader6.2134
  br i1 false, label %.loopexit127, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2135
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1124.2

.preheader6.1124.2:                               ; preds = %.preheader6.preheader.1.2
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1124.2
  br i1 false, label %.loopexit127, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  br i1 false, label %.preheader6.preheader.2, label %179

179:                                              ; preds = %.preheader7.2.2
  unreachable

180:                                              ; preds = %178
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %181

181:                                              ; preds = %180
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %181
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
  br i1 false, label %.loopexit141, label %.preheader5.1

.loopexit141:                                     ; preds = %.preheader4.2.2, %.preheader4.2.1146, %.preheader4.2
  br label %182

182:                                              ; preds = %.loopexit141, %.preheader4.2.1
  unreachable

.preheader5.1:                                    ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %184

.preheader4.preheader.1:                          ; preds = %.preheader5.1.2, %.preheader5.1.1, %.preheader5.1
  br label %.preheader4.1138

.preheader4.1138:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1138
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  br i1 false, label %182, label %183

183:                                              ; preds = %.preheader4.2.1
  unreachable

184:                                              ; preds = %.preheader5.1
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %184
  br label %.preheader5.1142

.preheader5.1142:                                 ; preds = %.preheader5.preheader.1
  br label %.preheader4.preheader.1143

.preheader4.preheader.1143:                       ; preds = %.preheader5.1142
  br label %.preheader4.1144

.preheader4.1144:                                 ; preds = %.preheader4.preheader.1143
  br label %.preheader4.1.1145

.preheader4.1.1145:                               ; preds = %.preheader4.1144
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %.preheader4.2.1146

.preheader4.2.1146:                               ; preds = %.preheader4.1.1145
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit141, label %.preheader5.1.1

.preheader5.1.1:                                  ; preds = %.preheader4.2.1146
  br i1 false, label %.preheader4.preheader.1, label %185

185:                                              ; preds = %.preheader5.1.1
  br i1 false, label %.preheader5.preheader.2, label %187

.preheader5.preheader.2:                          ; preds = %185
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2147

.preheader4.2147:                                 ; preds = %.preheader4.preheader.2
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2147
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  br i1 false, label %.loopexit141, label %.preheader5.1.2

.preheader5.1.2:                                  ; preds = %.preheader4.2.2
  br i1 false, label %.preheader4.preheader.1, label %186

186:                                              ; preds = %.preheader5.1.2
  unreachable

187:                                              ; preds = %185
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %188

188:                                              ; preds = %187
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %188
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
  br i1 false, label %.loopexit154, label %.preheader3.1

.loopexit154:                                     ; preds = %.preheader2.2.1.1, %.preheader2.2.1159, %.preheader2.2, %.preheader2.2.1
  br label %189

189:                                              ; preds = %.loopexit154, %.preheader2.2.2
  unreachable

.preheader3.1:                                    ; preds = %.preheader2.2
  br label %.preheader2.preheader.1

.preheader2.preheader.1:                          ; preds = %.preheader3.1
  br label %.preheader2.1150

.preheader2.1150:                                 ; preds = %.preheader2.preheader.1
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %.preheader2.1150
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1

.preheader2.2.1:                                  ; preds = %.preheader2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit154, label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader2.2.1
  br i1 false, label %.preheader2.preheader.2, label %191

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  br label %.preheader2.2151

.preheader2.2151:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2151
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  br i1 false, label %189, label %190

190:                                              ; preds = %.preheader2.2.2
  unreachable

191:                                              ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %193

.preheader3.preheader.1:                          ; preds = %191
  br label %.preheader3.1155

.preheader3.1155:                                 ; preds = %.preheader3.preheader.1
  br label %.preheader2.preheader.1156

.preheader2.preheader.1156:                       ; preds = %.preheader3.1155
  br label %.preheader2.1157

.preheader2.1157:                                 ; preds = %.preheader2.preheader.1156
  br label %.preheader2.1.1158

.preheader2.1.1158:                               ; preds = %.preheader2.1157
  br label %.preheader2.2.1159

.preheader2.2.1159:                               ; preds = %.preheader2.1.1158
  br i1 false, label %.loopexit154, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1159
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1150.1

.preheader2.1150.1:                               ; preds = %.preheader2.preheader.1.1
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1150.1
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  br i1 false, label %.loopexit154, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  br i1 false, label %.preheader2.preheader.2, label %192

192:                                              ; preds = %.preheader3.2.1
  unreachable

193:                                              ; preds = %191
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %194

194:                                              ; preds = %193
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %194
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
  br i1 false, label %.loopexit166, label %.preheader1.1

.loopexit166:                                     ; preds = %.preheader.2.1.2, %.preheader.2.2176, %.preheader.2.1.1, %.preheader.2.1171, %.preheader.2, %.preheader.2.1
  br label %195

195:                                              ; preds = %.loopexit166, %.preheader.2.2
  unreachable

.preheader1.1:                                    ; preds = %.preheader.2
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader1.1
  br label %.preheader.1162

.preheader.1162:                                  ; preds = %.preheader.preheader.1
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1162
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %.preheader.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit166, label %.preheader1.2

.preheader1.2:                                    ; preds = %.preheader.2.1
  br i1 false, label %.preheader.preheader.2, label %197

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  br label %.preheader.2163

.preheader.2163:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2163
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  br i1 false, label %195, label %196

196:                                              ; preds = %.preheader.2.2
  unreachable

197:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %197
  br label %.preheader1.1167

.preheader1.1167:                                 ; preds = %.preheader1.preheader.1
  br label %.preheader.preheader.1168

.preheader.preheader.1168:                        ; preds = %.preheader1.1167
  br label %.preheader.1169

.preheader.1169:                                  ; preds = %.preheader.preheader.1168
  br label %.preheader.1.1170

.preheader.1.1170:                                ; preds = %.preheader.1169
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %.preheader.2.1171

.preheader.2.1171:                                ; preds = %.preheader.1.1170
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit166, label %.preheader1.1.1

.preheader1.1.1:                                  ; preds = %.preheader.2.1171
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.preheader1.1.1
  br label %.preheader.1162.1

.preheader.1162.1:                                ; preds = %.preheader.preheader.1.1
  br label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %.preheader.1162.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %.preheader.2.1.1

.preheader.2.1.1:                                 ; preds = %.preheader.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit166, label %.preheader1.2.1

.preheader1.2.1:                                  ; preds = %.preheader.2.1.1
  br i1 false, label %.preheader.preheader.2, label %198

198:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %200

.preheader1.preheader.2:                          ; preds = %198
  br label %.preheader1.2172

.preheader1.2172:                                 ; preds = %.preheader1.preheader.2
  br label %.preheader.preheader.2173

.preheader.preheader.2173:                        ; preds = %.preheader1.2172
  br label %.preheader.2174

.preheader.2174:                                  ; preds = %.preheader.preheader.2173
  br label %.preheader.1.2175

.preheader.1.2175:                                ; preds = %.preheader.2174
  br label %.preheader.2.2176

.preheader.2.2176:                                ; preds = %.preheader.1.2175
  br i1 false, label %.loopexit166, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2176
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1162.2

.preheader.1162.2:                                ; preds = %.preheader.preheader.1.2
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1162.2
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  br i1 false, label %.loopexit166, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  br i1 false, label %.preheader.preheader.2, label %199

199:                                              ; preds = %.preheader1.2.2
  unreachable

200:                                              ; preds = %198
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %201 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %201, 0
  br i1 %.not, label %204, label %202

202:                                              ; preds = %200
  %203 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %203, ptr @n, align 4
  br label %205

204:                                              ; preds = %200
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %205

205:                                              ; preds = %204, %202
  %206 = load i32, ptr @n, align 4
  %207 = call i32 @Trial(i32 noundef %206)
  %.not16 = icmp eq i32 %207, 0
  br i1 %.not16, label %208, label %209

208:                                              ; preds = %205
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %212

209:                                              ; preds = %205
  %210 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %210, 2005
  br i1 %.not18, label %212, label %211

211:                                              ; preds = %209
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %212

212:                                              ; preds = %211, %209, %208
  %213 = load i32, ptr @n, align 4
  %214 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %213) #4
  %215 = load i32, ptr @kount, align 4
  %216 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %215) #4
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
