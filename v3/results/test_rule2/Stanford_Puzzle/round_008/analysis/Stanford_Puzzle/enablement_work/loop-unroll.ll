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
  %136 = shl i32 %storemerge44.lcssa10, 3
  %137 = add i32 64, %136
  %138 = add nsw i32 %storemerge3.lcssa11, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i8], ptr @p, i64 %139
  store i32 1, ptr %140, align 4
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
  %141 = add nsw i32 %storemerge3.lcssa14, 16
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [4 x i8], ptr @p, i64 %142
  store i32 1, ptr %143, align 4
  br i1 false, label %135, label %144

144:                                              ; preds = %.preheader24.1.2
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
  br i1 false, label %.preheader25.preheader.4, label %146

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
  br i1 false, label %.preheader24.preheader.2, label %145

145:                                              ; preds = %.preheader25.2.4
  unreachable

146:                                              ; preds = %.preheader26.4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %147

147:                                              ; preds = %146
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %147
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
  %storemerge4.lcssa25.ph = phi i32 [ 0, %.preheader22.4 ], [ 1, %.preheader22.4.136 ], [ 2, %.preheader22.4.2 ]
  %storemerge42.lcssa24.ph = phi i32 [ 0, %.preheader22.4 ], [ 0, %.preheader22.4.136 ], [ 0, %.preheader22.4.2 ]
  br label %148

148:                                              ; preds = %.loopexit29, %.preheader22.4.1
  %storemerge4.lcssa25 = phi i32 [ %storemerge4.lcssa27, %.preheader22.4.1 ], [ %storemerge4.lcssa25.ph, %.loopexit29 ]
  %storemerge42.lcssa24 = phi i32 [ 1, %.preheader22.4.1 ], [ %storemerge42.lcssa24.ph, %.loopexit29 ]
  %149 = shl i32 %storemerge42.lcssa24, 3
  %150 = add i32 256, %149
  %151 = add nsw i32 %storemerge4.lcssa25, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %152
  store i32 1, ptr %153, align 4
  unreachable

.preheader23.1:                                   ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %167

.preheader22.preheader.1:                         ; preds = %.preheader23.1.2, %.preheader23.1.1, %.preheader23.1
  %storemerge4.lcssa27 = phi i32 [ 0, %.preheader23.1 ], [ 1, %.preheader23.1.1 ], [ 2, %.preheader23.1.2 ]
  br label %.preheader22.126

.preheader22.126:                                 ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.126
  %154 = add nsw i32 %storemerge4.lcssa27, 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %155
  store i32 1, ptr %156, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %157 = add nsw i32 %storemerge4.lcssa27, 72
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %158
  store i32 1, ptr %159, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %160 = add nsw i32 %storemerge4.lcssa27, 136
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %161
  store i32 1, ptr %162, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %163 = add nsw i32 %storemerge4.lcssa27, 200
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %164
  store i32 1, ptr %165, align 4
  br i1 false, label %148, label %166

166:                                              ; preds = %.preheader22.4.1
  unreachable

167:                                              ; preds = %.preheader23.1
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %167
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
  br i1 false, label %.preheader22.preheader.1, label %168

168:                                              ; preds = %.preheader23.1.1
  br i1 false, label %.preheader23.preheader.2, label %170

.preheader23.preheader.2:                         ; preds = %168
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.237

.preheader22.237:                                 ; preds = %.preheader22.preheader.2
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.237
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
  br i1 false, label %.loopexit29, label %.preheader23.1.2

.preheader23.1.2:                                 ; preds = %.preheader22.4.2
  br i1 false, label %.preheader22.preheader.1, label %169

169:                                              ; preds = %.preheader23.1.2
  unreachable

170:                                              ; preds = %168
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %171

171:                                              ; preds = %170
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %171
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
  %storemerge5.lcssa39.ph = phi i32 [ 0, %.preheader20.2.3 ], [ 0, %.preheader20.2.2 ], [ 0, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 1, %.preheader20.2.149 ], [ 1, %.preheader20.2.1.1 ], [ 1, %.preheader20.2.2.1 ], [ 1, %.preheader20.2.3.1 ]
  %storemerge40.lcssa38.ph = phi i32 [ 3, %.preheader20.2.3 ], [ 2, %.preheader20.2.2 ], [ 1, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 0, %.preheader20.2.149 ], [ 1, %.preheader20.2.1.1 ], [ 2, %.preheader20.2.2.1 ], [ 3, %.preheader20.2.3.1 ]
  br label %172

