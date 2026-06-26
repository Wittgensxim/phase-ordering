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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
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
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
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
  %18 = add nsw i32 %storemerge, 1
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
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
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
  %17 = add nsw i32 %storemerge, 1
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
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
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
  %17 = add nsw i32 %storemerge, 1
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
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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

.preheader31:                                     ; preds = %113, %.preheader31.preheader
  %storemerge1 = phi i32 [ %114, %113 ], [ 1, %.preheader31.preheader ]
  %15 = icmp slt i32 %storemerge1, 6
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
  %16 = add nsw i32 %storemerge1, 72
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %19 = add nsw i32 %storemerge1, 136
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %22 = add nsw i32 %storemerge1, 200
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %25 = add nsw i32 %storemerge1, 264
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %26
  store i32 0, ptr %27, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %28 = add nsw i32 %storemerge1, 328
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  br i1 false, label %.loopexit, label %.preheader30.1

.loopexit:                                        ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  %storemerge1.lcssa2.ph = phi i32 [ %storemerge1, %.preheader29.5.4 ], [ %storemerge1, %.preheader29.5.3 ], [ %storemerge1, %.preheader29.5.2 ], [ %storemerge1, %.preheader29.5.1 ], [ %storemerge1, %.preheader29.5 ]
  %storemerge47.lcssa1.ph = phi i32 [ 5, %.preheader29.5.4 ], [ 4, %.preheader29.5.3 ], [ 3, %.preheader29.5.2 ], [ 2, %.preheader29.5.1 ], [ 1, %.preheader29.5 ]
  br label %31

31:                                               ; preds = %.loopexit, %.preheader29.5.5
  %storemerge1.lcssa2 = phi i32 [ %storemerge1.lcssa9, %.preheader29.5.5 ], [ %storemerge1.lcssa2.ph, %.loopexit ]
  %storemerge47.lcssa1 = phi i32 [ 6, %.preheader29.5.5 ], [ %storemerge47.lcssa1.ph, %.loopexit ]
  %32 = shl i32 %storemerge47.lcssa1, 3
  %33 = add i32 384, %32
  %34 = add nsw i32 %storemerge1.lcssa2, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  br label %.preheader29.13

.preheader29.13:                                  ; preds = %.preheader29.preheader.1
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.13
  %37 = add nsw i32 %storemerge1, 80
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %38
  store i32 0, ptr %39, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %40 = add nsw i32 %storemerge1, 144
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %43 = add nsw i32 %storemerge1, 208
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %44
  store i32 0, ptr %45, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %46 = add nsw i32 %storemerge1, 272
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %49 = add nsw i32 %storemerge1, 336
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %50
  store i32 0, ptr %51, align 4
  br i1 false, label %.loopexit, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  br label %.preheader29.24

.preheader29.24:                                  ; preds = %.preheader29.preheader.2
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.24
  %52 = add nsw i32 %storemerge1, 88
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %55 = add nsw i32 %storemerge1, 152
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %56
  store i32 0, ptr %57, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %58 = add nsw i32 %storemerge1, 216
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %61 = add nsw i32 %storemerge1, 280
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %62
  store i32 0, ptr %63, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %64 = add nsw i32 %storemerge1, 344
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br i1 false, label %.loopexit, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  br label %.preheader29.35

.preheader29.35:                                  ; preds = %.preheader29.preheader.3
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.35
  %67 = add nsw i32 %storemerge1, 96
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %68
  store i32 0, ptr %69, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %70 = add nsw i32 %storemerge1, 160
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %73 = add nsw i32 %storemerge1, 224
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %74
  store i32 0, ptr %75, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %76 = add nsw i32 %storemerge1, 288
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %77
  store i32 0, ptr %78, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %79 = add nsw i32 %storemerge1, 352
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %80
  store i32 0, ptr %81, align 4
  br i1 false, label %.loopexit, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  br label %.preheader29.46

.preheader29.46:                                  ; preds = %.preheader29.preheader.4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.46
  %82 = add nsw i32 %storemerge1, 104
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %83
  store i32 0, ptr %84, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %85 = add nsw i32 %storemerge1, 168
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %86
  store i32 0, ptr %87, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %88 = add nsw i32 %storemerge1, 232
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %89
  store i32 0, ptr %90, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %91 = add nsw i32 %storemerge1, 296
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %92
  store i32 0, ptr %93, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %94 = add nsw i32 %storemerge1, 360
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %95
  store i32 0, ptr %96, align 4
  br i1 false, label %.loopexit, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  br i1 false, label %.preheader29.preheader.5, label %113

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %storemerge1.lcssa9 = phi i32 [ %storemerge1, %.preheader30.5 ]
  br label %.preheader29.57

.preheader29.57:                                  ; preds = %.preheader29.preheader.5
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.57
  %97 = add nsw i32 %storemerge1.lcssa9, 112
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %98
  store i32 0, ptr %99, align 4
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  %100 = add nsw i32 %storemerge1.lcssa9, 176
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %101
  store i32 0, ptr %102, align 4
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  %103 = add nsw i32 %storemerge1.lcssa9, 240
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %104
  store i32 0, ptr %105, align 4
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  %106 = add nsw i32 %storemerge1.lcssa9, 304
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %107
  store i32 0, ptr %108, align 4
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  %109 = add nsw i32 %storemerge1.lcssa9, 368
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %110
  store i32 0, ptr %111, align 4
  br i1 false, label %31, label %112

112:                                              ; preds = %.preheader29.5.5
  unreachable

113:                                              ; preds = %.preheader30.5
  %114 = add nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %133, %.preheader28.preheader
  %storemerge2 = phi i32 [ %134, %133 ], [ 0, %.preheader28.preheader ]
  %115 = icmp slt i32 %storemerge2, 13
  br i1 %115, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %116 = sext i32 %storemerge2 to i64
  %117 = getelementptr inbounds [2048 x i8], ptr @p, i64 %116
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %127, %.preheader27.preheader
  %storemerge46 = phi i32 [ 0, %.preheader27.preheader ], [ %132, %127 ]
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %118 = sext i32 %storemerge2 to i64
  %119 = getelementptr inbounds [2048 x i8], ptr @p, i64 %118
  %120 = sext i32 %storemerge46 to i64
  %121 = getelementptr inbounds [4 x i8], ptr %119, i64 %120
  store i32 0, ptr %121, align 4
  %122 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i8], ptr %117, i64 %123
  store i32 0, ptr %124, align 4
  %125 = add nuw nsw i32 %storemerge46, 2
  %126 = icmp samesign ult i32 %125, 512
  br i1 %126, label %127, label %133

