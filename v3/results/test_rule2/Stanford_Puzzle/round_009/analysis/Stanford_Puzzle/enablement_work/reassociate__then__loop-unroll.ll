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
  %13 = add nsw i32 %storemerge, %1
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
  %13 = add nsw i32 %storemerge, %1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nuw nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

18:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
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
  %13 = add nsw i32 %storemerge, %1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nuw nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

18:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
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
  %or.cond = or i1 %18, %.not3
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

.preheader31:                                     ; preds = %.preheader31.preheader, %113
  %storemerge1 = phi i32 [ %114, %113 ], [ 1, %.preheader31.preheader ]
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
  %16 = add nuw nsw i32 72, %storemerge1
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %19 = add nuw nsw i32 136, %storemerge1
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %22 = add nuw nsw i32 200, %storemerge1
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %25 = add nuw nsw i32 264, %storemerge1
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %26
  store i32 0, ptr %27, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %28 = add nuw nsw i32 328, %storemerge1
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  br i1 false, label %.loopexit14, label %.preheader30.1

.loopexit14:                                      ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  %storemerge1.lcssa6.ph = phi i32 [ %storemerge1, %.preheader29.5.4 ], [ %storemerge1, %.preheader29.5.3 ], [ %storemerge1, %.preheader29.5.2 ], [ %storemerge1, %.preheader29.5.1 ], [ %storemerge1, %.preheader29.5 ]
  %storemerge47.lcssa5.ph = phi i32 [ 5, %.preheader29.5.4 ], [ 4, %.preheader29.5.3 ], [ 3, %.preheader29.5.2 ], [ 2, %.preheader29.5.1 ], [ 1, %.preheader29.5 ]
  br label %31

31:                                               ; preds = %.loopexit14, %.preheader29.5.5
  %storemerge1.lcssa6 = phi i32 [ %storemerge1.lcssa13, %.preheader29.5.5 ], [ %storemerge1.lcssa6.ph, %.loopexit14 ]
  %storemerge47.lcssa5 = phi i32 [ 6, %.preheader29.5.5 ], [ %storemerge47.lcssa5.ph, %.loopexit14 ]
  %32 = shl nuw nsw i32 %storemerge47.lcssa5, 3
  %33 = add nuw nsw i32 384, %32
  %34 = add nuw nsw i32 %33, %storemerge1.lcssa6
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  br label %.preheader29.17

.preheader29.17:                                  ; preds = %.preheader29.preheader.1
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.17
  %37 = add nuw nsw i32 80, %storemerge1
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %38
  store i32 0, ptr %39, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %40 = add nuw nsw i32 144, %storemerge1
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %43 = add nuw nsw i32 208, %storemerge1
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %44
  store i32 0, ptr %45, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %46 = add nuw nsw i32 272, %storemerge1
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %49 = add nuw nsw i32 336, %storemerge1
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %50
  store i32 0, ptr %51, align 4
  br i1 false, label %.loopexit14, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  br label %.preheader29.28

.preheader29.28:                                  ; preds = %.preheader29.preheader.2
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.28
  %52 = add nuw nsw i32 88, %storemerge1
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %55 = add nuw nsw i32 152, %storemerge1
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %56
  store i32 0, ptr %57, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %58 = add nuw nsw i32 216, %storemerge1
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %61 = add nuw nsw i32 280, %storemerge1
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %62
  store i32 0, ptr %63, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %64 = add nuw nsw i32 344, %storemerge1
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br i1 false, label %.loopexit14, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  br label %.preheader29.39

.preheader29.39:                                  ; preds = %.preheader29.preheader.3
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.39
  %67 = add nuw nsw i32 96, %storemerge1
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %68
  store i32 0, ptr %69, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %70 = add nuw nsw i32 160, %storemerge1
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %73 = add nuw nsw i32 224, %storemerge1
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %74
  store i32 0, ptr %75, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %76 = add nuw nsw i32 288, %storemerge1
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %77
  store i32 0, ptr %78, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %79 = add nuw nsw i32 352, %storemerge1
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %80
  store i32 0, ptr %81, align 4
  br i1 false, label %.loopexit14, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  br label %.preheader29.410

.preheader29.410:                                 ; preds = %.preheader29.preheader.4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.410
  %82 = add nuw nsw i32 104, %storemerge1
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %83
  store i32 0, ptr %84, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %85 = add nuw nsw i32 168, %storemerge1
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %86
  store i32 0, ptr %87, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %88 = add nuw nsw i32 232, %storemerge1
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %89
  store i32 0, ptr %90, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %91 = add nuw nsw i32 296, %storemerge1
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %92
  store i32 0, ptr %93, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %94 = add nuw nsw i32 360, %storemerge1
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %95
  store i32 0, ptr %96, align 4
  br i1 false, label %.loopexit14, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  br i1 false, label %.preheader29.preheader.5, label %113

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %storemerge1.lcssa13 = phi i32 [ %storemerge1, %.preheader30.5 ]
  br label %.preheader29.511

.preheader29.511:                                 ; preds = %.preheader29.preheader.5
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.511
  %97 = add nuw nsw i32 112, %storemerge1.lcssa13
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %98
  store i32 0, ptr %99, align 4
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  %100 = add nuw nsw i32 176, %storemerge1.lcssa13
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %101
  store i32 0, ptr %102, align 4
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  %103 = add nuw nsw i32 240, %storemerge1.lcssa13
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %104
  store i32 0, ptr %105, align 4
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  %106 = add nuw nsw i32 304, %storemerge1.lcssa13
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %107
  store i32 0, ptr %108, align 4
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  %109 = add nuw nsw i32 368, %storemerge1.lcssa13
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %110
  store i32 0, ptr %111, align 4
  br i1 false, label %31, label %112

112:                                              ; preds = %.preheader29.5.5
  unreachable

113:                                              ; preds = %.preheader30.5
  %114 = add nuw nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %.preheader28.preheader, %133
  %storemerge2 = phi i32 [ %134, %133 ], [ 0, %.preheader28.preheader ]
  %115 = icmp samesign ult i32 %storemerge2, 13
  br i1 %115, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %116 = zext nneg i32 %storemerge2 to i64
  %117 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %116
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %127, %.preheader27.preheader
  %storemerge46 = phi i32 [ 0, %.preheader27.preheader ], [ %132, %127 ]
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %118 = zext nneg i32 %storemerge2 to i64
  %119 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %118
  %120 = zext nneg i32 %storemerge46 to i64
  %121 = getelementptr inbounds nuw [4 x i8], ptr %119, i64 %120
  store i32 0, ptr %121, align 4
  %122 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds nuw [4 x i8], ptr %117, i64 %123
  store i32 0, ptr %124, align 4
  %125 = add nuw nsw i32 %storemerge46, 2
  %126 = icmp samesign ult i32 %125, 512
  br i1 %126, label %127, label %133