172:                                              ; preds = %.loopexit44, %.preheader20.2.4
  %storemerge5.lcssa39 = phi i32 [ %storemerge5.lcssa43, %.preheader20.2.4 ], [ %storemerge5.lcssa39.ph, %.loopexit44 ]
  %storemerge40.lcssa38 = phi i32 [ 4, %.preheader20.2.4 ], [ %storemerge40.lcssa38.ph, %.loopexit44 ]
  %173 = shl i32 %storemerge40.lcssa38, 3
  %174 = add i32 128, %173
  %175 = add nsw i32 %storemerge5.lcssa39, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %176
  store i32 1, ptr %177, align 4
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
  br i1 false, label %.preheader20.preheader.4, label %185

.preheader20.preheader.4:                         ; preds = %.preheader21.4.1, %.preheader21.4
  %storemerge5.lcssa43 = phi i32 [ 0, %.preheader21.4 ], [ 1, %.preheader21.4.1 ]
  br label %.preheader20.4

.preheader20.4:                                   ; preds = %.preheader20.preheader.4
  br label %.preheader20.1.4

.preheader20.1.4:                                 ; preds = %.preheader20.4
  %178 = add nsw i32 %storemerge5.lcssa43, 32
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %179
  store i32 1, ptr %180, align 4
  br label %.preheader20.2.4

.preheader20.2.4:                                 ; preds = %.preheader20.1.4
  %181 = add nsw i32 %storemerge5.lcssa43, 96
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %182
  store i32 1, ptr %183, align 4
  br i1 false, label %172, label %184

184:                                              ; preds = %.preheader20.2.4
  unreachable

185:                                              ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %187

.preheader21.preheader.1:                         ; preds = %185
  br label %.preheader21.145

.preheader21.145:                                 ; preds = %.preheader21.preheader.1
  br label %.preheader20.preheader.146

.preheader20.preheader.146:                       ; preds = %.preheader21.145
  br label %.preheader20.147

.preheader20.147:                                 ; preds = %.preheader20.preheader.146
  br label %.preheader20.1.148

.preheader20.1.148:                               ; preds = %.preheader20.147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  br label %.preheader20.2.149

.preheader20.2.149:                               ; preds = %.preheader20.1.148
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  br i1 false, label %.loopexit44, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.149
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.140.1

.preheader20.140.1:                               ; preds = %.preheader20.preheader.1.1
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.140.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  br i1 false, label %.loopexit44, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.241.1

.preheader20.241.1:                               ; preds = %.preheader20.preheader.2.1
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.241.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  br i1 false, label %.loopexit44, label %.preheader21.3.1

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
  br i1 false, label %.loopexit44, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  br i1 false, label %.preheader20.preheader.4, label %186

186:                                              ; preds = %.preheader21.4.1
  unreachable

187:                                              ; preds = %185
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %188

188:                                              ; preds = %187
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %188
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
  %storemerge6.lcssa51.ph = phi i32 [ 0, %.preheader18.1.3 ], [ 0, %.preheader18.1.2 ], [ 0, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 1, %.preheader18.1.159 ], [ 1, %.preheader18.1.1.1 ], [ 1, %.preheader18.1.2.1 ], [ 1, %.preheader18.1.3.1 ], [ 2, %.preheader18.1.263 ], [ 2, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 2, %.preheader18.1.3.2 ]
  %storemerge38.lcssa50.ph = phi i32 [ 3, %.preheader18.1.3 ], [ 2, %.preheader18.1.2 ], [ 1, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 0, %.preheader18.1.159 ], [ 1, %.preheader18.1.1.1 ], [ 2, %.preheader18.1.2.1 ], [ 3, %.preheader18.1.3.1 ], [ 0, %.preheader18.1.263 ], [ 1, %.preheader18.1.1.2 ], [ 2, %.preheader18.1.2.2 ], [ 3, %.preheader18.1.3.2 ]
  br label %189

189:                                              ; preds = %.loopexit55, %.preheader18.1.4
  %storemerge6.lcssa51 = phi i32 [ %storemerge6.lcssa54, %.preheader18.1.4 ], [ %storemerge6.lcssa51.ph, %.loopexit55 ]
  %storemerge38.lcssa50 = phi i32 [ 4, %.preheader18.1.4 ], [ %storemerge38.lcssa50.ph, %.loopexit55 ]
  %190 = shl i32 %storemerge38.lcssa50, 3
  %191 = add i32 64, %190
  %192 = add nsw i32 %storemerge6.lcssa51, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %193
  store i32 1, ptr %194, align 4
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
  br i1 false, label %.preheader18.preheader.4, label %199

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %storemerge6.lcssa54 = phi i32 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  %195 = add nsw i32 %storemerge6.lcssa54, 32
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %196
  store i32 1, ptr %197, align 4
  br i1 false, label %189, label %198