127:                                              ; preds = %.preheader27.2
  %128 = sext i32 %storemerge2 to i64
  %129 = getelementptr inbounds [2048 x i8], ptr @p, i64 %128
  %130 = sext i32 %125 to i64
  %131 = getelementptr inbounds [4 x i8], ptr %129, i64 %130
  store i32 0, ptr %131, align 4
  %132 = add nuw nsw i32 %storemerge46, 3
  br label %.preheader27, !llvm.loop !15

133:                                              ; preds = %.preheader27.2
  %134 = add nsw i32 %storemerge2, 1
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
  %storemerge3.lcssa11.ph = phi i32 [ 0, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 1, %.preheader24.1.119 ], [ 1, %.preheader24.1.1.1 ], [ 2, %.preheader24.1.223 ], [ 2, %.preheader24.1.1.2 ], [ 3, %.preheader24.1.3 ], [ 3, %.preheader24.1.1.3 ], [ 4, %.preheader24.1.4 ], [ 4, %.preheader24.1.1.4 ]
  %storemerge44.lcssa10.ph = phi i32 [ 1, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 0, %.preheader24.1.119 ], [ 1, %.preheader24.1.1.1 ], [ 0, %.preheader24.1.223 ], [ 1, %.preheader24.1.1.2 ], [ 0, %.preheader24.1.3 ], [ 1, %.preheader24.1.1.3 ], [ 0, %.preheader24.1.4 ], [ 1, %.preheader24.1.1.4 ]
  br label %135

135:                                              ; preds = %.loopexit15, %.preheader24.1.2
  %storemerge3.lcssa11 = phi i32 [ %storemerge3.lcssa14, %.preheader24.1.2 ], [ %storemerge3.lcssa11.ph, %.loopexit15 ]
  %storemerge44.lcssa10 = phi i32 [ 2, %.preheader24.1.2 ], [ %storemerge44.lcssa10.ph, %.loopexit15 ]
  %136 = shl nuw nsw i32 %storemerge44.lcssa10, 3
  %137 = add nsw i32 %storemerge3.lcssa11, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x i8], ptr @p, i64 %138
  store i32 1, ptr %139, align 4
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
  %storemerge3.lcssa14 = phi i32 [ 0, %.preheader25.2 ], [ 1, %.preheader25.2.1 ], [ 2, %.preheader25.2.2 ], [ 3, %.preheader25.2.3 ], [ 4, %.preheader25.2.4 ]
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %.preheader24.preheader.2
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %.preheader24.2
  %140 = add nsw i32 %storemerge3.lcssa14, 16
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [4 x i8], ptr @p, i64 %141
  store i32 1, ptr %142, align 4
  br i1 false, label %135, label %143

143:                                              ; preds = %.preheader24.1.2
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
  br i1 false, label %.loopexit15, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader24.1.4
  br label %.preheader24.preheader.1.4

.preheader24.preheader.1.4:                       ; preds = %.preheader25.1.4
  br label %.preheader24.112.4

.preheader24.112.4:                               ; preds = %.preheader24.preheader.1.4
  br label %.preheader24.1.1.4

.preheader24.1.1.4:                               ; preds = %.preheader24.112.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit15, label %.preheader25.2.4

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
  br i1 false, label %.loopexit28, label %.preheader23.1

.loopexit28:                                      ; preds = %.preheader22.4.2, %.preheader22.4.135, %.preheader22.4
  %storemerge4.lcssa24.ph = phi i32 [ 0, %.preheader22.4 ], [ 1, %.preheader22.4.135 ], [ 2, %.preheader22.4.2 ]
  br label %147

147:                                              ; preds = %.loopexit28, %.preheader22.4.1
  %storemerge4.lcssa24 = phi i32 [ %storemerge4.lcssa26, %.preheader22.4.1 ], [ %storemerge4.lcssa24.ph, %.loopexit28 ]
  %148 = add nuw nsw i32 %storemerge4.lcssa24, 256
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %149
  store i32 1, ptr %150, align 4
  unreachable

.preheader23.1:                                   ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %163

.preheader22.preheader.1:                         ; preds = %.preheader23.1.2, %.preheader23.1.1, %.preheader23.1
  %storemerge4.lcssa26 = phi i32 [ 0, %.preheader23.1 ], [ 1, %.preheader23.1.1 ], [ 2, %.preheader23.1.2 ]
  br label %.preheader22.125

.preheader22.125:                                 ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.125
  %151 = sext i32 %storemerge4.lcssa26 to i64
  %152 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %151
  store i32 1, ptr %152, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %153 = add nuw nsw i32 %storemerge4.lcssa26, 64
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %154
  store i32 1, ptr %155, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %156 = add nuw nsw i32 %storemerge4.lcssa26, 128
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %157
  store i32 1, ptr %158, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %159 = add nuw nsw i32 %storemerge4.lcssa26, 192
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %160
  store i32 1, ptr %161, align 4
  br i1 false, label %147, label %162

162:                                              ; preds = %.preheader22.4.1
  unreachable

163:                                              ; preds = %.preheader23.1
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %163
  br label %.preheader23.129

.preheader23.129:                                 ; preds = %.preheader23.preheader.1
  br label %.preheader22.preheader.130

.preheader22.preheader.130:                       ; preds = %.preheader23.129
  br label %.preheader22.131

.preheader22.131:                                 ; preds = %.preheader22.preheader.130
  br label %.preheader22.1.132

.preheader22.1.132:                               ; preds = %.preheader22.131
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %.preheader22.2.133

.preheader22.2.133:                               ; preds = %.preheader22.1.132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %.preheader22.3.134

.preheader22.3.134:                               ; preds = %.preheader22.2.133
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %.preheader22.4.135

.preheader22.4.135:                               ; preds = %.preheader22.3.134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit28, label %.preheader23.1.1

.preheader23.1.1:                                 ; preds = %.preheader22.4.135
  br i1 false, label %.preheader22.preheader.1, label %164

164:                                              ; preds = %.preheader23.1.1
  br i1 false, label %.preheader23.preheader.2, label %166

.preheader23.preheader.2:                         ; preds = %164
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.236

.preheader22.236:                                 ; preds = %.preheader22.preheader.2
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.236
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
  br i1 false, label %.loopexit28, label %.preheader23.1.2

.preheader23.1.2:                                 ; preds = %.preheader22.4.2
  br i1 false, label %.preheader22.preheader.1, label %165