127:                                              ; preds = %.preheader27.2
  %128 = zext nneg i32 %storemerge2 to i64
  %129 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %128
  %130 = zext nneg i32 %125 to i64
  %131 = getelementptr inbounds nuw [4 x i8], ptr %129, i64 %130
  store i32 0, ptr %131, align 4
  %132 = add nuw nsw i32 %storemerge46, 3
  br label %.preheader27, !llvm.loop !15

133:                                              ; preds = %.preheader27.2
  %134 = add nuw nsw i32 %storemerge2, 1
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
  br i1 false, label %.loopexit20, label %.preheader25.1

.loopexit20:                                      ; preds = %.preheader24.1.1.4, %.preheader24.1.4, %.preheader24.1.1.3, %.preheader24.1.3, %.preheader24.1.1.2, %.preheader24.1.228, %.preheader24.1.1.1, %.preheader24.1.124, %.preheader24.1, %.preheader24.1.1
  %storemerge3.lcssa16.ph = phi i32 [ 0, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 1, %.preheader24.1.124 ], [ 1, %.preheader24.1.1.1 ], [ 2, %.preheader24.1.228 ], [ 2, %.preheader24.1.1.2 ], [ 3, %.preheader24.1.3 ], [ 3, %.preheader24.1.1.3 ], [ 4, %.preheader24.1.4 ], [ 4, %.preheader24.1.1.4 ]
  %storemerge44.lcssa15.ph = phi i32 [ 1, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 0, %.preheader24.1.124 ], [ 1, %.preheader24.1.1.1 ], [ 0, %.preheader24.1.228 ], [ 1, %.preheader24.1.1.2 ], [ 0, %.preheader24.1.3 ], [ 1, %.preheader24.1.1.3 ], [ 0, %.preheader24.1.4 ], [ 1, %.preheader24.1.1.4 ]
  br label %135

135:                                              ; preds = %.loopexit20, %.preheader24.1.2
  %storemerge3.lcssa16 = phi i32 [ %storemerge3.lcssa19, %.preheader24.1.2 ], [ %storemerge3.lcssa16.ph, %.loopexit20 ]
  %storemerge44.lcssa15 = phi i32 [ 2, %.preheader24.1.2 ], [ %storemerge44.lcssa15.ph, %.loopexit20 ]
  %136 = shl nuw nsw i32 %storemerge44.lcssa15, 3
  %137 = add nuw nsw i32 %136, %storemerge3.lcssa16
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %138
  store i32 1, ptr %139, align 4
  unreachable

.preheader25.1:                                   ; preds = %.preheader24.1
  br label %.preheader24.preheader.1

.preheader24.preheader.1:                         ; preds = %.preheader25.1
  br label %.preheader24.117

.preheader24.117:                                 ; preds = %.preheader24.preheader.1
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %.preheader24.117
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit20, label %.preheader25.2

.preheader25.2:                                   ; preds = %.preheader24.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.1

.preheader24.preheader.2:                         ; preds = %.preheader25.2.4, %.preheader25.2.3, %.preheader25.2.2, %.preheader25.2.1, %.preheader25.2
  %storemerge3.lcssa19 = phi i32 [ 0, %.preheader25.2 ], [ 1, %.preheader25.2.1 ], [ 2, %.preheader25.2.2 ], [ 3, %.preheader25.2.3 ], [ 4, %.preheader25.2.4 ]
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %.preheader24.preheader.2
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %.preheader24.2
  %140 = add nuw nsw i32 16, %storemerge3.lcssa19
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %141
  store i32 1, ptr %142, align 4
  br i1 false, label %135, label %143

143:                                              ; preds = %.preheader24.1.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  br label %.preheader25.preheader.1

.preheader25.preheader.1:                         ; preds = %.preheader26.1
  br label %.preheader25.121

.preheader25.121:                                 ; preds = %.preheader25.preheader.1
  br label %.preheader24.preheader.122

.preheader24.preheader.122:                       ; preds = %.preheader25.121
  br label %.preheader24.123

.preheader24.123:                                 ; preds = %.preheader24.preheader.122
  br label %.preheader24.1.124

.preheader24.1.124:                               ; preds = %.preheader24.123
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit20, label %.preheader25.1.1

.preheader25.1.1:                                 ; preds = %.preheader24.1.124
  br label %.preheader24.preheader.1.1

.preheader24.preheader.1.1:                       ; preds = %.preheader25.1.1
  br label %.preheader24.117.1

.preheader24.117.1:                               ; preds = %.preheader24.preheader.1.1
  br label %.preheader24.1.1.1

.preheader24.1.1.1:                               ; preds = %.preheader24.117.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit20, label %.preheader25.2.1

.preheader25.2.1:                                 ; preds = %.preheader24.1.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  br label %.preheader25.preheader.2

.preheader25.preheader.2:                         ; preds = %.preheader26.2
  br label %.preheader25.225

.preheader25.225:                                 ; preds = %.preheader25.preheader.2
  br label %.preheader24.preheader.226

.preheader24.preheader.226:                       ; preds = %.preheader25.225
  br label %.preheader24.227

.preheader24.227:                                 ; preds = %.preheader24.preheader.226
  br label %.preheader24.1.228

.preheader24.1.228:                               ; preds = %.preheader24.227
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit20, label %.preheader25.1.2

.preheader25.1.2:                                 ; preds = %.preheader24.1.228
  br label %.preheader24.preheader.1.2

.preheader24.preheader.1.2:                       ; preds = %.preheader25.1.2
  br label %.preheader24.117.2

.preheader24.117.2:                               ; preds = %.preheader24.preheader.1.2
  br label %.preheader24.1.1.2

.preheader24.1.1.2:                               ; preds = %.preheader24.117.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit20, label %.preheader25.2.2

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
  br i1 false, label %.loopexit20, label %.preheader25.1.3

.preheader25.1.3:                                 ; preds = %.preheader24.1.3
  br label %.preheader24.preheader.1.3

.preheader24.preheader.1.3:                       ; preds = %.preheader25.1.3
  br label %.preheader24.117.3

.preheader24.117.3:                               ; preds = %.preheader24.preheader.1.3
  br label %.preheader24.1.1.3

.preheader24.1.1.3:                               ; preds = %.preheader24.117.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit20, label %.preheader25.2.3

.preheader25.2.3:                                 ; preds = %.preheader24.1.1.3
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.4

.preheader26.4:                                   ; preds = %.preheader25.2.3
  br i1 false, label %.preheader25.preheader.4, label %145

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
  br i1 false, label %.loopexit20, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader24.1.4
  br label %.preheader24.preheader.1.4

.preheader24.preheader.1.4:                       ; preds = %.preheader25.1.4
  br label %.preheader24.117.4

.preheader24.117.4:                               ; preds = %.preheader24.preheader.1.4
  br label %.preheader24.1.1.4

.preheader24.1.1.4:                               ; preds = %.preheader24.117.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit20, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader24.1.1.4
  br i1 false, label %.preheader24.preheader.2, label %144

144:                                              ; preds = %.preheader25.2.4
  unreachable

145:                                              ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %146