198:                                              ; preds = %.preheader18.1.4
  unreachable

199:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %199
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
  br i1 false, label %.preheader18.preheader.4, label %200

200:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %202

.preheader19.preheader.2:                         ; preds = %200
  br label %.preheader19.260

.preheader19.260:                                 ; preds = %.preheader19.preheader.2
  br label %.preheader18.preheader.261

.preheader18.preheader.261:                       ; preds = %.preheader19.260
  br label %.preheader18.262

.preheader18.262:                                 ; preds = %.preheader18.preheader.261
  br label %.preheader18.1.263

.preheader18.1.263:                               ; preds = %.preheader18.262
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit55, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.263
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.152.2

.preheader18.152.2:                               ; preds = %.preheader18.preheader.1.2
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.152.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit55, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit55, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit55, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  br i1 false, label %.preheader18.preheader.4, label %201

201:                                              ; preds = %.preheader19.4.2
  unreachable

202:                                              ; preds = %200
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %203

203:                                              ; preds = %202
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %203
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
  %storemerge7.lcssa65.ph = phi i32 [ 0, %.preheader16.2 ], [ 1, %.preheader16.2.174 ], [ 2, %.preheader16.2.2 ], [ 3, %.preheader16.2.3 ], [ 4, %.preheader16.2.4 ]
  %storemerge36.lcssa64.ph = phi i32 [ 0, %.preheader16.2 ], [ 0, %.preheader16.2.174 ], [ 0, %.preheader16.2.2 ], [ 0, %.preheader16.2.3 ], [ 0, %.preheader16.2.4 ]
  br label %204

204:                                              ; preds = %.loopexit69, %.preheader16.2.1
  %storemerge7.lcssa65 = phi i32 [ %storemerge7.lcssa67, %.preheader16.2.1 ], [ %storemerge7.lcssa65.ph, %.loopexit69 ]
  %storemerge36.lcssa64 = phi i32 [ 1, %.preheader16.2.1 ], [ %storemerge36.lcssa64.ph, %.loopexit69 ]
  %205 = shl i32 %storemerge36.lcssa64, 3
  %206 = add i32 128, %205
  %207 = add nsw i32 %storemerge7.lcssa65, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %208
  store i32 1, ptr %209, align 4
  unreachable

.preheader17.1:                                   ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %217

.preheader16.preheader.1:                         ; preds = %.preheader17.1.4, %.preheader17.1.3, %.preheader17.1.2, %.preheader17.1.1, %.preheader17.1
  %storemerge7.lcssa67 = phi i32 [ 0, %.preheader17.1 ], [ 1, %.preheader17.1.1 ], [ 2, %.preheader17.1.2 ], [ 3, %.preheader17.1.3 ], [ 4, %.preheader17.1.4 ]
  br label %.preheader16.166

.preheader16.166:                                 ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.166
  %210 = add nsw i32 %storemerge7.lcssa67, 8
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %211
  store i32 1, ptr %212, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %213 = add nsw i32 %storemerge7.lcssa67, 72
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %214
  store i32 1, ptr %215, align 4
  br i1 false, label %204, label %216

216:                                              ; preds = %.preheader16.2.1
  unreachable

217:                                              ; preds = %.preheader17.1
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %217
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
  br i1 false, label %.preheader16.preheader.1, label %218

218:                                              ; preds = %.preheader17.1.1
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %218
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
  br i1 false, label %.preheader16.preheader.1, label %219

219:                                              ; preds = %.preheader17.1.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %219
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
  br i1 false, label %.preheader16.preheader.1, label %220

220:                                              ; preds = %.preheader17.1.3
  br i1 false, label %.preheader17.preheader.4, label %222

.preheader17.preheader.4:                         ; preds = %220
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
  br i1 false, label %.loopexit69, label %.preheader17.1.4

.preheader17.1.4:                                 ; preds = %.preheader16.2.4
  br i1 false, label %.preheader16.preheader.1, label %221

221:                                              ; preds = %.preheader17.1.4
  unreachable

222:                                              ; preds = %220
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %223

223:                                              ; preds = %222
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %223
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
  %storemerge8.lcssa77.ph = phi i32 [ 0, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 1, %.preheader14.4.189 ], [ 1, %.preheader14.4.1.1 ]
  %storemerge34.lcssa76.ph = phi i32 [ 1, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 0, %.preheader14.4.189 ], [ 1, %.preheader14.4.1.1 ]
  br label %224