165:                                              ; preds = %.preheader23.1.2
  unreachable

166:                                              ; preds = %164
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %167

167:                                              ; preds = %166
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %167
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
  br i1 false, label %.loopexit40, label %.preheader21.1

.loopexit40:                                      ; preds = %.preheader20.2.3.1, %.preheader20.2.2.1, %.preheader20.2.1.1, %.preheader20.2.145, %.preheader20.2, %.preheader20.2.1, %.preheader20.2.2, %.preheader20.2.3
  %storemerge40.lcssa37.ph = phi i32 [ 3, %.preheader20.2.3 ], [ 2, %.preheader20.2.2 ], [ 1, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 0, %.preheader20.2.145 ], [ 1, %.preheader20.2.1.1 ], [ 2, %.preheader20.2.2.1 ], [ 3, %.preheader20.2.3.1 ]
  br label %168

168:                                              ; preds = %.loopexit40, %.preheader20.2.4
  %storemerge40.lcssa37 = phi i32 [ 4, %.preheader20.2.4 ], [ %storemerge40.lcssa37.ph, %.loopexit40 ]
  %169 = shl i32 %storemerge40.lcssa37, 3
  %170 = add i32 128, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %171
  store i32 1, ptr %172, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader20.2
  br label %.preheader20.preheader.1

.preheader20.preheader.1:                         ; preds = %.preheader21.1
  br label %.preheader20.138

.preheader20.138:                                 ; preds = %.preheader20.preheader.1
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %.preheader20.138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %.preheader20.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit40, label %.preheader21.2

.preheader21.2:                                   ; preds = %.preheader20.2.1
  br label %.preheader20.preheader.2

.preheader20.preheader.2:                         ; preds = %.preheader21.2
  br label %.preheader20.239

.preheader20.239:                                 ; preds = %.preheader20.preheader.2
  br label %.preheader20.1.2

.preheader20.1.2:                                 ; preds = %.preheader20.239
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2

.preheader20.2.2:                                 ; preds = %.preheader20.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit40, label %.preheader21.3

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
  br i1 false, label %.loopexit40, label %.preheader21.4

.preheader21.4:                                   ; preds = %.preheader20.2.3
  br i1 false, label %.preheader20.preheader.4, label %174

.preheader20.preheader.4:                         ; preds = %.preheader21.4.1, %.preheader21.4
  br label %.preheader20.4

.preheader20.4:                                   ; preds = %.preheader20.preheader.4
  br label %.preheader20.1.4

.preheader20.1.4:                                 ; preds = %.preheader20.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  br label %.preheader20.2.4

.preheader20.2.4:                                 ; preds = %.preheader20.1.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %168, label %173

173:                                              ; preds = %.preheader20.2.4
  unreachable

174:                                              ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %176

.preheader21.preheader.1:                         ; preds = %174
  br label %.preheader21.141

.preheader21.141:                                 ; preds = %.preheader21.preheader.1
  br label %.preheader20.preheader.142

.preheader20.preheader.142:                       ; preds = %.preheader21.141
  br label %.preheader20.143

.preheader20.143:                                 ; preds = %.preheader20.preheader.142
  br label %.preheader20.1.144

.preheader20.1.144:                               ; preds = %.preheader20.143
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %.preheader20.2.145

.preheader20.2.145:                               ; preds = %.preheader20.1.144
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit40, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.145
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.138.1

.preheader20.138.1:                               ; preds = %.preheader20.preheader.1.1
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.138.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit40, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.239.1

.preheader20.239.1:                               ; preds = %.preheader20.preheader.2.1
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.239.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit40, label %.preheader21.3.1

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
  br i1 false, label %.loopexit40, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  br i1 false, label %.preheader20.preheader.4, label %175

175:                                              ; preds = %.preheader21.4.1
  unreachable

176:                                              ; preds = %174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %177

177:                                              ; preds = %176
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %177
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %.preheader18
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit51, label %.preheader19.1

.loopexit51:                                      ; preds = %.preheader18.1.3.2, %.preheader18.1.2.2, %.preheader18.1.1.2, %.preheader18.1.259, %.preheader18.1.3.1, %.preheader18.1.2.1, %.preheader18.1.1.1, %.preheader18.1.155, %.preheader18.1, %.preheader18.1.1, %.preheader18.1.2, %.preheader18.1.3
  %storemerge6.lcssa47.ph = phi i32 [ 0, %.preheader18.1.3 ], [ 0, %.preheader18.1.2 ], [ 0, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 1, %.preheader18.1.155 ], [ 1, %.preheader18.1.1.1 ], [ 1, %.preheader18.1.2.1 ], [ 1, %.preheader18.1.3.1 ], [ 2, %.preheader18.1.259 ], [ 2, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 2, %.preheader18.1.3.2 ]
  %storemerge38.lcssa46.ph = phi i32 [ 3, %.preheader18.1.3 ], [ 2, %.preheader18.1.2 ], [ 1, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 0, %.preheader18.1.155 ], [ 1, %.preheader18.1.1.1 ], [ 2, %.preheader18.1.2.1 ], [ 3, %.preheader18.1.3.1 ], [ 0, %.preheader18.1.259 ], [ 1, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 3, %.preheader18.1.3.2 ]
  br label %178

178:                                              ; preds = %.loopexit51, %.preheader18.1.4
  %storemerge6.lcssa47 = phi i32 [ %storemerge6.lcssa50, %.preheader18.1.4 ], [ %storemerge6.lcssa47.ph, %.loopexit51 ]
  %storemerge38.lcssa46 = phi i32 [ 4, %.preheader18.1.4 ], [ %storemerge38.lcssa46.ph, %.loopexit51 ]
  %179 = shl i32 %storemerge38.lcssa46, 3
  %180 = add nuw nsw i32 %storemerge6.lcssa47, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %181
  store i32 1, ptr %182, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader18.1
  br label %.preheader18.preheader.1

.preheader18.preheader.1:                         ; preds = %.preheader19.1
  br label %.preheader18.148

.preheader18.148:                                 ; preds = %.preheader18.preheader.1
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %.preheader18.148
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit51, label %.preheader19.2

.preheader19.2:                                   ; preds = %.preheader18.1.1
  br label %.preheader18.preheader.2

.preheader18.preheader.2:                         ; preds = %.preheader19.2
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %.preheader18.preheader.2
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %.preheader18.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit51, label %.preheader19.3

.preheader19.3:                                   ; preds = %.preheader18.1.2
  br label %.preheader18.preheader.3