146:                                              ; preds = %145
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %146
  br label %.preheader23

.preheader23.loopexit:                            ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %162

.preheader22.preheader.1:                         ; preds = %.preheader23.loopexit.2, %.preheader23.loopexit.140, %.preheader23.loopexit
  %storemerge4.lcssa31 = phi i32 [ 0, %.preheader23.loopexit ], [ 1, %.preheader23.loopexit.140 ], [ 2, %.preheader23.loopexit.2 ]
  br label %.preheader22.130

.preheader22.130:                                 ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.130
  %147 = zext nneg i32 %storemerge4.lcssa31 to i64
  %148 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %147
  store i32 1, ptr %148, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %149 = add nuw nsw i32 64, %storemerge4.lcssa31
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %150
  store i32 1, ptr %151, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %152 = add nuw nsw i32 128, %storemerge4.lcssa31
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %153
  store i32 1, ptr %154, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %155 = add nuw nsw i32 192, %storemerge4.lcssa31
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %156
  store i32 1, ptr %157, align 4
  br i1 false, label %158, label %.preheader23.loopexit.1

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
  br i1 false, label %.loopexit33, label %.preheader23.loopexit

.loopexit33:                                      ; preds = %.preheader22.4.2, %.preheader22.4.139, %.preheader22.4
  %storemerge4.lcssa29.ph = phi i32 [ 0, %.preheader22.4 ], [ 1, %.preheader22.4.139 ], [ 2, %.preheader22.4.2 ]
  br label %158

158:                                              ; preds = %.loopexit33, %.preheader22.4.1
  %storemerge4.lcssa29 = phi i32 [ %storemerge4.lcssa31, %.preheader22.4.1 ], [ %storemerge4.lcssa29.ph, %.loopexit33 ]
  %159 = add nuw nsw i32 256, %storemerge4.lcssa29
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %160
  store i32 1, ptr %161, align 4
  unreachable

162:                                              ; preds = %.preheader23.loopexit
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %162
  br label %.preheader23.1

.preheader23.1:                                   ; preds = %.preheader23.preheader.1
  br label %.preheader22.preheader.134

.preheader22.preheader.134:                       ; preds = %.preheader23.1
  br label %.preheader22.135

.preheader22.135:                                 ; preds = %.preheader22.preheader.134
  br label %.preheader22.1.136

.preheader22.1.136:                               ; preds = %.preheader22.135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %.preheader22.2.137

.preheader22.2.137:                               ; preds = %.preheader22.1.136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %.preheader22.3.138

.preheader22.3.138:                               ; preds = %.preheader22.2.137
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %.preheader22.4.139

.preheader22.4.139:                               ; preds = %.preheader22.3.138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit33, label %.preheader23.loopexit.140

.preheader23.loopexit.140:                        ; preds = %.preheader22.4.139
  br i1 false, label %.preheader22.preheader.1, label %163

163:                                              ; preds = %.preheader23.loopexit.140
  br i1 false, label %.preheader23.preheader.2, label %165

.preheader23.preheader.2:                         ; preds = %163
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.241

.preheader22.241:                                 ; preds = %.preheader22.preheader.2
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.241
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
  br i1 false, label %.loopexit33, label %.preheader23.loopexit.2

.preheader23.loopexit.2:                          ; preds = %.preheader22.4.2
  br i1 false, label %.preheader22.preheader.1, label %164

164:                                              ; preds = %.preheader23.loopexit.2
  unreachable

165:                                              ; preds = %163
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %166

.loopexit4:                                       ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %173

.preheader21.preheader.1:                         ; preds = %.loopexit4
  br label %.preheader21.146

.preheader21.146:                                 ; preds = %.preheader21.preheader.1
  br label %.preheader20.preheader.147

.preheader20.preheader.147:                       ; preds = %.preheader21.146
  br label %.preheader20.148

.preheader20.148:                                 ; preds = %.preheader20.preheader.147
  br label %.preheader20.1.149

.preheader20.1.149:                               ; preds = %.preheader20.148
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %.preheader20.2.150

.preheader20.2.150:                               ; preds = %.preheader20.1.149
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit45, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.150
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.143.1

.preheader20.143.1:                               ; preds = %.preheader20.preheader.1.1
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.143.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit45, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.244.1

.preheader20.244.1:                               ; preds = %.preheader20.preheader.2.1
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.244.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit45, label %.preheader21.3.1

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
  br i1 false, label %.loopexit45, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  br i1 false, label %.preheader20.preheader.4, label %.loopexit4.1

.loopexit4.1:                                     ; preds = %.preheader21.4.1
  unreachable

166:                                              ; preds = %165
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %166
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
  br i1 false, label %.loopexit45, label %.preheader21.1

.loopexit45:                                      ; preds = %.preheader20.2.3.1, %.preheader20.2.2.1, %.preheader20.2.1.1, %.preheader20.2.150, %.preheader20.2, %.preheader20.2.1, %.preheader20.2.2, %.preheader20.2.3
  %storemerge40.lcssa42.ph = phi i32 [ 3, %.preheader20.2.3 ], [ 2, %.preheader20.2.2 ], [ 1, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 0, %.preheader20.2.150 ], [ 1, %.preheader20.2.1.1 ], [ 2, %.preheader20.2.2.1 ], [ 3, %.preheader20.2.3.1 ]
  br label %167

167:                                              ; preds = %.loopexit45, %.preheader20.2.4
  %storemerge40.lcssa42 = phi i32 [ 4, %.preheader20.2.4 ], [ %storemerge40.lcssa42.ph, %.loopexit45 ]
  %168 = shl nuw nsw i32 %storemerge40.lcssa42, 3
  %169 = add nuw nsw i32 128, %168
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %170
  store i32 1, ptr %171, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader20.2
  br label %.preheader20.preheader.1

.preheader20.preheader.1:                         ; preds = %.preheader21.1
  br label %.preheader20.143

.preheader20.143:                                 ; preds = %.preheader20.preheader.1
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %.preheader20.143
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %.preheader20.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit45, label %.preheader21.2

.preheader21.2:                                   ; preds = %.preheader20.2.1
  br label %.preheader20.preheader.2

.preheader20.preheader.2:                         ; preds = %.preheader21.2
  br label %.preheader20.244

.preheader20.244:                                 ; preds = %.preheader20.preheader.2
  br label %.preheader20.1.2

.preheader20.1.2:                                 ; preds = %.preheader20.244
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2

.preheader20.2.2:                                 ; preds = %.preheader20.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit45, label %.preheader21.3

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
  br i1 false, label %.loopexit45, label %.preheader21.4

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
  br i1 false, label %167, label %172

172:                                              ; preds = %.preheader20.2.4
  unreachable

173:                                              ; preds = %.loopexit4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %174

174:                                              ; preds = %173
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %174
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %.preheader18
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit56, label %.preheader19.1