224:                                              ; preds = %.loopexit82, %.preheader14.4.2
  %storemerge8.lcssa77 = phi i32 [ %storemerge8.lcssa81, %.preheader14.4.2 ], [ %storemerge8.lcssa77.ph, %.loopexit82 ]
  %storemerge34.lcssa76 = phi i32 [ 2, %.preheader14.4.2 ], [ %storemerge34.lcssa76.ph, %.loopexit82 ]
  %225 = shl i32 %storemerge34.lcssa76, 3
  %226 = add i32 256, %225
  %227 = add nsw i32 %storemerge8.lcssa77, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %228
  store i32 1, ptr %229, align 4
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
  br i1 false, label %.preheader14.preheader.2, label %243

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  %storemerge8.lcssa81 = phi i32 [ 0, %.preheader15.2 ], [ 1, %.preheader15.2.1 ]
  br label %.preheader14.279

.preheader14.279:                                 ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.279
  %230 = add nsw i32 %storemerge8.lcssa81, 16
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %231
  store i32 1, ptr %232, align 4
  br label %.preheader14.2.2

.preheader14.2.2:                                 ; preds = %.preheader14.1.2
  %233 = add nsw i32 %storemerge8.lcssa81, 80
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %234
  store i32 1, ptr %235, align 4
  br label %.preheader14.3.2

.preheader14.3.2:                                 ; preds = %.preheader14.2.2
  %236 = add nsw i32 %storemerge8.lcssa81, 144
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %237
  store i32 1, ptr %238, align 4
  br label %.preheader14.4.2

.preheader14.4.2:                                 ; preds = %.preheader14.3.2
  %239 = add nsw i32 %storemerge8.lcssa81, 208
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %240
  store i32 1, ptr %241, align 4
  br i1 false, label %224, label %242

242:                                              ; preds = %.preheader14.4.2
  unreachable

243:                                              ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %245

.preheader15.preheader.1:                         ; preds = %243
  br label %.preheader15.183

.preheader15.183:                                 ; preds = %.preheader15.preheader.1
  br label %.preheader14.preheader.184

.preheader14.preheader.184:                       ; preds = %.preheader15.183
  br label %.preheader14.185

.preheader14.185:                                 ; preds = %.preheader14.preheader.184
  br label %.preheader14.1.186

.preheader14.1.186:                               ; preds = %.preheader14.185
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  br label %.preheader14.2.187

.preheader14.2.187:                               ; preds = %.preheader14.1.186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  br label %.preheader14.3.188

.preheader14.3.188:                               ; preds = %.preheader14.2.187
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  br label %.preheader14.4.189

.preheader14.4.189:                               ; preds = %.preheader14.3.188
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  br i1 false, label %.loopexit82, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.189
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.178.1

.preheader14.178.1:                               ; preds = %.preheader14.preheader.1.1
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.178.1
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
  br i1 false, label %.loopexit82, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  br i1 false, label %.preheader14.preheader.2, label %244

244:                                              ; preds = %.preheader15.2.1
  unreachable

245:                                              ; preds = %243
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %246

246:                                              ; preds = %245
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %246
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
  %storemerge9.lcssa91.ph = phi i32 [ 0, %.preheader12.1 ], [ 1, %.preheader12.1.199 ], [ 2, %.preheader12.1.2 ], [ 3, %.preheader12.1.3 ]
  %storemerge32.lcssa90.ph = phi i32 [ 0, %.preheader12.1 ], [ 0, %.preheader12.1.199 ], [ 0, %.preheader12.1.2 ], [ 0, %.preheader12.1.3 ]
  br label %247

247:                                              ; preds = %.loopexit95, %.preheader12.1.1
  %storemerge9.lcssa91 = phi i32 [ %storemerge9.lcssa93, %.preheader12.1.1 ], [ %storemerge9.lcssa91.ph, %.loopexit95 ]
  %storemerge32.lcssa90 = phi i32 [ 1, %.preheader12.1.1 ], [ %storemerge32.lcssa90.ph, %.loopexit95 ]
  %248 = shl i32 %storemerge32.lcssa90, 3
  %249 = add i32 64, %248
  %250 = add nsw i32 %storemerge9.lcssa91, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %251
  store i32 1, ptr %252, align 4
  unreachable

.preheader13.1:                                   ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %257