.preheader18.preheader.3:                         ; preds = %.preheader19.3
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %.preheader18.preheader.3
  br label %.preheader18.1.3

.preheader18.1.3:                                 ; preds = %.preheader18.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit51, label %.preheader19.4

.preheader19.4:                                   ; preds = %.preheader18.1.3
  br i1 false, label %.preheader18.preheader.4, label %187

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %storemerge6.lcssa50 = phi i32 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  %183 = add nuw nsw i32 %storemerge6.lcssa50, 32
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %184
  store i32 1, ptr %185, align 4
  br i1 false, label %178, label %186

186:                                              ; preds = %.preheader18.1.4
  unreachable

187:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %187
  br label %.preheader19.152

.preheader19.152:                                 ; preds = %.preheader19.preheader.1
  br label %.preheader18.preheader.153

.preheader18.preheader.153:                       ; preds = %.preheader19.152
  br label %.preheader18.154

.preheader18.154:                                 ; preds = %.preheader18.preheader.153
  br label %.preheader18.1.155

.preheader18.1.155:                               ; preds = %.preheader18.154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit51, label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %.preheader18.1.155
  br label %.preheader18.preheader.1.1

.preheader18.preheader.1.1:                       ; preds = %.preheader19.1.1
  br label %.preheader18.148.1

.preheader18.148.1:                               ; preds = %.preheader18.preheader.1.1
  br label %.preheader18.1.1.1

.preheader18.1.1.1:                               ; preds = %.preheader18.148.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit51, label %.preheader19.2.1

.preheader19.2.1:                                 ; preds = %.preheader18.1.1.1
  br label %.preheader18.preheader.2.1

.preheader18.preheader.2.1:                       ; preds = %.preheader19.2.1
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %.preheader18.preheader.2.1
  br label %.preheader18.1.2.1

.preheader18.1.2.1:                               ; preds = %.preheader18.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit51, label %.preheader19.3.1

.preheader19.3.1:                                 ; preds = %.preheader18.1.2.1
  br label %.preheader18.preheader.3.1

.preheader18.preheader.3.1:                       ; preds = %.preheader19.3.1
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %.preheader18.preheader.3.1
  br label %.preheader18.1.3.1

.preheader18.1.3.1:                               ; preds = %.preheader18.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit51, label %.preheader19.4.1

.preheader19.4.1:                                 ; preds = %.preheader18.1.3.1
  br i1 false, label %.preheader18.preheader.4, label %188

188:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %190

.preheader19.preheader.2:                         ; preds = %188
  br label %.preheader19.256

.preheader19.256:                                 ; preds = %.preheader19.preheader.2
  br label %.preheader18.preheader.257

.preheader18.preheader.257:                       ; preds = %.preheader19.256
  br label %.preheader18.258

.preheader18.258:                                 ; preds = %.preheader18.preheader.257
  br label %.preheader18.1.259

.preheader18.1.259:                               ; preds = %.preheader18.258
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit51, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.259
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.148.2

.preheader18.148.2:                               ; preds = %.preheader18.preheader.1.2
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.148.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit51, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit51, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit51, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  br i1 false, label %.preheader18.preheader.4, label %189

189:                                              ; preds = %.preheader19.4.2
  unreachable

190:                                              ; preds = %188
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %191

191:                                              ; preds = %190
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %191
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
  br i1 false, label %.loopexit64, label %.preheader17.1

.loopexit64:                                      ; preds = %.preheader16.2.4, %.preheader16.2.3, %.preheader16.2.2, %.preheader16.2.169, %.preheader16.2
  %storemerge7.lcssa60.ph = phi i32 [ 0, %.preheader16.2 ], [ 1, %.preheader16.2.169 ], [ 2, %.preheader16.2.2 ], [ 3, %.preheader16.2.3 ], [ 4, %.preheader16.2.4 ]
  br label %192

192:                                              ; preds = %.loopexit64, %.preheader16.2.1
  %storemerge7.lcssa60 = phi i32 [ %storemerge7.lcssa62, %.preheader16.2.1 ], [ %storemerge7.lcssa60.ph, %.loopexit64 ]
  %193 = add nsw i32 %storemerge7.lcssa60, 128
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %194
  store i32 1, ptr %195, align 4
  unreachable

.preheader17.1:                                   ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %202

.preheader16.preheader.1:                         ; preds = %.preheader17.1.4, %.preheader17.1.3, %.preheader17.1.2, %.preheader17.1.1, %.preheader17.1
  %storemerge7.lcssa62 = phi i32 [ 0, %.preheader17.1 ], [ 1, %.preheader17.1.1 ], [ 2, %.preheader17.1.2 ], [ 3, %.preheader17.1.3 ], [ 4, %.preheader17.1.4 ]
  br label %.preheader16.161

.preheader16.161:                                 ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.161
  %196 = sext i32 %storemerge7.lcssa62 to i64
  %197 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %196
  store i32 1, ptr %197, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %198 = add nsw i32 %storemerge7.lcssa62, 64
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %199
  store i32 1, ptr %200, align 4
  br i1 false, label %192, label %201

201:                                              ; preds = %.preheader16.2.1
  unreachable

202:                                              ; preds = %.preheader17.1
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %202
  br label %.preheader17.165

.preheader17.165:                                 ; preds = %.preheader17.preheader.1
  br label %.preheader16.preheader.166

.preheader16.preheader.166:                       ; preds = %.preheader17.165
  br label %.preheader16.167

.preheader16.167:                                 ; preds = %.preheader16.preheader.166
  br label %.preheader16.1.168

.preheader16.1.168:                               ; preds = %.preheader16.167
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %.preheader16.2.169

.preheader16.2.169:                               ; preds = %.preheader16.1.168
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit64, label %.preheader17.1.1

.preheader17.1.1:                                 ; preds = %.preheader16.2.169
  br i1 false, label %.preheader16.preheader.1, label %203

203:                                              ; preds = %.preheader17.1.1
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %203
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %.preheader17.preheader.2
  br label %.preheader16.preheader.2

.preheader16.preheader.2:                         ; preds = %.preheader17.2
  br label %.preheader16.270

.preheader16.270:                                 ; preds = %.preheader16.preheader.2
  br label %.preheader16.1.2

.preheader16.1.2:                                 ; preds = %.preheader16.270
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %.preheader16.2.2

.preheader16.2.2:                                 ; preds = %.preheader16.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit64, label %.preheader17.1.2