.loopexit56:                                      ; preds = %.preheader18.1.3.2, %.preheader18.1.2.2, %.preheader18.1.1.2, %.preheader18.1.264, %.preheader18.1.3.1, %.preheader18.1.2.1, %.preheader18.1.1.1, %.preheader18.1.160, %.preheader18.1, %.preheader18.1.1, %.preheader18.1.2, %.preheader18.1.3
  %storemerge6.lcssa52.ph = phi i32 [ 0, %.preheader18.1.3 ], [ 0, %.preheader18.1.2 ], [ 0, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 1, %.preheader18.1.160 ], [ 1, %.preheader18.1.1.1 ], [ 1, %.preheader18.1.2.1 ], [ 1, %.preheader18.1.3.1 ], [ 2, %.preheader18.1.264 ], [ 2, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 2, %.preheader18.1.3.2 ]
  %storemerge38.lcssa51.ph = phi i32 [ 3, %.preheader18.1.3 ], [ 2, %.preheader18.1.2 ], [ 1, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 0, %.preheader18.1.160 ], [ 1, %.preheader18.1.1.1 ], [ 2, %.preheader18.1.2.1 ], [ 3, %.preheader18.1.3.1 ], [ 0, %.preheader18.1.264 ], [ 1, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 3, %.preheader18.1.3.2 ]
  br label %175

175:                                              ; preds = %.loopexit56, %.preheader18.1.4
  %storemerge6.lcssa52 = phi i32 [ %storemerge6.lcssa55, %.preheader18.1.4 ], [ %storemerge6.lcssa52.ph, %.loopexit56 ]
  %storemerge38.lcssa51 = phi i32 [ 4, %.preheader18.1.4 ], [ %storemerge38.lcssa51.ph, %.loopexit56 ]
  %176 = shl nuw nsw i32 %storemerge38.lcssa51, 3
  %177 = add nuw nsw i32 %176, %storemerge6.lcssa52
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %178
  store i32 1, ptr %179, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader18.1
  br label %.preheader18.preheader.1

.preheader18.preheader.1:                         ; preds = %.preheader19.1
  br label %.preheader18.153

.preheader18.153:                                 ; preds = %.preheader18.preheader.1
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %.preheader18.153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit56, label %.preheader19.2

.preheader19.2:                                   ; preds = %.preheader18.1.1
  br label %.preheader18.preheader.2

.preheader18.preheader.2:                         ; preds = %.preheader19.2
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %.preheader18.preheader.2
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %.preheader18.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit56, label %.preheader19.3

.preheader19.3:                                   ; preds = %.preheader18.1.2
  br label %.preheader18.preheader.3

.preheader18.preheader.3:                         ; preds = %.preheader19.3
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %.preheader18.preheader.3
  br label %.preheader18.1.3

.preheader18.1.3:                                 ; preds = %.preheader18.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit56, label %.preheader19.4

.preheader19.4:                                   ; preds = %.preheader18.1.3
  br i1 false, label %.preheader18.preheader.4, label %184

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %storemerge6.lcssa55 = phi i32 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  %180 = add nuw nsw i32 32, %storemerge6.lcssa55
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %181
  store i32 1, ptr %182, align 4
  br i1 false, label %175, label %183

183:                                              ; preds = %.preheader18.1.4
  unreachable

184:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %184
  br label %.preheader19.157

.preheader19.157:                                 ; preds = %.preheader19.preheader.1
  br label %.preheader18.preheader.158

.preheader18.preheader.158:                       ; preds = %.preheader19.157
  br label %.preheader18.159

.preheader18.159:                                 ; preds = %.preheader18.preheader.158
  br label %.preheader18.1.160

.preheader18.1.160:                               ; preds = %.preheader18.159
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit56, label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %.preheader18.1.160
  br label %.preheader18.preheader.1.1

.preheader18.preheader.1.1:                       ; preds = %.preheader19.1.1
  br label %.preheader18.153.1

.preheader18.153.1:                               ; preds = %.preheader18.preheader.1.1
  br label %.preheader18.1.1.1

.preheader18.1.1.1:                               ; preds = %.preheader18.153.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit56, label %.preheader19.2.1

.preheader19.2.1:                                 ; preds = %.preheader18.1.1.1
  br label %.preheader18.preheader.2.1

.preheader18.preheader.2.1:                       ; preds = %.preheader19.2.1
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %.preheader18.preheader.2.1
  br label %.preheader18.1.2.1

.preheader18.1.2.1:                               ; preds = %.preheader18.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit56, label %.preheader19.3.1

.preheader19.3.1:                                 ; preds = %.preheader18.1.2.1
  br label %.preheader18.preheader.3.1

.preheader18.preheader.3.1:                       ; preds = %.preheader19.3.1
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %.preheader18.preheader.3.1
  br label %.preheader18.1.3.1

.preheader18.1.3.1:                               ; preds = %.preheader18.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit56, label %.preheader19.4.1

.preheader19.4.1:                                 ; preds = %.preheader18.1.3.1
  br i1 false, label %.preheader18.preheader.4, label %185

185:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %187

.preheader19.preheader.2:                         ; preds = %185
  br label %.preheader19.261

.preheader19.261:                                 ; preds = %.preheader19.preheader.2
  br label %.preheader18.preheader.262

.preheader18.preheader.262:                       ; preds = %.preheader19.261
  br label %.preheader18.263

.preheader18.263:                                 ; preds = %.preheader18.preheader.262
  br label %.preheader18.1.264

.preheader18.1.264:                               ; preds = %.preheader18.263
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit56, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.264
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.153.2

.preheader18.153.2:                               ; preds = %.preheader18.preheader.1.2
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.153.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit56, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit56, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit56, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  br i1 false, label %.preheader18.preheader.4, label %186

186:                                              ; preds = %.preheader19.4.2
  unreachable

187:                                              ; preds = %185
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %188

188:                                              ; preds = %187
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %188
  br label %.preheader17

.preheader17.loopexit:                            ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %198

.preheader16.preheader.1:                         ; preds = %.preheader17.loopexit.4, %.preheader17.loopexit.3, %.preheader17.loopexit.2, %.preheader17.loopexit.174, %.preheader17.loopexit
  %storemerge7.lcssa67 = phi i32 [ 0, %.preheader17.loopexit ], [ 1, %.preheader17.loopexit.174 ], [ 2, %.preheader17.loopexit.2 ], [ 3, %.preheader17.loopexit.3 ], [ 4, %.preheader17.loopexit.4 ]
  br label %.preheader16.166

.preheader16.166:                                 ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.166
  %189 = zext nneg i32 %storemerge7.lcssa67 to i64
  %190 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %189
  store i32 1, ptr %190, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %191 = add nuw nsw i32 64, %storemerge7.lcssa67
  %192 = zext nneg i32 %191 to i64
  %193 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %192
  store i32 1, ptr %193, align 4
  br i1 false, label %194, label %.preheader17.loopexit.1

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
  br i1 false, label %.loopexit69, label %.preheader17.loopexit