.preheader12.preheader.1:                         ; preds = %.preheader13.1.3, %.preheader13.1.2, %.preheader13.1.1, %.preheader13.1
  %storemerge9.lcssa93 = phi i32 [ 0, %.preheader13.1 ], [ 1, %.preheader13.1.1 ], [ 2, %.preheader13.1.2 ], [ 3, %.preheader13.1.3 ]
  br label %.preheader12.192

.preheader12.192:                                 ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.192
  %253 = add nsw i32 %storemerge9.lcssa93, 8
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %254
  store i32 1, ptr %255, align 4
  br i1 false, label %247, label %256

256:                                              ; preds = %.preheader12.1.1
  unreachable

257:                                              ; preds = %.preheader13.1
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %257
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
  br i1 false, label %.preheader12.preheader.1, label %258

258:                                              ; preds = %.preheader13.1.1
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %258
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
  br i1 false, label %.preheader12.preheader.1, label %259

259:                                              ; preds = %.preheader13.1.2
  br i1 false, label %.preheader13.preheader.3, label %261

.preheader13.preheader.3:                         ; preds = %259
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit95, label %.preheader13.1.3

.preheader13.1.3:                                 ; preds = %.preheader12.1.3
  br i1 false, label %.preheader12.preheader.1, label %260

260:                                              ; preds = %.preheader13.1.3
  unreachable

261:                                              ; preds = %259
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %262

262:                                              ; preds = %261
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %262
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
  %storemerge10.lcssa101.ph = phi i32 [ 0, %.preheader10.1.2 ], [ 0, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 1, %.preheader10.1.1109 ], [ 1, %.preheader10.1.1.1 ], [ 1, %.preheader10.1.2.1 ]
  %storemerge30.lcssa100.ph = phi i32 [ 2, %.preheader10.1.2 ], [ 1, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 0, %.preheader10.1.1109 ], [ 1, %.preheader10.1.1.1 ], [ 2, %.preheader10.1.2.1 ]
  br label %263

263:                                              ; preds = %.loopexit105, %.preheader10.1.3
  %storemerge10.lcssa101 = phi i32 [ %storemerge10.lcssa104, %.preheader10.1.3 ], [ %storemerge10.lcssa101.ph, %.loopexit105 ]
  %storemerge30.lcssa100 = phi i32 [ 3, %.preheader10.1.3 ], [ %storemerge30.lcssa100.ph, %.loopexit105 ]
  %264 = shl i32 %storemerge30.lcssa100, 3
  %265 = add i32 64, %264
  %266 = add nsw i32 %storemerge10.lcssa101, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %267
  store i32 1, ptr %268, align 4
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
  br i1 false, label %.preheader10.preheader.3, label %273

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  %storemerge10.lcssa104 = phi i32 [ 0, %.preheader11.3 ], [ 1, %.preheader11.3.1 ]
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  %269 = add nsw i32 %storemerge10.lcssa104, 24
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %270
  store i32 1, ptr %271, align 4
  br i1 false, label %263, label %272

272:                                              ; preds = %.preheader10.1.3
  unreachable

273:                                              ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %275

.preheader11.preheader.1:                         ; preds = %273
  br label %.preheader11.1106

.preheader11.1106:                                ; preds = %.preheader11.preheader.1
  br label %.preheader10.preheader.1107

.preheader10.preheader.1107:                      ; preds = %.preheader11.1106
  br label %.preheader10.1108

.preheader10.1108:                                ; preds = %.preheader10.preheader.1107
  br label %.preheader10.1.1109

.preheader10.1.1109:                              ; preds = %.preheader10.1108
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  br i1 false, label %.loopexit105, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.1109
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.1102.1

.preheader10.1102.1:                              ; preds = %.preheader10.preheader.1.1
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.1102.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  br i1 false, label %.loopexit105, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  br i1 false, label %.loopexit105, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  br i1 false, label %.preheader10.preheader.3, label %274

274:                                              ; preds = %.preheader11.3.1
  unreachable

275:                                              ; preds = %273
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %276

276:                                              ; preds = %275
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %276
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
  %storemerge11.lcssa111.ph = phi i32 [ 0, %.preheader8.3 ], [ 1, %.preheader8.3.1121 ]
  %storemerge28.lcssa110.ph = phi i32 [ 0, %.preheader8.3 ], [ 0, %.preheader8.3.1121 ]
  br label %277