.preheader17.1.2:                                 ; preds = %.preheader16.2.2
  br i1 false, label %.preheader16.preheader.1, label %204

204:                                              ; preds = %.preheader17.1.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %204
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
  br i1 false, label %.loopexit64, label %.preheader17.1.3

.preheader17.1.3:                                 ; preds = %.preheader16.2.3
  br i1 false, label %.preheader16.preheader.1, label %205

205:                                              ; preds = %.preheader17.1.3
  br i1 false, label %.preheader17.preheader.4, label %207

.preheader17.preheader.4:                         ; preds = %205
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
  br i1 false, label %.loopexit64, label %.preheader17.1.4

.preheader17.1.4:                                 ; preds = %.preheader16.2.4
  br i1 false, label %.preheader16.preheader.1, label %206

206:                                              ; preds = %.preheader17.1.4
  unreachable

207:                                              ; preds = %205
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %208

208:                                              ; preds = %207
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %208
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
  br i1 false, label %.loopexit74, label %.preheader15.1

.loopexit74:                                      ; preds = %.preheader14.4.1.1, %.preheader14.4.181, %.preheader14.4, %.preheader14.4.1
  %storemerge34.lcssa71.ph = phi i32 [ 1, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 0, %.preheader14.4.181 ], [ 1, %.preheader14.4.1.1 ]
  br label %209

209:                                              ; preds = %.loopexit74, %.preheader14.4.2
  %storemerge34.lcssa71 = phi i32 [ 2, %.preheader14.4.2 ], [ %storemerge34.lcssa71.ph, %.loopexit74 ]
  %210 = shl nuw nsw i32 %storemerge34.lcssa71, 3
  %211 = add nuw i32 256, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %212
  store i32 1, ptr %213, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader14.4
  br label %.preheader14.preheader.1

.preheader14.preheader.1:                         ; preds = %.preheader15.1
  br label %.preheader14.172

.preheader14.172:                                 ; preds = %.preheader14.preheader.1
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %.preheader14.172
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
  br i1 false, label %.loopexit74, label %.preheader15.2

.preheader15.2:                                   ; preds = %.preheader14.4.1
  br i1 false, label %.preheader14.preheader.2, label %215

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  br label %.preheader14.273

.preheader14.273:                                 ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.273
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
  br i1 false, label %209, label %214

214:                                              ; preds = %.preheader14.4.2
  unreachable

215:                                              ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %217

.preheader15.preheader.1:                         ; preds = %215
  br label %.preheader15.175

.preheader15.175:                                 ; preds = %.preheader15.preheader.1
  br label %.preheader14.preheader.176

.preheader14.preheader.176:                       ; preds = %.preheader15.175
  br label %.preheader14.177

.preheader14.177:                                 ; preds = %.preheader14.preheader.176
  br label %.preheader14.1.178

.preheader14.1.178:                               ; preds = %.preheader14.177
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %.preheader14.2.179

.preheader14.2.179:                               ; preds = %.preheader14.1.178
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %.preheader14.3.180

.preheader14.3.180:                               ; preds = %.preheader14.2.179
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %.preheader14.4.181

.preheader14.4.181:                               ; preds = %.preheader14.3.180
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit74, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.181
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.172.1

.preheader14.172.1:                               ; preds = %.preheader14.preheader.1.1
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.172.1
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
  br i1 false, label %.loopexit74, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  br i1 false, label %.preheader14.preheader.2, label %216

216:                                              ; preds = %.preheader15.2.1
  unreachable

217:                                              ; preds = %215
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %218

218:                                              ; preds = %217
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %218
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.preheader
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader
  br label %.preheader12.1

.preheader12.1:                                   ; preds = %.preheader12
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit86, label %.preheader13.1

.loopexit86:                                      ; preds = %.preheader12.1.3, %.preheader12.1.2, %.preheader12.1.190, %.preheader12.1
  %storemerge9.lcssa82.ph = phi i32 [ 0, %.preheader12.1 ], [ 1, %.preheader12.1.190 ], [ 2, %.preheader12.1.2 ], [ 3, %.preheader12.1.3 ]
  br label %219

219:                                              ; preds = %.loopexit86, %.preheader12.1.1
  %storemerge9.lcssa82 = phi i32 [ %storemerge9.lcssa84, %.preheader12.1.1 ], [ %storemerge9.lcssa82.ph, %.loopexit86 ]
  %220 = add nuw nsw i32 %storemerge9.lcssa82, 0
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %221
  store i32 1, ptr %222, align 4
  unreachable

.preheader13.1:                                   ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %226

.preheader12.preheader.1:                         ; preds = %.preheader13.1.3, %.preheader13.1.2, %.preheader13.1.1, %.preheader13.1
  %storemerge9.lcssa84 = phi i32 [ 0, %.preheader13.1 ], [ 1, %.preheader13.1.1 ], [ 2, %.preheader13.1.2 ], [ 3, %.preheader13.1.3 ]
  br label %.preheader12.183

.preheader12.183:                                 ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.183
  %223 = sext i32 %storemerge9.lcssa84 to i64
  %224 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %223
  store i32 1, ptr %224, align 4
  br i1 false, label %219, label %225

225:                                              ; preds = %.preheader12.1.1
  unreachable

226:                                              ; preds = %.preheader13.1
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %226
  br label %.preheader13.187

.preheader13.187:                                 ; preds = %.preheader13.preheader.1
  br label %.preheader12.preheader.188

.preheader12.preheader.188:                       ; preds = %.preheader13.187
  br label %.preheader12.189

.preheader12.189:                                 ; preds = %.preheader12.preheader.188
  br label %.preheader12.1.190

.preheader12.1.190:                               ; preds = %.preheader12.189
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit86, label %.preheader13.1.1

.preheader13.1.1:                                 ; preds = %.preheader12.1.190
  br i1 false, label %.preheader12.preheader.1, label %227

227:                                              ; preds = %.preheader13.1.1
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %227
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %.preheader13.preheader.2
  br label %.preheader12.preheader.2

.preheader12.preheader.2:                         ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %.preheader12.preheader.2
  br label %.preheader12.1.2

.preheader12.1.2:                                 ; preds = %.preheader12.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit86, label %.preheader13.1.2

.preheader13.1.2:                                 ; preds = %.preheader12.1.2
  br i1 false, label %.preheader12.preheader.1, label %228

228:                                              ; preds = %.preheader13.1.2
  br i1 false, label %.preheader13.preheader.3, label %230

.preheader13.preheader.3:                         ; preds = %228
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit86, label %.preheader13.1.3