.loopexit69:                                      ; preds = %.preheader16.2.4, %.preheader16.2.3, %.preheader16.2.2, %.preheader16.2.173, %.preheader16.2
  %storemerge7.lcssa65.ph = phi i32 [ 0, %.preheader16.2 ], [ 1, %.preheader16.2.173 ], [ 2, %.preheader16.2.2 ], [ 3, %.preheader16.2.3 ], [ 4, %.preheader16.2.4 ]
  br label %194

194:                                              ; preds = %.loopexit69, %.preheader16.2.1
  %storemerge7.lcssa65 = phi i32 [ %storemerge7.lcssa67, %.preheader16.2.1 ], [ %storemerge7.lcssa65.ph, %.loopexit69 ]
  %195 = add nuw nsw i32 128, %storemerge7.lcssa65
  %196 = zext nneg i32 %195 to i64
  %197 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %196
  store i32 1, ptr %197, align 4
  unreachable

198:                                              ; preds = %.preheader17.loopexit
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %198
  br label %.preheader17.1

.preheader17.1:                                   ; preds = %.preheader17.preheader.1
  br label %.preheader16.preheader.170

.preheader16.preheader.170:                       ; preds = %.preheader17.1
  br label %.preheader16.171

.preheader16.171:                                 ; preds = %.preheader16.preheader.170
  br label %.preheader16.1.172

.preheader16.1.172:                               ; preds = %.preheader16.171
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %.preheader16.2.173

.preheader16.2.173:                               ; preds = %.preheader16.1.172
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit69, label %.preheader17.loopexit.174

.preheader17.loopexit.174:                        ; preds = %.preheader16.2.173
  br i1 false, label %.preheader16.preheader.1, label %199

199:                                              ; preds = %.preheader17.loopexit.174
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %199
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
  br i1 false, label %.loopexit69, label %.preheader17.loopexit.2

.preheader17.loopexit.2:                          ; preds = %.preheader16.2.2
  br i1 false, label %.preheader16.preheader.1, label %200

200:                                              ; preds = %.preheader17.loopexit.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %200
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
  br i1 false, label %.loopexit69, label %.preheader17.loopexit.3

.preheader17.loopexit.3:                          ; preds = %.preheader16.2.3
  br i1 false, label %.preheader16.preheader.1, label %201

201:                                              ; preds = %.preheader17.loopexit.3
  br i1 false, label %.preheader17.preheader.4, label %203

.preheader17.preheader.4:                         ; preds = %201
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
  br i1 false, label %.loopexit69, label %.preheader17.loopexit.4

.preheader17.loopexit.4:                          ; preds = %.preheader16.2.4
  br i1 false, label %.preheader16.preheader.1, label %202

202:                                              ; preds = %.preheader17.loopexit.4
  unreachable

203:                                              ; preds = %201
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %204

.loopexit3:                                       ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %211

.preheader15.preheader.1:                         ; preds = %.loopexit3
  br label %.preheader15.180

.preheader15.180:                                 ; preds = %.preheader15.preheader.1
  br label %.preheader14.preheader.181

.preheader14.preheader.181:                       ; preds = %.preheader15.180
  br label %.preheader14.182

.preheader14.182:                                 ; preds = %.preheader14.preheader.181
  br label %.preheader14.1.183

.preheader14.1.183:                               ; preds = %.preheader14.182
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %.preheader14.2.184

.preheader14.2.184:                               ; preds = %.preheader14.1.183
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %.preheader14.3.185

.preheader14.3.185:                               ; preds = %.preheader14.2.184
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %.preheader14.4.186

.preheader14.4.186:                               ; preds = %.preheader14.3.185
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit79, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.186
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.177.1

.preheader14.177.1:                               ; preds = %.preheader14.preheader.1.1
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.177.1
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
  br i1 false, label %.loopexit79, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  br i1 false, label %.preheader14.preheader.2, label %.loopexit3.1

.loopexit3.1:                                     ; preds = %.preheader15.2.1
  unreachable

204:                                              ; preds = %203
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %204
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
  br i1 false, label %.loopexit79, label %.preheader15.1

.loopexit79:                                      ; preds = %.preheader14.4.1.1, %.preheader14.4.186, %.preheader14.4, %.preheader14.4.1
  %storemerge34.lcssa76.ph = phi i32 [ 1, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 0, %.preheader14.4.186 ], [ 1, %.preheader14.4.1.1 ]
  br label %205

205:                                              ; preds = %.loopexit79, %.preheader14.4.2
  %storemerge34.lcssa76 = phi i32 [ 2, %.preheader14.4.2 ], [ %storemerge34.lcssa76.ph, %.loopexit79 ]
  %206 = shl nuw nsw i32 %storemerge34.lcssa76, 3
  %207 = add nuw nsw i32 256, %206
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %208
  store i32 1, ptr %209, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader14.4
  br label %.preheader14.preheader.1

.preheader14.preheader.1:                         ; preds = %.preheader15.1
  br label %.preheader14.177

.preheader14.177:                                 ; preds = %.preheader14.preheader.1
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %.preheader14.177
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
  br i1 false, label %.loopexit79, label %.preheader15.2

.preheader15.2:                                   ; preds = %.preheader14.4.1
  br i1 false, label %.preheader14.preheader.2, label %.loopexit3

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  br label %.preheader14.278

.preheader14.278:                                 ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.278
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
  br i1 false, label %205, label %210

210:                                              ; preds = %.preheader14.4.2
  unreachable

211:                                              ; preds = %.loopexit3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %212

212:                                              ; preds = %211
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %212
  br label %.preheader13

.preheader13.loopexit:                            ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %218

.preheader12.preheader.1:                         ; preds = %.preheader13.loopexit.3, %.preheader13.loopexit.2, %.preheader13.loopexit.195, %.preheader13.loopexit
  %storemerge9.lcssa90 = phi i32 [ 0, %.preheader13.loopexit ], [ 1, %.preheader13.loopexit.195 ], [ 2, %.preheader13.loopexit.2 ], [ 3, %.preheader13.loopexit.3 ]
  br label %.preheader12.188

.preheader12.188:                                 ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.188
  %213 = zext nneg i32 %storemerge9.lcssa90 to i64
  %214 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %213
  store i32 1, ptr %214, align 4
  br i1 false, label %215, label %.preheader13.loopexit.1

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
  br i1 false, label %.loopexit91, label %.preheader13.loopexit

.loopexit91:                                      ; preds = %.preheader12.1.3, %.preheader12.1.2, %.preheader12.1.194, %.preheader12.1
  %storemerge9.lcssa87.ph = phi i32 [ 0, %.preheader12.1 ], [ 1, %.preheader12.1.194 ], [ 2, %.preheader12.1.2 ], [ 3, %.preheader12.1.3 ]
  br label %215

215:                                              ; preds = %.loopexit91, %.preheader12.1.1
  %storemerge9.lcssa87 = phi i32 [ %storemerge9.lcssa90, %.preheader12.1.1 ], [ %storemerge9.lcssa87.ph, %.loopexit91 ]
  %216 = zext nneg i32 %storemerge9.lcssa87 to i64
  %217 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %216
  store i32 1, ptr %217, align 4
  unreachable