277:                                              ; preds = %.loopexit115, %.preheader8.3.1
  %storemerge11.lcssa111 = phi i32 [ %storemerge11.lcssa113, %.preheader8.3.1 ], [ %storemerge11.lcssa111.ph, %.loopexit115 ]
  %storemerge28.lcssa110 = phi i32 [ 1, %.preheader8.3.1 ], [ %storemerge28.lcssa110.ph, %.loopexit115 ]
  %278 = shl i32 %storemerge28.lcssa110, 3
  %279 = add i32 192, %278
  %280 = add nsw i32 %storemerge11.lcssa111, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %281
  store i32 1, ptr %282, align 4
  unreachable

.preheader9.1:                                    ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %293

.preheader8.preheader.1:                          ; preds = %.preheader9.1.1, %.preheader9.1
  %storemerge11.lcssa113 = phi i32 [ 0, %.preheader9.1 ], [ 1, %.preheader9.1.1 ]
  br label %.preheader8.1112

.preheader8.1112:                                 ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1112
  %283 = add nsw i32 %storemerge11.lcssa113, 8
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %284
  store i32 1, ptr %285, align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  %286 = add nsw i32 %storemerge11.lcssa113, 72
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %287
  store i32 1, ptr %288, align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  %289 = add nsw i32 %storemerge11.lcssa113, 136
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %290
  store i32 1, ptr %291, align 4
  br i1 false, label %277, label %292

292:                                              ; preds = %.preheader8.3.1
  unreachable

293:                                              ; preds = %.preheader9.1
  br i1 false, label %.preheader9.preheader.1, label %295

.preheader9.preheader.1:                          ; preds = %293
  br label %.preheader9.1116

.preheader9.1116:                                 ; preds = %.preheader9.preheader.1
  br label %.preheader8.preheader.1117

.preheader8.preheader.1117:                       ; preds = %.preheader9.1116
  br label %.preheader8.1118

.preheader8.1118:                                 ; preds = %.preheader8.preheader.1117
  br label %.preheader8.1.1119

.preheader8.1.1119:                               ; preds = %.preheader8.1118
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  br label %.preheader8.2.1120

.preheader8.2.1120:                               ; preds = %.preheader8.1.1119
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  br label %.preheader8.3.1121

.preheader8.3.1121:                               ; preds = %.preheader8.2.1120
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  br i1 false, label %.loopexit115, label %.preheader9.1.1

.preheader9.1.1:                                  ; preds = %.preheader8.3.1121
  br i1 false, label %.preheader8.preheader.1, label %294

294:                                              ; preds = %.preheader9.1.1
  unreachable

295:                                              ; preds = %293
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %296

296:                                              ; preds = %295
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %296
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
  %storemerge12.lcssa123.ph = phi i32 [ 0, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 1, %.preheader6.1.1131 ], [ 1, %.preheader6.1.1.1 ], [ 2, %.preheader6.1.2135 ], [ 2, %.preheader6.1.1.2 ]
  %storemerge26.lcssa122.ph = phi i32 [ 1, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 0, %.preheader6.1.1131 ], [ 1, %.preheader6.1.1.1 ], [ 0, %.preheader6.1.2135 ], [ 1, %.preheader6.1.1.2 ]
  br label %297

297:                                              ; preds = %.loopexit127, %.preheader6.1.2
  %storemerge12.lcssa123 = phi i32 [ %storemerge12.lcssa126, %.preheader6.1.2 ], [ %storemerge12.lcssa123.ph, %.loopexit127 ]
  %storemerge26.lcssa122 = phi i32 [ 2, %.preheader6.1.2 ], [ %storemerge26.lcssa122.ph, %.loopexit127 ]
  %298 = shl i32 %storemerge26.lcssa122, 3
  %299 = add i32 64, %298
  %300 = add nsw i32 %storemerge12.lcssa123, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %301
  store i32 1, ptr %302, align 4
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
  br i1 false, label %.preheader6.preheader.2, label %307

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %storemerge12.lcssa126 = phi i32 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  %303 = add nsw i32 %storemerge12.lcssa126, 16
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %304
  store i32 1, ptr %305, align 4
  br i1 false, label %297, label %306

306:                                              ; preds = %.preheader6.1.2
  unreachable

307:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %307
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
  br i1 false, label %.preheader6.preheader.2, label %308

308:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %310

.preheader7.preheader.2:                          ; preds = %308
  br label %.preheader7.2132

.preheader7.2132:                                 ; preds = %.preheader7.preheader.2
  br label %.preheader6.preheader.2133

.preheader6.preheader.2133:                       ; preds = %.preheader7.2132
  br label %.preheader6.2134

.preheader6.2134:                                 ; preds = %.preheader6.preheader.2133
  br label %.preheader6.1.2135

.preheader6.1.2135:                               ; preds = %.preheader6.2134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit127, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2135
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1124.2