.preheader13.1.3:                                 ; preds = %.preheader12.1.3
  br i1 false, label %.preheader12.preheader.1, label %229

229:                                              ; preds = %.preheader13.1.3
  unreachable

230:                                              ; preds = %228
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %231

231:                                              ; preds = %230
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %231
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %.preheader10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit93, label %.preheader11.1

.loopexit93:                                      ; preds = %.preheader10.1.2.1, %.preheader10.1.1.1, %.preheader10.1.197, %.preheader10.1, %.preheader10.1.1, %.preheader10.1.2
  %storemerge30.lcssa91.ph = phi i32 [ 2, %.preheader10.1.2 ], [ 1, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 0, %.preheader10.1.197 ], [ 1, %.preheader10.1.1.1 ], [ 2, %.preheader10.1.2.1 ]
  br label %232

232:                                              ; preds = %.loopexit93, %.preheader10.1.3
  %storemerge30.lcssa91 = phi i32 [ 3, %.preheader10.1.3 ], [ %storemerge30.lcssa91.ph, %.loopexit93 ]
  %233 = shl i32 %storemerge30.lcssa91, 3
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %234
  store i32 1, ptr %235, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader10.1
  br label %.preheader10.preheader.1

.preheader10.preheader.1:                         ; preds = %.preheader11.1
  br label %.preheader10.192

.preheader10.192:                                 ; preds = %.preheader10.preheader.1
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %.preheader10.192
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit93, label %.preheader11.2

.preheader11.2:                                   ; preds = %.preheader10.1.1
  br label %.preheader10.preheader.2

.preheader10.preheader.2:                         ; preds = %.preheader11.2
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %.preheader10.preheader.2
  br label %.preheader10.1.2

.preheader10.1.2:                                 ; preds = %.preheader10.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit93, label %.preheader11.3

.preheader11.3:                                   ; preds = %.preheader10.1.2
  br i1 false, label %.preheader10.preheader.3, label %237

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %232, label %236

236:                                              ; preds = %.preheader10.1.3
  unreachable

237:                                              ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %239

.preheader11.preheader.1:                         ; preds = %237
  br label %.preheader11.194

.preheader11.194:                                 ; preds = %.preheader11.preheader.1
  br label %.preheader10.preheader.195

.preheader10.preheader.195:                       ; preds = %.preheader11.194
  br label %.preheader10.196

.preheader10.196:                                 ; preds = %.preheader10.preheader.195
  br label %.preheader10.1.197

.preheader10.1.197:                               ; preds = %.preheader10.196
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit93, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.197
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.192.1

.preheader10.192.1:                               ; preds = %.preheader10.preheader.1.1
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.192.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit93, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit93, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  br i1 false, label %.preheader10.preheader.3, label %238

238:                                              ; preds = %.preheader11.3.1
  unreachable

239:                                              ; preds = %237
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %240

240:                                              ; preds = %239
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %240
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
  br i1 false, label %.loopexit99, label %.preheader9.1

.loopexit99:                                      ; preds = %.preheader8.3.1105, %.preheader8.3
  br label %241

241:                                              ; preds = %.loopexit99, %.preheader8.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

.preheader9.1:                                    ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %243

.preheader8.preheader.1:                          ; preds = %.preheader9.1.1, %.preheader9.1
  br label %.preheader8.198

.preheader8.198:                                  ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.198
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %241, label %242

242:                                              ; preds = %.preheader8.3.1
  unreachable

243:                                              ; preds = %.preheader9.1
  br i1 false, label %.preheader9.preheader.1, label %245

.preheader9.preheader.1:                          ; preds = %243
  br label %.preheader9.1100

.preheader9.1100:                                 ; preds = %.preheader9.preheader.1
  br label %.preheader8.preheader.1101

.preheader8.preheader.1101:                       ; preds = %.preheader9.1100
  br label %.preheader8.1102

.preheader8.1102:                                 ; preds = %.preheader8.preheader.1101
  br label %.preheader8.1.1103

.preheader8.1.1103:                               ; preds = %.preheader8.1102
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2.1104

.preheader8.2.1104:                               ; preds = %.preheader8.1.1103
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3.1105

.preheader8.3.1105:                               ; preds = %.preheader8.2.1104
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit99, label %.preheader9.1.1

.preheader9.1.1:                                  ; preds = %.preheader8.3.1105
  br i1 false, label %.preheader8.preheader.1, label %244

244:                                              ; preds = %.preheader9.1.1
  unreachable

245:                                              ; preds = %243
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %246

246:                                              ; preds = %245
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %246
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit111, label %.preheader7.1

.loopexit111:                                     ; preds = %.preheader6.1.1.2, %.preheader6.1.2119, %.preheader6.1.1.1, %.preheader6.1.1115, %.preheader6.1, %.preheader6.1.1
  %storemerge12.lcssa107.ph = phi i32 [ 0, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 1, %.preheader6.1.1115 ], [ 1, %.preheader6.1.1.1 ], [ 2, %.preheader6.1.2119 ], [ 2, %.preheader6.1.1.2 ]
  %storemerge26.lcssa106.ph = phi i32 [ 1, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 0, %.preheader6.1.1115 ], [ 1, %.preheader6.1.1.1 ], [ 0, %.preheader6.1.2119 ], [ 1, %.preheader6.1.1.2 ]
  br label %247

247:                                              ; preds = %.loopexit111, %.preheader6.1.2
  %storemerge12.lcssa107 = phi i32 [ %storemerge12.lcssa110, %.preheader6.1.2 ], [ %storemerge12.lcssa107.ph, %.loopexit111 ]
  %storemerge26.lcssa106 = phi i32 [ 2, %.preheader6.1.2 ], [ %storemerge26.lcssa106.ph, %.loopexit111 ]
  %248 = shl nuw nsw i32 %storemerge26.lcssa106, 3
  %249 = add nuw nsw i32 %storemerge12.lcssa107, %248
  %250 = zext nneg i32 %249 to i64
  %251 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %250
  store i32 1, ptr %251, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader6.1
  br label %.preheader6.preheader.1

.preheader6.preheader.1:                          ; preds = %.preheader7.1
  br label %.preheader6.1108

.preheader6.1108:                                 ; preds = %.preheader6.preheader.1
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %.preheader6.1108
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit111, label %.preheader7.2