218:                                              ; preds = %.preheader13.loopexit
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %218
  br label %.preheader13.1

.preheader13.1:                                   ; preds = %.preheader13.preheader.1
  br label %.preheader12.preheader.192

.preheader12.preheader.192:                       ; preds = %.preheader13.1
  br label %.preheader12.193

.preheader12.193:                                 ; preds = %.preheader12.preheader.192
  br label %.preheader12.1.194

.preheader12.1.194:                               ; preds = %.preheader12.193
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit91, label %.preheader13.loopexit.195

.preheader13.loopexit.195:                        ; preds = %.preheader12.1.194
  br i1 false, label %.preheader12.preheader.1, label %219

219:                                              ; preds = %.preheader13.loopexit.195
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %219
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %.preheader13.preheader.2
  br label %.preheader12.preheader.2

.preheader12.preheader.2:                         ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %.preheader12.preheader.2
  br label %.preheader12.1.2

.preheader12.1.2:                                 ; preds = %.preheader12.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit91, label %.preheader13.loopexit.2

.preheader13.loopexit.2:                          ; preds = %.preheader12.1.2
  br i1 false, label %.preheader12.preheader.1, label %220

220:                                              ; preds = %.preheader13.loopexit.2
  br i1 false, label %.preheader13.preheader.3, label %222

.preheader13.preheader.3:                         ; preds = %220
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit91, label %.preheader13.loopexit.3

.preheader13.loopexit.3:                          ; preds = %.preheader12.1.3
  br i1 false, label %.preheader12.preheader.1, label %221

221:                                              ; preds = %.preheader13.loopexit.3
  unreachable

222:                                              ; preds = %220
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %223

.loopexit2:                                       ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %229

.preheader11.preheader.1:                         ; preds = %.loopexit2
  br label %.preheader11.199

.preheader11.199:                                 ; preds = %.preheader11.preheader.1
  br label %.preheader10.preheader.1100

.preheader10.preheader.1100:                      ; preds = %.preheader11.199
  br label %.preheader10.1101

.preheader10.1101:                                ; preds = %.preheader10.preheader.1100
  br label %.preheader10.1.1102

.preheader10.1.1102:                              ; preds = %.preheader10.1101
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit98, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.1102
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.197.1

.preheader10.197.1:                               ; preds = %.preheader10.preheader.1.1
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.197.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit98, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit98, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  br i1 false, label %.preheader10.preheader.3, label %.loopexit2.1

.loopexit2.1:                                     ; preds = %.preheader11.3.1
  unreachable

223:                                              ; preds = %222
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %223
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %.preheader10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit98, label %.preheader11.1

.loopexit98:                                      ; preds = %.preheader10.1.2.1, %.preheader10.1.1.1, %.preheader10.1.1102, %.preheader10.1, %.preheader10.1.1, %.preheader10.1.2
  %storemerge30.lcssa96.ph = phi i32 [ 2, %.preheader10.1.2 ], [ 1, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 0, %.preheader10.1.1102 ], [ 1, %.preheader10.1.1.1 ], [ 2, %.preheader10.1.2.1 ]
  br label %224

224:                                              ; preds = %.loopexit98, %.preheader10.1.3
  %storemerge30.lcssa96 = phi i32 [ 3, %.preheader10.1.3 ], [ %storemerge30.lcssa96.ph, %.loopexit98 ]
  %225 = shl nuw nsw i32 %storemerge30.lcssa96, 3
  %226 = zext nneg i32 %225 to i64
  %227 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %226
  store i32 1, ptr %227, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader10.1
  br label %.preheader10.preheader.1

.preheader10.preheader.1:                         ; preds = %.preheader11.1
  br label %.preheader10.197

.preheader10.197:                                 ; preds = %.preheader10.preheader.1
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %.preheader10.197
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit98, label %.preheader11.2

.preheader11.2:                                   ; preds = %.preheader10.1.1
  br label %.preheader10.preheader.2

.preheader10.preheader.2:                         ; preds = %.preheader11.2
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %.preheader10.preheader.2
  br label %.preheader10.1.2

.preheader10.1.2:                                 ; preds = %.preheader10.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit98, label %.preheader11.3

.preheader11.3:                                   ; preds = %.preheader10.1.2
  br i1 false, label %.preheader10.preheader.3, label %.loopexit2

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %224, label %228

228:                                              ; preds = %.preheader10.1.3
  unreachable

229:                                              ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %230

.loopexit1:                                       ; preds = %.preheader9.loopexit
  br i1 false, label %.preheader9.preheader.1, label %232

.preheader9.preheader.1:                          ; preds = %.loopexit1
  br label %.preheader9.1

.preheader9.1:                                    ; preds = %.preheader9.preheader.1
  br label %.preheader8.preheader.1105

.preheader8.preheader.1105:                       ; preds = %.preheader9.1
  br label %.preheader8.1106

.preheader8.1106:                                 ; preds = %.preheader8.preheader.1105
  br label %.preheader8.1.1107

.preheader8.1.1107:                               ; preds = %.preheader8.1106
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2.1108

.preheader8.2.1108:                               ; preds = %.preheader8.1.1107
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3.1109

.preheader8.3.1109:                               ; preds = %.preheader8.2.1108
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit104, label %.preheader9.loopexit.1110

.preheader9.loopexit.1110:                        ; preds = %.preheader8.3.1109
  br i1 false, label %.preheader8.preheader.1, label %.loopexit1.1

.loopexit1.1:                                     ; preds = %.preheader9.loopexit.1110
  unreachable

230:                                              ; preds = %229
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %230
  br label %.preheader9

.preheader9.loopexit:                             ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %.loopexit1

.preheader8.preheader.1:                          ; preds = %.preheader9.loopexit.1110, %.preheader9.loopexit
  br label %.preheader8.1103

.preheader8.1103:                                 ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1103
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %231, label %.preheader9.loopexit.1

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
  br i1 false, label %.loopexit104, label %.preheader9.loopexit

.loopexit104:                                     ; preds = %.preheader8.3.1109, %.preheader8.3
  br label %231

231:                                              ; preds = %.loopexit104, %.preheader8.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

232:                                              ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %233

233:                                              ; preds = %232
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %233
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit116, label %.preheader7.1

.loopexit116:                                     ; preds = %.preheader6.1.1.2, %.preheader6.1.2124, %.preheader6.1.1.1, %.preheader6.1.1120, %.preheader6.1, %.preheader6.1.1
  %storemerge12.lcssa112.ph = phi i32 [ 0, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 1, %.preheader6.1.1120 ], [ 1, %.preheader6.1.1.1 ], [ 2, %.preheader6.1.2124 ], [ 2, %.preheader6.1.1.2 ]
  %storemerge26.lcssa111.ph = phi i32 [ 1, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 0, %.preheader6.1.1120 ], [ 1, %.preheader6.1.1.1 ], [ 0, %.preheader6.1.2124 ], [ 1, %.preheader6.1.1.2 ]
  br label %234