.preheader6.1124.2:                               ; preds = %.preheader6.preheader.1.2
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1124.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit127, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  br i1 false, label %.preheader6.preheader.2, label %309

309:                                              ; preds = %.preheader7.2.2
  unreachable

310:                                              ; preds = %308
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %311

311:                                              ; preds = %310
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %311
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
  %storemerge13.lcssa137.ph = phi i32 [ 0, %.preheader4.2 ], [ 1, %.preheader4.2.1146 ], [ 2, %.preheader4.2.2 ]
  %storemerge24.lcssa136.ph = phi i32 [ 0, %.preheader4.2 ], [ 0, %.preheader4.2.1146 ], [ 0, %.preheader4.2.2 ]
  br label %312

312:                                              ; preds = %.loopexit141, %.preheader4.2.1
  %storemerge13.lcssa137 = phi i32 [ %storemerge13.lcssa139, %.preheader4.2.1 ], [ %storemerge13.lcssa137.ph, %.loopexit141 ]
  %storemerge24.lcssa136 = phi i32 [ 1, %.preheader4.2.1 ], [ %storemerge24.lcssa136.ph, %.loopexit141 ]
  %313 = shl i32 %storemerge24.lcssa136, 3
  %314 = add i32 128, %313
  %315 = add nsw i32 %storemerge13.lcssa137, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %316
  store i32 1, ptr %317, align 4
  unreachable

.preheader5.1:                                    ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %325

.preheader4.preheader.1:                          ; preds = %.preheader5.1.2, %.preheader5.1.1, %.preheader5.1
  %storemerge13.lcssa139 = phi i32 [ 0, %.preheader5.1 ], [ 1, %.preheader5.1.1 ], [ 2, %.preheader5.1.2 ]
  br label %.preheader4.1138

.preheader4.1138:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1138
  %318 = add nsw i32 %storemerge13.lcssa139, 8
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %319
  store i32 1, ptr %320, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %321 = add nsw i32 %storemerge13.lcssa139, 72
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %322
  store i32 1, ptr %323, align 4
  br i1 false, label %312, label %324

324:                                              ; preds = %.preheader4.2.1
  unreachable

325:                                              ; preds = %.preheader5.1
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %325
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
  br i1 false, label %.preheader4.preheader.1, label %326

326:                                              ; preds = %.preheader5.1.1
  br i1 false, label %.preheader5.preheader.2, label %328

.preheader5.preheader.2:                          ; preds = %326
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2147

.preheader4.2147:                                 ; preds = %.preheader4.preheader.2
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit141, label %.preheader5.1.2

.preheader5.1.2:                                  ; preds = %.preheader4.2.2
  br i1 false, label %.preheader4.preheader.1, label %327

327:                                              ; preds = %.preheader5.1.2
  unreachable

328:                                              ; preds = %326
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %329

329:                                              ; preds = %328
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %329
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
  %storemerge14.lcssa149.ph = phi i32 [ 0, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 1, %.preheader2.2.1159 ], [ 1, %.preheader2.2.1.1 ]
  %storemerge22.lcssa148.ph = phi i32 [ 1, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 0, %.preheader2.2.1159 ], [ 1, %.preheader2.2.1.1 ]
  br label %330

330:                                              ; preds = %.loopexit154, %.preheader2.2.2
  %storemerge14.lcssa149 = phi i32 [ %storemerge14.lcssa153, %.preheader2.2.2 ], [ %storemerge14.lcssa149.ph, %.loopexit154 ]
  %storemerge22.lcssa148 = phi i32 [ 2, %.preheader2.2.2 ], [ %storemerge22.lcssa148.ph, %.loopexit154 ]
  %331 = shl i32 %storemerge22.lcssa148, 3
  %332 = add i32 128, %331
  %333 = add nsw i32 %storemerge14.lcssa149, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %334
  store i32 1, ptr %335, align 4
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
  br i1 false, label %.preheader2.preheader.2, label %343

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  %storemerge14.lcssa153 = phi i32 [ 0, %.preheader3.2 ], [ 1, %.preheader3.2.1 ]
  br label %.preheader2.2151

.preheader2.2151:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2151
  %336 = add nsw i32 %storemerge14.lcssa153, 16
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %337
  store i32 1, ptr %338, align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  %339 = add nsw i32 %storemerge14.lcssa153, 80
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %340
  store i32 1, ptr %341, align 4
  br i1 false, label %330, label %342

342:                                              ; preds = %.preheader2.2.2
  unreachable

343:                                              ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %345