.preheader7.2:                                    ; preds = %.preheader6.1.1
  br i1 false, label %.preheader6.preheader.2, label %256

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %storemerge12.lcssa110 = phi i32 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  %252 = add nuw nsw i32 %storemerge12.lcssa110, 16
  %253 = zext nneg i32 %252 to i64
  %254 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %253
  store i32 1, ptr %254, align 4
  br i1 false, label %247, label %255

255:                                              ; preds = %.preheader6.1.2
  unreachable

256:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %256
  br label %.preheader7.1112

.preheader7.1112:                                 ; preds = %.preheader7.preheader.1
  br label %.preheader6.preheader.1113

.preheader6.preheader.1113:                       ; preds = %.preheader7.1112
  br label %.preheader6.1114

.preheader6.1114:                                 ; preds = %.preheader6.preheader.1113
  br label %.preheader6.1.1115

.preheader6.1.1115:                               ; preds = %.preheader6.1114
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit111, label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %.preheader6.1.1115
  br label %.preheader6.preheader.1.1

.preheader6.preheader.1.1:                        ; preds = %.preheader7.1.1
  br label %.preheader6.1108.1

.preheader6.1108.1:                               ; preds = %.preheader6.preheader.1.1
  br label %.preheader6.1.1.1

.preheader6.1.1.1:                                ; preds = %.preheader6.1108.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit111, label %.preheader7.2.1

.preheader7.2.1:                                  ; preds = %.preheader6.1.1.1
  br i1 false, label %.preheader6.preheader.2, label %257

257:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %259

.preheader7.preheader.2:                          ; preds = %257
  br label %.preheader7.2116

.preheader7.2116:                                 ; preds = %.preheader7.preheader.2
  br label %.preheader6.preheader.2117

.preheader6.preheader.2117:                       ; preds = %.preheader7.2116
  br label %.preheader6.2118

.preheader6.2118:                                 ; preds = %.preheader6.preheader.2117
  br label %.preheader6.1.2119

.preheader6.1.2119:                               ; preds = %.preheader6.2118
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit111, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2119
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1108.2

.preheader6.1108.2:                               ; preds = %.preheader6.preheader.1.2
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1108.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit111, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  br i1 false, label %.preheader6.preheader.2, label %258

258:                                              ; preds = %.preheader7.2.2
  unreachable

259:                                              ; preds = %257
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %260

260:                                              ; preds = %259
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %260
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
  br i1 false, label %.loopexit124, label %.preheader5.1

.loopexit124:                                     ; preds = %.preheader4.2.2, %.preheader4.2.1129, %.preheader4.2
  %storemerge13.lcssa120.ph = phi i32 [ 0, %.preheader4.2 ], [ 1, %.preheader4.2.1129 ], [ 2, %.preheader4.2.2 ]
  br label %261

261:                                              ; preds = %.loopexit124, %.preheader4.2.1
  %storemerge13.lcssa120 = phi i32 [ %storemerge13.lcssa122, %.preheader4.2.1 ], [ %storemerge13.lcssa120.ph, %.loopexit124 ]
  %262 = add nuw nsw i32 %storemerge13.lcssa120, 128
  %263 = zext nneg i32 %262 to i64
  %264 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %263
  store i32 1, ptr %264, align 4
  unreachable

.preheader5.1:                                    ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %271

.preheader4.preheader.1:                          ; preds = %.preheader5.1.2, %.preheader5.1.1, %.preheader5.1
  %storemerge13.lcssa122 = phi i32 [ 0, %.preheader5.1 ], [ 1, %.preheader5.1.1 ], [ 2, %.preheader5.1.2 ]
  br label %.preheader4.1121

.preheader4.1121:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1121
  %265 = zext nneg i32 %storemerge13.lcssa122 to i64
  %266 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %265
  store i32 1, ptr %266, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %267 = add nuw nsw i32 %storemerge13.lcssa122, 64
  %268 = zext nneg i32 %267 to i64
  %269 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %268
  store i32 1, ptr %269, align 4
  br i1 false, label %261, label %270

270:                                              ; preds = %.preheader4.2.1
  unreachable

271:                                              ; preds = %.preheader5.1
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %271
  br label %.preheader5.1125

.preheader5.1125:                                 ; preds = %.preheader5.preheader.1
  br label %.preheader4.preheader.1126

.preheader4.preheader.1126:                       ; preds = %.preheader5.1125
  br label %.preheader4.1127

.preheader4.1127:                                 ; preds = %.preheader4.preheader.1126
  br label %.preheader4.1.1128

.preheader4.1.1128:                               ; preds = %.preheader4.1127
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %.preheader4.2.1129

.preheader4.2.1129:                               ; preds = %.preheader4.1.1128
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit124, label %.preheader5.1.1

.preheader5.1.1:                                  ; preds = %.preheader4.2.1129
  br i1 false, label %.preheader4.preheader.1, label %272

272:                                              ; preds = %.preheader5.1.1
  br i1 false, label %.preheader5.preheader.2, label %274

.preheader5.preheader.2:                          ; preds = %272
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2130

.preheader4.2130:                                 ; preds = %.preheader4.preheader.2
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2130
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit124, label %.preheader5.1.2

.preheader5.1.2:                                  ; preds = %.preheader4.2.2
  br i1 false, label %.preheader4.preheader.1, label %273

273:                                              ; preds = %.preheader5.1.2
  unreachable

274:                                              ; preds = %272
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %275

275:                                              ; preds = %274
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %275
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
  br i1 false, label %.loopexit134, label %.preheader3.1

.loopexit134:                                     ; preds = %.preheader2.2.1.1, %.preheader2.2.1139, %.preheader2.2, %.preheader2.2.1
  %storemerge22.lcssa131.ph = phi i32 [ 1, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 0, %.preheader2.2.1139 ], [ 1, %.preheader2.2.1.1 ]
  br label %276

276:                                              ; preds = %.loopexit134, %.preheader2.2.2
  %storemerge22.lcssa131 = phi i32 [ 2, %.preheader2.2.2 ], [ %storemerge22.lcssa131.ph, %.loopexit134 ]
  %277 = shl nuw nsw i32 %storemerge22.lcssa131, 3
  %278 = add nuw nsw i32 128, %277
  %279 = zext nneg i32 %278 to i64
  %280 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %279
  store i32 1, ptr %280, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader2.2
  br label %.preheader2.preheader.1

.preheader2.preheader.1:                          ; preds = %.preheader3.1
  br label %.preheader2.1132

.preheader2.1132:                                 ; preds = %.preheader2.preheader.1
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %.preheader2.1132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1