234:                                              ; preds = %.loopexit116, %.preheader6.1.2
  %storemerge12.lcssa112 = phi i32 [ %storemerge12.lcssa115, %.preheader6.1.2 ], [ %storemerge12.lcssa112.ph, %.loopexit116 ]
  %storemerge26.lcssa111 = phi i32 [ 2, %.preheader6.1.2 ], [ %storemerge26.lcssa111.ph, %.loopexit116 ]
  %235 = shl nuw nsw i32 %storemerge26.lcssa111, 3
  %236 = add nuw nsw i32 %235, %storemerge12.lcssa112
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %237
  store i32 1, ptr %238, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader6.1
  br label %.preheader6.preheader.1

.preheader6.preheader.1:                          ; preds = %.preheader7.1
  br label %.preheader6.1113

.preheader6.1113:                                 ; preds = %.preheader6.preheader.1
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %.preheader6.1113
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit116, label %.preheader7.2

.preheader7.2:                                    ; preds = %.preheader6.1.1
  br i1 false, label %.preheader6.preheader.2, label %243

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %storemerge12.lcssa115 = phi i32 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  %239 = add nuw nsw i32 16, %storemerge12.lcssa115
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %240
  store i32 1, ptr %241, align 4
  br i1 false, label %234, label %242

242:                                              ; preds = %.preheader6.1.2
  unreachable

243:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %243
  br label %.preheader7.1117

.preheader7.1117:                                 ; preds = %.preheader7.preheader.1
  br label %.preheader6.preheader.1118

.preheader6.preheader.1118:                       ; preds = %.preheader7.1117
  br label %.preheader6.1119

.preheader6.1119:                                 ; preds = %.preheader6.preheader.1118
  br label %.preheader6.1.1120

.preheader6.1.1120:                               ; preds = %.preheader6.1119
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit116, label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %.preheader6.1.1120
  br label %.preheader6.preheader.1.1

.preheader6.preheader.1.1:                        ; preds = %.preheader7.1.1
  br label %.preheader6.1113.1

.preheader6.1113.1:                               ; preds = %.preheader6.preheader.1.1
  br label %.preheader6.1.1.1

.preheader6.1.1.1:                                ; preds = %.preheader6.1113.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit116, label %.preheader7.2.1

.preheader7.2.1:                                  ; preds = %.preheader6.1.1.1
  br i1 false, label %.preheader6.preheader.2, label %244

244:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %246

.preheader7.preheader.2:                          ; preds = %244
  br label %.preheader7.2121

.preheader7.2121:                                 ; preds = %.preheader7.preheader.2
  br label %.preheader6.preheader.2122

.preheader6.preheader.2122:                       ; preds = %.preheader7.2121
  br label %.preheader6.2123

.preheader6.2123:                                 ; preds = %.preheader6.preheader.2122
  br label %.preheader6.1.2124

.preheader6.1.2124:                               ; preds = %.preheader6.2123
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit116, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2124
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1113.2

.preheader6.1113.2:                               ; preds = %.preheader6.preheader.1.2
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1113.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit116, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  br i1 false, label %.preheader6.preheader.2, label %245

245:                                              ; preds = %.preheader7.2.2
  unreachable

246:                                              ; preds = %244
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %247

247:                                              ; preds = %246
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %247
  br label %.preheader5

.preheader5.loopexit:                             ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %257

.preheader4.preheader.1:                          ; preds = %.preheader5.loopexit.2, %.preheader5.loopexit.1134, %.preheader5.loopexit
  %storemerge13.lcssa127 = phi i32 [ 0, %.preheader5.loopexit ], [ 1, %.preheader5.loopexit.1134 ], [ 2, %.preheader5.loopexit.2 ]
  br label %.preheader4.1126

.preheader4.1126:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1126
  %248 = zext nneg i32 %storemerge13.lcssa127 to i64
  %249 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %248
  store i32 1, ptr %249, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %250 = add nuw nsw i32 64, %storemerge13.lcssa127
  %251 = zext nneg i32 %250 to i64
  %252 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %251
  store i32 1, ptr %252, align 4
  br i1 false, label %253, label %.preheader5.loopexit.1

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
  br i1 false, label %.loopexit129, label %.preheader5.loopexit

.loopexit129:                                     ; preds = %.preheader4.2.2, %.preheader4.2.1133, %.preheader4.2
  %storemerge13.lcssa125.ph = phi i32 [ 0, %.preheader4.2 ], [ 1, %.preheader4.2.1133 ], [ 2, %.preheader4.2.2 ]
  br label %253

253:                                              ; preds = %.loopexit129, %.preheader4.2.1
  %storemerge13.lcssa125 = phi i32 [ %storemerge13.lcssa127, %.preheader4.2.1 ], [ %storemerge13.lcssa125.ph, %.loopexit129 ]
  %254 = add nuw nsw i32 128, %storemerge13.lcssa125
  %255 = zext nneg i32 %254 to i64
  %256 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %255
  store i32 1, ptr %256, align 4
  unreachable

257:                                              ; preds = %.preheader5.loopexit
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %257
  br label %.preheader5.1

.preheader5.1:                                    ; preds = %.preheader5.preheader.1
  br label %.preheader4.preheader.1130

.preheader4.preheader.1130:                       ; preds = %.preheader5.1
  br label %.preheader4.1131

.preheader4.1131:                                 ; preds = %.preheader4.preheader.1130
  br label %.preheader4.1.1132

.preheader4.1.1132:                               ; preds = %.preheader4.1131
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %.preheader4.2.1133

.preheader4.2.1133:                               ; preds = %.preheader4.1.1132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit129, label %.preheader5.loopexit.1134

.preheader5.loopexit.1134:                        ; preds = %.preheader4.2.1133
  br i1 false, label %.preheader4.preheader.1, label %258

258:                                              ; preds = %.preheader5.loopexit.1134
  br i1 false, label %.preheader5.preheader.2, label %260

.preheader5.preheader.2:                          ; preds = %258
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2135

.preheader4.2135:                                 ; preds = %.preheader4.preheader.2
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit129, label %.preheader5.loopexit.2

.preheader5.loopexit.2:                           ; preds = %.preheader4.2.2
  br i1 false, label %.preheader4.preheader.1, label %259

259:                                              ; preds = %.preheader5.loopexit.2
  unreachable

260:                                              ; preds = %258
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %261

.loopexit:                                        ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %268

.preheader3.preheader.1:                          ; preds = %.loopexit
  br label %.preheader3.1140

.preheader3.1140:                                 ; preds = %.preheader3.preheader.1
  br label %.preheader2.preheader.1141

.preheader2.preheader.1141:                       ; preds = %.preheader3.1140
  br label %.preheader2.1142

.preheader2.1142:                                 ; preds = %.preheader2.preheader.1141
  br label %.preheader2.1.1143

.preheader2.1.1143:                               ; preds = %.preheader2.1142
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %.preheader2.2.1144