.preheader3.preheader.1:                          ; preds = %343
  br label %.preheader3.1155

.preheader3.1155:                                 ; preds = %.preheader3.preheader.1
  br label %.preheader2.preheader.1156

.preheader2.preheader.1156:                       ; preds = %.preheader3.1155
  br label %.preheader2.1157

.preheader2.1157:                                 ; preds = %.preheader2.preheader.1156
  br label %.preheader2.1.1158

.preheader2.1.1158:                               ; preds = %.preheader2.1157
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  br label %.preheader2.2.1159

.preheader2.2.1159:                               ; preds = %.preheader2.1.1158
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  br i1 false, label %.loopexit154, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1159
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1150.1

.preheader2.1150.1:                               ; preds = %.preheader2.preheader.1.1
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1150.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  br i1 false, label %.loopexit154, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  br i1 false, label %.preheader2.preheader.2, label %344

344:                                              ; preds = %.preheader3.2.1
  unreachable

345:                                              ; preds = %343
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %346

346:                                              ; preds = %345
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %346
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
  %storemerge15.lcssa161.ph = phi i32 [ 0, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 1, %.preheader.2.1171 ], [ 1, %.preheader.2.1.1 ], [ 2, %.preheader.2.2176 ], [ 2, %.preheader.2.1.2 ]
  %storemerge20.lcssa160.ph = phi i32 [ 1, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 0, %.preheader.2.1171 ], [ 1, %.preheader.2.1.1 ], [ 0, %.preheader.2.2176 ], [ 1, %.preheader.2.1.2 ]
  br label %347

347:                                              ; preds = %.loopexit166, %.preheader.2.2
  %storemerge15.lcssa161 = phi i32 [ %storemerge15.lcssa165, %.preheader.2.2 ], [ %storemerge15.lcssa161.ph, %.loopexit166 ]
  %storemerge20.lcssa160 = phi i32 [ 2, %.preheader.2.2 ], [ %storemerge20.lcssa160.ph, %.loopexit166 ]
  %348 = shl i32 %storemerge20.lcssa160, 3
  %349 = add i32 128, %348
  %350 = add nsw i32 %storemerge15.lcssa161, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %351
  store i32 1, ptr %352, align 4
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
  br i1 false, label %.preheader.preheader.2, label %360

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %storemerge15.lcssa165 = phi i32 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  br label %.preheader.2163

.preheader.2163:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2163
  %353 = add nsw i32 %storemerge15.lcssa165, 16
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %354
  store i32 1, ptr %355, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %356 = add nsw i32 %storemerge15.lcssa165, 80
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %357
  store i32 1, ptr %358, align 4
  br i1 false, label %347, label %359

359:                                              ; preds = %.preheader.2.2
  unreachable

360:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %360
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
  br i1 false, label %.preheader.preheader.2, label %361

361:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %363

.preheader1.preheader.2:                          ; preds = %361
  br label %.preheader1.2172

.preheader1.2172:                                 ; preds = %.preheader1.preheader.2
  br label %.preheader.preheader.2173

.preheader.preheader.2173:                        ; preds = %.preheader1.2172
  br label %.preheader.2174

.preheader.2174:                                  ; preds = %.preheader.preheader.2173
  br label %.preheader.1.2175

.preheader.1.2175:                                ; preds = %.preheader.2174
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %.preheader.2.2176

.preheader.2.2176:                                ; preds = %.preheader.1.2175
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit166, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2176
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1162.2

.preheader.1162.2:                                ; preds = %.preheader.preheader.1.2
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1162.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit166, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  br i1 false, label %.preheader.preheader.2, label %362

362:                                              ; preds = %.preheader1.2.2
  unreachable

363:                                              ; preds = %361
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %364 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %364, 0
  br i1 %.not, label %367, label %365

365:                                              ; preds = %363
  %366 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %366, ptr @n, align 4
  br label %368

367:                                              ; preds = %363
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %368

368:                                              ; preds = %367, %365
  %369 = load i32, ptr @n, align 4
  %370 = call i32 @Trial(i32 noundef %369)
  %.not16 = icmp eq i32 %370, 0
  br i1 %.not16, label %371, label %372

371:                                              ; preds = %368
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %375

372:                                              ; preds = %368
  %373 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %373, 2005
  br i1 %.not18, label %375, label %374

374:                                              ; preds = %372
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %375

375:                                              ; preds = %374, %372, %371
  %376 = load i32, ptr @n, align 4
  %377 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %376) #4
  %378 = load i32, ptr @kount, align 4
  %379 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %378) #4
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