.preheader2.2.1:                                  ; preds = %.preheader2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit134, label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader2.2.1
  br i1 false, label %.preheader2.preheader.2, label %282

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  br label %.preheader2.2133

.preheader2.2133:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2133
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %276, label %281

281:                                              ; preds = %.preheader2.2.2
  unreachable

282:                                              ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %284

.preheader3.preheader.1:                          ; preds = %282
  br label %.preheader3.1135

.preheader3.1135:                                 ; preds = %.preheader3.preheader.1
  br label %.preheader2.preheader.1136

.preheader2.preheader.1136:                       ; preds = %.preheader3.1135
  br label %.preheader2.1137

.preheader2.1137:                                 ; preds = %.preheader2.preheader.1136
  br label %.preheader2.1.1138

.preheader2.1.1138:                               ; preds = %.preheader2.1137
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %.preheader2.2.1139

.preheader2.2.1139:                               ; preds = %.preheader2.1.1138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit134, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1139
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1132.1

.preheader2.1132.1:                               ; preds = %.preheader2.preheader.1.1
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1132.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit134, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  br i1 false, label %.preheader2.preheader.2, label %283

283:                                              ; preds = %.preheader3.2.1
  unreachable

284:                                              ; preds = %282
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %285

285:                                              ; preds = %284
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %285
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
  br i1 false, label %.loopexit146, label %.preheader1.1

.loopexit146:                                     ; preds = %.preheader.2.1.2, %.preheader.2.2156, %.preheader.2.1.1, %.preheader.2.1151, %.preheader.2, %.preheader.2.1
  %storemerge15.lcssa141.ph = phi i32 [ 0, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 1, %.preheader.2.1151 ], [ 1, %.preheader.2.1.1 ], [ 2, %.preheader.2.2156 ], [ 2, %.preheader.2.1.2 ]
  %storemerge20.lcssa140.ph = phi i32 [ 1, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 0, %.preheader.2.1151 ], [ 1, %.preheader.2.1.1 ], [ 0, %.preheader.2.2156 ], [ 1, %.preheader.2.1.2 ]
  br label %286

286:                                              ; preds = %.loopexit146, %.preheader.2.2
  %storemerge15.lcssa141 = phi i32 [ %storemerge15.lcssa145, %.preheader.2.2 ], [ %storemerge15.lcssa141.ph, %.loopexit146 ]
  %storemerge20.lcssa140 = phi i32 [ 2, %.preheader.2.2 ], [ %storemerge20.lcssa140.ph, %.loopexit146 ]
  %287 = shl nuw nsw i32 %storemerge20.lcssa140, 3
  %288 = add nuw nsw i32 128, %287
  %289 = add nuw nsw i32 %storemerge15.lcssa141, %288
  %290 = zext nneg i32 %289 to i64
  %291 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %290
  store i32 1, ptr %291, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader.2
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader1.1
  br label %.preheader.1142

.preheader.1142:                                  ; preds = %.preheader.preheader.1
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1142
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %.preheader.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit146, label %.preheader1.2

.preheader1.2:                                    ; preds = %.preheader.2.1
  br i1 false, label %.preheader.preheader.2, label %299

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %storemerge15.lcssa145 = phi i32 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  br label %.preheader.2143

.preheader.2143:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2143
  %292 = add nuw nsw i32 %storemerge15.lcssa145, 16
  %293 = zext nneg i32 %292 to i64
  %294 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %293
  store i32 1, ptr %294, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %295 = add nuw nsw i32 %storemerge15.lcssa145, 80
  %296 = zext nneg i32 %295 to i64
  %297 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %296
  store i32 1, ptr %297, align 4
  br i1 false, label %286, label %298

298:                                              ; preds = %.preheader.2.2
  unreachable

299:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %299
  br label %.preheader1.1147

.preheader1.1147:                                 ; preds = %.preheader1.preheader.1
  br label %.preheader.preheader.1148

.preheader.preheader.1148:                        ; preds = %.preheader1.1147
  br label %.preheader.1149

.preheader.1149:                                  ; preds = %.preheader.preheader.1148
  br label %.preheader.1.1150

.preheader.1.1150:                                ; preds = %.preheader.1149
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %.preheader.2.1151

.preheader.2.1151:                                ; preds = %.preheader.1.1150
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit146, label %.preheader1.1.1

.preheader1.1.1:                                  ; preds = %.preheader.2.1151
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.preheader1.1.1
  br label %.preheader.1142.1

.preheader.1142.1:                                ; preds = %.preheader.preheader.1.1
  br label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %.preheader.1142.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %.preheader.2.1.1

.preheader.2.1.1:                                 ; preds = %.preheader.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit146, label %.preheader1.2.1

.preheader1.2.1:                                  ; preds = %.preheader.2.1.1
  br i1 false, label %.preheader.preheader.2, label %300

300:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %302

.preheader1.preheader.2:                          ; preds = %300
  br label %.preheader1.2152

.preheader1.2152:                                 ; preds = %.preheader1.preheader.2
  br label %.preheader.preheader.2153

.preheader.preheader.2153:                        ; preds = %.preheader1.2152
  br label %.preheader.2154

.preheader.2154:                                  ; preds = %.preheader.preheader.2153
  br label %.preheader.1.2155

.preheader.1.2155:                                ; preds = %.preheader.2154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %.preheader.2.2156

.preheader.2.2156:                                ; preds = %.preheader.1.2155
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit146, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2156
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1142.2

.preheader.1142.2:                                ; preds = %.preheader.preheader.1.2
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1142.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit146, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  br i1 false, label %.preheader.preheader.2, label %301

301:                                              ; preds = %.preheader1.2.2
  unreachable

302:                                              ; preds = %300
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %303 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %303, 0
  br i1 %.not, label %306, label %304

304:                                              ; preds = %302
  %305 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %305, ptr @n, align 4
  br label %307

306:                                              ; preds = %302
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %307

307:                                              ; preds = %306, %304
  %308 = load i32, ptr @n, align 4
  %309 = call i32 @Trial(i32 noundef %308)
  %.not16 = icmp eq i32 %309, 0
  br i1 %.not16, label %310, label %311

310:                                              ; preds = %307
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %314

311:                                              ; preds = %307
  %312 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %312, 2005
  br i1 %.not18, label %314, label %313

313:                                              ; preds = %311
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %314

314:                                              ; preds = %313, %311, %310
  %315 = load i32, ptr @n, align 4
  %316 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %315) #4
  %317 = load i32, ptr @kount, align 4
  %318 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %317) #4
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