.preheader2.2.1144:                               ; preds = %.preheader2.1.1143
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit139, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1144
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1137.1

.preheader2.1137.1:                               ; preds = %.preheader2.preheader.1.1
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1137.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit139, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  br i1 false, label %.preheader2.preheader.2, label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader3.2.1
  unreachable

261:                                              ; preds = %260
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %261
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
  br i1 false, label %.loopexit139, label %.preheader3.1

.loopexit139:                                     ; preds = %.preheader2.2.1.1, %.preheader2.2.1144, %.preheader2.2, %.preheader2.2.1
  %storemerge22.lcssa136.ph = phi i32 [ 1, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 0, %.preheader2.2.1144 ], [ 1, %.preheader2.2.1.1 ]
  br label %262

262:                                              ; preds = %.loopexit139, %.preheader2.2.2
  %storemerge22.lcssa136 = phi i32 [ 2, %.preheader2.2.2 ], [ %storemerge22.lcssa136.ph, %.loopexit139 ]
  %263 = shl nuw nsw i32 %storemerge22.lcssa136, 3
  %264 = add nuw nsw i32 128, %263
  %265 = zext nneg i32 %264 to i64
  %266 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %265
  store i32 1, ptr %266, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader2.2
  br label %.preheader2.preheader.1

.preheader2.preheader.1:                          ; preds = %.preheader3.1
  br label %.preheader2.1137

.preheader2.1137:                                 ; preds = %.preheader2.preheader.1
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %.preheader2.1137
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1

.preheader2.2.1:                                  ; preds = %.preheader2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit139, label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader2.2.1
  br i1 false, label %.preheader2.preheader.2, label %.loopexit

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  br label %.preheader2.2138

.preheader2.2138:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %262, label %267

267:                                              ; preds = %.preheader2.2.2
  unreachable

268:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %269

269:                                              ; preds = %268
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %269
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
  br i1 false, label %.loopexit151, label %.preheader1.1

.loopexit151:                                     ; preds = %.preheader.2.1.2, %.preheader.2.2161, %.preheader.2.1.1, %.preheader.2.1156, %.preheader.2, %.preheader.2.1
  %storemerge15.lcssa146.ph = phi i32 [ 0, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 1, %.preheader.2.1156 ], [ 1, %.preheader.2.1.1 ], [ 2, %.preheader.2.2161 ], [ 2, %.preheader.2.1.2 ]
  %storemerge20.lcssa145.ph = phi i32 [ 1, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 0, %.preheader.2.1156 ], [ 1, %.preheader.2.1.1 ], [ 0, %.preheader.2.2161 ], [ 1, %.preheader.2.1.2 ]
  br label %270

270:                                              ; preds = %.loopexit151, %.preheader.2.2
  %storemerge15.lcssa146 = phi i32 [ %storemerge15.lcssa150, %.preheader.2.2 ], [ %storemerge15.lcssa146.ph, %.loopexit151 ]
  %storemerge20.lcssa145 = phi i32 [ 2, %.preheader.2.2 ], [ %storemerge20.lcssa145.ph, %.loopexit151 ]
  %271 = shl nuw nsw i32 %storemerge20.lcssa145, 3
  %272 = add nuw nsw i32 128, %271
  %273 = add nuw nsw i32 %272, %storemerge15.lcssa146
  %274 = zext nneg i32 %273 to i64
  %275 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %274
  store i32 1, ptr %275, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader.2
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader1.1
  br label %.preheader.1147

.preheader.1147:                                  ; preds = %.preheader.preheader.1
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %.preheader.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit151, label %.preheader1.2

.preheader1.2:                                    ; preds = %.preheader.2.1
  br i1 false, label %.preheader.preheader.2, label %283

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %storemerge15.lcssa150 = phi i32 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  br label %.preheader.2148

.preheader.2148:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2148
  %276 = add nuw nsw i32 16, %storemerge15.lcssa150
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %277
  store i32 1, ptr %278, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %279 = add nuw nsw i32 80, %storemerge15.lcssa150
  %280 = zext nneg i32 %279 to i64
  %281 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %280
  store i32 1, ptr %281, align 4
  br i1 false, label %270, label %282

282:                                              ; preds = %.preheader.2.2
  unreachable

283:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %283
  br label %.preheader1.1152

.preheader1.1152:                                 ; preds = %.preheader1.preheader.1
  br label %.preheader.preheader.1153

.preheader.preheader.1153:                        ; preds = %.preheader1.1152
  br label %.preheader.1154

.preheader.1154:                                  ; preds = %.preheader.preheader.1153
  br label %.preheader.1.1155

.preheader.1.1155:                                ; preds = %.preheader.1154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %.preheader.2.1156

.preheader.2.1156:                                ; preds = %.preheader.1.1155
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit151, label %.preheader1.1.1

.preheader1.1.1:                                  ; preds = %.preheader.2.1156
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.preheader1.1.1
  br label %.preheader.1147.1

.preheader.1147.1:                                ; preds = %.preheader.preheader.1.1
  br label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %.preheader.1147.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %.preheader.2.1.1

.preheader.2.1.1:                                 ; preds = %.preheader.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit151, label %.preheader1.2.1

.preheader1.2.1:                                  ; preds = %.preheader.2.1.1
  br i1 false, label %.preheader.preheader.2, label %284

284:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %286

.preheader1.preheader.2:                          ; preds = %284
  br label %.preheader1.2157

.preheader1.2157:                                 ; preds = %.preheader1.preheader.2
  br label %.preheader.preheader.2158

.preheader.preheader.2158:                        ; preds = %.preheader1.2157
  br label %.preheader.2159

.preheader.2159:                                  ; preds = %.preheader.preheader.2158
  br label %.preheader.1.2160

.preheader.1.2160:                                ; preds = %.preheader.2159
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %.preheader.2.2161

.preheader.2.2161:                                ; preds = %.preheader.1.2160
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit151, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2161
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1147.2

.preheader.1147.2:                                ; preds = %.preheader.preheader.1.2
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1147.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit151, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  br i1 false, label %.preheader.preheader.2, label %285

285:                                              ; preds = %.preheader1.2.2
  unreachable

286:                                              ; preds = %284
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %287 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %287, 0
  br i1 %.not, label %290, label %288

288:                                              ; preds = %286
  %289 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %289, ptr @n, align 4
  br label %291

290:                                              ; preds = %286
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %291

291:                                              ; preds = %290, %288
  %292 = load i32, ptr @n, align 4
  %293 = call i32 @Trial(i32 noundef %292)
  %.not16 = icmp eq i32 %293, 0
  br i1 %.not16, label %294, label %295

294:                                              ; preds = %291
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %298

295:                                              ; preds = %291
  %296 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %296, 2005
  br i1 %.not18, label %298, label %297

297:                                              ; preds = %295
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %298

298:                                              ; preds = %297, %295, %294
  %299 = load i32, ptr @n, align 4
  %300 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %299) #4
  %301 = load i32, ptr @kount, align 4
  %302 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %301) #4
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
